#ifndef MPPT_H_
#define MPPT_H_

#define LEFT 0x01
#define RIGHT 0x00

uint8_t PowerOld;
uint8_t LastStep;



void mppt_init(void);
void mppt(uint16_t power);
#endif