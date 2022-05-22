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

#include <stdbool.h>
#include "src/hid_impl.h"
#include "src/lib/mzkbd/matrix.h"
#include "src/lib/mzkbd/keyboard.h"
#include "src/lib/mzkbd/mouse.h"
#include <Arduino.h>

void setup(void)
{
    Serial.begin(115200);
    hid_impl_init();
    matrix_init();
    keyboard_init();
    mouse_init();
}

void loop(void)
{
    hid_impl_task();
    matrix_task();
    keyboard_task();
    mouse_task();
    delay(10);
}
