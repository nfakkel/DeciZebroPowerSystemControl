#ifndef MPPT_H_
#define MPPT_H_

#define LEFT 0x01
#define RIGHT 0x00

uint8_t PowerOld;
uint8_t LastStep;

extern uint8_t DutyCycle;

void mppt_init(void);
void mppt(uint8_t power);
#endif