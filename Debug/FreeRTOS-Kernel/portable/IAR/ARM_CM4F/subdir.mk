################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../FreeRTOS-Kernel/portable/IAR/ARM_CM4F/portasm.s 

C_SRCS += \
../FreeRTOS-Kernel/portable/IAR/ARM_CM4F/port.c 

OBJS += \
./FreeRTOS-Kernel/portable/IAR/ARM_CM4F/port.o \
./FreeRTOS-Kernel/portable/IAR/ARM_CM4F/portasm.o 

S_DEPS += \
./FreeRTOS-Kernel/portable/IAR/ARM_CM4F/portasm.d 

C_DEPS += \
./FreeRTOS-Kernel/portable/IAR/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/IAR/ARM_CM4F/%.o FreeRTOS-Kernel/portable/IAR/ARM_CM4F/%.su FreeRTOS-Kernel/portable/IAR/ARM_CM4F/%.cyclo: ../FreeRTOS-Kernel/portable/IAR/ARM_CM4F/%.c FreeRTOS-Kernel/portable/IAR/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
FreeRTOS-Kernel/portable/IAR/ARM_CM4F/%.o: ../FreeRTOS-Kernel/portable/IAR/ARM_CM4F/%.s FreeRTOS-Kernel/portable/IAR/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-ARM_CM4F

clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-ARM_CM4F:
	-$(RM) ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F/port.cyclo ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F/port.d ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F/port.o ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F/port.su ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F/portasm.d ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F/portasm.o

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-ARM_CM4F

