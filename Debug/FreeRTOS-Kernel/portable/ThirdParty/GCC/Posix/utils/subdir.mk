################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/Posix/utils/wait_for_event.c 

OBJS += \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Posix/utils/wait_for_event.o 

C_DEPS += \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Posix/utils/wait_for_event.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/ThirdParty/GCC/Posix/utils/%.o FreeRTOS-Kernel/portable/ThirdParty/GCC/Posix/utils/%.su FreeRTOS-Kernel/portable/ThirdParty/GCC/Posix/utils/%.cyclo: ../FreeRTOS-Kernel/portable/ThirdParty/GCC/Posix/utils/%.c FreeRTOS-Kernel/portable/ThirdParty/GCC/Posix/utils/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-GCC-2f-Posix-2f-utils

clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-GCC-2f-Posix-2f-utils:
	-$(RM) ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Posix/utils/wait_for_event.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Posix/utils/wait_for_event.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Posix/utils/wait_for_event.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Posix/utils/wait_for_event.su

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-GCC-2f-Posix-2f-utils

