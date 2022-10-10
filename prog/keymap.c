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
#include <kbdconfig.h>
#include "src/lib/mzkbd/keymap.h"
#include "src/lib/mzkbd/keycode.h"
#include "src/lib/mzkbd/mzkbd_keycode.h"
#include "src/lib/mzkbd/layer.h"

#if USE_LAYER
static const kbdkey_t s_key_matrix[2][NUM_PINS][NUM_PINS-1] = {
    {
        {KC_F10  ,KC_F11  ,KC_F12  ,KC_BSPC },
        {KC_NO   ,KC_PGUP ,KC_UP   ,KC_PGDN },
        {MO(1)   ,KC_LEFT ,KC_DOWN ,KC_RGHT },
        {KC_NO   ,TO(1)   ,KC_BTN1 ,AG_MS_Y },
        {KC_NO   ,0       ,KC_BTN2 ,AG_MS_X },
    }, {
        {KC_PAUS ,KC_INS  ,KC_PSCR ,KC_DEL  },
        {KC_NO   ,_______ ,KC_VOLU ,_______ },
        {MO(0)   ,KC_HOME ,KC_VOLD ,KC_END  },
        {KC_NO   ,TO(0)   ,KC_BTN1 ,AG_MS_Y },
        {KC_NO   ,0       ,KC_BTN2 ,AG_MS_X },
    }
};
#else
static const kbdkey_t s_key_matrix[NUM_PINS][NUM_PINS-1] = {
    {KC_MUTE ,KC_VOLD ,KC_VOLU ,KC_MPLY },
    {KC_PGUP ,KC_UP   ,KC_PGDN ,KC_ESC  },
    {KC_LEFT ,KC_DOWN ,KC_RGHT ,KC_ENT  },
    {KC_LSFT ,KC_LCTL ,KC_BTN1 ,AG_MS_Y },
    {KC_LALT ,0       ,KC_BTN2 ,AG_MS_X },
};
#endif

kbdkey_t keymap_get_keycode(int column, int row)
{
#if USE_LAYER
    int layer = layer_current()+1;
    kbdkey_t key;
    do {
        layer--;
        key = s_key_matrix[layer][row][column];
    } while (key == KC_TRANSPARENT && layer > 0);
    return key;
#else
    return s_key_matrix[row][column];
#endif
}
