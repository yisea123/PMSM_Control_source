/*
 * Copyright (c) 2015, Freescale Semiconductor, Inc.
 * Copyright 2016 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#ifndef __USB_HID_MOUSE_H__
#define __USB_HID_MOUSE_H__

/*******************************************************************************
 * Definitions
 ******************************************************************************/

#if defined(USB_DEVICE_CONFIG_EHCI) && (USB_DEVICE_CONFIG_EHCI > 0U)
#define CONTROLLER_ID kUSB_ControllerEhci0
#endif
#if defined(USB_DEVICE_CONFIG_KHCI) && (USB_DEVICE_CONFIG_KHCI > 0U)
#define CONTROLLER_ID kUSB_ControllerKhci0
#endif


#define USB_HID_MOUSE_REPORT_LENGTH (0x04U)
typedef struct _usb_hid_mouse_struct
{
    usb_device_handle deviceHandle;
    class_handle_t hidHandle;
    uint8_t *buffer;
    uint8_t currentConfiguration;
    uint8_t currentInterfaceAlternateSetting[USB_HID_MOUSE_INTERFACE_COUNT];
    uint8_t speed;
    uint8_t attach;
} usb_hid_mouse_struct_t;

/*******************************************************************************
 * API
 ******************************************************************************/

#endif /* __USB_HID_MOUSE_H__ */
