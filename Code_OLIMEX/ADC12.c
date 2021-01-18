/*
 * ADC12.c
 *
 *  Created on: 10.12.2020
 *      Author: andrin.kaelin
 */


//--- dependencies ------------------------------------------------------------
#include "ADC12.h"

//---ADC--------------------------------------------------------------------------$$
void adc_init(void)
{
    //ADC configurations
    ADC12CTL0 = 0;                  //ENC must be 0 for sure
    ADC12CTL0 = ADC12ON | SHT0_15; //turn ADC on Sampling time max = 1024 cycles = 64us
    ADC12CTL1 = SHP | CSTARTADD_0 | SHS_1 | CONSEQ_2;          //Pulse Triggered Conversion and Timer_A conversion start signal source, repeat single channel
    ADC12IE |= BIT0;            // enable Interrupts on this Memoryaddress
    //Port\Pin configurations
    P6DIR &= ~BIT2;             //Set Port6 Pin 2 to input
    P6SEL |= BIT2;              //Select Port6 Pin 2 Secondary function
    ADC12MCTL0 = INCH_2;         //Select A2 as input for Memory Address 0
    ADC12CTL0 |= ENC;               // Enable conversion
}

