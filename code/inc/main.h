#ifndef MAIN_H
#define MAIN_H
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#include <avr/pgmspace.h>
#include <avr/sleep.h>
#include <avr/wdt.h>
#include <avr/power.h>
#include <stdlib.h>
#include <stdbool.h>

#define INIT    DDRD |= 0x1f; \
                PORTD |= 0x40

#define PUSH_BUTTON PD6
#define PUSH_BUTTON_PORT PIND

//audioport names printed on LCD
#define AUDIO1 "    Computer    "
#define AUDIO2 "      TV        "
#define AUDIO3 "   PlayStation  "
#define AUDIO4 "     Stereos    "
#define AUDIO5 "      VHS       "
#define AUDIO6 "     Input 6    "

//4066B pin configuration
#define TRAN1_PORT PORTD
#define TRAN2_PORT PORTD
#define TRAN3_PORT PORTD
#define TRAN4_PORT PORTD
#define TRAN5_PORT PORTD
#define TRAN6_PORT PORTD

#define TRAN1_PIN PD5
#define TRAN2_PIN PD4
#define TRAN3_PIN PD3
#define TRAN4_PIN PD2
#define TRAN5_PIN PD1
#define TRAN6_PIN PD0

//4066B control
#define TRAN1(X)   ((X) == 0    ? (TRAN1_PORT &= ~(1 << TRAN1_PIN))    : (TRAN1_PORT |= (1 << TRAN1_PIN)))
#define TRAN2(X)   ((X) == 0    ? (TRAN2_PORT &= ~(1 << TRAN2_PIN))    : (TRAN2_PORT |= (1 << TRAN2_PIN)))
#define TRAN3(X)   ((X) == 0    ? (TRAN3_PORT &= ~(1 << TRAN3_PIN))    : (TRAN3_PORT |= (1 << TRAN3_PIN)))
#define TRAN4(X)   ((X) == 0    ? (TRAN4_PORT &= ~(1 << TRAN4_PIN))    : (TRAN4_PORT |= (1 << TRAN4_PIN)))
#define TRAN5(X)   ((X) == 0    ? (TRAN5_PORT &= ~(1 << TRAN5_PIN))    : (TRAN5_PORT |= (1 << TRAN5_PIN)))
#define TRAN6(X)   ((X) == 0    ? (TRAN6_PORT &= ~(1 << TRAN6_PIN))    : (TRAN6_PORT |= (1 << TRAN6_PIN)))

enum Mode {
    automatic,
    manual
};

uint8_t debounce(uint8_t sample);
void init_interrupts();
void change_port(uint8_t new_port);
void change_mode(volatile enum Mode*);

inline void transistors_off()
{
    TRAN1(0);
    TRAN2(0);
    TRAN3(0);
    TRAN4(0);
    TRAN5(0);
    TRAN6(0);
}
#endif