/*
 * I2C.c
 *
 *  Created on: 16.12.2020
 *      Author: andrin.kaelin
 */

//--- INCLUDES -----------------------------------------------------------------$

#include "I2C.h"

//--- LOCAL FUNCTION HEADERS----------------------------------------------------$

static void I2C_START(unsigned int SlaveAddress, unsigned int READ_WRITE);

//--- GLOBAL VARIABLES ---------------------------------------------------------$

extern char DataReceived[];

unsigned int i = 0;



//--- GLOBAL FUNCTIONS ---------------------------------------------------------$

void init_I2C_Master(void)
{
//    UCB0CTL1 |= UCSWRST;    //enable software reset for changing register contents
//    UCB0BR0 |= 0x28;         //set prescaler to 40 ---> 400kHz
//    IFG2 &= 0;               //clear IFG2 register
//    //UCB0I2CIE |= UCNACKIE;                      //enable the not-acknoledge interrupt
//    UCB0CTL1 |= UCSSEL_2 | UCTR;           //select SMCKL as clock source
//    UCB0CTL0 |= UCMST | UCMODE_3 | UCSYNC;       //Set USCI to Master mode, set I2C mode and enable SCL synchronisation.
//    UCB0I2COA |= UCGCEN;                   //respond to general calls
//
//
//    UCB0CTL1 &= ~UCSWRST;                       //disable software reset
//    IE2 |= UCB0RXIE + UCB0TXIE;                            //enable the Data receive interrupt

    PORT_OUT(SDA_PORT) |= SDA_PIN;  //set Pin as Output
//    PORT_REN(SDA_PORT) |= SDA_PIN;  //enable Pull up resistors for SDA and SCL lines
    PORT_SEL(SDA_PORT) |= SDA_PIN;  //select secondary function for P3.1 and  3.2

    PORT_OUT(SCL_PORT)|= SCL_PIN;   //set Pin as Output
//    PORT_REN(SCL_PORT)|= SCL_PIN;   //enable Pull up resistors for SDA and SCL lines
    PORT_SEL(SCL_PORT)|= SCL_PIN;   //select secondary function for P3.1 and  3.2
	
//    UCB0CTL1 &= ~0xFF; //clear register
//    UCB0CTL0 &= ~0xFF; //clear register

	UCB0CTL1 = 0x01; //held in reset state
	
	UCB0CTL1 &= ~0x4; //configure stop condition (disable)
	
	UCB0CTL0 |= 0xF; //set synchronous mode, I2C mode, master mode
	UCB0CTL0 &= ~0x40; //select 7Bit slcave address mode
	UCB0CTL1 |= 0xC0; //select I2C clock --> SMCLK
	UCB0BR0	  = 0xA0; //setup clock divider
	
	UCB0CTL1 &= ~0x01; //held in reset state
}



void Transmit(uint8_t slaveAddress, uint8_t* pData,  uint8_t txLen)
{
   // I2C_START(SlaveAddress, WRITE);
     // UCB0TXBUF = Data[i];
   // UCB0CTL1 |= UCTR;
      // UCB0I2CSA = SlaveAddress;
   // UCB0CTL1 |= UCTXSTT;

   // while(!(IFG2 & UCB0TXIFG)){}

   // for(i = 0; i<CountData; i++)
   // {
      // UCB0TXBUF = Data[i];
       // while(!(IFG2 & UCB0TXIFG)){}
   // }

   // UCB0CTL1 |= UCTXSTP;
   // IFG2 &= 0;               //clear IFG2 register
    // while (UCB0CTL1 & UCTXSTP);             // Ensure stop condition got sent
    // UCB0CTL1 |= UCTR + UCTXSTT;             // I2C TX, start condition

	UCB0STAT &= ~0x1F; //clear old interrupt flags
	
	UCB0I2CSA = slaveAddress; //set the I2C slave address
	UCB0CTL1 |= 0x10; //transmit mode
	while (UCB0CTL1 & UCTXSTP);
	UCB0CTL1 |= 0x02; //generate start condition
//	while(UCB0CTL1 & 0x02);
	
	if((UCB0STAT & 0x08) == 0x00) //check if no error occured
	{
		for(; txLen > 0; --txLen)
		{

			UCB0TXBUF = *pData;
			++pData;
			while(!(IFG2 & 0x08)); //wait for copletition of transmission
			
			if(UCB0STAT & 0x08) //check for error
			{
				pData = 0;
				//here could an errorflag be set
			}
		}
	}
	else
	{
		//no valid slave address error
	}

	UCB0CTL1 |= 0x04; //generate stop condition
	while(UCB0CTL1 & 0x04); //wait until stop condition was sent
	
	//could be a return of an error
}

void Transmit2(uint8_t slaveAddress, uint8_t* pData,  uint8_t txLen)
{
   // I2C_START(SlaveAddress, WRITE);

    UCB0STAT &= ~0x1F; //clear old interrupt flags

    UCB0I2CSA = slaveAddress; //set the I2C slave address
    UCB0CTL1 |= 0x10; //transmit mode
    while (UCB0CTL1 & UCTXSTP);
    UCB0CTL1 |= 0x02; //generate start condition

    if((UCB0STAT & 0x08) == 0x00) //check if no error occured
    {
        for(; txLen > 0; --txLen)
        {

            UCB0TXBUF = *pData;
            ++pData;
            while(!(IFG2 & 0x08)); //wait for copletition of transmission

            if(UCB0STAT & 0x08) //check for error
            {
                pData = 0;
                //here could an errorflag be set
            }
        }
    }
    else
    {
        //no valid slave address error
    }
}

