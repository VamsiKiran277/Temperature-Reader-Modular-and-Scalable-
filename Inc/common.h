/*
 * common.h
 *
 *  Created on: 03-May-2026
 *      Author: vamsi
 */

#ifndef COMMON_H_
#define COMMON_H_
#include <stdint.h>

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

typedef struct {
    uint8_t humidity_int;
    uint8_t humidity_dec;
    uint8_t temp_int;
    uint8_t temp_dec;
    uint8_t checksum;
    uint8_t valid;       /* 1 = checksum passed, 0 = error */
} DHT11_Data_t;

#endif /* COMMON_H_ */
