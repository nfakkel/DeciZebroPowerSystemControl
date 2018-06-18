# include <avr/io.h >
# include <util/delay.h >
# include <inttypes.h >
# include <stdio.h>#include "pwm.h"# include "mppt.h"void mppt_init(void){	PowerOld = 0;
	LastStep = RIGHT;}void mppt(uint8_t power){	if (((power > PowerOld) & (LastStep == RIGHT)) | ((power < PowerOld) & (LastStep == LEFT)))	{		PWM_IncrementDutyCycle(1);		TCC0.CCDBUF = DutyCycle;		LastStep = RIGHT;	}	else	{		PWM_DecrementDutyCycle(1);		TCC0.CCDBUF = DutyCycle;		LastStep = LEFT;	}	PowerOld = power;}