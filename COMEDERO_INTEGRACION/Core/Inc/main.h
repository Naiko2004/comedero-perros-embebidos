/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */



typedef enum {
	ESTADO_INICIANDO = 0,
	ESTADO_IDLE = 1,
	ESTADO_CONFIGURACION = 2,
	ESTADO_DOSIFICANDO_ALIMENTO = 3,
	ESTADO_ALIMENTO_SERVIDO = 4,
} estado;

typedef enum {
	FLAG_INACTIVA = 0,
	FLAG_ACTIVA = 1,
} flag;
/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define TIM2_CH1_MOTOR_Pin GPIO_PIN_0
#define TIM2_CH1_MOTOR_GPIO_Port GPIOA
#define TIM2_CH2_SERVO_Pin GPIO_PIN_1
#define TIM2_CH2_SERVO_GPIO_Port GPIOA
#define TIM2_CH3_LEDS_IR_Pin GPIO_PIN_2
#define TIM2_CH3_LEDS_IR_GPIO_Port GPIOA
#define HX711_DT_Pin GPIO_PIN_8
#define HX711_DT_GPIO_Port GPIOB
#define HX711_SCK_Pin GPIO_PIN_9
#define HX711_SCK_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
