/*
 * I2C.h
 *
 *  Created on: 16.12.2020
 *      Author: andrin.kaelin
 */

#ifndef I2C_H_
#define I2C_H_
//---Includes-----------------------------$$
#include"common.h"

//---Defines------------------------------$$

#define SDA_PORT    P3
#define SDA_PIN     BIT1

#define SCL_PORT    P3
#define SCL_PIN     BIT2

#define Accelerometer   0x1c
#define Temperature     0x48

//---FUNCTION PROTOTYPES------------------$$

void init_I2C_Master(void);
void Transmit(uint8_t slaveAddress, uint8_t* pData,  uint8_t txLen);
void Transmit2(uint8_t slaveAddress, uint8_t* pData,  uint8_t txLen);
void Read(uint8_t slaveAddress, uint8_t* pData, uint8_t rxLen);


/*
void init_temp(void);
float read_temp(void);
*/

#endif /* I2C_H_ */





///*
// * I2C.h
// *
// *  Created on: 16.12.2020
// *      Author: andrin.kaelin
// */
//
//#ifndef I2C_H_
//#define I2C_H_
////---Includes-----------------------------$$
//#include"common.h"
//
////---Defines------------------------------$$
//
//#define SDA_PORT    P3
//#define SDA_PIN     BIT1
//
//#define SCL_PORT    P3
//#define SCL_PIN     BIT2
//
//#define Accelerometer   0x1c
//#define Temperature     0x48
//
////---FUNCTION PROTOTYPES------------------$$
//
//void init_I2C_Master(void);
//void Transmit(unsigned int SlaveAddress, char Data[],  unsigned int CountData);
//void Read(unsigned int SlaveAddress, char Data[], unsigned int CountData, unsigned int count);
//
//
///*
//void init_temp(void);
//float read_temp(void);
//*/
//
//#endif /* I2C_H_ */
