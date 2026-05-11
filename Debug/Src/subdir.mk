################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/FreeRTOS_Build.c \
../Src/Sensor_Interface.c \
../Src/USART.c \
../Src/display_driver.c \
../Src/main.c \
../Src/syscalls.c \
../Src/sysmem.c 

OBJS += \
./Src/FreeRTOS_Build.o \
./Src/Sensor_Interface.o \
./Src/USART.o \
./Src/display_driver.o \
./Src/main.o \
./Src/syscalls.o \
./Src/sysmem.o 

C_DEPS += \
./Src/FreeRTOS_Build.d \
./Src/Sensor_Interface.d \
./Src/USART.d \
./Src/display_driver.d \
./Src/main.d \
./Src/syscalls.d \
./Src/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/FreeRTOS_Build.cyclo ./Src/FreeRTOS_Build.d ./Src/FreeRTOS_Build.o ./Src/FreeRTOS_Build.su ./Src/Sensor_Interface.cyclo ./Src/Sensor_Interface.d ./Src/Sensor_Interface.o ./Src/Sensor_Interface.su ./Src/USART.cyclo ./Src/USART.d ./Src/USART.o ./Src/USART.su ./Src/display_driver.cyclo ./Src/display_driver.d ./Src/display_driver.o ./Src/display_driver.su ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/syscalls.cyclo ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.cyclo ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su

.PHONY: clean-Src

