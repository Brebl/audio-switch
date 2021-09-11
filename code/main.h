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

#define LED1 PB4
#define LED2 PB3
#define LED3 PB2
#define LED4 PA0
#define LED5 PB1
#define LED6 PB0

#define LED1_PORT PORTB
#define LED2_PORT PORTB
#define LED3_PORT PORTB
#define LED4_PORT PORTA
#define LED5_PORT PORTB
#define LED6_PORT PORTB

#define TRAN1 PD0
#define TRAN2 PD1
#define TRAN3 PD2
#define TRAN4 PD3
#define TRAN5 PD4
#define TRAN6 PD5

#define TRAN1_PORT PORTD
#define TRAN2_PORT PORTD
#define TRAN3_PORT PORTD
#define TRAN4_PORT PORTD
#define TRAN5_PORT PORTD
#define TRAN6_PORT PORTD

#define LED1_ON (LED1_PORT |= (1 << LED1))
#define LED2_ON (LED2_PORT |= (1 << LED2))
#define LED3_ON (LED3_PORT |= (1 << LED3))
#define LED4_ON (LED4_PORT |= (1 << LED4))
#define LED5_ON (LED5_PORT |= (1 << LED5))
#define LED6_ON (LED6_PORT |= (1 << LED6))

#define TRAN1_ON (TRAN1_PORT |= (1 << TRAN1))
#define TRAN2_ON (TRAN2_PORT |= (1 << TRAN2))
#define TRAN3_ON (TRAN3_PORT |= (1 << TRAN3))
#define TRAN4_ON (TRAN4_PORT |= (1 << TRAN4))
#define TRAN5_ON (TRAN5_PORT |= (1 << TRAN5))
#define TRAN6_ON (TRAN6_PORT |= (1 << TRAN6))

uint8_t debounce(uint8_t sample);
void init_interrupts();

inline bool checkleds()
{
    if (
        (LED1_PORT & (1 << LED1)) ||
        (LED2_PORT & (1 << LED2)) ||
        (LED3_PORT & (1 << LED3)) ||
        (LED4_PORT & (1 << LED4)) ||
        (LED5_PORT & (1 << LED5)) ||
        (LED6_PORT & (1 << LED6))
    ) { 
        return true; 
    }
    else return false;
}

inline void leds_off()
{
    LED1_PORT &= ~(1 << LED1);
    LED2_PORT &= ~(1 << LED2);
    LED3_PORT &= ~(1 << LED3);
    LED4_PORT &= ~(1 << LED4);
    LED5_PORT &= ~(1 << LED5);
    LED6_PORT &= ~(1 << LED6);
}

inline void transistors_off()
{
    TRAN1_PORT &= ~(1 << TRAN1);
    TRAN2_PORT &= ~(1 << TRAN2);
    TRAN3_PORT &= ~(1 << TRAN3);
    TRAN4_PORT &= ~(1 << TRAN4);
    TRAN5_PORT &= ~(1 << TRAN5);
    TRAN6_PORT &= ~(1 << TRAN6);
}