################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/IAR/STR75x/port.c 

OBJS += \
./FreeRTOS-Kernel/portable/IAR/STR75x/port.o 

C_DEPS += \
./FreeRTOS-Kernel/portable/IAR/STR75x/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/IAR/STR75x/%.o FreeRTOS-Kernel/portable/IAR/STR75x/%.su FreeRTOS-Kernel/portable/IAR/STR75x/%.cyclo: ../FreeRTOS-Kernel/portable/IAR/STR75x/%.c FreeRTOS-Kernel/portable/IAR/STR75x/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-STR75x

clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-STR75x:
	-$(RM) ./FreeRTOS-Kernel/portable/IAR/STR75x/port.cyclo ./FreeRTOS-Kernel/portable/IAR/STR75x/port.d ./FreeRTOS-Kernel/portable/IAR/STR75x/port.o ./FreeRTOS-Kernel/portable/IAR/STR75x/port.su

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-STR75x

