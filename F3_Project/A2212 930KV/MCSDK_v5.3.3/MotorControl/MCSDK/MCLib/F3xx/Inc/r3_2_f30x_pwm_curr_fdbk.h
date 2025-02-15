/**
  ******************************************************************************
  * @file    r3_2_f30x_pwm_curr_fdbk.h
  * @author  Motor Control SDK Team, ST Microelectronics
  * @brief   This file contains all definitions and functions prototypes for the
  *          r3_2_f30x_pwm_curr_fdbk component of the Motor Control SDK.
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
  * @ingroup r3_2_f30x_pwm_curr_fdbk
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __R3_2_F30X_PWMNCURRFDBK_H
#define __R3_2_F30X_PWMNCURRFDBK_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/* Includes ------------------------------------------------------------------*/
#include "pwm_curr_fdbk.h"

/* Exported defines --------------------------------------------------------*/
#define GPIO_NoRemap_TIM1 ((uint32_t)(0))
#define SHIFTED_TIMs      ((uint8_t) 1)
#define NO_SHIFTED_TIMs   ((uint8_t) 0)

#define NONE    ((uint8_t)(0x00))
#define EXT_MODE  ((uint8_t)(0x01))
#define INT_MODE  ((uint8_t)(0x02))

/** @addtogroup MCSDK
  * @{
  */

/** @addtogroup pwm_curr_fdbk
  * @{
  */

/** @addtogroup r3_2_f30x_pwm_curr_fdbk
  * @{
  */

/* Exported types ------------------------------------------------------- */

/**
  * @brief  r3_2_f30X_pwm_curr_fdbk component OPAMP parameters definition
  */
typedef struct
{
  /* First OPAMP settings ------------------------------------------------------*/
   uint32_t wOPAMP_InvertingInput;     /*!< First OPAMP inverting input pin.
                                           It must be one of the following:
                                           OPAMP1_InvertingInput_PC5 or
                                           OPAMP1_InvertingInput_PA3 if the
                                           bOPAMP_InvertingInput_MODE is
                                           EXT_MODE or
                                           OPAMP1_InvertingInput_PGA or
                                           OPAMP1_InvertingInput_FOLLOWER if the
                                           bOPAMP_InvertingInput_MODE is
                                           INT_MODE.*/
  uint32_t wOPAMP_NonInvertingInput_PHA;
  /*!< First OPAMP non inverting input first
       selection.
       It must be one of the following:
       OPAMP1_NonInvertingInput_PA7,
       OPAMP1_NonInvertingInput_PA5,
       OPAMP1_NonInvertingInput_PA3,
       OPAMP1_NonInvertingInput_PA1.
       Note: It must be the same PIN of
       wOPAMP2_NonInvertingInput_PHA.*/
  uint32_t wOPAMP_NonInvertingInput_PHB;
  /*!< First OPAMP non inverting input 2nd
       selection.
       It must be one of the following:
       OPAMP1_NonInvertingInput_PA7,
       OPAMP1_NonInvertingInput_PA5,
       OPAMP1_NonInvertingInput_PA3,
       OPAMP1_NonInvertingInput_PA1.*/
  /* Second OPAMP settings -----------------------------------------------------*/
  uint8_t bOPAMP2_InvertingInput_MODE;/*!< Second OPAMP inverting input mode.
                                           It must be either equal to EXT_MODE
                                           or INT_MODE.*/
  uint32_t wOPAMP2_InvertingInput;    /*!< Second OPAMP inverting input pin.
                                           It must be one of the following:
                                           OPAMP3_InvertingInput_PB2 or
                                           OPAMP3_InvertingInput_PB10 if the
                                           bOPAMP_InvertingInput_MODE is
                                           EXT_MODE or
                                           OPAMP3_InvertingInput_PGA or
                                           OPAMP3_InvertingInput_FOLLOWER if the
                                           bOPAMP_InvertingInput_MODE is
                                           INT_MODE.*/
  uint32_t wOPAMP2_NonInvertingInput_PHA; /*!< 2nd OPAMP non inverting input
                                           first selection.
                                           It must be one of the following:
                                           OPAMP3_NonInvertingInput_PB0,
                                           OPAMP3_NonInvertingInput_PB13,
                                           OPAMP3_NonInvertingInput_PA1,
                                           OPAMP3_NonInvertingInput_PA5.
                                           Note: It must be the same PIN of
                                           wOPAMP_NonInvertingInput_PHA.*/
  uint32_t wOPAMP2_NonInvertingInput_PHC;  /*!< Second OPAMP non inverting input 2nd
                                           selection.
                                           It must be one of the following:
                                           OPAMP3_NonInvertingInput_PB0,
                                           OPAMP3_NonInvertingInput_PB13,
                                           OPAMP3_NonInvertingInput_PA1,
                                           OPAMP3_NonInvertingInput_PA5.*/


} R3_2_F30XOPAMPParams_t;

