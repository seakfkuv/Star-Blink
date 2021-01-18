/*
 * SPI.h
 *
 *  Created on: 17.12.2020
 *      Author: andrin.kaelin
 */

#ifndef SPI_H_
#define SPI_H_

//---Includes-----------------------------$$
#include"common.h"

//---Defines------------------------------$$

#define SPI_PORT    P5
#define SPI_PIN     BIT1


//---FUNCTION PROTOTYPES------------------$$

void SPI_init(void);
void data_burst(unsigned char BURST[][]);


#endif /* SPI_H_ */
