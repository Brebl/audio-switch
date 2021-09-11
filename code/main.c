#include "main.h" 

int main(void)
{   
    //init ports
    DDRA = (1 << PA0);
    DDRB = (1 << PB0) | (1 << PB1) | (1 << PB2) | (1 << PB3) | (1 << PB4);
    DDRD = (1 << PD0) | (1 << PD1) | (1 << PD2) | (1 << PD3) | (1 << PD4) | (1 << PD5);
    PORTD = (1 << PUSH_BUTTON);
    init_interrupts();

    while (1) {   
        sleep_mode();
    }
    return 0;
}
