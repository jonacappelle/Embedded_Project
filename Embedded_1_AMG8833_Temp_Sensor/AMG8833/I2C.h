/*
 * I2C.h
 *
 *  Created on: Nov 18, 2019
 *      Author: jonac
 */

#ifndef AMG8833_I2C_H_
#define AMG8833_I2C_H_



#include <stdbool.h>

void IIC_Init(void);
void IIC_Reset(void);
bool IIC_WriteBuffer(uint8_t iicAddress, uint8_t * wBuffer, uint8_t wLength);
bool IIC_ReadBuffer(uint8_t iicAddress, uint8_t regCommand, uint8_t * rBuffer, uint8_t rLength);
bool IIC_WriteReadBuffer(uint8_t iicAddress, uint8_t * wBuffer, uint8_t wLength, uint8_t *rBuffer, uint8_t rLength);


#endif /* AMG8833_I2C_H_ */
