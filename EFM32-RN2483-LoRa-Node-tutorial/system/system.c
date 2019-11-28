/*  ____  ____      _    __  __  ____ ___
 * |  _ \|  _ \    / \  |  \/  |/ ___/ _ \
 * | | | | |_) |  / _ \ | |\/| | |  | | | |
 * | |_| |  _ <  / ___ \| |  | | |__| |_| |
 * |____/|_| \_\/_/   \_\_|  |_|\____\___/
 *                           research group
 *                             dramco.be/
 *
 *  KU Leuven - Technology Campus Gent,
 *  Gebroeders De Smetstraat 1,
 *  B-9000 Gent, Belgium
 *
 *         File: system.c
 *      Created: 2018-03-21
 *       Author: Geoffrey Ottoy
 *
 *  Description: EFM32 system functionality.
 *  	Handles system initialization and sleep behavior.
 */

#include <stdbool.h>
#include <em_device.h>
#include <em_chip.h>
#include <em_cmu.h>
#include <em_emu.h>
#include <em_rmu.h>
#include <em_leuart.h>

#include "system.h"
#include "pin_mapping.h"

static bool em4WakeUp;

static void System_GetResetSource(void){
	// Get reset cause(s)
	uint32_t rflags = RMU_ResetCauseGet();
	if (rflags & RMU_RSTCAUSE_EM4WURST){
		em4WakeUp = true;
	}
	RMU_ResetCauseClear();
}

void System_Init(void){
	em4WakeUp = false;

	/* Chip errata */
	CHIP_Init();
	CMU_ClockEnable(cmuClock_GPIO, true);

	// Detect why the system is (re)started
	System_GetResetSource();

	// Initialize RTC for use in delay functions
	Delay_Init();

	// Initialize GPIO interrupts (call-backs can be linked later)
	IRQ_Init();

	// Initialize user LED
	LED_Init(LED_OFF);

	// Initialize push buttons
	Buttons_Init();

	// Initialize power supply management
	PM_Init();

	// Initialize Analog-to-Digital Conversions
	ADC_InitChannels();

	// Initialize I2C bus (to interface with sensors)
	IIC_Init();
}

void System_DeepSleep(DeepSleep_State_t PM_ON){
	// Disable SI7021 power
	PM_Disable(PM_SENS_GECKO);

	// Check if we need to keep RN2483 power on
	if((PM_ON & RN2483_ON) == RN2483_ON){
		PM_Enable(PM_RN2483);
	}
	else{
		LEUART_Reset(RN2483_UART);
		PM_Disable(PM_RN2483);
		GPIO_PinOutClear(RN2483_RESET_PORT, RN2483_RESET_PIN);
		GPIO_PinOutClear(RN2483_RX_PORT, RN2483_RX_PIN);
		GPIO_PinOutClear(RN2483_TX_PORT, RN2483_TX_PIN);
	}

	// Check if we need to keep external power on
	if((PM_ON & SENS_EXT_ON) == SENS_EXT_ON){
		PM_Enable(PM_SENS_EXT);
	}
	else{
		PM_Disable(PM_SENS_EXT);
		IIC_Reset();
		GPIO_PinModeSet(IIC_SDA_PORT, IIC_SDA_PIN, gpioModePushPull, 0);
		GPIO_PinModeSet(IIC_SCL_PORT, IIC_SCL_PIN, gpioModePushPull, 0);
	}

	// Check what wake-up sources we need to enable
	if((PM_ON & SENS_EXT_ON) == SENS_EXT_ON){
		// wakeup on low level of PB0 & wakeup on low level of PF2
		GPIO_EM4EnablePinWakeup(GPIO_EM4WUEN_EM4WUEN_C9 | GPIO_EM4WUEN_EM4WUEN_F2, 0);
	}
	else{
		// only wakeup on low level of PB0
		GPIO_EM4EnablePinWakeup(GPIO_EM4WUEN_EM4WUEN_C9, 0);
	}
	EMU_EnterEM4();

}

bool System_EM4WakeUp(){
	return em4WakeUp;
}
