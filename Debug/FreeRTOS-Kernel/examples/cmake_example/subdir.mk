################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/examples/cmake_example/main.c 

OBJS += \
./FreeRTOS-Kernel/examples/cmake_example/main.o 

C_DEPS += \
./FreeRTOS-Kernel/examples/cmake_example/main.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/examples/cmake_example/%.o FreeRTOS-Kernel/examples/cmake_example/%.su FreeRTOS-Kernel/examples/cmake_example/%.cyclo: ../FreeRTOS-Kernel/examples/cmake_example/%.c FreeRTOS-Kernel/examples/cmake_example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-Kernel-2f-examples-2f-cmake_example

clean-FreeRTOS-2d-Kernel-2f-examples-2f-cmake_example:
	-$(RM) ./FreeRTOS-Kernel/examples/cmake_example/main.cyclo ./FreeRTOS-Kernel/examples/cmake_example/main.d ./FreeRTOS-Kernel/examples/cmake_example/main.o ./FreeRTOS-Kernel/examples/cmake_example/main.su

.PHONY: clean-FreeRTOS-2d-Kernel-2f-examples-2f-cmake_example

