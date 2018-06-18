/*
 * virtual_register.h
 *
 * Created: 1-6-2018 16:54:24
 *  Author: NEF
 */ 


#ifndef VIRTUAL_REGISTER_H_
#define VIRTUAL_REGISTER_H_

#include <avr/io.h>

#define VREGS_NUM_OF_BUFFERS 1
#define VREGS_FILE_SIZE 256
#define VREGS_FILE_APPEND_SIZE 5
#define VREGS_FILE_TOTAL_SIZE (VREGS_FILE_APPEND_SIZE + VREGS_FILE_SIZE)
#define VREGS_SYNC_0 0xFF
#define VREGS_SYNC_1 0x45
#define VREGS_SYNC_2 0x12
#define VREGS_SYNC_3 0xEA
#define VREGS_SYNC_4 0x4B
/*ZEBROBUS PROTOCOL*/
#define VREGS_ZEBROBUS_VERSION		0x00	//Highest of the ZebroBus protocol supported
#define VREGS_CLASS_ID	 			0x01	//Class this module is part of
#define VREGS_PRODUCT_ID	 		0x02	//Product ID of this module
#define VREGS_PRODUCT_VERSION 		0x03	//Product version of this module
#define VREGS_SERIAL_ID				0x04	//Serial number of this module
#define VREGS_SOFTWARE_VERSION 		0x05	//Software version of this module
#define	VREGS_ZEBROBUS_ADDRESS		0x06	//Primary ZebroBus slave address of this module
/*SYSTEM INFORMATION*/
#define VREGS_QUICK_STATUS			0x10	//One byte module status message
#define	VREGS_SYNC_COUNTER 			0x11	//Time synchronisation counter
#define VREGS_LOOP_COUNTER			0x12	//Counts the times we go through the main control loop
#define VREGS_ERROR_COUNTER			0x13	//Counts the number of errors that occurred
#define VREGS_LAST_ERROR 			0x14	//Error code of the last error

/*Current/Voltage Sensors*/
#define VREGS_SOLAR_CURRENT_LOW			0x20	//
#define VREGS_SOLAR_CURRENT_HIGH		0x21	//
#define VREGS_QI_CURRENT_LOW			0x22	//
#define VREGS_QI_CURRENT_HIGH			0x23	//
#define VREGS_BUS_CURRENT_LOW			0x24	//
#define VREGS_BUS_CURRENT_HIGH			0X25	//
#define VREGS_3V3_CURRENT_LOW			0x26	//
#define VREGS_3V3_CURRENT_HIGH			0x27	//
#define VREGS_5V_CURRENT_LOW			0x28	//
#define VREGS_5V_CURRENT_HIGH			0x29	//
#define VREGS_SOLAR_VOLTAGE_LOW			0x2a	//
#define VREGS_SOLAR_VOLTAGE_HIGH		0x2b	//
#define VREGS_QI_VOLTAGE_LOW			0x2c	//
#define VREGS_QI_VOLTAGE_HIGH			0x2d	//
#define VREGS_BUS_VOLTAGE_LOW			0x2e	//
#define VREGS_BUS_VOLTAGE_HIGH			0X2f	//
#define VREGS_3V3_VOLTAGE_LOW			0x30	//
#define VREGS_3V3_VOLTAGE_HIGH			0x31	//
#define VREGS_5V_VOLTAGE_LOW			0x32	//
#define VREGS_5V_VOLTAGE_HIGH			0x33	//
/*ADC CHANNELS*/
#define VREGS_3V3_FUSE_VOLTAGE_LOW		0x34
#define VREGS_3V3_FUSE_VOLTAGE_HIGH		0x35
#define VREGS_5V_FUSE_VOLTAGE_LOW		0x36
#define VREGS_5V_FUSE_VOLTAGE_HIGH		0x37
#define VREGS_16V_FUSE_VOLTAGE_LOW		0x38
#define VREGS_16V_FUSE_VOLTAGE_HIGH		0x39
#define VREGS_LAPTOP_VOLTAGE_LOW		0x3a
#define VREGS_LAPTOP_VOLTAGE_HIGH		0x3b
/*Temperature Sensors*/
#define VREGS_INPUT_TEMP_LOW			0x3c	//Input temperature low byte
#define VREGS_INPUT_TEMP_HIGH			0x3d	//Input temperature	high byte
#define VREGS_OUTPUT_TEMP_LOW			0x3e	//Output temperature low byte
#define VREGS_OUTPUT_TEMP_HIGH			0x3f	//Output temperature high byte
/*BATTERY*/
#define VREGS_BATTERY_STATUS_LOW		0x40	//Battery Status
#define VREGS_BATTERY_STATUS_HIGH		0x41	//Battery Status
#define VREGS_TIME_TO_EMPTY_LOW			0x42	//AtRateTimeToEmpty
#define VREGS_TIME_TO_EMPTY_HIGH		0x43	//AtRateTimeToEmpty
#define VREGS_TIME_TO_FULL_LOW			0x44	//AtRateTimeToFull
#define VREGS_TIME_TO_FULL_HIGH			0x45	//AtRateTimeToFull
#define VREGS_BATTERY_TEMP_LOW			0x46	//Temperature(batteries)
#define VREGS_BATTERY_TEMP_HIGH			0x47	//Temperature(batteries)
#define VREGS_BATTERY_VOLTAGE_LOW		0x48	//Voltage
#define VREGS_BATTERY_VOLTAGE_HIGH		0x49	//Voltage
#define VREGS_BATTERY_CURRENT_LOW		0x4A	//Current
#define VREGS_BATTERY_CURRENT_HIGH		0x4B	//Current
#define VREGS_STATE_OF_CHARGE_LOW		0x4C	//SOC
#define VREGS_STATE_OF_CHARGE_HIGH		0x4D	//SOC
#define VREGS_STATE_OF_HEALTH_LOW		0x4E	//SOH
#define VREGS_STATE_OF_HEALTH_HIGH		0x4F	//SOH
#define VREGS_NUMBER_OF_CYCLES_LOW		0x50	//NOC
#define VREGS_NUMBER_OF_CYCLES_HIGH		0x51	//NOC

/*POWER SYSTEM*/
#define VREGS_POWER_STATE			0x60	//State of the power system FSM

void vregs_init();
int32_t vregs_write(uint32_t address, uint8_t data);
uint8_t vregs_read(uint32_t address);
uint8_t vregs_read_buffer(uint32_t address);
int32_t vregs_writeout();
uint8_t *vregs_get_buffer_address();



#endif /* VIRTUAL_REGISTER_H_ */