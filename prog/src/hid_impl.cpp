/*
 * Copyright (C) 2022 Kawashima Teruaki
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

#include <stdint.h>
#include <Arduino.h>
#include <Adafruit_TinyUSB.h>
#include "lib/mzkbd/hid.h"
#include "kbdconfig.h"
#include "hid_impl.h"

static const uint8_t desc_hid_report[] = {
    TUD_HID_REPORT_DESC_KEYBOARD( HID_REPORT_ID(RID_KEYBOARD) ),
    TUD_HID_REPORT_DESC_MOUSE( HID_REPORT_ID(RID_MOUSE) ),
};

static Adafruit_USBD_HID usb_hid(desc_hid_report, sizeof(desc_hid_report), HID_ITF_PROTOCOL_MOUSE, 2, false);
static bool s_woken;

void hid_impl_init(void)
{
    usb_hid.begin();
    s_woken = 0;
}

void hid_impl_task(void)
{
    s_woken = 0;
}

void keyboard_report(uint8_t modifier, uint8_t keycode[KEYCODES_SIZE])
{
    if (!s_woken) {
        if (TinyUSBDevice.suspended()) {
            TinyUSBDevice.remoteWakeup();
        }
        while (!usb_hid.ready()) {
            delay(1);
        }
        s_woken = 1;
    }
    usb_hid.keyboardReport(RID_KEYBOARD, modifier, keycode);
}

void mouse_report(uint8_t buttons,
    int8_t x, int8_t y, int8_t vertical, int8_t horizontal)
{
    if (!s_woken) {
        if (TinyUSBDevice.suspended()) {
            TinyUSBDevice.remoteWakeup();
        }
        while (!usb_hid.ready()) {
            delay(1);
        }
        s_woken = 1;
    }
    usb_hid.mouseReport(RID_MOUSE, buttons, x, y, vertical, horizontal);
}