void Read(uint8_t slaveAddress, uint8_t* pData, uint8_t rxLen)
{
//    I2C_START(SlaveAddress, WRITE);
//    while(!(IFG2 & UCB0TXIFG)){}
//    unsigned int i = 0;
//    for(i = 0; i<CountData; i++)
//        {
//            UCB0TXBUF = Data[i];
//            while(!(IFG2 & UCB0TXIFG)){}
//        }
//    I2C_START(SlaveAddress,READ);
//    for(i = 0; i<Count; i++)
//           {
//                if(i == Count-1)
//                       {UCB0CTL1 |= UCTXSTP;}
//               while(!(UCB0RXIFG)){}
//               DataReceived[i] = UCB0RXBUF;
//
//           }
   // IFG2 &= 0;               //clear IFG2 register
    // while (UCB0CTL1 & UCTXSTP);             // Ensure stop condition got sent
    // UCB0CTL1 &= ~UCTR ;                     // Clear UCTR
    // UCB0CTL1 |= UCTXSTT;                    // I2C start condition
    // while (UCB0CTL1 & UCTXSTT);             // Start condition sent?
    // UCB0CTL1 |= UCTXSTP;                    // I2C stop condition
 //   __bis_SR_register(CPUOFF + GIE);        // Enter LPM0 w/ interrupts
 
	UCB0STAT &= ~0x0F; //clear old interrupt flags
	
	UCB0I2CSA = slaveAddress; //set the I2C slave address
	
	UCB0CTL1 &= ~0x10; //receive mode-
	UCB0CTL1 |= 0x02; //generate start condition
	
	while(UCB0CTL1 & 0x02); //wait until start condition is sent

	if((UCB0STAT & 0x08) == 0x00) //check if no error occured
	{
		for(; rxLen > 1; --rxLen)
		{
			while(!(IFG2 & 0x04)); //wait until receive is complete
			*pData = UCB0RXBUF; //get single byte data
			++pData;
		}
	}
	else
	{
		//could be an error 
	}
	
	UCB0CTL1 |= 0x04; //generate stop condition
	while(!(IFG2 & 0x04)); //wait until receive is complete
	*pData = UCB0RXBUF;	//get the last single byte of data
	while(UCB0CTL1 & 0x04); //wait until stop condition was sent
	
	//maybe return an error 
}


//--- LOCAL FUNCTIONS------------------------------------------------------------------------------------

// static void I2C_START(unsigned int SlaveAddress, unsigned int READ_WRITE)
// {
    // while((UCB0STAT & UCBBUSY)){}
    // UCB0I2CSA &= 0;
    // UCB0CTL1 &= ~(UCTXSTT | UCTXSTP | UCTR);
    // UCB0CTL1 |=  (!(READ_WRITE) << 4);
    // UCB0I2CSA = SlaveAddress;
    // UCB0CTL1 |= UCTXSTT;
// }








/*
float read_temp(void)
{
    unsigned int WRead_BYTES[10]= {0xAA};
    Transmit(1, WRead_BYTES[10], Temperature, WRITE);
    Start_Transmit(Temperature, READ);

}

void Transmit(unsigned int Bytes, unsigned int Byte_Array[10], unsigned int slaveaddress, unsigned int read_write)
{
    Start_Transmit(slaveaddress, read_write);
    for(i=0; i<Bytes; i++)
    {
        write_Byte(Byte_Array[i]);
    }
    Stop_Transmit();
}

void init_temp(void)
{

    unsigned int Config_BYTES[10]= {0xAC, 0x00}; //Slave ADDRESS, access configurations command, set all values to zero
    Transmit(2, Config_BYTES[10], Temperature, WRITE);
    Stop_Transmit();

    unsigned int Start_BYTES[10]= {0xEE};              //Slave Address, Start Convert command,
    Transmit(1, Start_BYTES[10], Temperature, WRITE);
    Stop_Transmit();

}

//--- STATIC FUNCTIONS ------------------------------------------------------------------$

static void Start_Transmit(unsigned int slaveaddress, unsigned int read_write)
{
    UCB0CTL1 |= UCTR;
    UCB0I2CSA = slaveaddress + read_write;       //write slave Address into Slave Address Buffer
    UCB0CTL1 |= UCTXSTT;    //Do a Start condition
}
static void write_Byte(unsigned int data)
{
    while(!(IFG2 & UCB0TXIFG));
    UCB0TXBUF = data;

}
static void Stop_Transmit()
{
    UCB0CTL1 |= UCTXSTP;
}


static void Start_Read(void);

static unsigned int read_Byte(void)
{
    while(!(IFG2 & UCB0RXIFG));
    unsigned int received = UCB0RXBUF;
    return received;
}
static void Stop_Read();
void Read(unsigned int Bytes);

*/


