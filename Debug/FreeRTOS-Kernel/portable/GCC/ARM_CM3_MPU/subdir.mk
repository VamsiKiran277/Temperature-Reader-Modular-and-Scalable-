################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.c \
../FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/port.c 

OBJS += \
./FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.o \
./FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/port.o 

C_DEPS += \
./FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.d \
./FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/%.o FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/%.su FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/%.cyclo: ../FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/%.c FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-ARM_CM3_MPU

clean-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-ARM_CM3_MPU:
	-$(RM) ./FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.cyclo ./FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.d ./FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.o ./FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.su ./FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/port.cyclo ./FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/port.d ./FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/port.o ./FreeRTOS-Kernel/portable/GCC/ARM_CM3_MPU/port.su

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-ARM_CM3_MPU

