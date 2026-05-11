################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/port.c \
../FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/portZynqUltrascale.c 

S_UPPER_SRCS += \
../FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/portASM.S \
../FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/port_asm_vectors.S 

OBJS += \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/port.o \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/portASM.o \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/portZynqUltrascale.o \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/port_asm_vectors.o 

S_UPPER_DEPS += \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/portASM.d \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/port_asm_vectors.d 

C_DEPS += \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/port.d \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/portZynqUltrascale.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/%.o FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/%.su FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/%.cyclo: ../FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/%.c FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/%.o: ../FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/%.S FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-Community-2d-Supported-2d-Ports-2f-GCC-2f-CORTEX_A53_64-2d-bit_UltraScale_MPSoC

clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-Community-2d-Supported-2d-Ports-2f-GCC-2f-CORTEX_A53_64-2d-bit_UltraScale_MPSoC:
	-$(RM) ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/port.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/port.d ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/port.o ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/port.su ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/portASM.d ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/portASM.o ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/portZynqUltrascale.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/portZynqUltrascale.d ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/portZynqUltrascale.o ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/portZynqUltrascale.su ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/port_asm_vectors.d ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/port_asm_vectors.o

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-Community-2d-Supported-2d-Ports-2f-GCC-2f-CORTEX_A53_64-2d-bit_UltraScale_MPSoC

