/*
 * Timer.c
 *
 *  Created on: 10.12.2020
 *      Author: andrin.kaelin
 */

//--- dependencies ------------------------------------------------------------
#include "Timer.h"

//---TIMER------------------------------------------------------------------------$$
void timer_init(void){

    TACCTL1 |= (CM0 | OUTMOD0 | OUTMOD1| CCIE);  // No capture, Outmodus Set/Reset, Interrupt enable
    TACCTL0 |= (CM0 | OUTMOD0 | OUTMOD2);
    TACCR1 = 0x4B0;                             // Count 1200 steps which is around 100ms
    TACCR0 = 0x258;                             // Reset after 1800 steps
    TACTL |= (TASSEL_1 | MC_2);                 // Clock source ACKL, Continuous mode
    // The timer starts counting as soon as the clocksource is connected and the MC is set
}



