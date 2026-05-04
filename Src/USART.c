/*
 * USART.c
 *
 *  Created on: 04-May-2026
 *      Author: vamsi
 */

#include <stdint.h>
#include "USART.H"
#include "Sensor_Interface.h"
//Macro definitions
#define USART2_CLOCK_ENABLE  (1<<17)
#define PA2_CLEAR    (3<<4)
#define PA3_CLEAR    (3<<6)
#define PA2_AF_MODE  (2<<4)  //moder pin alternate function for pin2
#define PA3_AF_MODE  (2<<6)  //moder pin alternate function for pin3
#define PA2_AF7_USART2     (7<<8)  //Alternate function low register mode for pin2
#define PA3_AF7_USART2     (7<<13) //Alternate function low register mode for pin3
#define PA2_CLEAR_AF7_USART2 (0xF<<8) //clear AF7
#define PA3_CLEAR_AF7_USART2 (0xF<<12)
#define USART_ENABLE    (1<<13)
#define USART_RE_ENABLE (1<<2)
#define USART_TX_ENABLE (1<<3)
#define USART_SR_TXE   (1<<7) //is Transmit Data register empty

void BSP_USART2_init(void) {
	RCC->RCC_APB1ENR |=USART2_CLOCK_ENABLE; //usart2 clock enable
	GPIOA->MODER &=~(PA2_CLEAR | PA3_CLEAR); //clear PA2 and PA3
	GPIOA->MODER |= (PA2_AF_MODE | PA3_AF_MODE); //enabled alternate function mode for PA2 and PA3
	GPIOA->AFLR  &=~(PA2_CLEAR_AF7_USART2 | PA3_CLEAR_AF7_USART2);
	GPIOA->AFLR  |=(PA2_AF7_USART2 | PA3_AF7_USART2); //map AF7 to PA2 and PA3
	/*
	 * Set Baudrate to 115200
	 * System Clock is 16MHz. APB1 is 16MHz
	 * USARTDIV = 16000000 / (16*115200) = 8.6805
	 * Mantissa = 8. Fraction = 0.6805 * 16 = 10.88 (Round to 11 = 0xB)
	 * BRR = (8 << 4) | 0xB = 0x8B*/
	USART2->USART_BRR |= 0x008B;
	USART2->USART_CR1 |=USART_ENABLE;
	USART2->USART_CR1 |=(USART_RE_ENABLE | USART_TX_ENABLE);
	//enabling USART2, receiver and transmitter
}

void BSP_USART2_SendChar(char c) {
	while(!(USART2->USART_SR & USART_SR_TXE)) {
		USART2->USART_DR = (c & 0xFF);  //0xFF = 11111111
	}
}
/*
 * IF *str = 'hi'
 * sends H
 * sends i
 * stops at \0*/

void BSP_USART2_SendString(char *str) {
	while(*str) {
		BSP_USART2_SendChar(*str++);
	}
}
