################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/arc_support.s 

C_SRCS += \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/arc_freertos_exceptions.c \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/port.c 

OBJS += \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/arc_freertos_exceptions.o \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/arc_support.o \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/port.o 

S_DEPS += \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/arc_support.d 

C_DEPS += \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/arc_freertos_exceptions.d \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/%.o FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/%.su FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/%.cyclo: ../FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/%.c FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/%.o: ../FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/%.s FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-GCC-2f-ARC_v1

clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-GCC-2f-ARC_v1:
	-$(RM) ./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/arc_freertos_exceptions.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/arc_freertos_exceptions.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/arc_freertos_exceptions.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/arc_freertos_exceptions.su ./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/arc_support.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/arc_support.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/port.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/port.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/port.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/ARC_v1/port.su

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-GCC-2f-ARC_v1

