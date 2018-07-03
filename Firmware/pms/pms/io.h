/*
 * io.h
 *
 * Created: 12-6-2018 15:14:01
 *  Author: NEF
 */ 


#ifndef IO_H_
#define IO_H_

void io_init();
void io_led0_enable();
void io_led1_enable();
void io_solar_enable();
void io_laptop_enable();
void io_qi_enable();
void io_3v3_enable();
void io_5v_enable();
void io_16v_enable();
void io_solar_disable();
void io_laptop_disable();
void io_qi_disable();
void io_3v3_disable();
void io_5v_disable();
void io_16v_disable();
void io_led1_disable();
void io_led0_disable();



#endif /* IO_H_ */