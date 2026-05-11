################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/asm-offsets.c \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/port.c \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portclib.c \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portmpu.c \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr.c \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr_wrapper.c \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_overlay_os_hook.c 

S_UPPER_SRCS += \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/mpu.S \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portasm.S \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_context.S \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_coproc_handler.S \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr_asm.S \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_vectors.S \
../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_vectors_xea3.S 

OBJS += \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/asm-offsets.o \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/mpu.o \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/port.o \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portasm.o \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portclib.o \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portmpu.o \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_context.o \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_coproc_handler.o \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr.o \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr_asm.o \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr_wrapper.o \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_overlay_os_hook.o \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_vectors.o \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_vectors_xea3.o 

S_UPPER_DEPS += \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/mpu.d \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portasm.d \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_context.d \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_coproc_handler.d \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr_asm.d \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_vectors.d \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_vectors_xea3.d 

C_DEPS += \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/asm-offsets.d \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/port.d \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portclib.d \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portmpu.d \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr.d \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr_wrapper.d \
./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_overlay_os_hook.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/%.o FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/%.su FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/%.cyclo: ../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/%.c FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/%.o: ../FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/%.S FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-Partner-2d-Supported-2d-Ports-2f-Cadence-2f-Xtensa

clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-Partner-2d-Supported-2d-Ports-2f-Cadence-2f-Xtensa:
	-$(RM) ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/asm-offsets.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/asm-offsets.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/asm-offsets.o ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/asm-offsets.su ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/mpu.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/mpu.o ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/port.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/port.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/port.o ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/port.su ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portasm.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portasm.o ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portclib.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portclib.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portclib.o ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portclib.su ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portmpu.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portmpu.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portmpu.o ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/portmpu.su ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_context.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_context.o ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_coproc_handler.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_coproc_handler.o ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr.o ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr.su ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr_asm.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr_asm.o ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr_wrapper.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr_wrapper.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr_wrapper.o ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_intr_wrapper.su ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_overlay_os_hook.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_overlay_os_hook.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_overlay_os_hook.o ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_overlay_os_hook.su ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_vectors.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_vectors.o ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_vectors_xea3.d ./FreeRTOS-Kernel/portable/ThirdParty/Partner-Supported-Ports/Cadence/Xtensa/xtensa_vectors_xea3.o

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-Partner-2d-Supported-2d-Ports-2f-Cadence-2f-Xtensa

