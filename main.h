
// Standard AVR includes
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#include <avr/pgmspace.h>
#include <avr/sleep.h>
#include <avr/wdt.h>
#include <avr/power.h>

// Standard includes
#include <stdlib.h>
#include <stdbool.h>

// These are optional, but nice to have around.
// Feel free to comment them out if you don't use them.
#include "macros.h"

uint8_t debounce(uint8_t sample);
void init_interrupts();

const uint8_t led1, led2, led3, push_button;