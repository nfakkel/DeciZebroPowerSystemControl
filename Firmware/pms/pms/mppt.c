# include <avr/io.h >
# include <util/delay.h >
# include <inttypes.h >
# include <stdio.h>#include "pwm.h"# include "mppt.h"void mppt_init(void){	PowerOld = 0;
	LastStep = RIGHT;}void mppt(uint16_t power){	if (((power > PowerOld) & (LastStep == RIGHT)) | ((power < PowerOld) & (LastStep == LEFT)))	{		PWM_IncrementDutyCycle(STEP_SIZE);		TCC0.CCDBUF = DutyCycle;		LastStep = RIGHT;	}	else	{		PWM_DecrementDutyCycle(STEP_SIZE);		TCC0.CCDBUF = DutyCycle;		LastStep = LEFT;	}	PowerOld = power;}