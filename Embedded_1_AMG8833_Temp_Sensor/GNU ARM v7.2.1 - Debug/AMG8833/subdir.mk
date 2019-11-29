################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../AMG8833/AMG8833.c \
../AMG8833/I2C.c 

OBJS += \
./AMG8833/AMG8833.o \
./AMG8833/I2C.o 

C_DEPS += \
./AMG8833/AMG8833.d \
./AMG8833/I2C.d 


# Each subdirectory must supply rules for building sources it contributes
AMG8833/AMG8833.o: ../AMG8833/AMG8833.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\drivers" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/SLSTK3400A_EFM32HG/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"AMG8833/AMG8833.d" -MT"AMG8833/AMG8833.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

AMG8833/I2C.o: ../AMG8833/I2C.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\drivers" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\Embedded_1\AMG8833" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/SLSTK3400A_EFM32HG/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"AMG8833/I2C.d" -MT"AMG8833/I2C.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


