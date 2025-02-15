/*
 * Copyright 2017-2019 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/***********************************************************************************************************************
 * This file was generated by the MCUXpresso Config Tools. Any manual edits made to this file
 * will be overwritten if the respective MCUXpresso Config Tools is used to update this file.
 **********************************************************************************************************************/

#ifndef _PIN_MUX_H_
#define _PIN_MUX_H_

/***********************************************************************************************************************
 * Definitions
 **********************************************************************************************************************/

/*! @brief Direction type  */
typedef enum _pin_mux_direction
{
  kPIN_MUX_DirectionInput = 0U,         /* Input direction */
  kPIN_MUX_DirectionOutput = 1U,        /* Output direction */
  kPIN_MUX_DirectionInputOrOutput = 2U  /* Input or output direction */
} pin_mux_direction_t;

/*!
 * @addtogroup pin_mux
 * @{
 */

/***********************************************************************************************************************
 * API
 **********************************************************************************************************************/

#if defined(__cplusplus)
extern "C" {
#endif

/*!
 * @brief Calls initialization functions.
 *
 */
void BOARD_InitBootPins(void);

/* GPIO_AD_B0_13 (coord L14), UART1_RXD */
#define BOARD_INITPINS_UART1_RXD_PERIPHERAL                              LPUART1   /*!< Device name: LPUART1 */
#define BOARD_INITPINS_UART1_RXD_SIGNAL                                       RX   /*!< LPUART1 signal: RX */

/* GPIO_AD_B0_12 (coord K14), UART1_TXD */
#define BOARD_INITPINS_UART1_TXD_PERIPHERAL                              LPUART1   /*!< Device name: LPUART1 */
#define BOARD_INITPINS_UART1_TXD_SIGNAL                                       TX   /*!< LPUART1 signal: TX */

/* WAKEUP (coord L6), SD_PWREN */
#define BOARD_INITPINS_SD_PWREN_GPIO                                       GPIO5   /*!< GPIO device name: GPIO5 */
#define BOARD_INITPINS_SD_PWREN_PORT                                       GPIO5   /*!< PORT device name: GPIO5 */
#define BOARD_INITPINS_SD_PWREN_PIN                                           0U   /*!< GPIO5 pin index: 0 */


/*!
 * @brief Configures pin routing and optionally pin electrical features.
 *
 */
void BOARD_InitPins(void);

/* PMIC_STBY_REQ (coord L7), PERI_PWREN */
#define BOARD_INIT_PMIC_STBY_REQ_PERI_PWREN_GPIO                           GPIO5   /*!< GPIO device name: GPIO5 */
#define BOARD_INIT_PMIC_STBY_REQ_PERI_PWREN_PORT                           GPIO5   /*!< PORT device name: GPIO5 */
#define BOARD_INIT_PMIC_STBY_REQ_PERI_PWREN_PIN                               2U   /*!< GPIO5 pin index: 2 */


/*!
 * @brief Configures pin routing and optionally pin electrical features.
 *
 */
void BOARD_Init_PMIC_STBY_REQ(void);

#if defined(__cplusplus)
}
#endif

/*!
 * @}
 */
#endif /* _PIN_MUX_H_ */

/***********************************************************************************************************************
 * EOF
 **********************************************************************************************************************/
