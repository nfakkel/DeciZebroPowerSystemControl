/*
 * sensors.h
 *
 * Created: 12-6-2018 20:33:45
 *  Author: NEF
 */ 


#ifndef SENSORS_H_
#define SENSORS_H_
extern TWI_Master_t	twiMaster;
void sensor_init();
void Check_And_Write_Battery_Registers(uint8_t reg, uint8_t high_byte, uint8_t low_byte);
void Read_Battery_Registers(void);
void Check_And_Write_Current_Registers(uint8_t reg, uint8_t adr, uint8_t high_byte, uint8_t low_byte);
void Read_Current_Registers(void);
void Check_And_Write_Qi_Registers(uint8_t reg, uint8_t high_byte, uint8_t low_byte);
void Read_Qi_Registers(void);
void Check_And_Write_Temperature_Registers(uint8_t adr, uint8_t high_byte, uint8_t low_byte);
void Read_Temperature_Registers(void);
#endif /* SENSORS_H_ */