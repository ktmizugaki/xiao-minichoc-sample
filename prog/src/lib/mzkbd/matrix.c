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
#include "keymap.h"
#include "matrix.h"
#include "port.h"

#define MAX_CHANGE  8

static const uint8_t pin_ids[NUM_PINS] = {PIN_IDS};

typedef struct keystate {
    uint8_t state:1;
    uint8_t pending:1;
    uint8_t debounce_frame:3;
} keystate_t;

extern uint8_t g_key_matrix[NUM_PINS][NUM_PINS-1];
static keystate_t s_values[NUM_PINS][NUM_PINS-1];
static uint16_t s_analogs[ANALOGS];

static int s_num_change;
static matrix_change_t s_changes[MAX_CHANGE];

void matrix_init(void)
{
    int i, column, row, analog_id;
    for (i = 0; i < NUM_PINS; i++) {
        gpio_configure(pin_ids[NUM_PINS], GPIO_INPUT);
    }
#if ANALOG_KEY
    adc_configure(ADC_RES_12BIT);
#endif
    for (row = 0; row < NUM_PINS; row++) {
        for (column = 0; column < NUM_PINS-1; column++) {
            s_values[row][column] = (keystate_t){0,0,0};
        }
    }
    for (analog_id = 0; analog_id < ANALOGS; analog_id++) {
        s_analogs[analog_id] = 0;
    }
}

static void matrix_add_change(int row, int column, int state, uint8_t keycode)
{
    if (keycode == 0) {
        return;
    }
    s_changes[s_num_change] = (matrix_change_t){column, row, state, keycode};
    s_num_change++;
}

static void matrix_read(int row, int column, uint8_t keycode)
{
    uint8_t column_pin;
    int state;
    if (row > column) {
        column_pin = pin_ids[column];
    } else {
        column_pin = pin_ids[column+1];
    }
    if (s_values[row][column].debounce_frame>1) {
        s_values[row][column].debounce_frame--;
        return;
    }
    state = gpio_get(column_pin) == 0? 1: 0;
    if (s_values[row][column].debounce_frame) {
        if (s_num_change >= MAX_CHANGE) {
            return;
        }
        s_values[row][column].debounce_frame = 0;
        if (s_values[row][column].pending == state) {
            s_values[row][column].state = state;
            matrix_add_change(row, column, state, keycode);
        }
    } else if (s_values[row][column].state != state) {
        s_values[row][column].pending = state;
        s_values[row][column].debounce_frame = 2;
    }
}

#if ANALOG_KEY
static void matrix_read_analog(int analog_id, int row, int column)
{
    uint8_t column_pin;
    if (row > column) {
        column_pin = pin_ids[column];
    } else {
        column_pin = pin_ids[column+1];
    }
    gpio_configure(column_pin, GPIO_OUTPUT);
    gpio_set(column_pin, 1);
    s_analogs[analog_id] = adc_get(PIN_ANALOG);
    gpio_configure(column_pin, GPIO_INPUT_PULLUP);
}
#endif

void matrix_task(void)
{
    int column, row, analog_id;
    analog_id = 0;
    s_num_change = 0;
    for (row = 0; row < NUM_PINS; row++) {
        uint8_t row_pin = pin_ids[row];
        gpio_configure(row_pin, GPIO_OUTPUT);
        gpio_set(row_pin, 0);
        for (column = 0; column < NUM_PINS-1; column++) {
            uint8_t keycode = keymap_get_keycode(column, row);
#if ANALOG_KEY
            if (keycode == ANALOG_KEY) {
                matrix_read_analog(analog_id, row, column);
                analog_id++;
            } else {
#endif
                matrix_read(row, column, keycode);
#if ANALOG_KEY
            }
#endif
        }
        gpio_configure(row_pin, GPIO_INPUT_PULLUP);
    }
}

const matrix_change_t* matrix_get_changes(int *num_change)
{
    *num_change = s_num_change;
    return s_changes;
}

int matrix_get(int column, int row)
{
    if (row < 0 || row >= NUM_PINS) {
        return 0;
    }
    if (column < 0 || column >= NUM_PINS-1) {
        return 0;
    }
    if (column == row) {
        return 0;
    }
    return s_values[row][column].state;
}

int matrix_get_analog(int analog_id)
{
    uint16_t invert = 0x000;
    if (analog_id < 0) {
        analog_id = ~analog_id;
        invert = 0xfff;
    }
    if (analog_id < 0 && analog_id >= ANALOGS) {
        return 0;
    }
    return s_analogs[analog_id] ^ invert;
}
