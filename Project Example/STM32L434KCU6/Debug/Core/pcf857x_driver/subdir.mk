################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/pcf857x_driver/pcf857x_driver.c \
../Core/pcf857x_driver/pcf857x_driver_basic.c \
../Core/pcf857x_driver/pcf857x_driver_interface.c 

OBJS += \
./Core/pcf857x_driver/pcf857x_driver.o \
./Core/pcf857x_driver/pcf857x_driver_basic.o \
./Core/pcf857x_driver/pcf857x_driver_interface.o 

C_DEPS += \
./Core/pcf857x_driver/pcf857x_driver.d \
./Core/pcf857x_driver/pcf857x_driver_basic.d \
./Core/pcf857x_driver/pcf857x_driver_interface.d 


# Each subdirectory must supply rules for building sources it contributes
Core/pcf857x_driver/%.o Core/pcf857x_driver/%.su: ../Core/pcf857x_driver/%.c Core/pcf857x_driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I"E:/Library Master/pcf857x IO Expander/Project Example/STM32L434KCU6/Core/pcf857x_driver" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-pcf857x_driver

clean-Core-2f-pcf857x_driver:
	-$(RM) ./Core/pcf857x_driver/pcf857x_driver.d ./Core/pcf857x_driver/pcf857x_driver.o ./Core/pcf857x_driver/pcf857x_driver.su ./Core/pcf857x_driver/pcf857x_driver_basic.d ./Core/pcf857x_driver/pcf857x_driver_basic.o ./Core/pcf857x_driver/pcf857x_driver_basic.su ./Core/pcf857x_driver/pcf857x_driver_interface.d ./Core/pcf857x_driver/pcf857x_driver_interface.o ./Core/pcf857x_driver/pcf857x_driver_interface.su

.PHONY: clean-Core-2f-pcf857x_driver

