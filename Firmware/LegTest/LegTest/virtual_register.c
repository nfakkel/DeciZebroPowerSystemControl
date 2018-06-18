/*
 * virtual_register.c
 *
 * Created: 1-6-2018 16:53:54
 *  Author: NEF
 */ 

#include <avr/io.h>
#include "virtual_register.h"
#include "global_register.h"
#include "avr_compiler.h"

uint8_t vregs[VREGS_FILE_TOTAL_SIZE];
uint8_t vregs_buffer[VREGS_NUM_OF_BUFFERS][VREGS_FILE_TOTAL_SIZE];
static int32_t buffer_selector = 0;

/**
 * Initialise the virtual registers. Set all fields to their default values.
 */
void vregs_init(){
	int32_t cursor;

	/* set everything to zero */
	for(cursor = 0; cursor < VREGS_FILE_TOTAL_SIZE; cursor++){
		vregs[cursor] = 0;
	}

	vregs[VREGS_ZEBROBUS_VERSION] = ZEBROBUS_VERSION;
	vregs[VREGS_CLASS_ID] = CLASS_ID;
	vregs[VREGS_PRODUCT_ID] = PRODUCT_ID;
	vregs[VREGS_PRODUCT_VERSION] = PRODUCT_VERSION;
	vregs[VREGS_SERIAL_ID] = SERIAL_ID;
	vregs[VREGS_SOFTWARE_VERSION] = SOFTWARE_VERSION;
	vregs[VREGS_FILE_TOTAL_SIZE - 1] = VREGS_SYNC_4;
	vregs[VREGS_FILE_TOTAL_SIZE - 2] = VREGS_SYNC_3;
	vregs[VREGS_FILE_TOTAL_SIZE - 3] = VREGS_SYNC_2;
	vregs[VREGS_FILE_TOTAL_SIZE - 4] = VREGS_SYNC_1;
	vregs[VREGS_FILE_TOTAL_SIZE - 5] = VREGS_SYNC_0;

	/* also initialise the buffers */
	vregs_writeout();
}

/**
 * Write a value to a virtual register.
 * Return: 0 is successful, 1 if failed
 */
int32_t vregs_write(uint32_t address, uint8_t data){
	if (address < VREGS_FILE_SIZE){
		vregs[address] = data;
		return 0;
	}
	else return 1;
}

/**
 * Read a value from a virtual register.
 * Before you use this function, are you sure you want to do this?
 * It might be a bad idea ...
 * Return the value to be read
 */
uint8_t vregs_read(uint32_t address){
	if (address < VREGS_FILE_SIZE){
		return vregs[address];
	}
	else return 0;
}

/**
 * Same as vregs_read, but now read from the buffered vregs
 */
uint8_t vregs_read_buffer(uint32_t address){
	if (address < VREGS_FILE_SIZE){
		return vregs_buffer[buffer_selector][address];
	}
	else return 0;
}

/**
 * Copy the vregs to the buffer, where they can be accessed over ZebroBus
 * and UART1
 */
int32_t vregs_writeout(){
	int32_t cursor;

	for(cursor = 0; cursor < VREGS_FILE_TOTAL_SIZE; cursor++){
		vregs_buffer[!buffer_selector][cursor] = vregs[cursor];
	}

	/**
	 * BEGIN critical section
	 */
	cli();

	buffer_selector = !buffer_selector;

	sei();
	/**
	 * END critical section
	 */

	return 0;
}

uint8_t *vregs_get_buffer_address(){
	return (vregs_buffer[buffer_selector]);
}
