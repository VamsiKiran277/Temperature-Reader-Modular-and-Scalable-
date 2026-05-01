/*
 * Sensor_Interface.c
 *
 *  Created on: 29-Apr-2026
 *      Author: vamsi
 */

#include <stdio.h>
#include <stdint.h>
#include "Sensor_Interface.h"
//macros
#define GPIOA ((GPIO_t*)GPIOA_BASE_ADDRESS)
#define RCC   ((RCC_t*)RCC_BASE_ADDRESS)
#define SYSTICK ((SYSTICK_t*)SYSTICK_BASE_ADDRESS)
#define TIM2   ((TIM2_t*)TIM2_BASE_ADDRESS)
#define CLK_CYCLE 16000000 // Set to 16MHz to match HSI startup for Renode
//Bit - (set,clear,toggle)
#define GPIOA_ENABLE (1<<0)
#define PA0_CLEAR  (3<<0)
#define PA0_SET    (1<<0)
#define CONTROL_ENABLE      (7 << 0)
#define RCC_APB1_TIM2MEn      (1<<0)
#define TIM2_Timer_Start    (1<<0)
//timer
volatile uint32_t ms_ticks = 0; //hardware timer initialization for milli seconds


void BSP_Timer_init(void) {
	SYSTICK->LOAD = ((CLK_CYCLE)/1000) -1; //setting the reload value for 1ms interval
	SYSTICK->VALUE = 0; //clearing the current value
	//enable the counter - bit0
	//enable the system exception -bit1
	//use processor clock - bit2
	SYSTICK->CONTROL |= CONTROL_ENABLE;
}

void SysTick_Handler(void) {
	ms_ticks++;
}
uint32_t BSP_getTick(void) {
	return ms_ticks;
}

void BSP_Delay_ms(uint32_t delay) {
	volatile uint32_t start = BSP_getTick();  //get current time
	while((BSP_getTick() - start) < delay);
}
void BSP_init() {
	RCC->RCC_AHB1ENR |=GPIOA_ENABLE; //enabled the clock for the GPIOA port
}

void BSP_DTH11_start(void) {
	GPIOA->MODER &=~(PA0_CLEAR); //clear 0 and 1 bits
	GPIOA->MODER |=PA0_SET; //set bit 0 (01 output)

	GPIOA->ODR &=~(PA0_SET);
	BSP_Delay_ms(18);  //delay for 18ms
	//switch to input mode
	GPIOA->MODER &=~(PA0_CLEAR);
}

//to get microsecond timer
uint32_t BSP_TIM2ENABLE(void) {
	RCC->RCC_APB1ENR |=RCC_APB1_TIM2En; //enable the clock for the TIM2
	TIM2->TIMx_PSC = 15; //we are using 16MHZ
	TIM2->TIMx_ARR = 0xFFFF; //seting it to the longest time pssible
	TIM2->TIMx_CR1 |= TIM2_Timer_Start; //start the time
}

uint32_t BSP_getMicro(void) {
	return TIM2->TIMx_CNT;
}

uint32_t BSP_DTH11_Response(void) {
	uint32_t timeout;
	//wait for pin to go low
	timeout = BSP_getMicro();
	while(GPIOA->IDR & (PA0_SET)) {
		if((BSP_getMicros() - timeout) > 100) return 0; //Sensor Didnt pull low
	}
	//wait for pin to go high, DHT11 releasing after 80us
	timeout = BSP_getMicro();
	while (!(GPIOA->IDR & (PA0_SET))) { //While PA0 is still LOW
	        if ((BSP_getMicros() - timeout) > 100) return 0; //Stayed low too long
	}
	//wait for pin to go low again
	timeout = BSP_getMicro();
	while (GPIOA->IDR & (PA0_SET)) { // While PA0 is still HIGH
	        if ((BSP_getMicros() - timeout) > 100) return 0; // Error: Stayed high too long
	}
	return 1; //handshake complete
}
