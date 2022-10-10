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

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @file
 * Handle layer keys.
 * USE_LAYER must be set to use layers.
 */

#if USE_LAYER

/** maximum number of layers */
#define LAYER_MAX   32

/** initializes internal layer state. */
extern void layer_init(void);
/** handles layer key.
 * call this function after matrix_task().
 */
extern void layer_task(void);

/** set current layer. */
extern void layer_set(uint8_t layer);
/** return previous layer. may be same as current layer */
extern uint8_t layer_previous(void);
/** return current layer. */
extern uint8_t layer_current(void);
/** obtain current layer and check updates.
 * return 1 if layer was updated, return 0 otherwise. */
extern int layer_obtain_check(uint8_t *layer);

#endif /* USE_LAYER */

#ifdef __cplusplus
}
#endif
