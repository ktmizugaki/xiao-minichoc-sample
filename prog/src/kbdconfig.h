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

#pragma once

#include <sam.h>

#define RID_KEYBOARD    1
#define RID_MOUSE       2

#define NUM_PINS        5
#define PIN_IDS         PIN_PA09, PIN_PB08, PIN_PB09, PIN_PA07, PIN_PA05
#define PIN_ANALOG      PIN_PA11

#define ANALOG_KEY  0xDF

#define ANALOGS 2
#define ANALOG_MOUSE_X  1
#define ANALOG_MOUSE_Y  ~0
