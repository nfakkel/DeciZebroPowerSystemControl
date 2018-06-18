/*
 * LegTest.c
 *
 * Created: 30-5-2018 09:27:42
 * Author : NEF
 */ 

#include <avr/io.h>
#include <util/delay.h>
#include "twi_master_driver.h"
#include "twi_slave_driver.h"
#include "pwm.h"

//#include "adc_driver.h"
#include "sensors.h"
#include "adc.h"
#include "global_register.h"
#include "virtual_register.h"
#include "error.h"
#include "zebro_alert.h"
#include "mppt.h"

//#define LEFT 0x01
//#define RIGHT 0x00
#define BAUDRATE	100000
#define CPU_SPEED	2000000
#define TWI_BAUDSETTING TWI_BAUD(CPU_SPEED, BAUDRATE)

/* Global Variables */
TWI_Master_t	twiMaster;
TWI_Slave_t		twiSlave;
uint8_t rw_reg[22] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};


//volatile uint16_t ADC_result;
int8_t offset;
int8_t power = 0;
int8_t count = 0;

void TWIE_SlaveProcessData(void)
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
///*This function reads out the */
//void Check_And_Write_Battery_Registers(uint8_t reg, uint8_t high_byte, uint8_t low_byte)
//{
	//switch(reg) {
		//case BAT_BATTERYSTATUS_REG :
		//if (high_byte & 0b10000000) {error_report(ERROR_OCA);}
		//if (high_byte & 0b01000000) {error_report(ERROR_TCA);}
		//if (high_byte & 0b00010000) {error_report(ERROR_OTA);}
		//if (high_byte & 0b00001000) {error_report(ERROR_TDA);}
		//if (high_byte & 0b00000010) {error_report(ERROR_RCA);}
		//if (high_byte & 0b00000001) {error_report(ERROR_RTA);}
		//if (low_byte & 0b10000000) {/*INIT completed flaghigh*/}
		//if (low_byte & 0b01000000) {/*DSG detected flaghigh*/}
		//if (low_byte & 0b00010000) {/*Fully Charged flaghigh*/}
		//if (low_byte & 0b00001000) {/*Fully Discharged flaghigh*/}
		//if ((low_byte & 0b111) == 0b001) {error_report(ERROR_BUSY);}
		//if ((low_byte & 0b111) == 0b010) {error_report(ERROR_RESERVEDCMD);}
		//if ((low_byte & 0b111) == 0b010) {error_report(ERROR_UNSUPPORTEDCMD);}
		//if ((low_byte & 0b111) == 0b010) {error_report(ERROR_ACCESSDENIED);}
		//if ((low_byte & 0b111) == 0b010) {error_report(ERROR_UNDEROVERFLOW);}
		//if ((low_byte & 0b111) == 0b010) {error_report(ERROR_BADSIZE);}
		//if ((low_byte & 0b111) == 0b010) {error_report(ERROR_UNKNOWN);}
		//vregs_write(VREGS_BATTERY_STATUS_LOW, low_byte);
		//vregs_write(VREGS_BATTERY_STATUS_HIGH, high_byte);
		//break;
		//case BAT_ATRATETIMETOEMPTY_REG :
		//vregs_write(VREGS_TIME_TO_EMPTY_LOW, low_byte);
		//vregs_write(VREGS_TIME_TO_EMPTY_HIGH, high_byte);
		//break;
		//case BAT_ATRATETIMETOFULL_REG :
		//vregs_write(VREGS_TIME_TO_FULL_LOW, low_byte);
		//vregs_write(VREGS_TIME_TO_FULL_HIGH, high_byte);
		//break;
		//case BAT_TEMPERATURE_REG :
		//vregs_write(VREGS_BATTERY_TEMP_LOW, low_byte);
		//vregs_write(VREGS_BATTERY_TEMP_HIGH, high_byte);
		//break;
		//case BAT_VOLTAGE_REG :
		//vregs_write(VREGS_BATTERY_VOLTAGE_LOW, low_byte);
		//vregs_write(VREGS_BATTERY_VOLTAGE_HIGH, high_byte);
		//break;
		//case BAT_CURRENT_REG :
		//vregs_write(VREGS_BATTERY_CURRENT_LOW, low_byte);
		//vregs_write(VREGS_BATTERY_CURRENT_HIGH, high_byte);
		//break;
		//case BAT_STATE_OF_CHARGE_REG :
		//vregs_write(VREGS_STATE_OF_CHARGE_LOW, low_byte);
		//vregs_write(VREGS_STATE_OF_CHARGE_HIGH, high_byte);
		//break;
		//case BAT_STATE_OF_HEALTH_REG :
		//vregs_write(VREGS_STATE_OF_HEALTH_LOW, low_byte);
		//vregs_write(VREGS_STATE_OF_HEALTH_HIGH, high_byte);
		//break;
		//case BAT_CYCLE_COUNT_REG :
		//vregs_write(VREGS_NUMBER_OF_CYCLES_LOW, low_byte);
		//vregs_write(VREGS_NUMBER_OF_CYCLES_HIGH, high_byte);
		//break;
		//default :
		//error_report(ERROR_UNKNOWN);
	//}
		//}
