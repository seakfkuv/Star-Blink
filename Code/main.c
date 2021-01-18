//--- dependencies ------------------------------------------------------------
#include "common.h"
#include "system.h"
#include "led.h"
//#include "spi.h"
//#include "button.h"

//--FUNCTION HEADERS-----------------------------------------------------------$$
unsigned int adc12_scsc(void);

//--GLOBAL VARIABLES-----------------------------------------------------------$$

unsigned int Digit = 0;
 unsigned int button_flag = 0;
 unsigned int int1_Acc_flag = 0;
 unsigned int int2_Acc_flag = 0;
 unsigned short LED_BLINK = 0;
int main(void)
{
    // initializations
    system_init();
    
    led1_init();
    
    //button_init();
    

    
    // enable interrupts
    //__no_operation(); __enable_interrupt();
    P3SEL = 0xC0;                             // P3.6,7 = USCI_A1 TXD/RXD
    UCA1CTL1 |= UCSSEL_2;                     // CLK = SMCLK
    UCA1BR0 = 139;                           // 2400 (see User's Guide)
    UCA1BR1 = 0x00;                           //
    UCA1MCTL = 0;                       // Modulation UCBRSx = 3
    UCA1CTL1 &= ~UCSWRST;                     // **Initialize USCI state machine**
    //UC1IE |= UCA1RXIE;                        // Enable USCI_A1 RX interrupt
    unsigned short i = 0;
    PORT_SEL(P1) |= BIT2;
    PORT_DIR(P1) |= BIT2 |  BIT3;
    PORT_OUT(P1) |= BIT3;
    while(1){

        if(Digit){
        /*if(LED_BLINK)
            {
            led1_toggle();
            }*/
            led1_off();
        }
        //Digit = adc12_RSCC();       //Single Channel Single Conversion write Result to Digit
       //give_to_port(Digit);
       /* if(!(PORT_IN(button_port)& button_pin)){  //As long as the Button isn't pressed (Pull down)
            
            for(i = 0; i < 12; i++){            // 12-Bit input
            while(!(UC1IFG & UCA1TXIFG)){       // As long as one of the interrupt flags is low no operation
            __no_operation();
            }
                if(Digit & (0x800>>i)){         // Start read Bit 0000 1000 0000 0000 of Digit and right shift for "i" times
                    UCA1TXBUF = '1' ;           // If the Digit Bit was 1 send 1 to the conversion Buffer
                    }
                    else UCA1TXBUF = '0' ;      // If the Digit Bit was 0 send 0 to the conversion Buffer
            }
        while(!(UC1IFG & UCA1TXIFG)){       // As long as one of the interrupt flags is low no operation


            __no_operation();
        }
        UCA1TXBUF = 'E' ;                   // Send 'E' to the conversion Buffer to signalize the end of Conversion optically
        }
        led1_toggle();
        DELAY_MS(500);
        */
    }
 return 0;
}

#pragma vector = PORT1_VECTOR  //#pragma is an information to the compiler, this Information says, what Interrupt Vector the following code is for

__interrupt void Port_1(void)  //__interrupt is a GNU Compiler Collection declaration and says that the following function is to be treated as an ISR
{
 if(P1IFG == 0x01)  // P1.1 connected to the Button
 {
     Digit = 1;
     P1IFG &= ~(0x01);
 }else if(P1IFG == 0x02)    // P1.2 connected to interrupt 2 of the accelerometer
       {
         // Handle Interrupt on Accelerometer int_2
         P1IFG &= ~(0x02);
       }else if(P1IFG == 0x04)    // P1.3 connected to interrupt 1 of the accelerometer
           {
               // Handle interrupt on Accelerometer int_1
           P1IFG &= ~(0x04);
           }
}

#pragma vector = 0x0FFF0  // 0x0FFF2 is the IV for TIMER A TACCR1 CCIFG und TACCR2 CCFIG
__interrupt void timer_A(void)  //__interrupt is a GNU Compiler Collection declaration and says that the following function is to be treated as an ISR
{
 switch(__even_in_range(TAIV,16))  //__even_in_range() defines that the first parameter is an even number between zero and the second parameter it helps generate more efficient code... somehow....
 {
 case 0: break; // No Interrupt
 case 2:        // TACCR1 CCFIG
 LED_BLINK ^= 1;
 TACCR1 += 0x4B0;
 TACCR0 += 0x4B0;
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

