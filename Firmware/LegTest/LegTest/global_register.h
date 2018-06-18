/*
 * global_register.h
 *
 * Created: 3-6-2018 13:32:43
 *  Author: NEF
 */ 


#ifndef GLOBAL_REGISTER_H_
#define GLOBAL_REGISTER_H_

#define ZEBROBUS_ADDRESS	0x60

#define ZEBROBUS_VERSION	0x20
#define CLASS_ID	 		0x00
#define PRODUCT_ID	 		0x00
#define PRODUCT_VERSION 	0x00
#define SERIAL_ID			0x00
#define SOFTWARE_VERSION 	0x00

/*SMBUS ADDRESSES*/
#define	ADDRESS_TEMP_SENS_INPUT		0x48
#define	ADDRESS_TEMP_SENS_OUTPUT	0b1001001
#define	ADDRESS_CURRENT_SENS_SOLAR	0b1000010
#define	ADDRESS_CURRENT_SENS_BUS	0x40
#define	ADDRESS_CURRENT_SENS_5V		0b1000001
#define	ADDRESS_CURRENT_SENS_3V3	0b1000011
#define	ADDRESS_QI_RECEIVER			0x25			
#define	ADDRESS_POT_METER			0b0101111
#define ADDRESS_BATTERY				0x0b

//testing of leg module test sensor
#define ADDRESS_TEMP_TEST	0x48

/*Temperature registers*/
#define	TEMP_REG		0x00	//r		2B
#define	TEMP_CONF		0x01	//rw	1B
#define	TEMP_HYS_REG	0x02	//rw	2B
#define	TEMP_OS_REG		0x03	//rW	2B

/*Current registers*/
#define	CUR_CONF_REG		0x00	//rw	2B
#define	CUR_SHUNT_REG		0x01	//r		2B
#define	CUR_BUS_VOLTAGE_REG	0x02	//r		2B
#define	CUR_CALIBRATION_REG	0x05	//rw	2B
#define	CUR_CURRENT_REG		0x04	//r		2B
#define	CUR_POWER_REG		0x03	//r		2B



/*Battery registers*/
#define BAT_BATTERYSTATUS_REG		0x16
#define BAT_ATRATETIMETOEMPTY_REG	0x12
#define BAT_ATRATETIMETOFULL_REG	0x13
#define BAT_TEMPERATURE_REG			0x08
#define BAT_VOLTAGE_REG				0x09
#define BAT_CURRENT_REG				0x10
#define BAT_STATE_OF_CHARGE_REG		0x0D
#define BAT_STATE_OF_HEALTH_REG		0x4F
#define BAT_CYCLE_COUNT_REG			0x17
#define BAT_CHARGING_CURRENT_REG	0x14
#define BAT_CHARGING_VOLTAGE_REG	0x15

/*QI registers*/
#define QI_VOLTAGE_REG		0x40
#define QI_CURRENT_REG		0x42


#endif /* GLOBAL_REGISTER_H_ */