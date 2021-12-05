#include "main.h"
#include "display.h"
volatile static uint8_t timeout_counter = 0;
const uint8_t timeout_max = 10;           //secs
volatile static uint8_t audioport_counter = 0;
const uint8_t audioport_max = 5;

void init_interrupts()
{
    /********************
    8-bit Timer/Counter0:
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
    PCMSK2 |= (1 << PCINT17);               //push button
    TCCR0A |= (1 << WGM01);                 //ctc
    TCCR0B |= (1 << CS00) | (1 << CS02);    //1024 prescaler
    OCR0A = 0x7d;                           //125
    TIMSK |= (1 << OCIE0A);                 //ocr-a enable
    DDRB |= (1 << PB6);                     //output DO
    PORTB |= (1 << PB5) | (1 << PB7);       //input DI, SCK
    USICR = 0x98;                           //10011000 = USISIE; wiremode:spi; clocksrc:ext-pos.edge
    sei();
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    LCD_string(AUDIO1);
    TRAN1(1);
}

//push button logic
ISR(PCINT2_vect) {
    set_sleep_mode(SLEEP_MODE_IDLE);
    uint8_t buttonpin = debounce(PUSH_BUTTON_PORT);
    if (bit_is_clear(buttonpin, PUSH_BUTTON)) { //button press
        if (bit_is_set(LCD_AK_PORT, LCD_AK_PIN)) { //lcd backlight is on
            audioport_counter++;
            if (audioport_counter >= audioport_max) {
                audioport_counter = 0;
            }
            timeout_counter = 0;
            transistors_off();
            switch (audioport_counter) {
            case 0:
                TRAN1(1);
                LCD_animate(AUDIO1);
                break;
            case 1:
                TRAN2(1);
                LCD_animate(AUDIO2);
                break;
            case 2:
                TRAN3(1);
                LCD_animate(AUDIO3);
                break;
            case 3:
                TRAN4(1);
                LCD_animate(AUDIO4);
                break;
            case 4:
                TRAN5(1);
                LCD_animate(AUDIO5);
                break;
            case 5:
                TRAN6(1);
                LCD_animate(AUDIO6);
                break;
            default:
                break;
            }
        }
        else { //turn lcd backlight on
            LCD_AK(1);
        }
        while (bit_is_clear(buttonpin, PUSH_BUTTON)) {
            buttonpin = debounce(PUSH_BUTTON_PORT);
            _delay_ms(5);
        }
    }
}

//power down after timeout_max, LCD off, audioport stays on
ISR(TIMER0_COMPA_vect)
{
    timeout_counter++;
    if (timeout_counter >= timeout_max) {
        timeout_counter = 0;
        LCD_AK(0);
        set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    }
}

ISR(USI_START_vect) //SPI
{
    //USIDR = 0xff; //if you wish to send byte to master
    USISR = (1 << USIOIF); //clear overflow flag and counter
    while (!(USISR & (1 << USIOIF))) {;}
    transistors_off();
    switch (USIDR) {
    case 0:
        TRAN1(1);
        LCD_animate(AUDIO1);
        break;
    case 1:
        TRAN2(1);
        LCD_animate(AUDIO2);
        break;
    case 2:
        TRAN3(1);
        LCD_animate(AUDIO3);
        break;
    case 3:
        TRAN4(1);
        LCD_animate(AUDIO4);
        break;
    case 4:
        TRAN5(1);
        LCD_animate(AUDIO5);
        break;
    case 5:
        TRAN6(1);
        LCD_animate(AUDIO6);
        break;
    default:
        break;
    }
    USISR = (1 << USISIF); //clear interrupt flag
}