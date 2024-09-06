/*
 * JMPs_and_BUTTs.c
 *
 *  Created on: Aug 26, 2024
 *      Author: a.bezlyudov
 */

#include "JMPs_and_BUTTs.h"

uint8_t countJmpJS1set = 0;
uint8_t countJmpJS1reset = 0;
_Bool jmpJS1 = false; // false - работа с MAX31865; true - работа с ЛТ-300


void checkJS1(){
	//проверка входа PC7. Если 1, то работа с датчиком MAX31865, если 0, то работа с ЛТ-300
	if(!HAL_GPIO_ReadPin(Select_sensor_GPIO_Port, Select_sensor_Pin) && jmpJS1==false){
		countJmpJS1set++;
		if(countJmpJS1set > 5) {
			countJmpJS1reset = 0;
			countJmpJS1set = 0;
			jmpJS1=true;
		}
	} else if (HAL_GPIO_ReadPin(Select_sensor_GPIO_Port, Select_sensor_Pin) && jmpJS1==true){
		countJmpJS1reset++;
		if(countJmpJS1reset > 5) {
			countJmpJS1set = 0;
			countJmpJS1reset = 0;
			jmpJS1=false;
		}
	}
}

_Bool JS1_isSet() {
	if (jmpJS1==true) return true;
	else return false;
}
