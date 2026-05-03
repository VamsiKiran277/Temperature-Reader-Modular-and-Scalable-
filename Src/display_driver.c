/*
 * display_driver.c
 *
 *  Created on: 29-Apr-2026
 *      Author: vamsi
 */

#include <stdio.h>
#include <stdint.h>
#include "display_driver.h"

#define LED_MODER_MASK  (0xFF000000) // Clears bits 24-31
#define LED_MODER_OUT   (0x55000000) // Sets bits 24, 26, 28, 30 to '1' (01010101 pattern)
#define PIN12_ENABLE  (1<<12) //green
#define PIN13_ENABLE  (1<<13) //orange
#define PIN14_ENABLE  (1<<14) //red
#define PIN15_ENABLE  (1<<15) //blue

void BSP_led_init(void) {
	GPIOD->MODER&=~(LED_MODER_MASK); //clearing those pins
	GPIOD->MODER|=(LED_MODER_OUT); //setting output mode
}
/*
 * LED3 (Orange): Toggle every time a reading starts.
 * LED4 (Green): Turn ON if the checksum is valid (data.valid == 1)
 * LED5 (Red): Turn ON if there is a timeout or checksum error.
 * LED6 (Blue): Blink if the temperature exceeds a certain threshold (e.g., > 28°C).*/

void Display_Update(DHT11_Data_t data) {
	GPIOD->ODR ^= PIN13_ENABLE;
	if(data.valid) {
		GPIOD->ODR |= PIN12_ENABLE; //Turn on Green
		GPIOD->ODR &=~PIN14_ENABLE; //Turn off Red
		//if temp is hign turn of blue
		if(data.temp_int > 28) {
			GPIOD->ODR |= PIN15_ENABLE; //Turn on Blue
		} else {
			GPIOD->ODR &=~PIN15_ENABLE; //Turn off Blue
		}
	} else {
		GPIOD->ODR |= PIN14_ENABLE;//Turn on Red
		GPIOD->ODR &=~PIN12_ENABLE; //Turn off green
	}
}
