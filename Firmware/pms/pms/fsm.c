#include "stdint.h"
#include "fsm.h"
#include "io.h"
#include "adc.h"
#include "twi_master_driver.h"
#include "zebro_alert.h"
#include "virtual_register.h"
#include "sensors.h"

/*	
	start state
	
	charge state 
	
	solar charge
	
	discharge state
	
	shutdown state
*/
void determine_state()
{
	pms_state = pms_next_state;

	switch (pms_state)
	{
		case PMS_START:
			//state leds 11
			io_led0_enable();
			io_led1_enable();
			
			//no i/o enabled
			io_solar_disable();
			io_laptop_disable();
			io_qi_disable();
			
			io_3v3_disable();
			io_5v_disable();
			io_16v_disable();
		   
		   	vregs_write(VREGS_QUICK_STATUS,PMS_START);
			   	
			//transition conditions
			
			//default if nothing is wrong
			pms_next_state = PMS_DISCHARGE;
			
			if (bat_empty_flag) {pms_next_state = PMS_PV_CHARGE;}
			
			if(laptop_flag) {pms_next_state = PMS_CHARGE;}		
						
			if(critical_error) {pms_next_state = PMS_SHUTDOWN;}
			
			if(pms_next_state == pms_next_state)	
				
		break;
		
		
		case PMS_CHARGE:
		    
			//state leds 10
			io_led0_enable();
			io_led1_disable();
			
			//
			io_solar_enable();
			io_qi_enable();
			io_laptop_enable();
			
			//outputs enabled
			io_3v3_enable();
			io_5v_enable();
			io_16v_enable();
            
	
			vregs_write(VREGS_QUICK_STATUS,PMS_CHARGE);
			
			pms_next_state = PMS_CHARGE;
			
			if(laptop_flag) {pms_next_state = PMS_DISCHARGE;}	
			
			if (bat_empty_flag) {pms_next_state = PMS_PV_CHARGE;}
				
			if(critical_error) {pms_next_state = PMS_SHUTDOWN;}
		
		break;
		
		case PMS_PV_CHARGE:

			//state leds 10
			io_led0_enable();
			io_led1_disable();
		
			io_solar_enable();
			io_laptop_disable();
			io_qi_enable();

			//Disable 16V bus
			io_3v3_enable();
			io_5v_enable();
			io_16v_disable();	//disable unregulated bus (unless override is set by the zebro main control)	
			
			vregs_write(VREGS_QUICK_STATUS,PMS_PV_CHARGE);
	
			pms_next_state = PMS_PV_CHARGE;
			
			//if enough power continue
			if(~laptop_flag) {pms_next_state = PMS_DISCHARGE;}
		
			if (laptop_flag) {pms_next_state = PMS_CHARGE;}
				
			if(critical_error) {pms_next_state = PMS_SHUTDOWN;}
		
		break;		

		
		case PMS_DISCHARGE:

			//state leds 01
			io_led0_disable();
			io_led1_enable();
			
			//input/output status
			io_solar_enable();
			io_laptop_disable();
			io_qi_enable();

			io_3v3_enable();
			io_5v_enable();
			io_16v_enable();
			
			vregs_write(VREGS_QUICK_STATUS,PMS_DISCHARGE);
	
			pms_next_state = PMS_DISCHARGE;
			
			if (laptop_flag) {pms_next_state = PMS_CHARGE;}
										
			if (bat_empty_flag) {pms_next_state = PMS_PV_CHARGE;}
			
			if(critical_error) {pms_next_state = PMS_SHUTDOWN;}
				
		break;	
		
		case PMS_SHUTDOWN:
			//raise_zebro_interrupt
			zebro_alert();
		
			//state leds 00
			io_led0_disable();
			io_led1_disable();
			
			//disable input/output 
			io_solar_disable();
			io_laptop_disable();
			io_qi_disable();
			io_3v3_disable();
			io_5v_disable();
			io_16v_disable();

			vregs_write(VREGS_QUICK_STATUS,PMS_SHUTDOWN);
			
			//terminate TODO			
		break;
		
		//case PMS_SLEEP:
		//zebro_alert();
		//
		//state.input_lc = 0;
		//state.input_pv = 1;
		//state.input_qi = 0;
		//state.output_33 = 0;
		//state.output_5 = 0;
		//state.output_16 = 0;
		////save vregs
		////raise_zebro_interrupt
		//
		//if(Vbat > Vcritical) {state.mode = PMS_START} //implement low power mode
		//
		//break;		
		}
	

}	