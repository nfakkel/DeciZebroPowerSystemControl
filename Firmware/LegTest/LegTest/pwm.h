/*
 * pwm.h
 *
 * Created: 3-6-2018 14:20:47
 *  Author: NEF
 */ 


#ifndef PWM_H_
#define PWM_H_

 // ***********************************************
 // Definitions for Pulse - Width - Modulation module .
 // ***********************************************
 // The period used for the PWM clock ( Timer0 ) .
 # define PWM_period 0x00FF
 // High resolution mask used to make sure the
 // two LSBs in TCC0 . PER are zero .
 # define HiResMask 0xFFFC
 // Maximum PWM dutycycle
 # define DUTYCYCLE_MAX 240
 // Minimum PWM dutycycle
 # define DUTYCYCLE_MIN 100
 // Valid range of the PWM dutycycle based
 // on min / max limits .
 # define DUTYCYCLE_VALID_RANGE = ( DUTYCYCLE_MAX - DUTYCYCLE_MIN )
 // A " safe " default PWM dutycycle for debugging etc .
 # define DUTYCYCLE_DEFAULT 150//210
 #define STEP_SIZE 10

 # define TRUE 1
 # define FALSE 0

 // *************************************************
 // Global variables
 // *************************************************
 extern uint8_t DutyCycle ;

 uint8_t DutyCycle ;
 // ************************************************
 // Function prototypes
 // ************************************************
 void PWM_Enable ( void ) ;
 void PWM_Disable ( void ) ;
 unsigned char PWM_DecrementDutyCycle( uint8_t StepSize ) ;
 unsigned char PWM_IncrementDutyCycle( uint8_t StepSize ) ;
 uint8_t SetDutyCycle( uint8_t NewDutyCycle ) ;

#endif /* PWM_H_ */