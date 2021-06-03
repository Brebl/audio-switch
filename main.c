#include "main.h" 

int main(void)
{    
    DDRB = (1 << LED0) | (1 << LED1) | (1 << LED2);
    DDRD = (1 << TRAN0) | (1 << TRAN1);
    PORTD = (1 << PUSH_BUTTON);
    
    init_interrupts();
    set_sleep_mode(SLEEP_MODE_IDLE);

    while (1) {     
        sleep_mode();
    }
    return 0;
}
