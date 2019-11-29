################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include emlib/subdir.mk
-include CMSIS/EFM32HG/subdir.mk
-include AMG8833/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: Embedded_1.axf

# Tool invocations
Embedded_1.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m0plus -mthumb -T "Embedded_1.ld" -Xlinker --gc-sections -Xlinker -Map="Embedded_1.map" --specs=nano.specs -o Embedded_1.axf "./AMG8833/AMG8833.o" "./AMG8833/I2C.o" "./CMSIS/EFM32HG/startup_efm32hg.o" "./CMSIS/EFM32HG/system_efm32hg.o" "./emlib/em_cmu.o" "./emlib/em_gpio.o" "./emlib/em_i2c.o" "./emlib/em_system.o" "./emlib/i2cspm.o" "./src/main.o" -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: Embedded_1.hex'
	arm-none-eabi-objcopy -O ihex "Embedded_1.axf" "Embedded_1.hex"
	@echo ' '

	@echo 'Building bin file: Embedded_1.bin'
	arm-none-eabi-objcopy -O binary "Embedded_1.axf" "Embedded_1.bin"
	@echo ' '

	@echo 'Building s37 file: Embedded_1.s37'
	arm-none-eabi-objcopy -O srec "Embedded_1.axf" "Embedded_1.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "Embedded_1.axf"
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) Embedded_1.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
