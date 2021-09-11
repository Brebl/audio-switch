#include "main.h"
static uint8_t timeout_counter = 0;
const uint8_t timeout_max = 10;           //secs
static uint8_t led_counter = 0;
const uint8_t led_max_count = 5;

void init_interrupts()
{
    /********************
    clock 128kHz
    * 
    prescaler 1024
    --------------
    == clock tick time 8000us
    *
    output compare register 125
    ---------------------------
    == 1Hz
    **********************/
    GIMSK |= (1 << PCIE2);
    PCMSK2 |= (1 << PCINT16);
    TCCR0A |= (1 << WGM01);                 //ctc
    TCCR0B |= (1 << CS00) | (1 << CS02);    //1024 prescaler
    OCR0A = 0x7d;                           //125
    TIMSK |= (1 << OCIE0A);                 //ocr-a enable
    sei();
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);
}

//push button logic
ISR(PCINT2_vect) {
    set_sleep_mode(SLEEP_MODE_IDLE);
    uint8_t buttonpins = debounce(PUSH_BUTTON_PORT);
    if(bit_is_clear(buttonpins, PUSH_BUTTON)){
        if(LED_PORT != 0) {
            led_counter++;
        }
        if(led_counter >= led_max_count) {
            led_counter = 0;
        }
        timeout_counter = 0;
        leds_off();
        transistors_off();
        switch (led_counter) {
        case 0:
            LED_PORT |= (1 << LED0);
            TRANSISTOR_PORT |= (1 << TRAN0);
            break;
        case 1:
            LED_PORT |= (1 << LED1);
            TRANSISTOR_PORT |= (1 << TRAN1);
            break;
        case 2:
            LED_PORT |= (1 << LED2);
            TRANSISTOR_PORT |= (1 << TRAN2);
            break;
        case 3:
            LED_PORT |= (1 << LED3);
            TRANSISTOR_PORT |= (1 << TRAN3);
            break;
        case 4:
            LED_PORT |= (1 << LED4);
            TRANSISTOR_PORT |= (1 << TRAN4);
            break;
        case 5:
            
            TRANSISTOR_PORT |= (1 << TRAN5);
        default:
            LED_PORT = 0xFF;
            break;
        }
        while(bit_is_clear(buttonpins,PUSH_BUTTON)) {
            buttonpins = debounce(PUSH_BUTTON_PORT);
            _delay_ms(5);
        }        
    }  
}

//power down after timeout_max, leds off, transistors stay on
ISR(TIMER0_COMPA_vect)  
{
    timeout_counter++;
    if(timeout_counter >= timeout_max) {
        timeout_counter = 0;
        leds_off();
        set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    }
}