/**
  * @brief  r3_2_f30X_pwm_curr_fdbk component parameters definition
  */
typedef struct
{
  /* Dual MC parameters --------------------------------------------------------*/
  uint8_t  bFreqRatio;             /*!< It is used in case of dual MC to
                                        synchronize TIM1 and TIM8. It has
                                        effect only on the second instanced
                                        object and must be equal to the
                                        ratio between the two PWM frequencies
                                        (higher/lower). Supported values are
                                        1, 2 or 3 */
  uint8_t  bIsHigherFreqTim;       /*!< When bFreqRatio is greather than 1
                                        this param is used to indicate if this
                                        instance is the one with the highest
                                        frequency. Allowed value are: HIGHER_FREQ
                                        or LOWER_FREQ */
  /* Current reading A/D Conversions initialization -----------------------------*/
  ADC_TypeDef * ADCx_1;            /*!< First ADC peripheral to be used.*/
  ADC_TypeDef * ADCx_2;            /*!< Second ADC peripheral to be used.*/
  uint8_t bIaChannel;              /*!< ADC channel used for conversion of
                                        current Ia. It must be equal to
                                        ADC_CHANNEL_x x= 0, ..., 15*/
  uint8_t b_IaSamplingTime;        /*!< Sampling time used to convert bIaChannel.
                                        It must be equal to ADC_SampleTime_xCycles5
                                        x= 1, 7, ...*/
  uint8_t bIbChannel;              /*!< ADC channel used for conversion of
                                        current Ib. It must be equal to
                                        ADC_CHANNEL_x x= 0, ..., 15*/
  uint8_t b_IbSamplingTime;        /*!< Sampling time used to convert bIbChannel.
                                        It must be equal to ADC_SampleTime_xCycles5
                                        x= 1, 7, ...*/
  uint8_t bIcChannel;              /*!< ADC channel used for conversion of
                                        current Ia. It must be equal to
                                        ADC_CHANNEL_x x= 0, ..., 15*/
  uint8_t b_IcSamplingTime;        /*!< Sampling time used to convert hIaChannel.
                                        It must be equal to ADC_SampleTime_xCycles5
                                        x= 1, 7, ...*/
  /* PWM generation parameters --------------------------------------------------*/
  uint8_t  bRepetitionCounter;         /*!< It expresses the number of PWM
                                            periods to be elapsed before compare
                                            registers are updated again. In
                                            particular:
                                            RepetitionCounter= (2* #PWM periods)-1*/
  uint16_t hTafter;                    /*!< It is the sum of dead time plus max
                                            value between rise time and noise time
                                            express in number of TIM clocks.*/
  uint16_t hTbefore;                   /*!< It is the sampling time express in
                                            number of TIM clocks.*/
  TIM_TypeDef * TIMx;                   /*!< It contains the pointer to the timer
                                            used for PWM generation. It must
                                            equal to TIM1 if bInstanceNbr is
                                            equal to 1, to TIM8 otherwise */
  /* PWM Driving signals initialization ----------------------------------------*/
  LowSideOutputsFunction_t LowSideOutputs; /*!< Low side or enabling signals
                                                generation method are defined
                                                here.*/

  GPIO_TypeDef * pwm_en_u_port;               /*!< Channel 1N (low side) GPIO output
                                           port (if used, after re-mapping).
                                           It must be GPIOx x= A, B, ...*/
  uint16_t pwm_en_u_pin;                    /*!< Channel 1N (low side) GPIO output pin
                                           (if used, after re-mapping). It must be
                                           GPIO_Pin_x x= 0, 1, ...*/

  GPIO_TypeDef * pwm_en_v_port;               /*!< Channel 2N (low side) GPIO output
                                           port (if used, after re-mapping).
                                           It must be GPIOx x= A, B, ...*/
  uint16_t pwm_en_v_pin;                     /*!< Channel 2N (low side) GPIO output pin
                                           (if used, after re-mapping). It must be
                                           GPIO_Pin_x x= 0, 1, ...*/

  GPIO_TypeDef * pwm_en_w_port;               /*!< Channel 3N (low side)  GPIO output
                                           port (if used, after re-mapping).
                                           It must be GPIOx x= A, B, ...*/
  uint16_t pwm_en_w_pin;                    /*!< Channel 3N (low side)  GPIO output pin
                                           (if used, after re-mapping). It must be
                                           GPIO_Pin_x x= 0, 1, ...*/

  /* Emergency input (BKIN2) signal initialization -----------------------------*/
  uint8_t bBKIN2Mode;                 /*!< It defines the modality of emergency
                                           input 2. It must be any of the
                                           the following:
                                           NONE - feature disabled.
                                           INT_MODE - Internal comparator used
                                           as source of emergency event.
                                           EXT_MODE - External comparator used
                                           as source of emergency event.*/

  /* Internal OPAMP common settings --------------------------------------------*/
  R3_2_F30XOPAMPParams_t const * pOPAMPParams;  /*!< Pointer to the OPAMP params struct.
                                           It must be MC_NULL if internal
                                           OPAMP are not used.*/
  /* Internal COMP settings ----------------------------------------------------*/
  COMP_TypeDef * wCompOCPASelection;        /*!< Internal comparator used for protection.
                                                It must be COMP_Selection_COMPx x = 1,2,3,4,5,6,7.*/
  uint8_t       bCompOCPAInvInput_MODE;    /*!< COMPx inverting input mode. It must be either
                                                equal to EXT_MODE or INT_MODE. */
  COMP_TypeDef * wCompOCPBSelection;        /*!< Internal comparator used for protection.
                                                It must be COMP_Selection_COMPx x = 1,2,3,4,5,6,7.*/
  uint8_t       bCompOCPBInvInput_MODE;    /*!< COMPx inverting input mode. It must be either
                                                equal to EXT_MODE or INT_MODE. */
  COMP_TypeDef * wCompOCPCSelection;        /*!< Internal comparator used for protection.
                                                It must be COMP_Selection_COMPx x = 1,2,3,4,5,6,7.*/
  uint8_t       bCompOCPCInvInput_MODE;    /*!< COMPx inverting input mode. It must be either
                                                equal to EXT_MODE or INT_MODE. */
  COMP_TypeDef * wCompOVPSelection;         /*!< Internal comparator used for protection.
                                                It must be COMP_Selection_COMPx x = 1,2,3,4,5,6,7.*/
  uint8_t       bCompOVPInvInput_MODE;     /*!< COMPx inverting input mode. It must be either
                                                equal to EXT_MODE or INT_MODE. */
  /* DAC settings --------------------------------------------------------------*/
  uint16_t hDAC_OCP_Threshold;        /*!< Value of analog reference expressed
                                           as 16bit unsigned integer.
                                           Ex. 0 = 0V 65536 = VDD_DAC.*/
  uint16_t hDAC_OVP_Threshold;        /*!< Value of analog reference expressed
                                           as 16bit unsigned integer.
                                           Ex. 0 = 0V 65536 = VDD_DAC.*/
  /* Regular conversion --------------------------------------------------------*/
  ADC_TypeDef * regconvADCx;          /*!< ADC peripheral used for regular
                                           conversion.*/
} R3_2_F30XParams_t;

