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

#define XIAO_UPSIDEDOWN 1
#define USE_MOUSE 1
#define USE_MEDIAKEY 1
#define USE_LAYER 1

enum report_id {
    RID_NONE = 0,
    RID_KEYBOARD,
#if USE_MEDIAKEY
    RID_MEDIAKEY,
#endif
#if USE_MOUSE
    RID_MOUSE,
#endif
};

#define NUM_PINS        5
#if XIAO_UPSIDEDOWN
#define PIN_IDS         PIN_PA09, PIN_PB08, PIN_PB09, PIN_PA07, PIN_PA05
#define PIN_ANALOG      PIN_PA11
#else
#define PIN_IDS         PIN_PA07, PIN_PB09, PIN_PB08, PIN_PA09, PIN_PA08
#define PIN_ANALOG      PIN_PA06
#endif /* XIAO_UPSIDEDOWN */

#define USE_ANALOG  1

#define ANALOGS 2
#define ANALOG_MOUSE_X  0
#define ANALOG_MOUSE_Y  1

#define AG_MS_X     AL(ANALOG_MOUSE_X)
#define AG_MS_Y     AN(ANALOG_MOUSE_Y)
