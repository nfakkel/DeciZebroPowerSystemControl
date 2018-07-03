/*
 * sensors.c
 *
 * Created: 12-6-2018 20:45:10
 *  Author: NEF
 */ 
#include <avr/io.h>
#include "twi_master_driver.h"
#include "global_register.h"
#include "virtual_register.h"
#include "error.h"
#include "sensors.h"

TWI_Master_t twiMaster;

uint8_t bat_empty_flag = 0;
uint8_t critical_error = 0;
#define BAUDRATE	100000
#define CPU_SPEED	32000000
#define TWI_BAUDSETTING TWI_BAUD(CPU_SPEED, BAUDRATE)


void sensor_init()
{
	TWI_MasterInit(&twiMaster, &TWIE, TWI_MASTER_INTLVL_LO_gc, TWI_BAUDSETTING); //Initialize PortC TWI interface;
}

void current_init()
{
		uint8_t current_addresses[4] = {ADDRESS_CURRENT_SENS_BUS,ADDRESS_CURRENT_SENS_5V, ADDRESS_CURRENT_SENS_3V3, ADDRESS_CURRENT_SENS_SOLAR};
		uint8_t current_register[3] = {CUR_CALIBRATION_REG, 0x08, 0x00};
		uint8_t currentbus_register[3] = {CUR_CALIBRATION_REG, 0x10, 0x00};
		uint8_t current_mask_register[3] = {CUR_MASK_REG, 0x10, 0x00};
		uint8_t curent_alert_register[3] = {CUR_ALERT_REG, 0x0a, 0x00};
		//calibrate bus sensor	
		TWI_MasterWriteRead(&twiMaster, current_addresses[0], &currentbus_register[0], 3, 0);
		while(twiMaster.status != TWIM_STATUS_READY) {}
		//mask bus sensor
		TWI_MasterWriteRead(&twiMaster, current_addresses[0], &current_mask_register[0], 3, 0);
		while(twiMaster.status != TWIM_STATUS_READY) {}
		//alert bus sensor
		TWI_MasterWriteRead(&twiMaster, current_addresses[0], &curent_alert_register[0], 3, 0);
		while(twiMaster.status != TWIM_STATUS_READY) {}
		//calibrate other sensors	
		for (uint8_t AdrPos = 1; AdrPos < 4; AdrPos++)
		{
			TWI_MasterWriteRead(&twiMaster, current_addresses[AdrPos], &current_register[0], 3, 0);
			while(twiMaster.status != TWIM_STATUS_READY) {}
		}
		
}

