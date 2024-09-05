################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../JMPs_and_BUTTs/JMPs_and_BUTTs.c 

OBJS += \
./JMPs_and_BUTTs/JMPs_and_BUTTs.o 

C_DEPS += \
./JMPs_and_BUTTs/JMPs_and_BUTTs.d 


# Each subdirectory must supply rules for building sources it contributes
JMPs_and_BUTTs/%.o JMPs_and_BUTTs/%.su JMPs_and_BUTTs/%.cyclo: ../JMPs_and_BUTTs/%.c JMPs_and_BUTTs/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L431xx -c -I"C:/Workspace/Projects/CubeIDE/STM32L431RCT6/JMPs_and_BUTTs" -I../Core/Inc -I"C:/Workspace/Projects/CubeIDE/STM32L431RCT6/MAX31865" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-JMPs_and_BUTTs

clean-JMPs_and_BUTTs:
	-$(RM) ./JMPs_and_BUTTs/JMPs_and_BUTTs.cyclo ./JMPs_and_BUTTs/JMPs_and_BUTTs.d ./JMPs_and_BUTTs/JMPs_and_BUTTs.o ./JMPs_and_BUTTs/JMPs_and_BUTTs.su

.PHONY: clean-JMPs_and_BUTTs

