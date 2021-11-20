#include "main.h" 
#include "display.h"

extern inline void transistors_off();

int main(void)
{   
    INIT;
    LCD_init();
    init_interrupts();

    while (1) {
        sleep_mode();
    }
    return 0;
}
