#ifndef __LED_H__
#define __LED_H__

#include "common.h"

#define LED1_PORT       P6
#define LED1_PIN        BIT0

void led1_init(void);
void led1_toggle(void);
void led1_on(void);
void led1_off(void);
#endif // __LED_H__
