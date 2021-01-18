#ifndef __COMMON_H__
#define __COMMON_H__

//--- dependencies ------------------------------------------------------------
#include <msp430f2618.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>

//--- convenient port macros --------------------------------------------------
#define POUT_(a)            a##OUT
#define PORT_OUT(a)         POUT_(a)
#define PIN_(a)             a##IN
#define PORT_IN(a)          PIN_(a)
#define PDIR_(a)            a##DIR
#define PORT_DIR(a)         PDIR_(a)
#define PSEL_(a)            a##SEL
#define PORT_SEL(a)         PSEL_(a)
#define PREN_(a)            a##REN
#define PORT_REN(a)         PREN_(a)
#define PIE_(a)             a##IE
#define PORT_IE(a)          PIE_(a)
#define PIES_(a)            a##IES
#define PORT_IES(a)         PIES_(a)
#define PIFG_(a)            a##IFG
#define PORT_IFG(a)         PIFG_(a)

//--- clock frequencies -------------------------------------------------------
#define SMCLK_FREQ          4000000uLL
#define ACLK_FREQ           2900000uLL
#define MCLK_FREQ           1600000uLL

//--- delay macros ------------------------------------------------------------
#define DELAY_US(us)        __delay_cycles((SMCLK_FREQ/1000uLL * us)/1000uLL)
#define DELAY_MS(ms)        __delay_cycles(SMCLK_FREQ/1000uLL * ms)
//--- miscellaneous -----------------------------------------------------------
#define MAX(a,b)            ((a)>=(b)?(a):(b))
#define MIN(a,b)            ((a)>=(b)?(b):(a))
#define ABS(x)              ((x)<0?(-(x)):(x))

#endif // __COMMON_H__
