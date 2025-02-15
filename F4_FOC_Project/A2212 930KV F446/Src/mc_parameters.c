
/**
  ******************************************************************************
  * @file    mc_parameters.c
  * @author  Motor Control SDK Team, ST Microelectronics
  * @brief   This file provides definitions of HW parameters specific to the 
  *          configuration of the subsystem.
  *
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

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "parameters_conversion.h"

#include "r3_f4xx_pwm_curr_fdbk.h"
 
 
 
 
 

  #define MAX_TWAIT 0                 /* Dummy value for single drive */
  #define FREQ_RATIO 1                /* Dummy value for single drive */
  #define FREQ_RELATION HIGHEST_FREQ  /* Dummy value for single drive */

/**
  * @brief  Current sensor parameters Motor 1 - three shunt
  */
const R3_F4_Params_t R3_F4_ParamsM1 =
{
/* Dual MC parameters --------------------------------------------------------*/
  .Tw                       =	MAX_TWAIT,
  .bFreqRatio               =	FREQ_RATIO,          
  .bIsHigherFreqTim         =	FREQ_RELATION,       
                                                     
/* Current reading A/D Conversions initialization ----------------------------*/
  .bIaChannel              =	MC_ADC_CHANNEL_0,
  .bIbChannel              =	MC_ADC_CHANNEL_11,
  .bIcChannel              =	MC_ADC_CHANNEL_10,

/* PWM generation parameters --------------------------------------------------*/
  .TIMx                       =	PWM_TIM1,
  .bRepetitionCounter         =	REP_COUNTER,        
  .hTafter                    =	TW_AFTER,           
  .hTbefore                   =	TW_BEFORE,          
                                                    
/* PWM Driving signals initialization ----------------------------------------*/
  .LowSideOutputs             =	(LowSideOutputsFunction_t)LOW_SIDE_SIGNALS_ENABLING, 
  .pwm_en_u_port          =	M1_PWM_EN_U_GPIO_Port,              
  .pwm_en_u_pin           =	M1_PWM_EN_U_Pin,                    
  .pwm_en_v_port          =	M1_PWM_EN_V_GPIO_Port,              
  .pwm_en_v_pin           =	M1_PWM_EN_V_Pin,                    
  .pwm_en_w_port          =	M1_PWM_EN_W_GPIO_Port,              
  .pwm_en_w_pin           =	M1_PWM_EN_W_Pin,  
 

/* PWM Driving signals initialization ----------------------------------------*/
  .EmergencyStop                =	(FunctionalState) ENABLE,
};
   

/******************* (C) COPYRIGHT 2018 STMicroelectronics *****END OF FILE****/
