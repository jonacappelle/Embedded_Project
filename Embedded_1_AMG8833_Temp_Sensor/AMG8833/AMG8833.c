/*
 * AGM8833.c
 *
 *  Created on: Nov 18, 2019
 *      Author: jonac
 */

#include "AMG8833.h"
#include "I2C.h"

/* Needed to use uintx_t */
#include <stdint.h>
#include <stdbool.h>

/*****************************************/
/*******         PINOUT             ******/
/*****************************************/

#define AMG8833_I2C_ADDRESS				0x69
#define THERMISTOR_OUTPUT_VALUE_L		0x0E
#define THERMISTOR_OUTPUT_VALUE_H		0x0F


/*****************************************/
/*****************************************/



bool AMG8833_Temp( uint16_t *data ){
	uint8_t rBuffer[2];


	if(IIC_ReadBuffer(AMG8833_I2C_ADDRESS, THERMISTOR_OUTPUT_VALUE_L, rBuffer, 0x01) != true){
		return false;
	}
	/*if(IIC_ReadBuffer(SI7021_IIC_ADDRESS, command, rBuffer, 2)!= true){
		return false;
	}*/

	/* Convert data */
	*data = (uint16_t) ((rBuffer[1] << 8) | rBuffer[0]);

	return true;
}
