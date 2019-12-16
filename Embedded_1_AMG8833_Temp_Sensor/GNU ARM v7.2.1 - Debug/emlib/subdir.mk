################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_cmu.c \
E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_core.c \
E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_emu.c \
E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_gpio.c \
E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_i2c.c \
E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_rtc.c \
E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_system.c \
E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_usart.c \
E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/hardware/kit/common/drivers/i2cspm.c \
E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emdrv/rtcdrv/src/rtcdriver.c 

OBJS += \
./emlib/em_cmu.o \
./emlib/em_core.o \
./emlib/em_emu.o \
./emlib/em_gpio.o \
./emlib/em_i2c.o \
./emlib/em_rtc.o \
./emlib/em_system.o \
./emlib/em_usart.o \
./emlib/i2cspm.o \
./emlib/rtcdriver.o 

C_DEPS += \
./emlib/em_cmu.d \
./emlib/em_core.d \
./emlib/em_emu.d \
./emlib/em_gpio.d \
./emlib/em_i2c.d \
./emlib/em_rtc.d \
./emlib/em_system.d \
./emlib/em_usart.d \
./emlib/i2cspm.d \
./emlib/rtcdriver.d 


# Each subdirectory must supply rules for building sources it contributes
emlib/em_cmu.o: E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_cmu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\src" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\app\mcu_example\SLWSTK6244A_EZR32HG\ezradio_pn9\config" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\common\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\rtcdrv\inc" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\dbprint" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\drivers" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/SLSTK3400A_EFM32HG/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_cmu.d" -MT"emlib/em_cmu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_core.o: E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_core.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\src" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\app\mcu_example\SLWSTK6244A_EZR32HG\ezradio_pn9\config" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\common\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\rtcdrv\inc" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\dbprint" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\drivers" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/SLSTK3400A_EFM32HG/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_core.d" -MT"emlib/em_core.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_emu.o: E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_emu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\src" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\app\mcu_example\SLWSTK6244A_EZR32HG\ezradio_pn9\config" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\common\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\rtcdrv\inc" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\dbprint" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\drivers" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/SLSTK3400A_EFM32HG/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_emu.d" -MT"emlib/em_emu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_gpio.o: E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\src" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\app\mcu_example\SLWSTK6244A_EZR32HG\ezradio_pn9\config" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\common\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\rtcdrv\inc" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\dbprint" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\drivers" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/SLSTK3400A_EFM32HG/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_gpio.d" -MT"emlib/em_gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_i2c.o: E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\src" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\app\mcu_example\SLWSTK6244A_EZR32HG\ezradio_pn9\config" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\common\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\rtcdrv\inc" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\dbprint" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\drivers" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/SLSTK3400A_EFM32HG/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_i2c.d" -MT"emlib/em_i2c.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_rtc.o: E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_rtc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\src" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\app\mcu_example\SLWSTK6244A_EZR32HG\ezradio_pn9\config" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\common\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\rtcdrv\inc" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\dbprint" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\drivers" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/SLSTK3400A_EFM32HG/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_rtc.d" -MT"emlib/em_rtc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_system.o: E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_system.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\src" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\app\mcu_example\SLWSTK6244A_EZR32HG\ezradio_pn9\config" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\common\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\rtcdrv\inc" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\dbprint" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\drivers" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/SLSTK3400A_EFM32HG/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_system.d" -MT"emlib/em_system.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/em_usart.o: E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emlib/src/em_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\src" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\app\mcu_example\SLWSTK6244A_EZR32HG\ezradio_pn9\config" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\common\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\rtcdrv\inc" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\dbprint" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\drivers" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/SLSTK3400A_EFM32HG/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/em_usart.d" -MT"emlib/em_usart.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/i2cspm.o: E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/hardware/kit/common/drivers/i2cspm.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\src" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\app\mcu_example\SLWSTK6244A_EZR32HG\ezradio_pn9\config" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\common\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\rtcdrv\inc" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\dbprint" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\drivers" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/SLSTK3400A_EFM32HG/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/i2cspm.d" -MT"emlib/i2cspm.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

emlib/rtcdriver.o: E:/Program\ Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6/platform/emdrv/rtcdrv/src/rtcdriver.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\src" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emlib\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\app\mcu_example\SLWSTK6244A_EZR32HG\ezradio_pn9\config" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\common\inc" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\platform\emdrv\rtcdrv\inc" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\dbprint" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\drivers" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/SLSTK3400A_EFM32HG/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"emlib/rtcdriver.d" -MT"emlib/rtcdriver.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


