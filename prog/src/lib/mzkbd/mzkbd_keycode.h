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

#include <stdint.h>
#include <kbdconfig.h>

#if !defined(KEYBOARD_SIMPLE)
# if USE_LAYER || USE_ANALOG
# define KEYBOARD_SIMPLE 0
# else
# define KEYBOARD_SIMPLE 1
# endif
#endif /* !defined(KEYBOARD_SIMPLE) */

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @file
 */

#if KEYBOARD_SIMPLE
#define KEY_BITS    8
/** type to store key */
typedef uint8_t kbdkey_t;
#else
/** type to store key */
typedef uint16_t kbdkey_t;
#define KEY_BITS    16
#endif

#define XXXXXXX KC_NO
#define _______ KC_TRANSPARENT

#define EXKT_MASK       0xff80

#define EXKT_LAYER      0x5000
#define LAYER_MASK      (0x1f<<0)
#define LAYER_TOGGLE    (0<<6)
#define LAYER_MOMENTARY (1<<6)

#define EXKT_ANALOG     0x2400
#define ANALOG_ID_MASK  0x0f
#define ANALOG_INVERT   (1<<6)

#define IS_EXKT(key, type)  (((key)&EXKT_MASK) == type)
#define IS_LAYER(key)       IS_EXKT((key), EXKT_LAYER)
#define IS_ANALOG(key)      IS_EXKT((key), EXKT_ANALOG)

/* change to specified layer */
#define TO(layer)   (EXKT_LAYER|LAYER_TOGGLE|((layer)&LAYER_MASK))
/* change to specified layer while key is down */
#define MO(layer)   (EXKT_LAYER|LAYER_MOMENTARY|((layer)&LAYER_MASK))

/* key is analog */
#define AL(id)      (EXKT_ANALOG|((id)&ANALOG_ID_MASK))
/* key is analog but value is inverted */
#define AN(id)      (EXKT_ANALOG|ANALOG_INVERT|((id)&ANALOG_ID_MASK))

#ifdef __cplusplus
}
#endif