//void Read_Battery_Registers(void)
//{
	//uint8_t battery_register[NUM_BATTERY_BYTES] = {BAT_BATTERYSTATUS_REG, BAT_ATRATETIMETOEMPTY_REG, BAT_ATRATETIMETOFULL_REG,	BAT_TEMPERATURE_REG, BAT_VOLTAGE_REG, BAT_CURRENT_REG, BAT_STATE_OF_CHARGE_REG, BAT_STATE_OF_HEALTH_REG, BAT_CYCLE_COUNT_REG, BAT_CHARGING_CURRENT_REG, BAT_CHARGING_VOLTAGE_REG};
	//
	//for (int RegPos = 0; RegPos < NUM_BATTERY_BYTES; RegPos++)
	//{
		//TWI_MasterWriteRead(&twiMaster, ADDRESS_BATTERY, &battery_register[RegPos], 1, 2);
		//while(twiMaster.status != TWIM_STATUS_READY) {}
		//Check_And_Write_Battery_Registers(battery_register[RegPos],twiMaster.readData[0],twiMaster.readData[1]);
	//}
	////update vregs
	//vregs_writeout();
//}

//void Read_Temperature_Registers(void)
//{
	//
//}

uint8_t CRITICAL_ERROR = 0;
int main(void)
{
	//uint16_t adc_value;
	//uint8_t adc_h;
	//uint8_t adc_l;
	
//	uint8_t count=0;
	
	PORTR.DIRSET = PIN0_bm | PIN1_bm;
	PORTR.OUTSET |= PIN0_bm | PIN1_bm;
	_delay_ms(100);        //Delay for 1000ms => 1 sec
	PORTR.OUTCLR |= PIN0_bm | PIN1_bm;
	_delay_ms(100);
	sensor_init();
	
	/* Initialize TWI slave. */
	TWI_SlaveInitializeDriver(&twiSlave, &TWIE, TWIE_SlaveProcessData);
	TWI_SlaveInitializeModule(&twiSlave,0x60,TWI_SLAVE_INTLVL_LO_gc);
	PMIC.CTRL |= PMIC_LOLVLEN_bm;
	sei();
	//uint16_t value=0;
	vregs_init();
	error_init();
	PWM_Enable();
	zebro_alert_init();
	mppt_init();
	adc_start();
//	ADC_init();
	//
	
	while (1)
	{
		PORTR.OUTSET |= PIN0_bm | PIN1_bm;
		_delay_ms(500);  
		//adc_value = read_adc();
		//adc_l = (uint8_t) adc_value;
		//adc_h = (uint8_t) (adc_value >> 8);
		//
		//vregs_write(VREGS_QI_POWER_LOW,adc_l);
		//vregs_write(VREGS_QI_POWER_HIGH,adc_h);
		//vregs_writeout();
		Read_Current_Registers();
		
//		Read_Temperature_Registers();
		      //Delay for 1000ms => 1 sec
//				DutyCycle = SetDutyCycle(DUTYCYCLE_MIN);
//				TCC0.CCDBUF = DutyCycle;
//		clear_zebro_alert();

		PORTR.OUTCLR |= PIN0_bm | PIN1_bm;
		_delay_ms(500);
		//Read_Battery_Registers();
//		ADC_read()	
		
	}
}

ISR(TWIC_TWIM_vect)
{
	TWI_MasterInterruptHandler(&twiMaster);
}

/*! TWIC Slave Interrupt vector. */
ISR(TWIE_TWIS_vect)
{
	TWI_SlaveInterruptHandler(&twiSlave);
}


//<<<<<<< HEAD
//=======
////ZebroBus alerts
//void zebro_alert_init(void)
//{
	//PORTC.DIRSET |= PIN7_bm;
	//PORTC.OUTSET & ~PIN7_bm;
//}
//
//void zebro_alert(void)
//{
	//PORTC.OUTSET |= PIN7_bm;
//}
//
//void clear_zebro_alert(void)
//{
	//PORTC.OUTSET & ~PIN7_bm;
//}
//>>>>>>> 651988e810901ac1947d22b35eda0d3a3d0c96fd
