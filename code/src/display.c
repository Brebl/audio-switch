#include "display.h"
#include <util/delay.h>

void LCD_init()
{
    LCD_INIT;
    DELAY_STARTUP;
    LCD_command(0x02);  //4 bit
    LCD_command(0x28);  //2 line
    LCD_command(0x0c);  //Display on, cursor off
    LCD_clear_screen();
    LCD_string("  --Welcome--   ");
    _delay_ms(2000);
    for (int i = 0; i < 16; i++) {
        _delay_ms(100);
        LCD_command(0x18); //move left
    }
    LCD_clear_screen();
}

void LCD_command(uint8_t cmd)
{
    LCD_RS(0);
    //send upper nibble
    LCD_D4(cmd & 0x10);
    LCD_D5(cmd & 0x20);
    LCD_D6(cmd & 0x40);
    LCD_D7(cmd & 0x80);
    LCD_EN_PULSE;

    //send lower nibble
    LCD_D4(cmd & 0x01);
    LCD_D5(cmd & 0x02);
    LCD_D6(cmd & 0x04);
    LCD_D7(cmd & 0x08);
    LCD_EN_PULSE;
}

void LCD_char(char chr)
{
    LCD_RS(1);
    //send upper nibble
    LCD_D4(chr & 0x10);
    LCD_D5(chr & 0x20);
    LCD_D6(chr & 0x40);
    LCD_D7(chr & 0x80);
    LCD_EN_PULSE;

    //send lower nibble
    LCD_D4(chr & 0x01);
    LCD_D5(chr & 0x02);
    LCD_D6(chr & 0x04);
    LCD_D7(chr & 0x08);
    LCD_EN_PULSE;
}

void LCD_animate(char* str)
{
    LCD_string(str);
    for (int i = 0; i < 16; i+=2) {
        _delay_ms(200);
        LCD_command(0x18);
        LCD_command(0x18);
    }
    LCD_clear_screen();
    LCD_string(str);
}

void LCD_clear_screen()
{
    LCD_command(0x01);
    DELAY_CLEAR;
}

extern inline void LCD_string(char* str);
