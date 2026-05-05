################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_context_port_asm.s 

C_SRCS += \
../FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_context.c \
../FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_heap.c \
../FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_init.c 

OBJS += \
./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_context.o \
./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_context_port_asm.o \
./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_heap.o \
./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_init.o 

S_DEPS += \
./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_context_port_asm.d 

C_DEPS += \
./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_context.d \
./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_heap.d \
./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_init.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/%.o FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/%.su FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/%.cyclo: ../FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/%.c FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/%.o: ../FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/%.s FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-ARM_STAR_MC3-2f-secure

clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-ARM_STAR_MC3-2f-secure:
	-$(RM) ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_context.cyclo ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_context.d ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_context.o ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_context.su ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_context_port_asm.d ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_context_port_asm.o ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_heap.cyclo ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_heap.d ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_heap.o ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_heap.su ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_init.cyclo ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_init.d ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_init.o ./FreeRTOS-Kernel/portable/IAR/ARM_STAR_MC3/secure/secure_init.su

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-ARM_STAR_MC3-2f-secure

