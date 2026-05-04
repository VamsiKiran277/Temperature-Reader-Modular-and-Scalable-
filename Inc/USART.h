/*
 * USART.h
 *
 *  Created on: 04-May-2026
 *      Author: vamsi
 */

#ifndef USART_H_
#define USART_H_
#include "common.h"
//Macros definitons
#define USART2_BASE_ADDRESS  0x40004400
#define USART2 ((USART2_t*)USART2_BASE_ADDRESS)

typedef struct {
	volatile uint32_t USART_SR; //offset at 0x00
	volatile uint32_t USART_DR;
	volatile uint32_t USART_BRR;
	volatile uint32_t USART_CR1;
	volatile uint32_t USART_CR2;
	volatile uint32_t USART_CR3;
	volatile uint32_t USART_GTPR;
}USART2_t;

//function definition
void BSP_USART2_init(void);
void BSP_USART2_SendChar(char c);
void BSP_USART2_SendString(char *str);
void hello();
#endif /* USART_H_ */
