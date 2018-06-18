/*
 * error.h
 *
 * Created: 5-6-2018 19:19:30
 *  Author: NEF
 */ 


#ifndef ERROR_H_
#define ERROR_H_

#define ERROR_SIZE 16
#define ERROR_OCA 1//Over-Current Alarm
#define ERROR_TCA 2//Terminate Charge Alarm
#define ERROR_OTA 3//Over Temperature Alarm
#define ERROR_TDA 4//Terminate Discharge Alarm
#define ERROR_RCA 5//Remaining Capacity Alarm
#define ERROR_RTA 6//Remaining Time Alarm
#define ERROR_BUSY 7//Battery Busy
#define ERROR_RESERVEDCMD 8//Reserved command
#define ERROR_UNSUPPORTEDCMD 9//Unsupported command
#define ERROR_ACCESSDENIED 10//Access denied
#define ERROR_UNDEROVERFLOW 11//Underflow or Overflow
#define ERROR_BADSIZE 12//Bad Size
#define ERROR_UNKNOWN 16//Unknown error
#define ERROR_3V3_FUSE 13
#define ERROR_5V_FUSE 14
#define ERROR_16V_FUSE 15

extern uint8_t CRITICAL_ERROR;


void error_init();
void error_report(uint8_t error);
uint8_t error_read(uint8_t error);
#endif /* ERROR_H_ */