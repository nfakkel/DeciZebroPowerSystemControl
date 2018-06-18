/*
 * io.c
 *
 * Created: 12-6-2018 15:13:47
 *  Author: NEF
 */ 
#include "virtual_register.h"
#include "error.h"
#include "pwm.h"

void io_init()
{
	PORTR.DIRSET |= PIN0_bm | PIN1_bm; //Set the Led pins as output
	PORTD.DIRSET |= PIN0_bm | PIN1_bm | PIN2_bm | PIN5_bm; //Set  3.3V, 5V, 16V and QI enable pins as output
	PORTB.DIRSET |= PIN2_bm; //Set input_selec pin as output
}

void io_solar_disable()
{
	PWM_Disable();
	uint8_t data = vregs_read(VREGS_POWER_STATE);
	data &= ~(1<<7);
	vregs_write(VREGS_POWER_STATE, data);
}

void io_laptop_disable()
{
	PORTB.OUTSET |= PIN2_bm;
	uint8_t data = vregs_read(VREGS_POWER_STATE);
	data &= ~(1<<6);
	vregs_write(VREGS_POWER_STATE, data);
}

void io_qi_disable()
{
	PORTB.OUTCLR |= PIN2_bm;
	PORTD.OUTCLR |= PIN5_bm;
	uint8_t data = vregs_read(VREGS_POWER_STATE);
	data &= ~(1<<5);
	vregs_write(VREGS_POWER_STATE, data);
}

void io_3v3_disable()
{
	PORTD.OUTCLR |= PIN0_bm;
	uint8_t data = vregs_read(VREGS_POWER_STATE);
	data &= ~(1<<4);
	vregs_write(VREGS_POWER_STATE, data);
}

void io_5v_disable()
{
	PORTD.OUTCLR |= PIN1_bm;
	uint8_t data = vregs_read(VREGS_POWER_STATE);
	data &= ~(1<<3);
	vregs_write(VREGS_POWER_STATE, data);
}

void io_16v_disable()
{
	PORTD.OUTCLR |= PIN2_bm;
	uint8_t data = vregs_read(VREGS_POWER_STATE);
	data &= ~(1<<2);
	vregs_write(VREGS_POWER_STATE, data);
}

void io_led1_disable()
{
	PORTR.OUTCLR |= PIN1_bm;
	uint8_t data = vregs_read(VREGS_POWER_STATE);
	data &= ~(1<<1);
	vregs_write(VREGS_POWER_STATE, data);
}

void io_led0_disable()
{
	PORTR.OUTCLR |= PIN0_bm;
	uint8_t data = vregs_read(VREGS_POWER_STATE);
	data &= ~(1<<0);
	vregs_write(VREGS_POWER_STATE, data);
}

void io_led0_enable()
{
	PORTR.OUTSET |= PIN0_bm;
	uint8_t data = vregs_read(VREGS_POWER_STATE);
	data |= (1<<0);
	vregs_write(VREGS_POWER_STATE, data);
}

void io_led1_enable()
{
	PORTR.OUTSET |= PIN1_bm;
	uint8_t data = vregs_read(VREGS_POWER_STATE);
	data |= (1<<1);
	vregs_write(VREGS_POWER_STATE, data);
}

void io_solar_enable()
{
	PWM_Enable();
	uint8_t data = vregs_read(VREGS_POWER_STATE);
	data |= (1<<7);
	vregs_write(VREGS_POWER_STATE, data);	
}

void io_laptop_enable()
{
	PORTB.OUTCLR |= PIN2_bm;
	uint8_t data = vregs_read(VREGS_POWER_STATE);
	data |= (1<<6);
	vregs_write(VREGS_POWER_STATE, data);
}

void io_qi_enable()
{
	PORTB.OUTSET |= PIN2_bm;
	PORTD.OUTSET |= PIN5_bm;
	uint8_t data = vregs_read(VREGS_POWER_STATE);
	data |= (1<<5);
	vregs_write(VREGS_POWER_STATE, data);
}

void io_3v3_enable()
{
	if (error_read(ERROR_3V3_FUSE))
	{
		io_3v3_disable();
	}
	else
	{
		PORTD.OUTSET |= PIN0_bm;
		uint8_t data = vregs_read(VREGS_POWER_STATE);
		data |= (1<<4);
		vregs_write(VREGS_POWER_STATE, data);
	}
}

void io_5v_enable()
{
	if (error_read(ERROR_5V_FUSE))
	{
		io_5v_disable();
	}
	else
	{
		PORTD.OUTSET |= PIN1_bm;
		uint8_t data = vregs_read(VREGS_POWER_STATE);
		data |= (1<<3);
		vregs_write(VREGS_POWER_STATE, data);
	}
}

void io_16v_enable()
{
	if (error_read(ERROR_3V3_FUSE))
	{
		io_16v_disable();
	}
	else
	{
		PORTD.OUTSET |= PIN2_bm;
		uint8_t data = vregs_read(VREGS_POWER_STATE);
		data |= (1<<2);
		vregs_write(VREGS_POWER_STATE, data);
	}
}
