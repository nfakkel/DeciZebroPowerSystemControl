#include <avr/io.h>
#include <stdio.h>
#include <inttypes.h>
#include <stddef.h>
#include "avr_compiler.h"
#include "virtual_register.h"
#include "adc.h"

//aanroepen met ReadADC(&ADCA.CH0, offset, *aantal samples*) en returned dan uint16_t
// weet niet of ch0 werkt met pin A3

void adc_start(void)
{
	//set PA4/3/2 as output not needed, they're inputs 
	//PORTA.DIRSET |= 0b00011100;
	
	//load factory calibration bytes to ADC regs
	ADCA.CALL = ReadCalibrationByte(offsetof ( NVM_PROD_SIGNATURES_t , ADCACAL0 ) ) ;
	ADCA.CALH = ReadCalibrationByte(offsetof ( NVM_PROD_SIGNATURES_t , ADCACAL1 ) ) ;
	
	//set 12-bit resolution and unsigned mode
	ADCA.CTRLB = (ADCA.CTRLB & ~(ADC_RESOLUTION_gm)) | (ADC_RESOLUTION_12BIT_gc);
	
	//set reference voltage to intern Vcc/1.6
	ADCA.REFCTRL = ((ADCA.REFCTRL & ~(ADC_REFSEL_gm))|ADC_REFSEL_INTVCC_gc);
	
	//set prescaler to /8 -> 2MHz to 125kHz (can be adjusted)
	ADCA.PRESCALER = ((ADCA.PRESCALER & ~ADC_PRESCALER_gm) | ADC_PRESCALER_DIV8_gc);	

	//set convmode to single ended and gain to 1x
	ADCA.CH0.CTRL = ((ADCA.CH0.CTRL & ~(ADC_CH_GAIN_gm |ADC_CH_INPUTMODE_gm))| (ADC_CH_GAIN_1X_gc|ADC_CH_INPUTMODE_SINGLEENDED_gc));
	ADCA.CH1.CTRL = ((ADCA.CH1.CTRL & ~(ADC_CH_GAIN_gm |ADC_CH_INPUTMODE_gm))| (ADC_CH_GAIN_1X_gc|ADC_CH_INPUTMODE_SINGLEENDED_gc));
	ADCA.CH2.CTRL = ((ADCA.CH2.CTRL & ~(ADC_CH_GAIN_gm |ADC_CH_INPUTMODE_gm))| (ADC_CH_GAIN_1X_gc|ADC_CH_INPUTMODE_SINGLEENDED_gc));
//	ADCA.CH3.CTRL = ((ADCA.CH3.CTRL & ~(ADC_CH_GAIN_gm |ADC_CH_INPUTMODE_gm))| (ADC_CH_GAIN_1X_gc|ADC_CH_INPUTMODE_SINGLEENDED_gc));
	
	//set input mode to pin 4 when using signed
	ADCA.CH0.MUXCTRL = ((ADCA.CH0.MUXCTRL & ~ADC_CH_MUXPOS_gm )| ADC_CH_MUXPOS_PIN4_gc);
	ADCA.CH1.MUXCTRL = ((ADCA.CH1.MUXCTRL & ~ADC_CH_MUXPOS_gm )| ADC_CH_MUXPOS_PIN3_gc);
	ADCA.CH2.MUXCTRL = ((ADCA.CH2.MUXCTRL & ~ADC_CH_MUXPOS_gm )| ADC_CH_MUXPOS_PIN2_gc);
//	ADCA.CH3.MUXCTRL = ((ADCA.CH3.MUXCTRL & ~ADC_CH_MUXPOS_gm )| ADC_CH_MUXPOS_PIN1_gc);

	//enable adc
	ADCA.CTRLA |= ADC_ENABLE_bm;
	
  	/* Wait 4*COMMON_MODE_CYCLES for common mode to settle. */
  	ADC_Wait_8MHz(&ADCA) ;
	/* Get offset value for ADCA.  */
	//offset = ADC_Offset_Get_Signed(&ADCA, &(ADCA.CH0), true);
	
	/* Initialize the DMA channel DOES NOT WORK YET*/
	//DMA.CTRL = DMA_CH_ENABLE_bm | DMA_DBUFMODE_DISABLED_gc;
	//DMA.CH0.REPCNT = 0;
	//DMA.CH0.CTRLA = DMA_CH_BURSTLEN_2BYTE_gc | DMA_CH_SINGLE_bm | DMA_CH_REPEAT_bm; // ADC result is 2 byte 12 bit word
	//DMA.CH0.TRIGSRC = DMA_CH_TRIGSRC_ADCA_CH4_gc;
	//DMA.CH0.TRFCNT = 64;
	//DMA.CH0.DESTADDR0 = (( (uint16_t) adc_buffer) >> 0) & 0xFF;
	//DMA.CH0.DESTADDR1 = (( (uint16_t) adc_buffer) >> 8) & 0xFF;
	//DMA.CH0.DESTADDR2 = 0;
	//DMA.CH0.SRCADDR0 = (( (uint16_t) &ADCA.CH0.RES) >> 0) & 0xFF;
	//DMA.CH0.SRCADDR1 = (( (uint16_t) &ADCA.CH0.RES) >> 8) & 0xFF;
	//DMA.CH0.SRCADDR2 = 0;
}

