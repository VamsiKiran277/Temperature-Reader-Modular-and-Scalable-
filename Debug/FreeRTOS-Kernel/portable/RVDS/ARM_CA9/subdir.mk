################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../FreeRTOS-Kernel/portable/RVDS/ARM_CA9/portASM.s 

C_SRCS += \
../FreeRTOS-Kernel/portable/RVDS/ARM_CA9/port.c 

OBJS += \
./FreeRTOS-Kernel/portable/RVDS/ARM_CA9/port.o \
./FreeRTOS-Kernel/portable/RVDS/ARM_CA9/portASM.o 

S_DEPS += \
./FreeRTOS-Kernel/portable/RVDS/ARM_CA9/portASM.d 

C_DEPS += \
./FreeRTOS-Kernel/portable/RVDS/ARM_CA9/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/RVDS/ARM_CA9/%.o FreeRTOS-Kernel/portable/RVDS/ARM_CA9/%.su FreeRTOS-Kernel/portable/RVDS/ARM_CA9/%.cyclo: ../FreeRTOS-Kernel/portable/RVDS/ARM_CA9/%.c FreeRTOS-Kernel/portable/RVDS/ARM_CA9/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
FreeRTOS-Kernel/portable/RVDS/ARM_CA9/%.o: ../FreeRTOS-Kernel/portable/RVDS/ARM_CA9/%.s FreeRTOS-Kernel/portable/RVDS/ARM_CA9/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-RVDS-2f-ARM_CA9

clean-FreeRTOS-2d-Kernel-2f-portable-2f-RVDS-2f-ARM_CA9:
	-$(RM) ./FreeRTOS-Kernel/portable/RVDS/ARM_CA9/port.cyclo ./FreeRTOS-Kernel/portable/RVDS/ARM_CA9/port.d ./FreeRTOS-Kernel/portable/RVDS/ARM_CA9/port.o ./FreeRTOS-Kernel/portable/RVDS/ARM_CA9/port.su ./FreeRTOS-Kernel/portable/RVDS/ARM_CA9/portASM.d ./FreeRTOS-Kernel/portable/RVDS/ARM_CA9/portASM.o

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-RVDS-2f-ARM_CA9

