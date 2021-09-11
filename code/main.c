#include "main.h" 

int main(void)
{    
    DDRB = (1 << LED0) | (1 << LED1) | (1 << LED2) | (1 << LED3) | (1 << LED4);
    DDRD = (1 << TRAN0) | (1 << TRAN1) | (1 << TRAN2) | (1 << TRAN3) | (1 << TRAN4) | (1 << TRAN5);
    PORTD = (1 << PUSH_BUTTON);
    
    init_interrupts();

    while (1) {   
        sleep_mode();
    }
    return 0;
}
