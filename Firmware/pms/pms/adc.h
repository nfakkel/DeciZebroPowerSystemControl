#ifndef ADC_H
#define ADC_H

#include "avr_compiler.h"

#define COMMON_MODE_CYCLES 16
#define DMA_CHANNEL 0 
#define DMA_BUFFER_SIZE 64

//DMA hopes and dreams
//static uint16_t adc_buffer[DMA_BUFFER_SIZE/2];


//configures the interrupt mode and level for one channel.

#define ADC_Ch_Interrupts_Config(_adc_ch, _interruptMode, _interruptLevel)     \
	(_adc_ch)->INTCTRL = (((_adc_ch)->INTCTRL &                            \
	                      (~(ADC_CH_INTMODE_gm | ADC_CH_INTLVL_gm))) |     \
	                      ((uint8_t) _interruptMode | _interruptLevel))


//global vars
extern int8_t offset;
int8_t offset;

//flags
extern uint8_t laptop_flag;
uint8_t laptop_flag;


/* Prototypes for functions. */

void adc_init(void);
int16_t ADC_ResultCh_GetWord_Signed(ADC_CH_t * adc_ch, int8_t offset);
int8_t ADC_Offset_Get_Signed(ADC_t * adc, ADC_CH_t *ch, bool oversampling);
uint8_t ReadCalibrationByte( uint8_t index );
void ADC_Wait_8MHz(ADC_t * adc);
void Read_adc(void);

#endif


/* Offset addresses for production signature row on GCC */
#ifndef ADCACAL0_offset

#define ADCACAL0_offset 0x20
#define ADCACAL1_offset 0x21

#endif