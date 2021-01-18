#include "spi.h"

void give_to_port(unsigned int Digit)
{
    PORT_DIR(P1) |= 0xFF;
    PORT_DIR(P2) |= 0x0F;
    
    PORT_OUT(P1) = ((PORT_OUT(P1) & 0)| (Digit & 0x00FF));
    PORT_OUT(P2) = ((PORT_OUT(P2) & 0)| ((Digit & 0x0F00)>>8));
    
    
}
