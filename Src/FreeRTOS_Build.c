/*
 * FreeRTOS_Build.c
 *
 *  Created on: 11-May-2026
 *      Author: vamsi
 */


/* FreeRTOS_Build.c
 * This bypasses the IDE and forces the compiler to build the exact FreeRTOS files we need.
 */

/* FreeRTOS_Build.c */
#include "../FreeRTOS-Kernel/list.c"
#include "../FreeRTOS-Kernel/queue.c"
#include "../FreeRTOS-Kernel/tasks.c"

// Changed to ARM_CM3 (which perfectly matches the Cortex-M4 without hardware FPU)
#include "../FreeRTOS-Kernel/portable/GCC/ARM_CM3/port.c"
#include "../FreeRTOS-Kernel/portable/MemMang/heap_4.c"
