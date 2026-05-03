/*
 * display_driver.h
 *
 *  Created on: 29-Apr-2026
 *      Author: vamsi
 */

#ifndef DISPLAY_DRIVER_H_
#define DISPLAY_DRIVER_H_
//#include "Sensor_Interface.h"

//Macros
#define GPIOD_BASE_ADDRESS    0x40020C00
#define GPIOD  ((GPIO_t*)GPIOD_BASE_ADDRESS)

typedef struct DHT11_Data_t DHT11_Data_t; //forward declaration
//function declarations
void Display_Update(DHT11_Data_t data);
void BSP_led_init(void);
#endif /* DISPLAY_DRIVER_H_ */
