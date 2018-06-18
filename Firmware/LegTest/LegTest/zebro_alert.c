#include <avr/io.h>
#include "zebro_alert.h"
//ZebroBus alerts
void zebro_alert_init(void)
{
//	PORTC.DIRSET |= PIN7_bm;
//	PORTC.OUTSET |= ~PIN7_bm;
	PORTA.DIRSET |= PIN0_bm;
	PORTA.OUTSET |= ~PIN0_bm;
}

void zebro_alert(void)
{
//	PORTC.OUTSET |= PIN7_bm;
	PORTA.OUTSET |= PIN0_bm;
}

void clear_zebro_alert(void)
{
//	PORTC.OUTCLR |= PIN7_bm;
	PORTA.OUTCLR |= PIN0_bm;
}