/**
  * @brief  This structure is used to handle an instance of the
  *         r3_4_f30X_pwm_curr_fdbk component.
  */
typedef struct
{
  PWMC_Handle_t _Super;     /*!<   */
  uint32_t wPhaseAOffset;   /*!< Offset of Phase A current sensing network  */
  uint32_t wPhaseBOffset;   /*!< Offset of Phase B current sensing network  */
  uint32_t wPhaseCOffset;   /*!< Offset of Phase C current sensing network  */
  uint32_t wOAMP1CR;        /*!< OAMP1 control register to select channel current
                                 sampling */
  uint32_t wOAMP2CR;        /*!< OAMP2 control register to select channel current
                                 sampling */
  uint16_t Half_PWMPeriod;  /*!< Half PWM Period in timer clock counts */
  uint16_t hRegConv;        /*!< Variable used to store regular conversions
                                 result*/
  volatile uint8_t bSoFOC;  /*!< This flag is reset at the beginning of FOC
                                 and it is set in the TIM UP IRQ. If at the end of
                                 FOC this flag is set, it means that FOC rate is too
                                 high and thus an error is generated */
  uint32_t wADC1_JSQR;      /*!< Stores the value for JSQR register to select
                                 first acquisiton.*/
  uint32_t wADC2_JSQR;      /*!< Stores the value for JSQR register to select
                                 second acquisiton.*/
  uint32_t wADC_JSQR_phA;   /*!< Stores the value for JSQR register to select
                                 phase A motor current.*/
  uint32_t wADC_JSQR_phB;   /*!< Stores the value for JSQR register to select
                                 phase B motor current.*/
  uint32_t wADC_JSQR_phC;   /*!< Stores the value for JSQR register to select
                                 phase C motor current.*/
  volatile uint8_t  bIndex;
  uint16_t ADC_ExternalTriggerInjected;
  /*!< Trigger selection for ADC peripheral.*/
  bool OverCurrentFlag;     /*!< This flag is set when an overcurrent occurs.*/
  bool OverVoltageFlag;     /*!< This flag is set when an overvoltage occurs.*/
  bool BrakeActionLock;     /*!< This flag is set to avoid that brake action is
                                 interrupted.*/
  R3_2_F30XParams_t const * pParams_str;
} PWMC_R3_2_F3_Handle_t;


