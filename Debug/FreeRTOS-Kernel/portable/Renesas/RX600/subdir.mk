################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/Renesas/RX600/port.c 

OBJS += \
./FreeRTOS-Kernel/portable/Renesas/RX600/port.o 

C_DEPS += \
./FreeRTOS-Kernel/portable/Renesas/RX600/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/Renesas/RX600/%.o FreeRTOS-Kernel/portable/Renesas/RX600/%.su FreeRTOS-Kernel/portable/Renesas/RX600/%.cyclo: ../FreeRTOS-Kernel/portable/Renesas/RX600/%.c FreeRTOS-Kernel/portable/Renesas/RX600/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-Renesas-2f-RX600

clean-FreeRTOS-2d-Kernel-2f-portable-2f-Renesas-2f-RX600:
	-$(RM) ./FreeRTOS-Kernel/portable/Renesas/RX600/port.cyclo ./FreeRTOS-Kernel/portable/Renesas/RX600/port.d ./FreeRTOS-Kernel/portable/Renesas/RX600/port.o ./FreeRTOS-Kernel/portable/Renesas/RX600/port.su

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-Renesas-2f-RX600

