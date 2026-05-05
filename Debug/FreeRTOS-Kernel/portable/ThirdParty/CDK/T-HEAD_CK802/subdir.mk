################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/port.c 

S_UPPER_SRCS += \
../FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/portasm.S 

OBJS += \
./FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/port.o \
./FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/portasm.o 

S_UPPER_DEPS += \
./FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/portasm.d 

C_DEPS += \
./FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/%.o FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/%.su FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/%.cyclo: ../FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/%.c FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/%.o: ../FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/%.S FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-CDK-2f-T-2d-HEAD_CK802

clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-CDK-2f-T-2d-HEAD_CK802:
	-$(RM) ./FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/port.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/port.d ./FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/port.o ./FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/port.su ./FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/portasm.d ./FreeRTOS-Kernel/portable/ThirdParty/CDK/T-HEAD_CK802/portasm.o

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-CDK-2f-T-2d-HEAD_CK802

