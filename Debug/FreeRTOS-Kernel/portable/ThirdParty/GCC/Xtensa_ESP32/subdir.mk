################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.c \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port.c \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.c \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.c \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.c \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.c 

S_UPPER_SRCS += \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.S \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.S \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.S \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.S \
../FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.S 

OBJS += \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.o \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port.o \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.o \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.o \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.o \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.o \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.o \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.o \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.o \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.o \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.o 

S_UPPER_DEPS += \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.d \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.d \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.d \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.d \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.d 

C_DEPS += \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.d \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port.d \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.d \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.d \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.d \
./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/%.o FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/%.su FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/%.cyclo: ../FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/%.c FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/include" -I"V:/STM32/workspace/target/Multi-Threaded-Embedded-Task-Scheduler/FreeRTOS-Kernel/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/%.o: ../FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/%.S FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-GCC-2f-Xtensa_ESP32

clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-GCC-2f-Xtensa_ESP32:
	-$(RM) ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.su ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port.su ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.su ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.su ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.su ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.cyclo ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.su ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.o ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.d ./FreeRTOS-Kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.o

.PHONY: clean-FreeRTOS-2d-Kernel-2f-portable-2f-ThirdParty-2f-GCC-2f-Xtensa_ESP32

