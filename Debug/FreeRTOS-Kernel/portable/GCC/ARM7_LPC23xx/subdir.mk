################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/port.c \
../FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/portISR.c 

OBJS += \
./FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/port.o \
./FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/portISR.o 

C_DEPS += \
./FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/port.d \
./FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/portISR.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/%.o FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/%.su FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/%.cyclo: ../FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/%.c FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-ARM7_LPC23xx

clean-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-ARM7_LPC23xx:
	-$(RM) ./FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/port.cyclo ./FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/port.d ./FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/port.o ./FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/port.su ./FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/portISR.cyclo ./FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/portISR.d ./FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/portISR.o ./FreeRTOS-Kernel/portable/GCC/ARM7_LPC23xx/portISR.su

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-ARM7_LPC23xx

