################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/portasm.s 

C_SRCS += \
../FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/port.c 

S_UPPER_SRCS += \
../FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/mpu_wrappers_v2_asm.S 

OBJS += \
./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/mpu_wrappers_v2_asm.o \
./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/port.o \
./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/portasm.o 

S_DEPS += \
./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/portasm.d 

S_UPPER_DEPS += \
./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/mpu_wrappers_v2_asm.d 

C_DEPS += \
./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/%.o: ../FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/%.S FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/%.o FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/%.su FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/%.cyclo: ../FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/%.c FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/%.o: ../FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/%.s FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-ARM_CM4F_MPU

clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-ARM_CM4F_MPU:
	-$(RM) ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/mpu_wrappers_v2_asm.d ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/mpu_wrappers_v2_asm.o ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/port.cyclo ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/port.d ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/port.o ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/port.su ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/portasm.d ./FreeRTOS-Kernel/portable/IAR/ARM_CM4F_MPU/portasm.o

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-IAR-2f-ARM_CM4F_MPU

