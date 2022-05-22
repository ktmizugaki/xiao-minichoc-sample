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
#include "kbdconfig.h"
#include "lib/mzkbd/keymap.h"
#include "lib/mzkbd/keycode.h"

#define ANALOG ANALOG_KEY

static const uint8_t s_key_matrix[NUM_PINS][NUM_PINS-1] = {
    {KC_F5   ,KC_F7   ,KC_F10  ,KC_F12  },
    {0       ,KC_PGUP ,KC_UP   ,KC_PGDN },
    {0       ,KC_LEFT ,KC_DOWN ,KC_RGHT },
    {0       ,0       ,KC_BTN1 ,ANALOG  },
    {0       ,0       ,KC_BTN2 ,ANALOG  },
};

uint8_t keymap_get_keycode(int column, int row)
{
    return s_key_matrix[row][column];
}
