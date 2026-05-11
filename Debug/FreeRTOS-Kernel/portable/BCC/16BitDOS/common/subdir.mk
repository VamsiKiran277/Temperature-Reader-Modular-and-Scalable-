################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/BCC/16BitDOS/common/portcomn.c 

OBJS += \
./FreeRTOS-Kernel/portable/BCC/16BitDOS/common/portcomn.o 

C_DEPS += \
./FreeRTOS-Kernel/portable/BCC/16BitDOS/common/portcomn.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/BCC/16BitDOS/common/%.o FreeRTOS-Kernel/portable/BCC/16BitDOS/common/%.su FreeRTOS-Kernel/portable/BCC/16BitDOS/common/%.cyclo: ../FreeRTOS-Kernel/portable/BCC/16BitDOS/common/%.c FreeRTOS-Kernel/portable/BCC/16BitDOS/common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-BCC-2f-16BitDOS-2f-common

clean-FreeRTOS-2d-Kernel-2f-portable-2f-BCC-2f-16BitDOS-2f-common:
	-$(RM) ./FreeRTOS-Kernel/portable/BCC/16BitDOS/common/portcomn.cyclo ./FreeRTOS-Kernel/portable/BCC/16BitDOS/common/portcomn.d ./FreeRTOS-Kernel/portable/BCC/16BitDOS/common/portcomn.o ./FreeRTOS-Kernel/portable/BCC/16BitDOS/common/portcomn.su

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-BCC-2f-16BitDOS-2f-common

