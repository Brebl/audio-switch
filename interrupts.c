#include "main.h"

void init_interrupts()
{
    GIMSK |= (1 << PCIE2);
    PCMSK2 |= (1 << PCINT16);
    sei();
}

ISR(PCINT2_vect) {
    static uint8_t led_counter = 0;
    const uint8_t led_max_count = 2;
    uint8_t buttonpins;
    buttonpins = debounce(PIND);
    if(bit_is_clear(buttonpins, PD5)){
        led_counter++;
        if(led_counter > led_max_count) {
            led_counter = 0;
        }
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