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

#define PUSH_BUTTON PD5
#define PUSH_BUTTON_PORT PIND

#define LED0 PB0
#define LED1 PB1
#define LED2 PB2
#define LED3 PB3
#define LED4 PB4
#define LED_PORT PORTB

#define TRAN0 PD0
#define TRAN1 PD1
#define TRAN2 PD2
#define TRAN3 PD3
#define TRAN4 PD4
#define TRANSISTOR_PORT PORTD

uint8_t debounce(uint8_t sample);
void init_interrupts();

inline void leds_off()
{
    LED_PORT &= ~((1 << LED0) | (1 << LED1) | (1 << LED2) | (1 << LED3) | (1 << LED4));
}
inline void transistors_off()
{
    TRANSISTOR_PORT &= ~((1 << TRAN0) | (1 << TRAN1) | (1 << TRAN2) | (1 << TRAN3) | (1 << TRAN4));
}