/* Exported functions ------------------------------------------------------- */

/**
  * It initializes TIMx, ADC, GPIO, DMA1 and NVIC for current reading
  * in three shunt topology using STM32F30X and shared ADC
  */
void R3_2_F30X_Init( PWMC_R3_2_F3_Handle_t * pHandle );

/**
  * It stores into the handle the voltage present on Ia and
  * Ib current feedback analog channels when no current is flowin into the
  * motor
  */
void R3_2_F30X_CurrentReadingCalibration( PWMC_Handle_t * pHdl );

/**
  * It computes and return latest converted motor phase currents motor
  *
  */
void R3_2_F30X_GetPhaseCurrents( PWMC_Handle_t * pHdl, Curr_Components * pStator_Currents );

/**
  * It turns on low sides switches. This function is intended to be
  * used for charging boot capacitors of driving section. It has to be
  * called each motor start-up when using high voltage drivers
  */
void R3_2_F30X_TurnOnLowSides( PWMC_Handle_t * pHdl );

/**
  * It enables PWM generation on the proper Timer peripheral acting on MOE
  * bit
  */
void R3_2_F30X_SwitchOnPWM( PWMC_Handle_t * pHdl );

/**
  * It disables PWM generation on the proper Timer peripheral acting on
  * MOE bit
  */
