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

void BSP_USART_init(void) {
	RCC->RCC_APB1ENR |=USART2_CLOCK_ENABLE; //usart2 clock enable
	GPIOA->MODER &=~(PA2_CLEAR | PA3_CLEAR); //clear PA2 and PA3
	GPIOA->MODER |= (PA2_AF_MODE | PA3_AF_MODE); //enabled alternate function mode for PA2 and PA3
	GPIOA->AFLR  &=~(PA2_CLEAR_AF7_USART2 | PA3_CLEAR_AF7_USART2);
	GPIOA->AFLR  |=(PA2_AF7_USART2 | PA3_AF7_USART2); //map AF7 to PA2 and PA3
}
