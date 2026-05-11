################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/cpu.c \
../FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/xscugic.c 

S_UPPER_SRCS += \
../FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/boot.S \
../FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/xil-crt0.S 

OBJS += \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/boot.o \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/cpu.o \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/xil-crt0.o \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/xscugic.o 

S_UPPER_DEPS += \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/boot.d \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/xil-crt0.d 

C_DEPS += \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/cpu.d \
./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/xscugic.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/%.o: ../FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/%.S FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/%.o FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/%.su FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/%.cyclo: ../FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/%.c FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-Community-2d-Supported-2d-Ports-2f-GCC-2f-CORTEX_A53_64-2d-bit_UltraScale_MPSoC-2f-bsp_patches

clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-Community-2d-Supported-2d-Ports-2f-GCC-2f-CORTEX_A53_64-2d-bit_UltraScale_MPSoC-2f-bsp_patches:
	-$(RM) ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/boot.d ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/boot.o ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/cpu.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/cpu.d ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/cpu.o ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/cpu.su ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/xil-crt0.d ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/xil-crt0.o ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/xscugic.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/xscugic.d ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/xscugic.o ./FreeRTOS-Kernel/portable/ThirdParty/Community-Supported-Ports/GCC/CORTEX_A53_64-bit_UltraScale_MPSoC/bsp_patches/xscugic.su

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-Community-2d-Supported-2d-Ports-2f-GCC-2f-CORTEX_A53_64-2d-bit_UltraScale_MPSoC-2f-bsp_patches

