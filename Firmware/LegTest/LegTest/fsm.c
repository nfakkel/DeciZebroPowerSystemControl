#include "fsm.h"
#include "io.h"
/*
	
	determine_power_scheme
	set_power_scheme
	
	start state
	
	charge state (charge done state adden?)
	
	discharge state
	
	shutdown state
	
*/
static struct pms_state state = { 0, 0, 0, 0, 0, 0, 0, 0, 0 };
static struct pms_state next_state = { 0, 0, 0, 0, 0, 0, 0, 0, 0 };

static uint8_t current_state = PMS_START;
static uint8_t recent_charge = 0;

uint8_t determine_state()
{
	next_state = state;

	switch (state.mode)
	{
		case PMS_START:
			//transition conditions
			io_led0_en();
			io_led1_en();
			
			io_disable_all();		
			
			if(laptop_flag | qi_flag) {state.mode = PMS_LC_CHARGE}
					
			if ((Vbat < Vlow) & ~disable_pv_charge) {state.mode = PMS_PV_CHARGE}
			
			if(~(laptop_flag | (qi_flag))) {state.mode = PMS_DISCHARGE}
			
			if((Vbat < Vcritical) {state.mode = PMS_PV_CHARGE}
			
			if(critical_error) {state.mode = PMS_SHUTDOWN}
				
		break;
		
		
		case PMS_LC_CHARGE:
		
			//debugging leds
			io_led0_en();
			io_led1_dis();
			
			io_solar_enable();
			io_qi_disable();
			io_lc_enable();
			
			io_3v3_enable();
			io_5v_enable();
			io_16v_enable();
			
			if ((~laptop_flag) & (~qi_flag) & (Vbat < (Vlow & (disable_pv_charge != true)))) {state.mode = PMS_PV_CHARGE}
		
			if ((Vlaptop & Vqi == false) & Vbat > critical) {state.mode = PMS_DISCHARGE}
			//meer flags (time left till dod 100 bijv.)
			if(critical_error) {state.mode = PMS_SHUTDOWN}
		
		break;
		
		case PMS_QI_CHARGE:

			//debugging leds
			io_led0_en();
			io_led1_dis();

			io_solar_enable();
			io_lc_disable();			
			io_qi_enable();

			io_3v3_enable();
			io_5v_enable();
			io_16v_enable();
			
			if (Vlaptop == true ) {state.mode = PMS_LC_CHARGE}
			
			if ((~laptop_flag) & (~qi_flag) & (Vbat < (Vlow & (disable_pv_charge != true)))) {state.mode = PMS_PV_CHARGE}
			
			if ((Vlaptop & Vqi == false) & Vbat > critical) {state.mode = PMS_DISCHARGE}
			//meer flags (time left till dod 100 bijv.)
			if(critical_error) {state.mode = PMS_SHUTDOWN}		
		
		break;
		
		case PMS_PV_CHARGE:

			//debugging leds
			io_led0_en();
			io_led1_dis();
		
			io_solar_enable();
			io_lc_disable();
			io_qi_enable();

			io_3v3_enable();
			io_5v_enable();
			io_16v_disable();	//disable unregulated bus (unless override is set by the zebro main control)	
		
			if (Vlaptop == true ) {state.mode = PMS_LC_CHARGE}
			else if( Vqi == true ) {state.mode = PMS_QI_CHARGE}

			if(critical_error) {state.mode = PMS_SHUTDOWN}
		
		break;		

		
		case PMS_DISCHARGE:

			//debugging leds
			io_led0_dis();
			io_led1_en();
			
			//input/output status
			io_solar_enable();
			io_lc_disable();
			io_qi_disable();

			io_3v3_enable();
			io_5v_enable();
			io_16v_enable();
			
			if (Vlaptop == true ) {state.mode = PMS_LC_CHARGE}
			else if( Vqi == true ) {state.mode = PMS_QI_CHARGE}
						
			if((Vbat < Vlow) & (~disable_pv_charge)) {state.mode = PMS_PV_CHARGE}
			
			if(Vbat < Vcritical) {state.mode = PMS_PV_CHARGE}
			
			if(critical_error) {state.mode = PMS_SHUTDOWN}
				
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
		
		case PMS_SHUTDOWN:
		
			//debugging leds
			io_led0_dis();
			io_led1_dis();
			
			//input/output status
			io_disable_all();	
		
			zebro_alert();
			//save vregs
			//raise_zebro_interrupt
			
		break;
	}
	

}

//uint8_t write_pms_state_to_vregs(state)
//{
	//vregs_write(VREGS_FSM_STATUS, (state.input_lc<<6));
	//vregs	
//}
		