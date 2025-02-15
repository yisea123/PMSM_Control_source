/**
  ******************************************************************************
  * @file    drive_parameters.h
  * @author  Motor Control SDK Team, ST Microelectronics
  * @brief   This file contains the parameters needed for the Motor Control SDK
  *          in order to configure a motor drive.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __DRIVE_PARAMETERS_H
#define __DRIVE_PARAMETERS_H

/************************
 *** Motor Parameters ***
 ************************/

/******** MAIN AND AUXILIARY SPEED/POSITION SENSOR(S) SETTINGS SECTION ********/

/*** Speed measurement settings ***/
#define MAX_APPLICATION_SPEED           9054 /*!< rpm, mechanical */
#define MIN_APPLICATION_SPEED           0 /*!< rpm, mechanical,  
                                                           absolute value */
#define MEAS_ERRORS_BEFORE_FAULTS       3 /*!< Number of speed  
                                                             measurement errors before 
                                                             main sensor goes in fault */

/*** Encoder **********************/                                                                                                           
#define ENC_MEAS_ERRORS_BEFORE_FAULTS   3 /*!< Number of failed   
                                                        derived class specific speed 
                                                        measurements before main sensor  
                                                        goes in fault */

#define ENC_INVERT_SPEED                DISABLE  /*!< To be enabled for  
                                                            encoder (main or aux) if  
                                                            measured speed is opposite 
                                                            to real one */        
#define ENC_AVERAGING_FIFO_DEPTH        16 /*!< depth of the FIFO used to 
                                                              average mechanical speed in 
                                                              0.1Hz resolution */
/****** Hall sensors ************/ 
#define HALL_MEAS_ERRORS_BEFORE_FAULTS  3 /*!< Number of failed   
                                                           derived class specific speed 
                                                           measurements before main sensor  
                                                           goes in fault */

#define HALL_AVERAGING_FIFO_DEPTH        6 /*!< depth of the FIFO used to 
                                                           average mechanical speed in 
                                                           0.1Hz resolution */                                                                                                           
/****** State Observer + PLL ****/
#define VARIANCE_THRESHOLD               0.1 /*!<Maximum accepted 
                                                            variance on speed 
                                                            estimates (percentage) */
/* State observer scaling factors F1 */                    
#define F1                               512
#define F2                               16384

/* State observer constants */
#define GAIN1                            -627
#define GAIN2                            1014
/*Only in case PLL is used, PLL gains */
#define PLL_KP_GAIN                      1124
#define PLL_KI_GAIN                      26

#define OBS_MEAS_ERRORS_BEFORE_FAULTS    3  /*!< Number of consecutive errors   
                                                           on variance test before a speed 
                                                           feedback error is reported */
#define STO_FIFO_DEPTH_DPP               64  /*!< Depth of the FIFO used  
                                                            to average mechanical speed  
                                                            in dpp format */
#define STO_FIFO_DEPTH_01HZ              64  /*!< Depth of the FIFO used  
                                                            to average mechanical speed  
                                                            in dpp format */
#define BEMF_CONSISTENCY_TOL             64   /* Parameter for B-emf 
                                                            amplitude-speed consistency */
#define BEMF_CONSISTENCY_GAIN            64   /* Parameter for B-emf 
                                                           amplitude-speed consistency */
                                                                                
/****** State Observer + CORDIC ***/
#define CORD_VARIANCE_THRESHOLD          4  /*!<Maxiumum accepted 
                                                            variance on speed 
                                                            estimates (percentage) */                                                                                                                
#define CORD_F1                          512
#define CORD_F2                          16384

/* State observer constants */
#define CORD_GAIN1                       -627
#define CORD_GAIN2                       1014

#define CORD_MEAS_ERRORS_BEFORE_FAULTS   3  /*!< Number of consecutive errors   
                                                           on variance test before a speed 
                                                           feedback error is reported */
#define CORD_FIFO_DEPTH_DPP              64  /*!< Depth of the FIFO used  
                                                            to average mechanical speed  
                                                            in dpp format */
#define CORD_FIFO_DEPTH_01HZ             64  /*!< Depth of the FIFO used  
                                                           to average mechanical speed  
                                                           in dpp format */        
#define CORD_MAX_ACCEL_DPPP              30  /*!< Maximum instantaneous 
                                                              electrical acceleration (dpp 
                                                              per control period) */
