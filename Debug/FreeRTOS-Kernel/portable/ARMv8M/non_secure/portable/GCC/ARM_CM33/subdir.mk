################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/mpu_wrappers_v2_asm.c \
../FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/portasm.c 

OBJS += \
./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/mpu_wrappers_v2_asm.o \
./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/portasm.o 

C_DEPS += \
./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/mpu_wrappers_v2_asm.d \
./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/portasm.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/%.o FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/%.su FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/%.cyclo: ../FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/%.c FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ARMv8M-2f-non_secure-2f-portable-2f-GCC-2f-ARM_CM33

clean-FreeRTOS-2d-Kernel-2f-portable-2f-ARMv8M-2f-non_secure-2f-portable-2f-GCC-2f-ARM_CM33:
	-$(RM) ./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/mpu_wrappers_v2_asm.cyclo ./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/mpu_wrappers_v2_asm.d ./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/mpu_wrappers_v2_asm.o ./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/mpu_wrappers_v2_asm.su ./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/portasm.cyclo ./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/portasm.d ./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/portasm.o ./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/portasm.su

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ARMv8M-2f-non_secure-2f-portable-2f-GCC-2f-ARM_CM33

