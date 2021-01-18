#ifndef __SYSTEM_H__
#define __SYSTEM_H__

//--- dependencies ------------------------------------------------------------
#include "common.h"

//--- function prototypes -----------------------------------------------------
void system_init(void);
static void _system_clock_init(void);
static void _system_adc_init(void);
unsigned int adc12_scsc(void);

#endif // __SYSTEM_H__
