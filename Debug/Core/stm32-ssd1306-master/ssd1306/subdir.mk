################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/stm32-ssd1306-master/ssd1306/ssd1306.c \
../Core/stm32-ssd1306-master/ssd1306/ssd1306_fonts.c \
../Core/stm32-ssd1306-master/ssd1306/ssd1306_tests.c 

OBJS += \
./Core/stm32-ssd1306-master/ssd1306/ssd1306.o \
./Core/stm32-ssd1306-master/ssd1306/ssd1306_fonts.o \
./Core/stm32-ssd1306-master/ssd1306/ssd1306_tests.o 

C_DEPS += \
./Core/stm32-ssd1306-master/ssd1306/ssd1306.d \
./Core/stm32-ssd1306-master/ssd1306/ssd1306_fonts.d \
./Core/stm32-ssd1306-master/ssd1306/ssd1306_tests.d 


# Each subdirectory must supply rules for building sources it contributes
Core/stm32-ssd1306-master/ssd1306/%.o Core/stm32-ssd1306-master/ssd1306/%.su Core/stm32-ssd1306-master/ssd1306/%.cyclo: ../Core/stm32-ssd1306-master/ssd1306/%.c Core/stm32-ssd1306-master/ssd1306/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-stm32-2d-ssd1306-2d-master-2f-ssd1306

clean-Core-2f-stm32-2d-ssd1306-2d-master-2f-ssd1306:
	-$(RM) ./Core/stm32-ssd1306-master/ssd1306/ssd1306.cyclo ./Core/stm32-ssd1306-master/ssd1306/ssd1306.d ./Core/stm32-ssd1306-master/ssd1306/ssd1306.o ./Core/stm32-ssd1306-master/ssd1306/ssd1306.su ./Core/stm32-ssd1306-master/ssd1306/ssd1306_fonts.cyclo ./Core/stm32-ssd1306-master/ssd1306/ssd1306_fonts.d ./Core/stm32-ssd1306-master/ssd1306/ssd1306_fonts.o ./Core/stm32-ssd1306-master/ssd1306/ssd1306_fonts.su ./Core/stm32-ssd1306-master/ssd1306/ssd1306_tests.cyclo ./Core/stm32-ssd1306-master/ssd1306/ssd1306_tests.d ./Core/stm32-ssd1306-master/ssd1306/ssd1306_tests.o ./Core/stm32-ssd1306-master/ssd1306/ssd1306_tests.su

.PHONY: clean-Core-2f-stm32-2d-ssd1306-2d-master-2f-ssd1306

