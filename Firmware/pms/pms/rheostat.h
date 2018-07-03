#ifndef RHEOSTAT_H_
#define RHEOSTAT_H_

uint16_t R;
uint16_t D;
uint8_t set;

void set_Rheostat(uint8_t busvoltage);
void read_Rheostat(void);

#endif