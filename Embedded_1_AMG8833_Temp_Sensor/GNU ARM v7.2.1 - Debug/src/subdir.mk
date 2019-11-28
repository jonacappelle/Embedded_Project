################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c 

OBJS += \
./src/main.o 

C_DEPS += \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/main.o: ../src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -std=c99 '-DEFM32HG322F64=1' -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/CMSIS/Include" -I"E:\Program Files\simplicitystudio\developer\sdks\gecko_sdk_suite\v2.6\hardware\kit\common\drivers" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\project\Embedded_1_AMG8833_Temp_Sensor\AMG8833" -I"E:\GOOGLE_DRIVE\SCHOOL 2019-2020\embedded 1\project\Embedded_1_AMG8833_Temp_Sensor\AMG8833" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/bsp" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/emlib/inc" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/common/drivers" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//platform/Device/SiliconLabs/EFM32HG/Include" -I"E:/Program Files/simplicitystudio/developer/sdks/gecko_sdk_suite/v2.6//hardware/kit/SLSTK3400A_EFM32HG/config" -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/main.d" -MT"src/main.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


