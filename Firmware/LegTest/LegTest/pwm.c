/*
 * pwm.c
 *
 * Created: 3-6-2018 14:21:10
 *  Author: NEF
 */ 

#include <avr/io.h>
#include "pwm.h"
//#include <tc_driver.h>

void PWM_Enable(void)
{
	//enable output on PC3
	//PORTC.REMAP &= PORT_TC0D_bm;
	PORTC.DIRSET |= PIN3_bm ;//| PIN7_bm;

	
	//set the period of the single slope pwm
	TCC0.PER = ( PWM_period & HiResMask ) ;

	//enable single slope pwm and compare capture channel a
	TCC0.CTRLB = (TCC0.CTRLB & ~TC0_WGMODE_gm) |TC_WGMODE_SS_gc | TC0_CCDEN_bm;
	
	//set clock
	TCC0.CTRLA = (TCC0.CTRLA & ~TC0_CLKSEL_gm ) |TC_CLKSEL_DIV1_gc;
	
	// Enable interrupts on CC channel A with HI priority
	//TCC0.INTCTRLB = ( uint8_t ) TC_CCAINTLVL_LO_gc ;
	
	// Set default dutycycle.
	TCC0.CCDBUF =  DUTYCYCLE_DEFAULT;
	//DutyCycle = SetDutyCycle (DUTYCYCLE_DEFAULT);
	//TCC0.CCDBUF = DutyCycle;

}

void PWM_Disable(void)
{
	// Turn off Timer / Counter ( no clock selected )
	TCC0.CTRLA = (TCC0.CTRLA & ~TC0_CLKSEL_gm ) | TC_CLKSEL_OFF_gc;
	
	//turn off waveform generation
	TCC0.CTRLB = 0;
	
	//turn off advanced waveform generation
	AWEXC.CTRL = 0;
	
	// Set port C to input .
	PORTC.DIR = 0;
	
	// Enable Totempole w / pull - down on PIN0
	PORTC.PIN3CTRL = PORT_OPC_PULLDOWN_gc ;
}

unsigned char PWM_DecrementDutyCycle ( uint8_t StepSize ) 
{
	if ( DutyCycle > DUTYCYCLE_MIN )
	{
		DutyCycle -= StepSize ;
		return ( TRUE ) ;
	}
	else
	{
		return ( FALSE ) ;
	}
}
	
unsigned char PWM_IncrementDutyCycle ( uint8_t StepSize ) 
{
	if ( DutyCycle < DUTYCYCLE_MAX )
	{
		DutyCycle += StepSize;
		return ( TRUE );
	}
	else
	{
		return ( FALSE ) ;
	}
}

uint8_t SetDutyCycle ( uint8_t NewDutyCycle ) 
{
	// Check if new dutycycle is ok
	// before setting the new value .
	if ( NewDutyCycle > DUTYCYCLE_MAX ) {
		DutyCycle = DUTYCYCLE_MAX ;
		// OutOfBounds = TRUE ;
		} else if ( NewDutyCycle < DUTYCYCLE_MIN ) {
		DutyCycle = DUTYCYCLE_MIN ;
	} else DutyCycle = NewDutyCycle ;
		
	// Return the dutycycle value
	return ( DutyCycle ) ;
}

