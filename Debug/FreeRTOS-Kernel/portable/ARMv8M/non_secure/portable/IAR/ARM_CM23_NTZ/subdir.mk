################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.s 

S_UPPER_SRCS += \
../FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/mpu_wrappers_v2_asm.S 

OBJS += \
./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/mpu_wrappers_v2_asm.o \
./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.o 

S_DEPS += \
./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.d 

S_UPPER_DEPS += \
./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/mpu_wrappers_v2_asm.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/%.o: ../FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/%.S FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/%.o: ../FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/%.s FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ARMv8M-2f-non_secure-2f-portable-2f-IAR-2f-ARM_CM23_NTZ

clean-FreeRTOS-2d-Kernel-2f-portable-2f-ARMv8M-2f-non_secure-2f-portable-2f-IAR-2f-ARM_CM23_NTZ:
	-$(RM) ./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/mpu_wrappers_v2_asm.d ./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/mpu_wrappers_v2_asm.o ./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.d ./FreeRTOS-Kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.o

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ARMv8M-2f-non_secure-2f-portable-2f-IAR-2f-ARM_CM23_NTZ

