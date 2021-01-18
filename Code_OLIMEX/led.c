#include "led.h"

void led1_init(void)
{
     PORT_DIR(LED1_PORT) |= LED1_PIN;
}

void led1_toggle(void)
{
    PORT_OUT(LED1_PORT) ^= LED1_PIN;
}

void led1_on(void)
{
    PORT_OUT(LED1_PORT) &= ~(LED1_PIN);
}

void led1_off(void)
{
    PORT_OUT(LED1_PORT) |= LED1_PIN;
}
