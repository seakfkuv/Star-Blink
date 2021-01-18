/*
 * main.c
 *
 *  Created on: 10.12.2020
 *  Author: andrin.kaelin
 */


//--- dependencies ------------------------------------------------------------
#include "common.h"
#include "system.h"
#include "led.h"
#include "Timer.h"
#include "ADC12.h"
#include "I2C.h"

//--FUNCTION HEADERS-----------------------------------------------------------$$


//--GLOBAL VARIABLES-----------------------------------------------------------$$
 unsigned short LED_BLINK = 0;
 unsigned int Digit = 0;
 uint8_t DataReceived[];

 int TXByteCtr;
 unsigned char PRxData;
 int Rx = 0;
 //--- ARRAY MACROS------------------------------------------------------------$

 uint8_t AccessConifgCommand[2] = { 0xAC , 0x00};
 uint8_t StartConvert[1] = {0xEE};
 uint8_t ReadCommand[1] = {0xAA};

int main(void)
{
    // initializations
    system_init();
    timer_init();
    adc_init();
    led1_init();
    init_I2C_Master();

    PORT_SEL(P1) |= BIT2;
    PORT_DIR(P1) |= BIT2 |  BIT3;


    while(1){

        if(LED_BLINK)
        {
            led1_on();
        }else
            {
                led1_off();
            }

        Transmit(Temperature, AccessConifgCommand, 2);
        Transmit(Temperature, StartConvert, 1);
        Transmit2(Temperature, ReadCommand, 1);
        Read(Temperature, DataReceived, 2);

    }
 return 0;
}



#pragma vector = TIMERA1_VECTOR  // 0x0FFF0 is the IV for TIMER A TACCR1 CCIFG und TACCR2 CCFIG

__interrupt void timer_A(void)  //__interrupt is a GNU Compiler Collection declaration and says that the following function is to be treated as an ISR
{
switch(__even_in_range(TAIV,16))  //__even_in_range() defines that the first parameter is an even number between zero and the second parameter it helps generate more efficient code... somehow....
 {
case 0: break; // No Interrupt
 case 2:        // TACCR1 CCFIG
 LED_BLINK ^= 1;
 TACCR1 += 0x4B0;
 TACCR0 += 0x4B0;
 TACTL &= ~(TAIFG);
 TACCTL0 &= ~(CCIFG);
 TACCTL1 &= ~(CCIFG);
 break;
 case 4:        // TACCR2 CCFIG
 break;
 case 6: break;
 case 8: break;
 case 10: break;
 case 12: break;
 case 14: break;
 case 16: break;
 }
}

#pragma vector = ADC12_VECTOR

__interrupt void ADC12(void)
{
    Digit = ADC12MEM0;
    ADC12IFG &= ~(BIT0);
}

