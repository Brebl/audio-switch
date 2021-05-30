#include "main.h" 

const uint8_t led1 = (1 << PB0);
const uint8_t led2 = (1 << PB1);
const uint8_t led3 = (1 << PB2);
const uint8_t push_button = (1 << PD5);

int main(void)
{    
    //led output
    DDRB = led1 | led2 | led3;
    //push button input
    PORTD = push_button;
    
    init_interrupts();
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);

    while (1) {     
        sleep_mode();
    }
    return 0;
}
