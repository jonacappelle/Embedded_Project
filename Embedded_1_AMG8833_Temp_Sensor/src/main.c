/***************************************************************************//**
 * @file main.c
 * @brief Code to read AMG8833
 * @details Project for Lab Embedded Systems 1
 * @version 1.0
 * @author Jona Cappelle & Thomas Feys
 * ****************************************************************************
 *
 * @todo
 *  Future improvements:**@n
 *     - Implement state machine
 *     - Interrupt functionality
 *     - Make MCU low power by using EM2 RTC timers
 *****************************************************************************/

/* System Includes */
#include "em_device.h"
#include "em_chip.h"			/* Needed to initialize the chip */
#include "em_cmu.h"
#include "em_emu.h"				/* Nedded to use different energy modes, EM0 - EM1 - EM2 - EM3 - EM4 */
#include "em_gpio.h"			/* Needed to use GPIO pins */
#include "em_rtc.h"				/* Needed to use RTC timers to generate low power interrupts */
#include "em_core.h"			/* Needed to use core functionality */

/* Self-written libraries */
#include "AMG8833.h"			/* Include our self-written AMG8833 class to interface with the sensor */
#include "I2C.h"				/* DRAMCO inspired I2C read - write - readwrite library */
#include "em_i2c.h"
#include "i2cspm.h"				/* I2C higher level library to easily setup and use I2C */

/* Fescron dbprint include */
#include "debug_dbprint.h"		/* Fescron dbprint arduino like library */
#include "em_usart.h"			/* Needed to use USART functionality for dbprint */


volatile uint32_t msTickCount;       /* Counts 1ms time ticks */
static volatile uint32_t msTicks; /* counts 1ms timeTicks */


/**************************************************************************//**
 * @brief
 *   SysTick_Handler needed for timer functionality
 *
 *****************************************************************************/
void SysTick_Handler(void)
{
	  msTicks++;       /* increment counter necessary in Delay()*/
}

/**************************************************************************//**
 * @brief
 *   Configure the SysTick to use cmuClock_CORE for 1 ms interrupts
 *
 *****************************************************************************/
void delay_init(void)
{
	  /* Setup SysTick Timer for 1 msec interrupts  */
	  if (SysTick_Config(CMU_ClockFreqGet(cmuClock_CORE) / 1000)) {
	    while (1) ;
	  }
}

/**************************************************************************//**
 * @brief
 *   Non-low-power delay, but non-blocking
 *
 * @param[in] dlyTicks
 *	 How many milli seconds delay
 *
 *****************************************************************************/
void delay(uint32_t dlyTicks)
{
	  uint32_t curTicks;

	  curTicks = msTicks;
	  while ((msTicks - curTicks) < dlyTicks) ;
}

/**************************************************************************//**
 * @brief
 *   Main function
 *
 * @details
 * 	We used a state machine to control the states where our microcontroller is in
 *
 *****************************************************************************/
int main(void)
{
  /* Chip errata */
  CHIP_Init();

  /* Enable GPIO clocks */
  CMU_ClockEnable(cmuClock_GPIO, true);
  CMU_ClockEnable(cmuClock_HFPER, true); // Needed to use GPIO
  CMU_ClockEnable(cmuClock_CORE, true);

  /* Start I2C */
  IIC_Init();

  /* Start Delay */
  delay_init();

	/* Setup printing to virtual COM port */
#if DEBUG_DBPRINT == 1 /* DEBUG_DBPRINT */
	dbprint_INIT(USART1, 4, true, false);
#endif /* DEBUG_DBPRINT */

  float rBuffer_Thermistor[1];
  float rBuffer_Pixels[64];


  AMG8833_Thermistor_Read(rBuffer_Thermistor);



  /* Infinite loop */
  while (1) {

	  //AMG8833_Pixels_Read(rBuffer_Pixels);

	  //AMG8833_Pixel_Print(rBuffer_Pixels);

	  AMG8833_Sleep(false);
	  delay(500);

	  AMG8833_StandBy(STBY_10);
	  delay(500);

	  AMG8833_StandBy(STBY_60);
	  delay(500);

	  AMG8833_Sleep(true);
	  delay(500);

  }
}
