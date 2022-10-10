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
#include "layer.h"
#include "mzkbd_keycode.h"
#include "matrix.h"

#if USE_LAYER

static uint8_t s_previous_layer;
static uint8_t s_current_layer;

static void layer_press_key(kbdkey_t key)
{
    layer_set(key&LAYER_MASK);
}

static void layer_release_key(kbdkey_t key)
{
    if ((key&LAYER_MOMENTARY) == LAYER_MOMENTARY) {
        layer_set(s_previous_layer);
    }
}

void layer_init(void)
{
    s_previous_layer = 0;
    s_current_layer = 0;
}

void layer_task(void)
{
    int i, num_change;
    const matrix_change_t *changes;
    changes = matrix_get_changes(&num_change);
    for (i = 0; i < num_change; i++) {
        kbdkey_t keycode = changes[i].keycode;
        if (IS_LAYER(keycode)) {
            if (changes[i].state) {
                layer_press_key(keycode);
            } else {
                layer_release_key(keycode);
            }
        }
    }
}

void layer_set(uint8_t layer)
{
    if (layer < LAYER_MAX) {
        s_previous_layer = s_current_layer;
        s_current_layer = layer;
    }
}

uint8_t layer_previous(void)
{
    return s_current_layer;
}

uint8_t layer_current(void)
{
    return s_current_layer;
}

int layer_obtain_check(uint8_t *layer)
{
    if (*layer == s_current_layer) {
        return 0;
    }
    *layer = s_current_layer;
    return 1;
}

#endif /* USE_LAYER */
