################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/IAR/MSP430X/port.c 

OBJS += \
./FreeRTOS-Kernel/portable/IAR/MSP430X/port.o 

C_DEPS += \
./FreeRTOS-Kernel/portable/IAR/MSP430X/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/IAR/MSP430X/%.o FreeRTOS-Kernel/portable/IAR/MSP430X/%.su FreeRTOS-Kernel/portable/IAR/MSP430X/%.cyclo: ../FreeRTOS-Kernel/portable/IAR/MSP430X/%.c FreeRTOS-Kernel/portable/IAR/MSP430X/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-MSP430X

clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-MSP430X:
	-$(RM) ./FreeRTOS-Kernel/portable/IAR/MSP430X/port.cyclo ./FreeRTOS-Kernel/portable/IAR/MSP430X/port.d ./FreeRTOS-Kernel/portable/IAR/MSP430X/port.o ./FreeRTOS-Kernel/portable/IAR/MSP430X/port.su

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-MSP430X

