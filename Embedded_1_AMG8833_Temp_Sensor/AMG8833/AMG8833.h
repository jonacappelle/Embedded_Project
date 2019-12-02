/*
 * AGM8833.h
 *
 *  Created on: Nov 18, 2019
 *      Author: jonac
 */

#ifndef _AMG8833_H_
#define _AMG8833_H_

/* Needed to use uintx_t */
#include <stdint.h>
#include <stdbool.h>

#define I2C_ADDRESS                     ( 0x69 << 1 )

#define POWER_CONTROL					0x00
#define POWER_CONTROL_NORMAL			0x00
#define POWER_CONTROL_SLEEP				0x10
#define POWER_CONTROL_STBY_60			0x20
#define POWER_CONTROL_STBY_10			0x21

#define RESET							0x01

#define THERMISTOR_OUTPUT_VALUE_L		0x0E

#define PIXEL_1_L						0x80

#define THERMISTOR_RES					0.0625
#define PIXEL_RES						0.25


/* SWITCH CASES */
#define STBY_60			0x00
#define STBY_10			0x01

void AMG8833_Thermistor_Read(float *rBuffer_Thermistor);

void AMG8833_Pixels_Read(float *rBuffer_Pixels);

void AMG8833_Sleep(bool enable);

void AMG8833_StandBy(uint8_t time);

#endif
