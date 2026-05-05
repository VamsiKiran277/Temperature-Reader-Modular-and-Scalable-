################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/GCC/IA32_flat/port.c 

S_UPPER_SRCS += \
../FreeRTOS-Kernel/portable/GCC/IA32_flat/portASM.S 

OBJS += \
./FreeRTOS-Kernel/portable/GCC/IA32_flat/port.o \
./FreeRTOS-Kernel/portable/GCC/IA32_flat/portASM.o 

S_UPPER_DEPS += \
./FreeRTOS-Kernel/portable/GCC/IA32_flat/portASM.d 

C_DEPS += \
./FreeRTOS-Kernel/portable/GCC/IA32_flat/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/GCC/IA32_flat/%.o FreeRTOS-Kernel/portable/GCC/IA32_flat/%.su FreeRTOS-Kernel/portable/GCC/IA32_flat/%.cyclo: ../FreeRTOS-Kernel/portable/GCC/IA32_flat/%.c FreeRTOS-Kernel/portable/GCC/IA32_flat/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
FreeRTOS-Kernel/portable/GCC/IA32_flat/%.o: ../FreeRTOS-Kernel/portable/GCC/IA32_flat/%.S FreeRTOS-Kernel/portable/GCC/IA32_flat/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-IA32_flat

clean-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-IA32_flat:
	-$(RM) ./FreeRTOS-Kernel/portable/GCC/IA32_flat/port.cyclo ./FreeRTOS-Kernel/portable/GCC/IA32_flat/port.d ./FreeRTOS-Kernel/portable/GCC/IA32_flat/port.o ./FreeRTOS-Kernel/portable/GCC/IA32_flat/port.su ./FreeRTOS-Kernel/portable/GCC/IA32_flat/portASM.d ./FreeRTOS-Kernel/portable/GCC/IA32_flat/portASM.o

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-IA32_flat

