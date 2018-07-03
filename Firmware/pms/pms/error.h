/*
 * error.h
 *
 * Created: 5-6-2018 19:19:30
 *  Author: NEF
 */ 


#ifndef ERROR_H_
#define ERROR_H_

#define ERROR_SIZE 255
#define ERROR_UNKNOWN 0
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
#define ERROR_OCBUS 13
#define ERROR_OCSOLAR 14
#define ERROR_OC3V3 15
#define ERROR_OC5V 16
#define ERROR_OC16V 17
#define ERROR_OCQI 18
#define ERROR_3V3_FUSE 19
#define ERROR_5V_FUSE 20
#define ERROR_16V_FUSE 21
#define ERROR_OTI 22
#define ERROR_OTO 23
#define ERROR_UTI 24
#define ERROR_UTO 25
#define ERROR_UVB 26 //Under-voltage bus
#define ERROR_OVB 26 //Over-Voltage bus

void error_init();
void error_report(uint8_t error);
uint8_t error_read(uint8_t error);
#endif /* ERROR_H_ */