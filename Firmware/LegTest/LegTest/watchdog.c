#include "watchdog.h"

void watchdog_init(void)
{
	//configure 1s time out period
	WDT.CTRL |= (WDT_WPER0_bm | WDT_WPER1_bm | WDT_WPER2_bm | WDT_CEN_bm);
	
	//enable watchdog timer
	WDT.CTRL |= (WDT_ENABLE_bm | WDT_CEN_bm);
}