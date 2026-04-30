/*
 * Sensor_Interface.h
 *
 *  Created on: 29-Apr-2026
 *      Author: vamsi
 */

#ifndef SENSOR_INTERFACE_H_
#define SENSOR_INTERFACE_H_

#define GPIOA_BASE_ADDRESS  0x40020000
#define GPIOD_BASE_ADDRESS    0x40020C00
#define RCC_BASE_ADDRESS  0x40023800
#define SYSTICK_BASE_ADDRESS  0xE000E010

typedef struct {
	uint32_t RCC_CR; //OFFSET AT 0x00
	uint32_t RCC_PLLCFGR; //offset at 0x04
	uint32_t RCC_CFGR;
	uint32_t RCC_CIR;
	uint32_t RCC_AHB1RSTR;
	uint32_t RCC_AHB2RSTR;
	uint32_t RCC_AHB3RSTR;
	uint32_t RCC_APB1RSTR;
	uint32_t RCC_APB2RSTR;
	uint32_t RCC_AHB1ENR; //offset at 0x30
}RCC_t;

typedef struct {
	uint32_t MODER; //offset at 0x00
	uint32_t OTYPER; //offset at 0x04
	uint32_t OSPEEDR;
	uint32_t PUPDR;
	uint32_t IDR;
	uint32_t ODR;
	uint32_t BSRR;
	uint32_t LCKR;
	uint32_t AFRL;
	uint32_t AFRH; //offset at 0x24
}GPIO_t;

//check CortexM4 programming manual
typedef struct {
	uint32_t CONTROL; //Enables the counter and its interrupt.
	uint32_t LOAD; //The starting value (24-bit) the timer counts down from.
	uint32_t VALUE; //The actual live countdown value.
	uint32_t CALIB;
}SYSTICK_t;

//Function Definitons
void BSP_init();
void BSP_DTH11_start(void);
void BSP_Timer_init(void);
void SysTick_Handler(void);
uint32_t BSP_getTick(void);
void BSP_Delay_ms(uint32_t delay);

#endif /* SENSOR_INTERFACE_H_ */
