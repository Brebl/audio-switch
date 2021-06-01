#include "main.h"
static uint8_t timeout_counter = 0;
const uint8_t timeout_max = 5;
static uint8_t led_counter = 0;
const uint8_t led_max_count = 2;


void init_interrupts()
{
    GIMSK |= (1 << PCIE2);
    PCMSK2 |= (1 << PCINT16);
    TCCR0A |= (1 << WGM01);
    TCCR0B |= (1 << CS00) | (1 << CS02);
    TIMSK |= (1 << OCIE0A);
    OCR0A = 0xff;
    sei();
}

ISR(PCINT2_vect) {
    uint8_t buttonpins = debounce(PIND);
    if(bit_is_clear(buttonpins, PD5)){
        if(PORTB != 0) {
            led_counter++;
        }
        if(led_counter > led_max_count) {
            led_counter = 0;
        }
        timeout_counter = 0;
        switch (led_counter) {
        case 0:
            PORTB = led1;
            break;
        case 1:
            PORTB = led2;
            break;
        case 2:
            PORTB = led3;
        default:
            break;
        }
        while(bit_is_clear(buttonpins,PD5)) {
            buttonpins = debounce(PIND);
            _delay_ms(5);
        }        
    }  
}  

ISR(TIMER0_COMPA_vect)
{
    timeout_counter++;
    if(timeout_counter >= timeout_max) {
        timeout_counter = 0;
        PORTB = 0;
    }

}