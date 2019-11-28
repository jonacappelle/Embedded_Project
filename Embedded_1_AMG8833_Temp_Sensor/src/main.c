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



#define I2C_ADDRESS                     0xD2			//( 0x69 << 1 )
#define I2C_RXBUFFER_SIZE               10

#define AMG8833_I2C_ADDRESS				0x69
#define THERMISTOR_OUTPUT_VALUE_L		0x0E
#define THERMISTOR_OUTPUT_VALUE_H		0x0F






int main(void)
{
  /* Chip errata */
  CHIP_Init();

  /* Enable GPIO clock */
  CMU_ClockEnable(cmuClock_GPIO, true);

  /* Setup I2C communication */
  void IIC_Init(void);


  uint8_t command = THERMISTOR_OUTPUT_VALUE_L;

	uint8_t rBuffer[2];
	uint8_t wBuffer[1];

	wBuffer[0] = command;


  //IIC_ReadBuffer(I2C_ADDRESS, THERMISTOR_OUTPUT_VALUE_L, &data[0], 2);

  /* Infinite loop */
  while (1) {

	  //IIC_WriteReadBuffer(I2C_ADDRESS, wBuffer, 1, rBuffer, 2);
	  //IIC_ReadBuffer(I2C_ADDRESS, THERMISTOR_OUTPUT_VALUE_L, rBuffer, 2);

	  //performMeasurements(i2cInit.port, &rhData, &tempData, &vBat);
	  Si7013_Measure(I2C0, I2C_ADDRESS, rBuffer, 0x00);
  }
}