void Check_And_Write_Battery_Registers(uint8_t reg, uint8_t high_byte, uint8_t low_byte)
{
	switch(reg) {
		case BAT_BATTERYSTATUS_REG :
		if (high_byte & 0b10000000) {error_report(ERROR_OCA);}
		if (high_byte & 0b01000000) {error_report(ERROR_TCA);}
		if (high_byte & 0b00010000) {error_report(ERROR_OTA);}
		if (high_byte & 0b00001000) {error_report(ERROR_TDA);critical_error=1;}
		if (high_byte & 0b00000010) {error_report(ERROR_RCA);bat_empty_flag=1;}
		if (high_byte & 0b00000001) {error_report(ERROR_RTA);bat_empty_flag=1;}
		if (low_byte & 0b10000000) {/*INIT completed flaghigh*/}
		if (low_byte & 0b01000000) {/*DSG detected flaghigh*/}
		if (low_byte & 0b00010000) {/*Fully Charged flaghigh*/}
		if (low_byte & 0b00001000) {/*Fully Discharged flaghigh*/bat_empty_flag = 1;}
		if ((low_byte & 0b111) == 0b001) {error_report(ERROR_BUSY);}
		if ((low_byte & 0b111) == 0b010) {error_report(ERROR_RESERVEDCMD);}
		if ((low_byte & 0b111) == 0b010) {error_report(ERROR_UNSUPPORTEDCMD);}
		if ((low_byte & 0b111) == 0b010) {error_report(ERROR_ACCESSDENIED);}
		if ((low_byte & 0b111) == 0b010) {error_report(ERROR_UNDEROVERFLOW);}
		if ((low_byte & 0b111) == 0b010) {error_report(ERROR_BADSIZE);}
		if ((low_byte & 0b111) == 0b010) {error_report(ERROR_UNKNOWN);}
		vregs_write(VREGS_BATTERY_STATUS_LOW, low_byte);
		vregs_write(VREGS_BATTERY_STATUS_HIGH, high_byte);
		break;
		case BAT_ATRATETIMETOEMPTY_REG :
		vregs_write(VREGS_TIME_TO_EMPTY_LOW, low_byte);
		vregs_write(VREGS_TIME_TO_EMPTY_HIGH, high_byte);
		break;
		case BAT_ATRATETIMETOFULL_REG :
		vregs_write(VREGS_TIME_TO_FULL_LOW, low_byte);
		vregs_write(VREGS_TIME_TO_FULL_HIGH, high_byte);
		break;
		case BAT_TEMPERATURE_REG :
		vregs_write(VREGS_BATTERY_TEMP_LOW, low_byte);
		vregs_write(VREGS_BATTERY_TEMP_HIGH, high_byte);
		break;
		case BAT_VOLTAGE_REG :
		vregs_write(VREGS_BATTERY_VOLTAGE_LOW, low_byte);
		vregs_write(VREGS_BATTERY_VOLTAGE_HIGH, high_byte);
		break;
		case BAT_CURRENT_REG :
		vregs_write(VREGS_BATTERY_CURRENT_LOW, low_byte);
		vregs_write(VREGS_BATTERY_CURRENT_HIGH, high_byte);
		break;
		case BAT_STATE_OF_CHARGE_REG :
		vregs_write(VREGS_STATE_OF_CHARGE_LOW, low_byte);
		vregs_write(VREGS_STATE_OF_CHARGE_HIGH, high_byte);
		break;
		case BAT_STATE_OF_HEALTH_REG :
		vregs_write(VREGS_STATE_OF_HEALTH_LOW, low_byte);
		vregs_write(VREGS_STATE_OF_HEALTH_HIGH, high_byte);
		break;
		case BAT_CYCLE_COUNT_REG :
		vregs_write(VREGS_NUMBER_OF_CYCLES_LOW, low_byte);
		vregs_write(VREGS_NUMBER_OF_CYCLES_HIGH, high_byte);
		break;
		default :
		error_report(ERROR_UNKNOWN);
	}
}
void Read_Battery_Registers(void)
{
	uint8_t battery_register[11] = {BAT_BATTERYSTATUS_REG, BAT_ATRATETIMETOEMPTY_REG, BAT_ATRATETIMETOFULL_REG,	BAT_TEMPERATURE_REG, BAT_VOLTAGE_REG, BAT_CURRENT_REG, BAT_STATE_OF_CHARGE_REG, BAT_STATE_OF_HEALTH_REG, BAT_CYCLE_COUNT_REG, BAT_CHARGING_CURRENT_REG, BAT_CHARGING_VOLTAGE_REG};
	
	for (int RegPos = 0; RegPos < 11; RegPos++)
	{
		TWI_MasterWriteRead(&twiMaster, ADDRESS_BATTERY, &battery_register[RegPos], 1, 2);
		while(twiMaster.status != TWIM_STATUS_READY) {}
		Check_And_Write_Battery_Registers(battery_register[RegPos],twiMaster.readData[0],twiMaster.readData[1]);
	}
}

