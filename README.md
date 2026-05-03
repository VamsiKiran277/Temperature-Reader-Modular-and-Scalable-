# Temperature-Reader-Modular-and-Scalable-

## Project: STM32F407 Embedded Temperature Reader & LED Monitor

This repository contains a modular, bare-metal C implementation for the **STM32F407VG** (ARM Cortex-M4) microcontroller. The project demonstrates low-level hardware abstraction by interfacing with a DHT11 temperature and humidity sensor via a custom 1-wire bit-banging protocol, and utilizing SysTick timers for non-blocking execution. Furthermore, the entire hardware environment is successfully virtualized and verified using an automated Continuous Integration (CI) testing pipeline in the Renode simulation framework.

## Technology Stack
* **Target Hardware:** STM32F407 Discovery Board (ARM Cortex-M4 Architecture)
* **Clock Speed:** 16 MHz HSI (High-Speed Internal) / Configurable via PLL
* **Language:** C (Bare-Metal)
* **Toolchain:** ARM GNU Toolchain (`arm-none-eabi-gcc`)
* **Simulation:** Renode (Antmicro)
* **Key Peripherals:** 
    * **SysTick Timer:** Used for precise, non-blocking microsecond/millisecond delays.
    * **GPIOA:** Configured for high-speed Open-Drain input/output to handle the DHT11 1-wire protocol.
    * **GPIOD:** Configured for status indication via onboard LEDs (Pin 12 Green, Pin 13 Orange, Pin 14 Red).

## System Logic & Implementation

The application performs concurrent state-machine tasks within a modular super-loop:

### 1. Precision Timing (Non-Blocking SysTick)
To handle the strict microsecond timing requirements of the DHT11 protocol without stalling the CPU, the system utilizes the ARM SysTick timer. For a standard 1ms interrupt on a $16\text{ MHz}$ clock, the Reload Value is calculated as:
$$Reload = \frac{16,000,000}{1000} - 1 = 15,999$$
This allows the main loop to execute continuous hardware abstraction logic while checking asynchronous timing flags, ensuring real-time responsiveness.

### 2. Thermal Monitoring (DHT11 Bit-Banging)
The code interacts with a DHT11 sensor using a strictly timed 1-wire sequence:
* **Trigger:** The MCU pulls the GPIOA Pin 0 LOW for $>18\text{ ms}$, then releases it to HIGH.
* **Handshake:** The MCU waits for the sensor to pull the line LOW for 80 µs and HIGH for 80 µs.
* **Data Acquisition:** The MCU reads 40 discrete pulses to parse the 8-bit integral/decimal temperature and humidity values, verifying data integrity via a trailing checksum byte.
* **Status Indication:** 
    * Valid Checksum: Activate GPIOD Pin 12 (Green LED).
    * Timeout/Error: Activate GPIOD Pin 14 (Red LED).

---

## Bare-Metal Compilation & Linker Script
Because this project runs without an Operating System, standard libraries are bypassed. To instruct the compiler on how to map the C code to the STM32F407's physical memory, a custom linker script (`STM32F407VGTX_FLASH.ld`) is utilized.

* **Flash Memory (`0x08000000`):** Mapped for the executable code (`.text` sections), interrupt vector tables (`.isr_vector`), and read-only data (`.rodata`).
* **SRAM (`0x20000000`):** Mapped for initialized variables (`.data`) and uninitialized variables (`.bss`).
The resulting output is a raw `.elf` (Executable and Linkable Format) file that can be flashed directly to the silicon or loaded into the emulator.

---

## Virtual Hardware Simulation & CI Testing (Renode)
To test the firmware modularity and ensure regression stability without physical silicon, a fully automated, headless testing pipeline was built using **Renode**. 

* **Platform Definition (`stm32f4_discovery.repl`):** Defines the exact memory map of the STM32F407, attaching the CPU, Flash, SRAM, and Memory-Mapped I/O (GPIOD LEDs) to the system bus.
* **Hardware Injection (`dht11_setup.repl`):** A custom overlay that injects a virtual component onto `gpioPortA 0`. This abstracts the physical sensor, allowing the CI pipeline to manually trigger logic state changes.
* **Execution Script (`setup.resc`):** An automated test script that clears the emulation state, maps the virtual wiring, loads the `.elf` binary without pathing errors, and verifies the hardware abstraction layer by automatically triggering inputs and reading the physical Output Data Registers (ODR).

---

## Key Learnings

### Continuous Integration (CI) for Embedded Systems
I successfully architected a completely automated simulation script (`setup.resc`) that requires zero manual intervention. By verifying that the firmware can toggle the raw hex value `0x00001000` on the GPIOD offset `0x14`, I proved the firmware is completely decoupled and CI/CD-ready.

### Hardware Abstraction via Structs
Instead of using raw pointer arithmetic for every register access, I utilized **Memory-Mapped Structures**. This approach maps a C `struct` directly to the peripheral's register offsets (e.g., `GPIO_TypeDef`), bridging the gap between high-level logic and raw memory addresses.

### The `volatile` Keyword is Critical
A major focus was managing compiler optimization. Without the `volatile` keyword on the hardware structs, the ARM GCC compiler optimized away the hardware polling loops. Adding `volatile` forced the CPU to fetch fresh data from the memory bus on every cycle, preventing infinite timeout loops when reading sensor data.

### Protocol Timeout Mitigation
By implementing a strictly bound **Polling Method**, I practiced how software must protect against asynchronous hardware failures. If the physical sensor is disconnected, the bit-banging loops break cleanly and trigger an error state rather than permanently hanging the processor.

---

## Code Structure
* `Src/main.c`: Primary logic including SysTick initialization and the main control loop.
* `Src/Sensor_Interface.c`: Modular driver handling the 1-wire bit-banging protocol.
* `Inc/`: Header files containing memory-mapped structure definitions.
* `STM32F407VGTX_FLASH.ld`: Linker script defining the memory layout for Flash and RAM.
* `setup.resc`: Renode startup script for the automated CI testing pipeline.
* `dht11_setup.repl`: Custom Renode hardware overlay for mocking sensor inputs.
 
---

## How to Run the Automated Simulation

**1. Compile the Firmware:**
Ensure you have the ARM GNU Toolchain installed. Compile the project to generate `Temperature_Reader.elf` inside the `Debug` directory.

**2. Run the Automated Test Pipeline:**
Open your terminal in the root project directory and launch the headless simulation script:
```bash
renode -e "i @setup.resc"
```

**3. Verify Hardware Abstraction:**
The simulation will automatically boot the virtual STM32F407, load the firmware, and trigger the mock sensor. To verify the software successfully updated the hardware registers, read the GPIOD Output Data Register (ODR) from the monitor:
```bash
sysbus.gpioPortD ReadDoubleWord 0x14
```
*An output of `0x00001000` proves the firmware successfully processed the sensor input and activated the virtual Green LED (Pin 12)!*