#define CORD_BEMF_CONSISTENCY_TOL        64  /* Parameter for B-emf 
                                                           amplitude-speed consistency */
#define CORD_BEMF_CONSISTENCY_GAIN       64  /* Parameter for B-emf 
                                                          amplitude-speed consistency */
                                                          
/****** HFI ******/
#define HFI_FREQUENCY                    400
#define HFI_AMPLITUDE                    25

#define HFI_PID_KP_DEFAULT               800
#define HFI_PID_KI_DEFAULT               400
#define HFI_PID_KPDIV	                 16384
#define HFI_PID_KIDIV	                 32768

#define HFI_IDH_DELAY	                 32400

#define HFI_PLL_KP_DEFAULT               0.00060
#define HFI_PLL_KI_DEFAULT               0.00400

#define HFI_NOTCH_0_COEFF                0.979509
#define HFI_NOTCH_1_COEFF                -1.952148
#define HFI_NOTCH_2_COEFF                0.979509
#define HFI_NOTCH_3_COEFF                1.952148
#define HFI_NOTCH_4_COEFF                -0.959018

#define HFI_LP_0_COEFF                   0.002751
#define HFI_LP_1_COEFF                   0.005502
#define HFI_LP_2_COEFF                   0.002751
#define HFI_LP_3_COEFF                   1.846252
#define HFI_LP_4_COEFF                   -0.857255

#define HFI_HP_0_COEFF                   0.959381
#define HFI_HP_1_COEFF                   -1.918761
#define HFI_HP_2_COEFF                   0.959381
#define HFI_HP_3_COEFF                   1.917111
#define HFI_HP_4_COEFF                   -0.920412

#define HFI_DC_0_COEFF                   0.00146
#define HFI_DC_1_COEFF                   0.002921
#define HFI_DC_2_COEFF                   0.00146
#define HFI_DC_3_COEFF                   1.889033
#define HFI_DC_4_COEFF                   -0.894874

#define HFI_MINIMUM_SPEED_RPM            402
#define HFI_SPD_BUFFER_DEPTH_01HZ        64
#define HFI_LOCKFREQ                     22
#define HFI_SCANROTATIONSNO              3
#define HFI_WAITBEFORESN                 6
#define HFI_WAITAFTERNS                  4
#define HFI_HIFRAMPLSCAN                 25
#define HFI_NSMAXDETPOINTS               20
#define HFI_NSDETPOINTSSKIP              10
#define	HFI_DEBUG_MODE                   false

#define HFI_STO_RPM_TH                   OBS_MINIMUM_SPEED_RPM
#define STO_HFI_RPM_TH                   460
#define HFI_RESTART_RPM_TH               (((HFI_STO_RPM_TH) + (STO_HFI_RPM_TH))/2)
#define HFI_NS_MIN_SAT_DIFF              0

#define HFI_REVERT_DIRECTION             true
#define HFI_WAITTRACK                    20
#define HFI_WAITSYNCH                    20
#define HFI_STEPANGLE                    3640
#define HFI_MAXANGLEDIFF                 3640
#define HFI_RESTARTTIMESEC               0.1

/**************************    DRIVE SETTINGS SECTION   **********************/
/* PWM generation and current reading */
#define PWM_FREQUENCY                    30000
 
#define LOW_SIDE_SIGNALS_ENABLING        ES_GPIO
#define SW_DEADTIME_NS                   800 /*!< Dead-time to be inserted  
                                                           by FW, only if low side 
                                                           signals are enabled */
                                                                                         
/* Torque and flux regulation loops */
#define REGULATION_EXECUTION_RATE     1    /*!< FOC execution rate in 
                                                           number of PWM cycles */     
/* Gains values for torque and flux control loops */
#define PID_TORQUE_KP_DEFAULT         584       
#define PID_TORQUE_KI_DEFAULT         214
#define PID_TORQUE_KD_DEFAULT         100
#define PID_FLUX_KP_DEFAULT           584
#define PID_FLUX_KI_DEFAULT           214
#define PID_FLUX_KD_DEFAULT           100

/* Torque/Flux control loop gains dividers*/
#define TF_KPDIV                      16384
#define TF_KIDIV                      16384
#define TF_KDDIV                      8192
#define TFDIFFERENTIAL_TERM_ENABLING  DISABLE

