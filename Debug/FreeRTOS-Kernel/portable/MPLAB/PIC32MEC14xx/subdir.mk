################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/port.c 

S_UPPER_SRCS += \
../FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/port_asm.S 

OBJS += \
./FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/port.o \
./FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/port_asm.o 

S_UPPER_DEPS += \
./FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/port_asm.d 

C_DEPS += \
./FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/%.o FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/%.su FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/%.cyclo: ../FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/%.c FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/%.o: ../FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/%.S FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-MPLAB-2f-PIC32MEC14xx

clean-FreeRTOS-2d-Kernel-2f-portable-2f-MPLAB-2f-PIC32MEC14xx:
	-$(RM) ./FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/port.cyclo ./FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/port.d ./FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/port.o ./FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/port.su ./FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/port_asm.d ./FreeRTOS-Kernel/portable/MPLAB/PIC32MEC14xx/port_asm.o

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-MPLAB-2f-PIC32MEC14xx

