#include "main.h"
static uint8_t timeout_counter = 0;
const uint8_t timeout_max = 4*10;
static uint8_t led_counter = 0;
const uint8_t led_max_count = 2;


void init_interrupts()
{
    GIMSK |= (1 << PCIE2);
    PCMSK2 |= (1 << PCINT16);
    TCCR0A |= (1 << WGM01);                 //ctc
    TCCR0B |= (1 << CS00) | (1 << CS02);    //1024 prescaler
    OCR0A = 0xf4;                           //~4Hz
    TIMSK |= (1 << OCIE0A);                 //ocr-a enable
    sei();
}

//push button logic
ISR(PCINT2_vect) {
    PRR = 0;
    uint8_t buttonpins = debounce(PUSH_BUTTON_PORT);
    if(bit_is_clear(buttonpins, PUSH_BUTTON)){
        if(LED_PORT != 0) {
            led_counter++;
        }
        if(led_counter > led_max_count) {
            led_counter = 0;
        }
        timeout_counter = 0;
        switch (led_counter) {
        case 0:
            leds_off();
            transistors_off();
            LED_PORT |= (1 << LED0);
            TRANSISTOR_PORT |= (1 << TRAN0);
            break;
        case 1:
            leds_off();
            transistors_off();
            LED_PORT |= (1 << LED1);
            TRANSISTOR_PORT |= (1 << TRAN1);
            break;
        case 2:
            leds_off();
            transistors_off();
            LED_PORT |= (1 << LED2);
            TRANSISTOR_PORT |= (1 << TRAN2);
        default:
            break;
        }
        while(bit_is_clear(buttonpins,PUSH_BUTTON)) {
            buttonpins = debounce(PUSH_BUTTON_PORT);
            _delay_ms(5);
        }        
    }  
}

//hibernate after timeout_max, leds off, transistors stay on
ISR(TIMER0_COMPA_vect)  
{
    timeout_counter++;
    if(timeout_counter >= timeout_max) {
        timeout_counter = 0;
        leds_off();
        PRR = 0x0F;
    }
}