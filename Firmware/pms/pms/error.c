/*
 * error.c
 *
 * Created: 5-6-2018 19:19:00
 *  Author: NEF
 */ 
#include <avr/io.h>
#include "error.h"
#include "virtual_register.h"

uint8_t error_counter = 0;
uint8_t last_error = 0;
uint32_t errors_array[ERROR_SIZE];

void error_init()
{
	for (uint32_t i = 0;i < ERROR_SIZE;i++)
	{
		errors_array[i] = 0;
	}
}


void error_report(uint8_t error)
{
	/**
	 * BEGIN critical section
	 */
	//cli();

	/* check what errors where already reported */
	if(errors_array[error - 1] == 0){
		error_counter++;
	}
	errors_array[error - 1] = 1;

	last_error = error;

	vregs_write(VREGS_ERROR_COUNTER, error_counter);
	vregs_write(VREGS_LAST_ERROR, error);

	//sei();
	/**
	 * END critical section
	 */
}

uint8_t error_read(uint8_t error)
{
	if(errors_array[error - 1] == 0){
		return 0;
	}
	else
	{
		return 1;
	}
}