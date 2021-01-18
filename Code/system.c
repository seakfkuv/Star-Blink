
//--- dependencies ------------------------------------------------------------
#include "system.h"

//--- private functions -------------------------------------------------------
static void _system_clock_init(void);
static void _system_adc_init(void);
static void _system_timer_init(void);
// ----------------------------------------------------------------------------
void system_init(void)
{
    // stop watchdog
    WDTCTL = WDTPW|WDTHOLD;
    
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
    
    //tune ADC for single pin single conversion
    _system_adc_init();

    //start timer
    _system_timer_init();
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

//---TIMER------------------------------------------------------------------------$$
static void _system_timer_init(void){

    TACCTL1 |= (CM0 | OUTMOD0 | OUTMOD1| CCIE);  // No capture, Outmodus Set/Reset, Interrupt enable
    TACCR1 = 0x4B0;                             // Count 1200 steps which is around 100ms
    TACCR0 = 0x258;                             // Reset after 1800 steps
    TACTL |= (TASSEL_1 | MC_2);                 // Clock source ACKL, Continuous mode
    // The timer starts counting as soon as the clocksource is connected and the MC is set
}

//---ADC--------------------------------------------------------------------------$$
static void _system_adc_init(void)
{
    //ADC configurations
    ADC12CTL0 = 0;                  //ENC must be 0 for sure
    ADC12CTL0 = ADC12ON | SHT0_8; //turn ADC on Sampling time = 256 cycles = 16us
    ADC12CTL1 = SHP | CSTARTADD_0 | SHS_1 | CONSEQ_2;          //Pulse Triggered Conversion and Timer_A as clock source, repeat single channel
    ADC12IE |= BIT2;            // enable Interrupts on this Memoryaddress
    //Port\Pin configurations
    P6DIR &= ~BIT2;             //Set Port6 Pin 2 to input
    P6SEL |= BIT2;              //Select Port6 Pin 2 Secondary function
    ADC12MCTL0 = INCH_2;         //Select A2 as input for Memory Address 0
    ADC12CTL0 |= ENC;               // Enable conversion
}

unsigned int adc12_RSCC(void) //Repeat Single Channel Conversion
{
    unsigned int Digital = 0;

    ADC12CTL0 |= ADC12SC;           // Start conversion

    while((ADC12IFG & BIT0) == 0){  //Check for Flag of Memory Address 0
        __no_operation();           //Wait for Flag to be set
        }

    ADC12CTL0 &= (~ENC) & (~ADC12SC);   //Disable ENC and SC Signal

    Digital = ADC12MEM0;               //Set bit of Memory Adrress 0 into variable Digital

    return Digital;         //return variable Digital as Funktion value
}

