#include <avr/io.h>
#include "twi_master_driver.h"
#include "global_register.h"
#include "virtual_register.h"
#include "sensors.h"
#include "rheostat.h"

void set_Rheostat(uint8_t busvoltage)
{	
	
  //according to feedback network Rrheo = 2.48 * 60k / (Vbus - 2.8) - 11k	
 // R = 148800/(busvoltage*0.32-2.8)+11000;
  
  //Duty cycle is then set according to D = (Rpot - Rw) *128 / Rab
  //D = (R-130)*128/100000;
  //set = (uint8_t) (D>>8);
  
  uint8_t set_register[2] = {0b00010000, busvoltage};
  
  //write duty cycle to RDAC
  TWI_MasterWriteRead(&twiMaster,ADDRESS_RHEOSTAT,&set_register[0],2,0);
  while(twiMaster.status != TWIM_STATUS_READY) {}
}

void read_Rheostat(void)
{	
	//read stored EEPROM setting
	uint8_t serial_register[2] = {0b00110000, 0b00000011};

	TWI_MasterWriteRead(&twiMaster, ADDRESS_RHEOSTAT, &serial_register[0], 2, 1);
	while(twiMaster.status != TWIM_STATUS_READY) {}
	vregs_write(VREGS_RHEOSTAT_SETTING,twiMaster.readData[0]);
}
