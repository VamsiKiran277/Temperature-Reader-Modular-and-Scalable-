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
#define TIM2_BASE_ADDRESS  0x40000000

typedef struct {
	volatile uint32_t RCC_CR; //OFFSET AT 0x00
	volatile uint32_t RCC_PLLCFGR; //offset at 0x04
	volatile uint32_t RCC_CFGR;
	volatile uint32_t RCC_CIR;
	volatile uint32_t RCC_AHB1RSTR;
	volatile uint32_t RCC_AHB2RSTR;
	volatile uint32_t RCC_AHB3RSTR;
	volatile uint32_t RCC_APB1RSTR;
	volatile uint32_t RCC_APB2RSTR;
	volatile uint32_t RCC_AHB1ENR; //offset at 0x30
	volatile uint32_t RCC_AHB2ENR;
	volatile uint32_t RCC_AHB3ENR;
	volatile uint32_t RCC_APB1ENR; //offset at 0x40
}RCC_t;

typedef struct {
	volatile uint32_t MODER; //offset at 0x00
	volatile uint32_t OTYPER; //offset at 0x04
	volatile uint32_t OSPEEDR;
	volatile uint32_t PUPDR;
	volatile uint32_t IDR;
	volatile uint32_t ODR;
	volatile uint32_t BSRR;
	volatile uint32_t LCKR;
	volatile uint32_t AFRL;
	volatile uint32_t AFRH; //offset at 0x24
}GPIO_t;

//check CortexM4 programming manual
typedef struct {
	volatile uint32_t CONTROL; //Enables the counter and its interrupt.
	volatile uint32_t LOAD; //The starting value (24-bit) the timer counts down from.
	volatile uint32_t VALUE; //The actual live countdown value.
	volatile uint32_t CALIB;
}SYSTICK_t;


//for TIM2
typedef struct {
	volatile uint32_t TIMx_CR1; //offset at 0x00
	volatile uint32_t TIMx_CR2;
	volatile uint32_t TIMx_SMCR;
	volatile uint32_t TIMx_DIER;
	volatile uint32_t TIMx_SR;
	volatile uint32_t TIMx_EGR;
	volatile uint32_t TIMx_CCMR1;
	volatile uint32_t TIMx_CCMR2;
	volatile uint32_t TIMx_CCER;
	volatile uint32_t TIMx_CNT;
	volatile uint32_t TIMx_PSC;
	volatile uint32_t TIMx_ARR;
}TIM2_t;

//Function Definitons
void BSP_init();
void BSP_DTH11_start(void);
void BSP_Timer_init(void);
void SysTick_Handler(void);
uint32_t BSP_getTick(void);
void BSP_Delay_ms(uint32_t delay);
uint32_t BSP_TIM2ENABLE(void);

#endif /* SENSOR_INTERFACE_H_ */