void read_adc(void)
{
	uint16_t result1, result2, result3;
	uint16_t vlaptop, fuse_16v, fuse_5v;
//	uint16_t result4, fuse_3v3;
	uint8_t offset1, offset2, offset3;
//	uint8_t offset4;
	
	//start single conversion
	ADCA.CH0.CTRL |= ADC_CH_START_bm;
	ADCA.CH1.CTRL |= ADC_CH_START_bm;
	ADCA.CH2.CTRL |= ADC_CH_START_bm;
//	ADCA.CH3.CTRL |= ADC_CH_START_bm;
	//wait for flag signaling its done
	while(!(ADCA.CH2.INTFLAGS & ADC_CH_CHIF_bm));
	
	ADCA.CH0.INTFLAGS = ADC_CH_CHIF_bm ;
	ADCA.CH1.INTFLAGS = ADC_CH_CHIF_bm ;
	ADCA.CH2.INTFLAGS = ADC_CH_CHIF_bm ;
//	ADCA.CH3.INTFLAGS = ADC_CH_CHIF_bm ;
	
	result1 = ADCA.CH0.RES;
	result2 = ADCA.CH1.RES;
	result3 = ADCA.CH2.RES;
//	result4 = ADCA.CH3.RES;
	
	vlaptop = (result1 - offset1)/4096 * 120/12;
	fuse_16v = (result2 - offset2)/4096 * 111/11;
	fuse_5v = (result3 - offset3)/4096 * 100/40;
	//fuse_3v3 = (result4 - offset4)/4096 * 100/60;
	
	//check vlaptop value for threshold
	if((vlaptop < 25) & (vlaptop > 8)){laptop_flag = 1;}
	else {laptop_flag = 0;}
	
	vregs_write(VREGS_3V3_FUSE_VOLTAGE_LOW,(uint8_t) vlaptop);
	vregs_write(VREGS_3V3_FUSE_VOLTAGE_HIGH,(uint8_t) (vlaptop>>8));
	
	vregs_write(VREGS_16V_FUSE_VOLTAGE_LOW,(uint8_t) fuse_16v);
	vregs_write(VREGS_16V_FUSE_VOLTAGE_HIGH,(uint8_t) (fuse_16v>>8));
	
	vregs_write(VREGS_5V_FUSE_VOLTAGE_LOW,(uint8_t) fuse_5v);
	vregs_write(VREGS_5V_FUSE_VOLTAGE_HIGH,(uint8_t) (fuse_5v>>8));
	
//	vregs_write(VREGS_3V3_FUSE_VOLTAGE_LOW,(uint8_t) fuse_3v3);
//	vregs_write(VREGS_3V3_FUSE_VOLTAGE_HIGH,(uint8_t) (fuse_3v3>>8));

}


//This function waits until the adc common mode is settled.

void ADC_Wait_8MHz(ADC_t * adc)
{
  	/* Store old prescaler value. */
  	uint8_t prescaler_val = adc->PRESCALER;

	/* Set prescaler value to minimum value. */
	adc->PRESCALER = ADC_PRESCALER_DIV4_gc;

	/* Wait 4*COMMON_MODE_CYCLES for common mode to settle. */
	delay_us(4*COMMON_MODE_CYCLES);

	/* Set prescaler to old value*/
	adc->PRESCALER = prescaler_val;
}
//
//
uint8_t ReadCalibrationByte( uint8_t index ) //RECOMMENDED TO DISABLE INTERRUPTS WHILE DOING THIS
{
	uint8_t result;

	//set the flash command to reading factory data
	NVM_CMD = NVM_CMD_READ_CALIB_ROW_gc;
	
	//read said factory data
	result = pgm_read_byte(index);

	//clear flash command
	NVM_CMD = NVM_CMD_NO_OPERATION_gc;

	return result;
}

