
//--- dependencies ------------------------------------------------------------
#include "system.h"

//--- private functions -------------------------------------------------------
static void _system_clock_init(void);

// ----------------------------------------------------------------------------
void system_init(void)
{
    // stop watchdog
    WDTCTL = WDTPW|WDTHOLD;
    
    //---STATUS REGISTER---------------------------------------------------$$$

    //__bis_status_register(GIE);
    //__eint();
    //__BIS_SR(GIE);
    //_BIS_SR(LPM4_bits+GIE);
    _EINT();
    // P1
    P1OUT = 0;
    P1DIR = 0;
    P1IES = 0;
    P1IFG = 0;
    P1IE  = 0;
    P1SEL = 0;
    P1REN = 0;

    // P2
    P2OUT = 0;
    P2DIR = 0;
    P2IES = 0;
    P2IFG = 0;
    P2IE  = 0;
    P2SEL = 0;
    P2REN = 0;
    
    // P3
    P3OUT = 0;
    P3DIR = 0;
    P3SEL = 0;
    P3REN = 0;
    
    // P4
    P4OUT = 0;
    P4DIR = 0;
    P4SEL = 0;
    P4REN = 0;
    
    // P5
    P5OUT = 0;
    P5DIR = 0;
    P5SEL = 0;
    P5REN = 0;
    
    // P6
    P6OUT = 0;
    P6DIR = 0;
    P6SEL = 0;
    P6REN = 0;
    
    //tune to target frequency
    _system_clock_init();
    
}

//-----------------------------------------------------------------------------

//---CLOCK------------------------------------------------------------------------$$
static void _system_clock_init(void)
{
    // If calibration constant erased
    if(CALBC1_16MHZ==0xFF) {
        // do not load, trap CPU!!
        while(1) {
            LPM4;
        }
    }
    
    DCOCTL = 0;                 // Select lowest DCOx and MODx settings 
    BCSCTL1 = CALBC1_16MHZ | XT2OFF;     // Set DCO to 16 MHz, disable XT2CLK
    DCOCTL = CALDCO_16MHZ;      // Set DCO to 16 MHz
    BCSCTL2 = 0;                // SMCLK = DCOCLK/1 , MCLK = DCOCLK/1
    BCSCTL3 = (BCSCTL3 & ~(LFXT1S0 | LFXT1S1)) | LFXT1S_2;  // ACLK = VLOCLK/1
}







