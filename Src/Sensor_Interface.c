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
#define RCC_APB1_TIM2En      (1<<0)
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
void BSP_TIM2ENABLE(void) {
	RCC->RCC_APB1ENR |=RCC_APB1_TIM2En; //enable the clock for the TIM2
	TIM2->TIMx_PSC = 15; //we are using 16MHZ
	TIM2->TIMx_ARR = 0xFFFF; //setting it to the longest time possible
	TIM2->TIMx_CR1 |= TIM2_Timer_Start; //start the time
}

uint32_t BSP_getMicros(void) {
	return TIM2->TIMx_CNT;
}

uint32_t BSP_DTH11_Response(void) {
	uint32_t timeout;
	//wait for pin to go low
	timeout = BSP_getMicros();
	while(GPIOA->IDR & (PA0_SET)) {
		if((BSP_getMicros() - timeout) > 100) return 0; //Sensor Didn't pull low
	}
	//wait for pin to go high, DHT11 releasing after 80us
	timeout = BSP_getMicros();
	while (!(GPIOA->IDR & (PA0_SET))) { //While PA0 is still LOW
	        if ((BSP_getMicros() - timeout) > 100) return 0; //Stayed low too long
	}
	//wait for pin to go low again
	timeout = BSP_getMicros();
	while (GPIOA->IDR & (PA0_SET)) { // While PA0 is still HIGH
	        if ((BSP_getMicros() - timeout) > 100) return 0; // Error: Stayed high too long
	}
	return 1; //handshake complete
}

//Read a single bit from DHT11

uint8_t BSP_DTH11_ReadBit(void) {
	uint32_t timeout;
	uint32_t start;
	uint32_t duration;

	//wait for pin to go high
	timeout = BSP_getMicros();
	while (!(GPIOA->IDR & PA0_SET)) {
	        if ((BSP_getMicros() - timeout) > 80) return 0xFF; //still low
	}
	//start the stopwatch the moment pin goes to high
	start = BSP_getMircros();
	//wait for the pin to go low again
	timeout = BSP_getMicros();
	while (GPIOA->IDR & PA0_SET) {
	        if ((BSP_getMicros() - timeout) > 100) return 0xFF; //still high
	}
	//measure the high pulse duration
	duration = getMircros()-start;
	return (duration > 40) ? 1 : 0; //if greater than 40 return 1 else 0
}

//Read all 40 bits from DHT11
//Assume DHT11 returned 1 handshake complete
DHT11_Data_t BSP_DTH11_ReadData(void)  {
	DHT11_Data_t result = {0};
	uint8_t bytes[5]    = {0};
	uint8_t bit;
	for (uint8_t i = 0; i < 40; i++) {
	        bit = BSP_DTH11_ReadBit();
	        if (bit == 0xFF) {
	            //Timeout
	            return result;
	        }
	        if (bit) {
	            // Set the correct bit inside the correct byte (MSB first)
	            bytes[i / 8] |= (1 << (7 - (i % 8)));
	        }
	        // bit == 0: nothing to do, byte was already zeroed
	}
	result.humidity_int = bytes[0];
	result.humidity_dec = bytes[1];
	result.temp_int     = bytes[2];
	result.temp_dec     = bytes[3];
	result.checksum     = bytes[4];
	uint8_t sum = bytes[0] + bytes[1] + bytes[2] + bytes[3];
	result.valid = (sum == bytes[4]) ? 1 : 0;

	return result;
}