/* Speed control loop */ 
#define SPEED_LOOP_FREQUENCY_HZ       1000 /*!<Execution rate of speed   
                                                      regulation loop (Hz) */
#define PID_SPEED_KP_DEFAULT          3690
#define PID_SPEED_KI_DEFAULT          1632
#define PID_SPEED_KD_DEFAULT          0
/* Speed PID parameter dividers */
#define SP_KPDIV                      64
#define SP_KIDIV                      16384
#define SP_KDDIV                      16
/* USER CODE BEGIN PID_SPEED_INTEGRAL_INIT_DIV */
#define PID_SPEED_INTEGRAL_INIT_DIV 1 /*  */
/* USER CODE END PID_SPEED_INTEGRAL_INIT_DIV */

#define SPD_DIFFERENTIAL_TERM_ENABLING DISABLE

/* Default settings */
#define DEFAULT_CONTROL_MODE           STC_SPEED_MODE /*!< STC_TORQUE_MODE or 
                                                        STC_SPEED_MODE */  
#define DEFAULT_TARGET_SPEED_RPM       1636
#define DEFAULT_TORQUE_COMPONENT       0
#define DEFAULT_FLUX_COMPONENT         0

/**************************    FIRMWARE PROTECTIONS SECTION   *****************/
#define OV_VOLTAGE_PROT_ENABLING        ENABLE
#define UV_VOLTAGE_PROT_ENABLING        ENABLE
#define OV_VOLTAGE_THRESHOLD_V          36 /*!< Over-voltage 
                                                         threshold */
#define UD_VOLTAGE_THRESHOLD_V          5 /*!< Under-voltage 
                                                          threshold */
#if 0
#define ON_OVER_VOLTAGE                 TURN_OFF_PWM /*!< TURN_OFF_PWM, 
                                                         TURN_ON_R_BRAKE or 
                                                         TURN_ON_LOW_SIDES */
#endif /* 0 */
#define R_BRAKE_SWITCH_OFF_THRES_V      29

#define OV_TEMPERATURE_THRESHOLD_C      110 /*!< Celsius degrees */
#define OV_TEMPERATURE_HYSTERESIS_C     10 /*!< Celsius degrees */

#define HW_OV_CURRENT_PROT_BYPASS       DISABLE /*!< In case ON_OVER_VOLTAGE  
                                                          is set to TURN_ON_LOW_SIDES
                                                          this feature may be used to
                                                          bypass HW over-current
                                                          protection (if supported by 
                                                          power stage) */
/******************************   START-UP PARAMETERS   **********************/
/* Encoder alignment */
#define ALIGNMENT_DURATION              700 /*!< milliseconds */
#define ALIGNMENT_ANGLE_DEG             90 /*!< degrees [0...359] */
#define FINAL_I_ALIGNMENT               19552 /*!< s16A */
// With ALIGNMENT_ANGLE_DEG equal to 90 degrees final alignment 
// phase current = (FINAL_I_ALIGNMENT * 1.65/ Av)/(32767 * Rshunt)  
// being Av the voltage gain between Rshunt and A/D input

/* Sensor-less rev-up sequence */
#define STARTING_ANGLE_DEG             0  /*!< degrees [0...359] */
/* Phase 1 */
#define PHASE1_DURATION                1000 /*milliseconds */
#define PHASE1_FINAL_SPEED_RPM         0 /* rpm */
#define PHASE1_FINAL_CURRENT           8221
/* Phase 2 */
#define PHASE2_DURATION                3636 /*milliseconds */
#define PHASE2_FINAL_SPEED_RPM         1818 /* rpm */
#define PHASE2_FINAL_CURRENT           8221
/* Phase 3 */
#define PHASE3_DURATION                0 /*milliseconds */
#define PHASE3_FINAL_SPEED_RPM         1818 /* rpm */
#define PHASE3_FINAL_CURRENT           8221
/* Phase 4 */
#define PHASE4_DURATION                0 /*milliseconds */
#define PHASE4_FINAL_SPEED_RPM         1818 /* rpm */
#define PHASE4_FINAL_CURRENT           8221
/* Phase 5 */
#define PHASE5_DURATION                0 /* milliseconds */
#define PHASE5_FINAL_SPEED_RPM         1818 /* rpm */
#define PHASE5_FINAL_CURRENT           8221

#define ENABLE_SL_ALGO_FROM_PHASE      2

