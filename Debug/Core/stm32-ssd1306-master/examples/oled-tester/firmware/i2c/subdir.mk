################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/startup_stm32f411xe.s 

OBJS += \
./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/startup_stm32f411xe.o 

S_DEPS += \
./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/startup_stm32f411xe.d 


# Each subdirectory must supply rules for building sources it contributes
Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/%.o: ../Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/%.s Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-stm32-2d-ssd1306-2d-master-2f-examples-2f-oled-2d-tester-2f-firmware-2f-i2c

clean-Core-2f-stm32-2d-ssd1306-2d-master-2f-examples-2f-oled-2d-tester-2f-firmware-2f-i2c:
	-$(RM) ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/startup_stm32f411xe.d ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/startup_stm32f411xe.o

.PHONY: clean-Core-2f-stm32-2d-ssd1306-2d-master-2f-examples-2f-oled-2d-tester-2f-firmware-2f-i2c

