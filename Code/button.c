#include "button.h"

void button_init(void)
{
    PORT_DIR(button_port) &= ~(button_pin);
    
}