/* Observer start-up output conditions  */
#define OBS_MINIMUM_SPEED_RPM          1636
#define NB_CONSECUTIVE_TESTS           2 /* corresponding to 
                                                         former NB_CONSECUTIVE_TESTS/
                                                         (TF_REGULATION_RATE/
                                                         MEDIUM_FREQUENCY_TASK_RATE) */
#define SPEED_BAND_UPPER_LIMIT         17 /*!< It expresses how much 
                                                            estimated speed can exceed 
                                                            forced stator electrical 
                                                            without being considered wrong. 
                                                            In 1/16 of forced speed */
#define SPEED_BAND_LOWER_LIMIT         15  /*!< It expresses how much 
                                                             estimated speed can be below 
                                                             forced stator electrical 
                                                             without being considered wrong. 
                                                             In 1/16 of forced speed */                        
#define TRANSITION_DURATION            25  /* Switch over duration, ms */                                                                          
/******************************   ADDITIONAL FEATURES   **********************/
#define BUS_VOLTAGE_READING           ENABLE

#define TEMPERATURE_READING           ENABLE

#define OPEN_LOOP_VOLTAGE_d           6000      /*!< Three Phase voltage amplitude
                                                      in int16_t format */
#define OPEN_LOOP_SPEED_RPM           100       /*!< Final forced speed in rpm */
#define OPEN_LOOP_SPEED_RAMP_DURATION_MS  1000  /*!< 0-to-Final speed ramp duration  */      
#define OPEN_LOOP_VF                  false     /*!< true to enable V/F mode */
#define OPEN_LOOP_K                   44        /*! Slope of V/F curve expressed in int16_t Voltage for 
                                                     each 0.1Hz of mecchanical frequency increment. */
#define OPEN_LOOP_OFF                 4400      /*! Offset of V/F curve expressed in int16_t Voltage 
                                                     applied when frequency is zero. */

#define FW_VOLTAGE_REF                985 /*!<Vs reference, tenth 
                                                        of a percent */
#define FW_KP_GAIN                    3000 /*!< Default Kp gain */
#define FW_KI_GAIN                    5000 /*!< Default Ki gain */
#define FW_KPDIV                      32768      
                                                /*!< Kp gain divisor.If FULL_MISRA_C_COMPLIANCY
                                                is not defined the divisor is implemented through       
                                                algebrical right shifts to speed up PIs execution. 
                                                Only in this case this parameter specifies the 
                                                number of right shifts to be executed */
#define FW_KIDIV                      32768
                                                /*!< Ki gain divisor.If FULL_MISRA_C_COMPLIANCY
                                                is not defined the divisor is implemented through       
                                                algebrical right shifts to speed up PIs execution. 
                                                Only in this case this parameter specifies the 
                                                number of right shifts to be executed */
/*  Feed-forward parameters */
#define FEED_FORWARD_CURRENT_REG_ENABLING DISABLE
#define CONSTANT1_Q                    1595
#define CONSTANT1_D                    1595
#define CONSTANT2_QD                   8835

/*  Maximum Torque Per Ampere strategy parameters */
#define IQMAX                          8221
#define SEGDIV                         0
#define ANGC                           {0,0,0,0,0,0,0,0}
#define OFST                           {0,0,0,0,0,0,0,0}

/* Inrush current limiter parameters */
#define INRUSH_CURRLIMIT_ENABLING        DISABLE
#define INRUSH_CURRLIMIT_AT_POWER_ON     false  /* ACTIVE or INACTIVE */
#define INRUSH_CURRLIMIT_CHANGE_AFTER_MS 1000  /* milliseconds */                

/*** On the fly start-up ***/

/**************************
 *** Control Parameters ***
 **************************/

/******************************** DEBUG ADD-ONs *******************************/
#define SERIAL_COMMUNICATION
#define SERIAL_COM_MODE                  COM_BIDIRECTIONAL
#define SERIAL_COM_CHANNEL1              MC_PROTOCOL_REG_I_A
#define SERIAL_COM_CHANNEL2              MC_PROTOCOL_REG_I_A
#define SERIAL_COM_MOTOR                 0

/* ##@@_USER_CODE_START_##@@ */
/* ##@@_USER_CODE_END_##@@ */

#endif /*__DRIVE_PARAMETERS_H*/
/******************* (C) COPYRIGHT 2018 STMicroelectronics *****END OF FILE****/
