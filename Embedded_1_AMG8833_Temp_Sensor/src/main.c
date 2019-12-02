/***************************************************************************//**
 * @file main.c
 * @brief Code to read AMG8833
 * @details Project for Lab Embedded Systems 1
 * @version 1.0
 * @author Jona Cappelle
 * ****************************************************************************/

/* Includes */
#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_i2c.h"
#include "I2C.h"
#include "em_gpio.h"
#include "AMG8833.h"
#include "em_device.h"
#include "em_emu.h"
#include "em_gpio.h"
#include "em_rtc.h"
#include "em_core.h"
#include "i2cspm.h"

/* dbprint include */
#include "debug_dbprint.h"
#include "em_usart.h"

/* Delay */
//#include "delay.h"

volatile uint32_t msTickCount;       /* Counts 1ms time ticks */
static volatile uint32_t msTicks; /* counts 1ms timeTicks */


void SysTick_Handler(void)
{
	  msTicks++;       /* increment counter necessary in Delay()*/
}

void delay_init(void)
{
	  /* Setup SysTick Timer for 1 msec interrupts  */
	  if (SysTick_Config(CMU_ClockFreqGet(cmuClock_CORE) / 1000)) {
	    while (1) ;
	  }
}

void delay(uint32_t dlyTicks)
{
	  uint32_t curTicks;

	  curTicks = msTicks;
	  while ((msTicks - curTicks) < dlyTicks) ;
}

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
