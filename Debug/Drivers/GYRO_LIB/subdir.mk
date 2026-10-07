################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/GYRO_LIB/mpu_6050.c 

OBJS += \
./Drivers/GYRO_LIB/mpu_6050.o 

C_DEPS += \
./Drivers/GYRO_LIB/mpu_6050.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/GYRO_LIB/%.o Drivers/GYRO_LIB/%.su Drivers/GYRO_LIB/%.cyclo: ../Drivers/GYRO_LIB/%.c Drivers/GYRO_LIB/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"C:/Users/Winner-Emele/STM32CubeIDE/workspace_1.17.0/Space_Invaders/Core/Inc" -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Winner-Emele/STM32CubeIDE/workspace_1.17.0/Space_Invaders/Drivers/ssd1306" -I"C:/Users/Winner-Emele/STM32CubeIDE/workspace_1.17.0/Space_Invaders/Drivers/GYRO_LIB" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-GYRO_LIB

clean-Drivers-2f-GYRO_LIB:
	-$(RM) ./Drivers/GYRO_LIB/mpu_6050.cyclo ./Drivers/GYRO_LIB/mpu_6050.d ./Drivers/GYRO_LIB/mpu_6050.o ./Drivers/GYRO_LIB/mpu_6050.su

.PHONY: clean-Drivers-2f-GYRO_LIB

