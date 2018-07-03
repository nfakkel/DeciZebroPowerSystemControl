/*
 * LegTest.c
 *
 * Created: 30-5-2018 09:27:42
 * Author : NEF
 */ 

/***************************TO-DO*******************************
*	Review Rheostat calculation
*	Check redundancy on FSM settings
*	Disable the Solar PWM on too low voltage
*	Interrupts for temperature, output current sensors and ADCs
*	Implement DMA to process ADC data
*	Test BMS communication with eventual board
*	Make the code more efficient by implementing an ISR
****************************************************************/
#include <avr/io.h>
#include <util/delay.h>
#include "twi_master_driver.h"
#include "twi_slave_driver.h"
#include "pwm.h"
#include "sensors.h"
#include "adc.h"
#include "global_register.h"
#include "virtual_register.h"
#include "error.h"
#include "zebro_alert.h"
#include "mppt.h"
#include "watchdog.h"
#include "fsm.h"
#include "io.h"
#include "rheostat.h"

#define BAUDRATE	100000
#define CPU_SPEED	32000000
#define TWI_BAUDSETTING TWI_BAUD(CPU_SPEED, BAUDRATE)

/* Global Variables */
//TWI_Master_t	twiMaster;
TWI_Slave_t		twiSlave;

int8_t offset;
int8_t count = 0;
uint16_t power = 0;

void TWIC_SlaveProcessData(void)
{

	
	uint8_t bufIndex = twiSlave.receivedData[0];
	uint8_t bufSize = twiSlave.bytesReceived;
	twiSlave.sendData[0] = vregs_read_buffer(bufIndex); //send the read data from register
	twiSlave.sendData[1] = vregs_read_buffer(bufIndex+1);//send the read data from register+1 if word is requested
	/*Suggestion for ZebroBus protocol to read all registers*/
	//for (uint8_t i=0;(bufIndex+i)<VREGS_FILE_TOTAL_SIZE;i++)
	//{	
	//	twiSlave.sendData[i] = rw_reg[bufIndex+i];
	//}
	for (uint8_t recvIndex = 0; recvIndex<bufSize; bufIndex++)
	{
		recvIndex++;
		vregs_write(bufIndex, twiSlave.receivedData[recvIndex]);
	}
}

int main(void)
{
	//initialize clock
	CCP = CCP_IOREG_gc;
	OSC.CTRL = OSC_RC32MEN_bm;
	while(!(OSC.STATUS & OSC_RC32MRDY_bm));
	CCP = CCP_IOREG_gc;
	CLK.CTRL = CLK_SCLKSEL_RC32M_gc;
		
	//booting leds
	PORTR.DIRSET |= PIN0_bm | PIN1_bm;
	
	PORTR.OUTSET |= PIN0_bm | PIN1_bm;
	_delay_ms(100);       
	PORTR.OUTCLR |= PIN0_bm | PIN1_bm;
	_delay_ms(100);
	PORTR.OUTSET |= PIN0_bm | PIN1_bm;
	_delay_ms(100);
	PORTR.OUTCLR |= PIN0_bm | PIN1_bm;
	_delay_ms(100);
	
	// init isr bus
	    // External interrupt 0 on PB0, enable pullup, sense rising edge
	    PORTB.PIN0CTRL = PORT_OPC_PULLDOWN_gc | PORT_ISC_LEVEL_gc;
	    PORTB.INT0MASK = PIN0_bm;
	    PORTB.INTCTRL = PORT_INT0LVL_HI_gc;
	
	/* Initialize TWI slave. */
	TWI_SlaveInitializeDriver(&twiSlave, &TWIC, TWIC_SlaveProcessData);
	TWI_SlaveInitializeModule(&twiSlave,0x60,TWI_SLAVE_INTLVL_LO_gc);

	//enable interrupts
	PMIC.CTRL |= PMIC_HILVLEN_bm;
	PMIC.CTRL |= PMIC_LOLVLEN_bm;
	sei();
	
	//initialize all functions
	sensor_init();
	io_init();
	vregs_init();
	error_init();
	zebro_alert_init();
	mppt_init();
	watchdog_init();
	PWM_Enable();
	
	//set start state
	pms_next_state = PMS_START;
	
	//configure sensors
	current_init();

// DEBUGGING	
// enable qi
//	PORTD.OUTSET |= PIN5_bm;
	//3.3v, 5v enable
//	PORTD.OUTSET |= PIN0_bm;
//	PORTD.OUTSET |= PIN1_bm;

	_delay_ms(500);
	
	//enter main loop
	while (1)
	{
		//check all the sensors
		Read_Current_Registers();
		Read_Qi_Registers();
		Read_Temperature_Registers();
	  //Read_Battery_Registers();
      //Read_adc();
		
		//set_Rheostat(0x2f);
		//_delay_ms(20);
	    //check rheostat setting for debug purposes
	    //read_Rheostat();
	  
		//adjust solar dutycycle
		power = vregs_read_buffer(VREGS_SOLAR_CURRENT_LOW) * vregs_read_buffer(VREGS_SOLAR_VOLTAGE_LOW);
		mppt(power);
	
		//reset watchdog (needs verifcation)
		asm("wdr");
		
		//run power scheme
		determine_state();

		//increment loop counter
		count = count+1;
		if(count == 255){count=0;}
		vregs_write(VREGS_LOOP_COUNTER,count);
		
		//update ZebroBus data
		vregs_writeout();
	}
}

ISR(TWIE_TWIM_vect)
{
	TWI_MasterInterruptHandler(&twiMaster);
}

/*! TWIC Slave Interrupt vector. */
ISR(TWIC_TWIS_vect)
{
	TWI_SlaveInterruptHandler(&twiSlave);
}


ISR(PORTB_INT0_vect)
{
	// Toggle ZebroAlert on interrupt
	zebro_alert();
}