################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MAX31865/MAX31865.c 

OBJS += \
./MAX31865/MAX31865.o 

C_DEPS += \
./MAX31865/MAX31865.d 


# Each subdirectory must supply rules for building sources it contributes
MAX31865/%.o MAX31865/%.su MAX31865/%.cyclo: ../MAX31865/%.c MAX31865/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L431xx -c -I"C:/Workspace/Projects/CubeIDE/STM32L431RCT6/JMPs_and_BUTTs" -I../Core/Inc -I"C:/Workspace/Projects/CubeIDE/STM32L431RCT6/MAX31865" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MAX31865

clean-MAX31865:
	-$(RM) ./MAX31865/MAX31865.cyclo ./MAX31865/MAX31865.d ./MAX31865/MAX31865.o ./MAX31865/MAX31865.su

.PHONY: clean-MAX31865