void R3_2_F30X_SwitchOffPWM( PWMC_Handle_t * pHdl );

/**
  * Configure the ADC for the current sampling related to sector 1.
  * It means set the sampling point via TIMx_Ch4 value and polarity
  * ADC sequence length and channels.
  * And call the WriteTIMRegisters method.
  */
uint16_t R3_2_F30X_SetADCSampPointSect1( PWMC_Handle_t * pHdl );

/**
  * Configure the ADC for the current sampling related to sector 2.
  * It means set the sampling point via TIMx_Ch4 value and polarity
  * ADC sequence length and channels.
  * And call the WriteTIMRegisters method.
  */
uint16_t R3_2_F30X_SetADCSampPointSect2( PWMC_Handle_t * pHdl );

/**
  * Configure the ADC for the current sampling related to sector 3.
  * It means set the sampling point via TIMx_Ch4 value and polarity
  * ADC sequence length and channels.
  * And call the WriteTIMRegisters method.
  */
uint16_t R3_2_F30X_SetADCSampPointSect3( PWMC_Handle_t * pHdl );

/**
  * Configure the ADC for the current sampling related to sector 4.
  * It means set the sampling point via TIMx_Ch4 value and polarity
  * ADC sequence length and channels.
  * And call the WriteTIMRegisters method.
  */
uint16_t R3_2_F30X_SetADCSampPointSect4( PWMC_Handle_t * pHdl );

/**
  * Configure the ADC for the current sampling related to sector 5.
  * It means set the sampling point via TIMx_Ch4 value and polarity
  * ADC sequence length and channels.
  * And call the WriteTIMRegisters method.
  */
uint16_t R3_2_F30X_SetADCSampPointSect5( PWMC_Handle_t * pHdl );

/**
  * Configure the ADC for the current sampling related to sector 6.
  * It means set the sampling point via TIMx_Ch4 value and polarity
  * ADC sequence length and channels.
  * And call the WriteTIMRegisters method.
  */
uint16_t R3_2_F30X_SetADCSampPointSect6( PWMC_Handle_t * pHdl );

/**
  *  It contains the TIMx Update event interrupt
  */
void * R3_2_F30X_TIMx_UP_IRQHandler( PWMC_R3_2_F3_Handle_t * pHdl );

/**
  *  It contains the TIMx Break2 event interrupt
  */
void * R3_2_F30X_BRK2_IRQHandler( PWMC_R3_2_F3_Handle_t * pHdl );

/**
  *  It contains the TIMx Break1 event interrupt
  */
void * R3_2_F30X_BRK_IRQHandler( PWMC_R3_2_F3_Handle_t * pHdl );

/**
  * Execute a regular conversion using ADCx.
  * The function is not re-entrant (can't executed twice at the same time)
  */
uint16_t R3_2_F30X_ExecRegularConv( PWMC_Handle_t * pHdl, uint8_t bChannel );

/**
  * It sets the specified sampling time for the specified ADC channel
  * on ADCx. It must be called once for each channel utilized by user
  */
void R3_2_F30X_ADC_SetSamplingTime( PWMC_Handle_t * pHdl, ADConv_t ADConv_struct );

/**
  * It is used to check if an overcurrent occurred since last call.
  */
uint16_t R3_2_F30X_IsOverCurrentOccurred( PWMC_Handle_t * pHdl );

/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */

#ifdef __cplusplus
}
#endif /* __cpluplus */

#endif /*__R3_2_F30X_PWMNCURRFDBK_H*/

/************************ (C) COPYRIGHT 2018 STMicroelectronics *****END OF FILE****/
