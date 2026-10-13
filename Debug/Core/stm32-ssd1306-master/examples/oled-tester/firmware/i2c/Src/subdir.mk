################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/main.c \
../Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_hal_msp.c \
../Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_it.c \
../Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/system_stm32f4xx.c 

OBJS += \
./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/main.o \
./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_hal_msp.o \
./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_it.o \
./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/system_stm32f4xx.o 

C_DEPS += \
./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/main.d \
./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_hal_msp.d \
./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_it.d \
./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/%.o Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/%.su Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/%.cyclo: ../Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/%.c Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-stm32-2d-ssd1306-2d-master-2f-examples-2f-oled-2d-tester-2f-firmware-2f-i2c-2f-Src

clean-Core-2f-stm32-2d-ssd1306-2d-master-2f-examples-2f-oled-2d-tester-2f-firmware-2f-i2c-2f-Src:
	-$(RM) ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/main.cyclo ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/main.d ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/main.o ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/main.su ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_hal_msp.cyclo ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_hal_msp.d ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_hal_msp.o ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_hal_msp.su ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_it.cyclo ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_it.d ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_it.o ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/stm32f4xx_it.su ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/system_stm32f4xx.cyclo ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/system_stm32f4xx.d ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/system_stm32f4xx.o ./Core/stm32-ssd1306-master/examples/oled-tester/firmware/i2c/Src/system_stm32f4xx.su

.PHONY: clean-Core-2f-stm32-2d-ssd1306-2d-master-2f-examples-2f-oled-2d-tester-2f-firmware-2f-i2c-2f-Src

