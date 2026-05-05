################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.c 

S_UPPER_SRCS += \
../FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port_asm.S 

OBJS += \
./FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.o \
./FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port_asm.o 

S_UPPER_DEPS += \
./FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port_asm.d 

C_DEPS += \
./FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/MPLAB/PIC32MX/%.o FreeRTOS-Kernel/portable/MPLAB/PIC32MX/%.su FreeRTOS-Kernel/portable/MPLAB/PIC32MX/%.cyclo: ../FreeRTOS-Kernel/portable/MPLAB/PIC32MX/%.c FreeRTOS-Kernel/portable/MPLAB/PIC32MX/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
FreeRTOS-Kernel/portable/MPLAB/PIC32MX/%.o: ../FreeRTOS-Kernel/portable/MPLAB/PIC32MX/%.S FreeRTOS-Kernel/portable/MPLAB/PIC32MX/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-MPLAB-2f-PIC32MX

clean-FreeRTOS-2d-Kernel-2f-portable-2f-MPLAB-2f-PIC32MX:
	-$(RM) ./FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.cyclo ./FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.d ./FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.o ./FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port.su ./FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port_asm.d ./FreeRTOS-Kernel/portable/MPLAB/PIC32MX/port_asm.o

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-MPLAB-2f-PIC32MX

