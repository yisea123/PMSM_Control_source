/**
  ******************************************************************************
  * @file    parameters_conversion_f4xx.h
  * @author  Motor Control SDK Team, ST Microelectronics
  * @brief   This file implements the Parameter conversion on the base
  *          of stdlib F4xx for the first drive
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2018 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
  
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __PARAMETERS_CONVERSION_F4XX_H
#define __PARAMETERS_CONVERSION_F4XX_H

#include "pmsm_motor_parameters.h"
#include "power_stage_parameters.h"
#include "drive_parameters.h"
#include "mc_math.h"

/************************* CPU & ADC PERIPHERAL CLOCK CONFIG ******************/

#define SYSCLK_FREQ      180000000uL
#define TIM_CLOCK_DIVIDER  1
#define TIMAUX_CLOCK_DIVIDER (TIM_CLOCK_DIVIDER)
#define ADV_TIM_CLK_MHz  180/TIM_CLOCK_DIVIDER
#define ADC_CLK_MHz     22
#define HALL_TIM_CLK    90000000uL

#define ADC1_2  ADC1

/*********************** SENSORLESS REV-UP PARAMETERS *************************/
#define FIRST_SLESS_ALGO_PHASE (ENABLE_SL_ALGO_FROM_PHASE-1u)  

/* Legacy for WB 4.0 Beta */
#if !defined(OPEN_LOOP_VF)
#define OPEN_LOOP_VF false
#endif
#if !defined(OPEN_LOOP_OFF)
#define OPEN_LOOP_OFF 4400
#endif
#if !defined(OPEN_LOOP_K)
#define OPEN_LOOP_K 44
#endif

/*************************  IRQ Handler Mapping  *********************/
#define TIMx_UP_M1_IRQHandler TIM1_UP_TIM10_IRQHandler
#define DMAx_R1_M1_IRQHandler DMA2_Stream4_IRQHandler
#define DMAx_R1_M1_Stream     DMA2_Stream4
#define TIMx_BRK_M1_IRQHandler TIM1_BRK_TIM9_IRQHandler

/**********  AUXILIARY TIMER (SINGLE SHUNT) *************/
/* Defined here for legacy purposes */
#define R1_PWM_AUX_TIM                  TIM4

#define TRIG_CONV_LATENCY_NS	100
#define SAMPLING_TIME_NS (3 * 1000uL/ADC_CLK_MHz)
#define TW_BEFORE (((uint16_t)(((((uint16_t)(SAMPLING_TIME_NS + TRIG_CONV_LATENCY_NS)))*ADV_TIM_CLK_MHz)/1000ul))+1u)
#define ADC_CONV_NB_CK 13
#define TW_BEFORE_R3_1 (((uint16_t)(((((uint16_t)(SAMPLING_TIME_NS * 2 + TRIG_CONV_LATENCY_NS)))*ADV_TIM_CLK_MHz)/1000ul))+ 1u + ADC_CONV_NB_CK)

#define M1_VBUS_SW_FILTER_BW_FACTOR      10u

/* Sampling time allowed for F4xx are: 3, 15, 28, 56, 84, 112, 144, 480 ADC clock cycle */    
#define M1_VBUS_SAMPLING_TIME  LL_ADC_SAMPLINGTIME_28CYCLES

/* Sampling time allowed for F4xx are: 3, 15, 28, 56, 84, 112, 144, 480 ADC clock cycle */    
#define M1_TEMP_SAMPLING_TIME  LL_ADC_SAMPLINGTIME_28CYCLES

#endif /*__PARAMETERS_CONVERSION_F4XX_H*/

/******************* (C) COPYRIGHT 2018 STMicroelectronics *****END OF FILE****/
