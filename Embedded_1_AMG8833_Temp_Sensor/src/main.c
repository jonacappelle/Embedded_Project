/***************************************************************************//**
 * @file main.c
 * @brief Code to read AMG8833
 * @details Project for Lab Embedded Systems 1
 * @version 1.0
 * @author Jona Cappelle & Thomas Feys
 * ****************************************************************************
 *
 *****************************************************************************/

/* System Includes */
#include "em_device.h"
#include "em_chip.h"			/* Needed to initialize the chip */
#include "em_cmu.h"
#include "em_emu.h"				/* Nedded to use different energy modes, EM0 - EM1 - EM2 - EM3 - EM4 */
#include "em_gpio.h"			/* Needed to use GPIO pins */
#include "em_rtc.h"				/* Needed to use RTC timers to generate low power interrupts */
#include "em_core.h"			/* Needed to use core functionality */
#include "em_core.h"
#include "rtcdriver.h"
#include "em_wdog.h"

/* Self-written libraries */
#include "AMG8833.h"			/* Include our self-written AMG8833 class to interface with the sensor */
#include "I2C.h"				/* DRAMCO inspired I2C read - write - readwrite library */
#include "em_i2c.h"
#include "i2cspm.h"				/* I2C higher level library to easily setup and use I2C */

/* Fescron dbprint include */
#include "debug_dbprint.h"		/* Fescron dbprint arduino like library */
#include "em_usart.h"			/* Needed to use USART functionality for dbprint */


/* Switch - cases makes the code more user friendly */
typedef enum app_states{
	INIT,
	MEASURE,
	SLEEP
} APP_State_t;

static volatile APP_State_t appState;
RTCDRV_TimerID_t xTimerForWakeUp;
WDOG_Init_TypeDef wInit = WDOG_INIT_DEFAULT;

float rBuffer_Thermistor[1];
float rBuffer_Pixels[64];

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
 * @brief SysTick_Disable
 * Disable systick interrupts
 *****************************************************************************/
static void SysTickDisable(void)
{
  SysTick->CTRL = 0x0000000;
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
 *   Callback function for 5 min timer
 *
 *****************************************************************************/
void Callback_Sleep( void )
{
	appState = MEASURE;
}


/**************************************************************************//**
 * @brief GPIO Even IRQ for pushbuttons on even-numbered pins
 *****************************************************************************/
void GPIO_EVEN_IRQHandler(void)
{
  // Clear all even pin interrupt flags
  GPIO_IntClear(0x5555);
  appState = MEASURE;

#if DEBUG_DBPRINT == 1 /* DEBUG_DBPRINT */
  dbprint("Interrupt fired! 1");
#endif /* DEBUG_DBPRINT */
}

/**************************************************************************//**
 * @brief GPIO Odd IRQ for pushbuttons on odd-numbered pins
 *****************************************************************************/
void GPIO_ODD_IRQHandler(void)
{
  // Clear all odd pin interrupt flags
  GPIO_IntClear(0xAAAA);
  appState = MEASURE;

#if DEBUG_DBPRINT == 1 /* DEBUG_DBPRINT */
	dbprint("Interrupt fired! 2");
#endif /* DEBUG_DBPRINT */
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
  /* Infinite loop */
  while (1)
  {
	  switch(appState)
	  {
	  case INIT:
	  {
		  /* Chip errata */
		    CHIP_Init();

		    /* Enable GPIO clocks */
		    CMU_ClockEnable(cmuClock_GPIO, true);
		    CMU_ClockEnable(cmuClock_HFPER, true); // Needed to use GPIO
		    CMU_ClockEnable(cmuClock_CORE, true);

		    /* Watchdog setup - Use defaults, excepts for these :*/
		    wInit.em2Run = true;
		    wInit.em3Run = true;
		    wInit.perSel = wdogPeriod_4k; /* 4k 1kHz periods should give ~4 seconds in EM3 */

		    /* Initialize RTC timer. */
		    RTCDRV_Init();
		    RTCDRV_AllocateTimer( &xTimerForWakeUp);

		    /* Start I2C */
		    IIC_Init();

		    /* Start AMG8833 Temp sensor */
		    AMG8833_Init();

		    /* Start Delay */
		    delay_init();

		  	/* Setup printing to virtual COM port */
		  #if DEBUG_DBPRINT == 1 /* DEBUG_DBPRINT */
		  	dbprint_INIT(USART1, 4, true, false);
		  #endif /* DEBUG_DBPRINT */

		  	appState = MEASURE;
	  } break;
	  case MEASURE:
	  {
		  /* Set to StandBy 10 sec */
		  AMG8833_Sleep( false );
		  AMG8833_StandBy(STBY_60);

		  RTCDRV_StartTimer( xTimerForWakeUp, rtcdrvTimerTypeOneshot, 105, NULL, NULL);
		  EMU_EnterEM2(true);

		  //AMG8833_Thermistor_Read( rBuffer_Thermistor );
		  AMG8833_Pixels_Read( rBuffer_Pixels );

		  appState = SLEEP;

#if DEBUG_DBPRINT == 1 /* DEBUG_DBPRINT */
		  AMG8833_Pixel_Print(rBuffer_Pixels);
#endif /* DEBUG_DBPRINT */

		  appState = SLEEP;
	  } break;
	  case SLEEP:
	  {
		  /* Sensor to sleep --> 0.2 mA */
		  AMG8833_Sleep( true );

		  /* EFM to sleep */
		  SysTickDisable();
		  RTCDRV_StartTimer( xTimerForWakeUp, rtcdrvTimerTypeOneshot, 5000, Callback_Sleep, NULL);
		  EMU_EnterEM2(true);
	  } break;
	  }
  }
}