void Check_And_Write_Current_Registers(uint8_t reg, uint8_t adr, uint8_t high_byte, uint8_t low_byte)
{
	switch(adr) {
		case ADDRESS_CURRENT_SENS_BUS :
		switch(reg) {
			case CUR_BUS_VOLTAGE_REG :
					
					if (high_byte < 0x0a)
					{
	//					bat_empty_flag=1;
						critical_error=1;
						error_report(ERROR_UVB);
					}
					if (high_byte > 0x35)
					{
						error_report(ERROR_OVB);
					}
			vregs_write(VREGS_BUS_VOLTAGE_LOW, low_byte);
			vregs_write(VREGS_BUS_VOLTAGE_HIGH, high_byte);
			break;
			case CUR_CURRENT_REG :
			vregs_write(VREGS_BUS_CURRENT_LOW, low_byte);
			vregs_write(VREGS_BUS_CURRENT_HIGH, high_byte);
			break;
			case CUR_SHUNT_REG :
			vregs_write(VREGS_BUS_CURRENT_LOW, low_byte);
			vregs_write(VREGS_BUS_CURRENT_HIGH, high_byte);
			break;
			
			default :
			error_report(ERROR_UNKNOWN);
		}
		break;
		case ADDRESS_CURRENT_SENS_5V :
		switch(reg) {
			case CUR_CURRENT_REG :
			vregs_write(VREGS_5V_CURRENT_LOW, low_byte);
			vregs_write(VREGS_5V_CURRENT_HIGH, high_byte);
			break;
			case  CUR_BUS_VOLTAGE_REG:
			vregs_write(VREGS_5V_VOLTAGE_LOW, low_byte);
			vregs_write(VREGS_5V_VOLTAGE_HIGH, high_byte);
			break;
			
			case CUR_CONF_REG :
			vregs_write(VREGS_5V_CURRENT_LOW, low_byte);
			vregs_write(VREGS_5V_CURRENT_HIGH, high_byte);
			break;
			
			default :
			error_report(ERROR_UNKNOWN);
		}
		break;
		case ADDRESS_CURRENT_SENS_3V3 :
		switch(reg) {
			case CUR_CURRENT_REG :
			vregs_write(VREGS_3V3_CURRENT_LOW, low_byte);
			vregs_write(VREGS_3V3_CURRENT_HIGH, high_byte);
			break;
			case CUR_BUS_VOLTAGE_REG :
			vregs_write(VREGS_3V3_VOLTAGE_LOW, low_byte);
			vregs_write(VREGS_3V3_VOLTAGE_HIGH, high_byte);
			break;
			
			case CUR_CONF_REG :
			vregs_write(VREGS_3V3_CURRENT_LOW, low_byte);
			vregs_write(VREGS_3V3_CURRENT_HIGH, high_byte);
			break;
			
			default :
			error_report(ERROR_UNKNOWN);
		}
		break;
		case ADDRESS_CURRENT_SENS_SOLAR :
		switch(reg) {
			case CUR_CURRENT_REG :
				vregs_write(VREGS_SOLAR_CURRENT_LOW, low_byte);
				vregs_write(VREGS_SOLAR_CURRENT_HIGH, high_byte);
				break;
				
			case CUR_BUS_VOLTAGE_REG :
				vregs_write(VREGS_SOLAR_VOLTAGE_LOW, low_byte);
				vregs_write(VREGS_SOLAR_VOLTAGE_HIGH, high_byte);
				break;
			
			case CUR_CONF_REG :
				vregs_write(VREGS_SOLAR_CURRENT_LOW, low_byte);
				vregs_write(VREGS_SOLAR_CURRENT_HIGH, high_byte);
				break;
			default :
			error_report(ERROR_UNKNOWN);
		}
		break;
		default :
		error_report(ERROR_UNKNOWN);
	}
}

void Read_Current_Registers(void)
{
	uint8_t current_addresses[4] = {ADDRESS_CURRENT_SENS_BUS,ADDRESS_CURRENT_SENS_5V, ADDRESS_CURRENT_SENS_3V3, ADDRESS_CURRENT_SENS_SOLAR};
	uint8_t current_register[2] = {CUR_CURRENT_REG, CUR_BUS_VOLTAGE_REG};
	for (uint8_t AdrPos = 0; AdrPos < 4; AdrPos++)
	{
		for (uint8_t RegPos = 0; RegPos < 2; RegPos++)
		{
			TWI_MasterWriteRead(&twiMaster, current_addresses[AdrPos], &current_register[RegPos], 1, 2);
			while(twiMaster.status != TWIM_STATUS_READY) {}
			Check_And_Write_Current_Registers(current_register[RegPos],current_addresses[AdrPos],twiMaster.readData[0],twiMaster.readData[1]);
		}
	}
}

void Check_And_Write_Qi_Registers(uint8_t reg, uint8_t high_byte, uint8_t low_byte)
{
	switch(reg) {
		case QI_VOLTAGE_REG :
		vregs_write(VREGS_QI_VOLTAGE_LOW, low_byte);
		vregs_write(VREGS_QI_VOLTAGE_HIGH, high_byte);
		break;
		case QI_CURRENT_REG :
		vregs_write(VREGS_QI_CURRENT_LOW, low_byte);
		vregs_write(VREGS_QI_CURRENT_HIGH, high_byte);
		break;
		default :
		error_report(ERROR_UNKNOWN);
	}
}
void Read_Qi_Registers(void)
{
	uint8_t qi_register[2] = {QI_VOLTAGE_REG, QI_CURRENT_REG};
	
	for (int RegPos = 0; RegPos < 2; RegPos++)
	{
		TWI_MasterWriteRead(&twiMaster, ADDRESS_QI_RECEIVER, &qi_register[RegPos], 1, 2);
		while(twiMaster.status != TWIM_STATUS_READY) {}
		Check_And_Write_Qi_Registers(qi_register[RegPos],twiMaster.readData[0],twiMaster.readData[1]);
	}
}

void Check_And_Write_Temperature_Registers(uint8_t adr, uint8_t high_byte, uint8_t low_byte)
{
	switch(adr) {
		case ADDRESS_TEMP_SENS_INPUT :
		
		if (high_byte & 0b10000000)//If the input temperature is lower than 0 degrees Celsius trigger UTI
		{
			error_report(ERROR_UTI);
		}
		else if (high_byte > 0x2d)//If the input temperature is higher than 45 degrees Celsius trigger OTI
		{
			error_report(ERROR_OTI);
		}
		vregs_write(VREGS_INPUT_TEMP_LOW, low_byte);
		vregs_write(VREGS_INPUT_TEMP_HIGH, high_byte);
		break;
		case ADDRESS_TEMP_SENS_OUTPUT :
		if (high_byte & 0b10000000)//If the input temperature is lower than 0 degrees Celsius trigger UTI
		{
			error_report(ERROR_UTO);
		}
		else if (high_byte > 0x41) //If the output temperature is higher than 60 degrees Celsius trigger OTO
		{
			error_report(ERROR_OTO);
		}
		vregs_write(VREGS_OUTPUT_TEMP_LOW, low_byte);
		vregs_write(VREGS_OUTPUT_TEMP_HIGH, high_byte);
		break;
		default :
		error_report(ERROR_UNKNOWN);
	}
}

void Read_Temperature_Registers(void)
{
	uint8_t temperature_addresses[2] = {ADDRESS_TEMP_SENS_INPUT, ADDRESS_TEMP_SENS_OUTPUT};
	uint8_t temperature_register[1] = {TEMP_REG};
	
	for (uint8_t AdrPos = 0; AdrPos < 2; AdrPos++)
	{
		TWI_MasterWriteRead(&twiMaster, temperature_addresses[AdrPos], &temperature_register[0], 1, 2);
		while(twiMaster.status != TWIM_STATUS_READY) {}
		Check_And_Write_Temperature_Registers(temperature_addresses[AdrPos],twiMaster.readData[0],twiMaster.readData[1]);
	}
}