#ifndef DISPLAY_H
#define DISPLAY_H
#include <avr/io.h>	

//data direction register init
#define LCD_INIT    DDRB |= 0x1F; \
                    DDRA |= 0x01

//timing characteristics
#define DELAY_STARTUP _delay_ms(50)
#define DELAY_EN_PULSE _delay_us(1)
#define DELAY_EN_HOLD _delay_us(1)
#define DELAY_CLEAR _delay_ms(2)

//display pin configuration
#define LCD_ENABLE_PORT PORTB
#define LCD_RS_PORT PORTB
#define LCD_D4_PORT PORTB
#define LCD_D5_PORT PORTA
#define LCD_D6_PORT PORTB
#define LCD_D7_PORT PORTB
#define LCD_AK_PORT PORTA

#define LCD_ENABLE_PIN PB3
#define LCD_RS_PIN PB4
#define LCD_D4_PIN PB2
#define LCD_D5_PIN PA0
#define LCD_D6_PIN PB1
#define LCD_D7_PIN PB0
#define LCD_AK_PIN PA1

//display control
#define LCD_EN(X)   ((X) == 0     ? (LCD_ENABLE_PORT &= ~(1 << LCD_ENABLE_PIN))   : (LCD_ENABLE_PORT |= (1 << LCD_ENABLE_PIN)))
#define LCD_RS(X)   ((X) == 0     ? (LCD_RS_PORT &= ~(1 << LCD_RS_PIN))           : (LCD_RS_PORT |= (1 << LCD_RS_PIN)))
#define LCD_D4(X)   ((X) == 0     ? (LCD_D4_PORT &= ~(1 << LCD_D4_PIN))           : (LCD_D4_PORT |= (1 << LCD_D4_PIN)))
#define LCD_D5(X)   ((X) == 0     ? (LCD_D5_PORT &= ~(1 << LCD_D5_PIN))           : (LCD_D5_PORT |= (1 << LCD_D5_PIN)))
#define LCD_D6(X)   ((X) == 0     ? (LCD_D6_PORT &= ~(1 << LCD_D6_PIN))           : (LCD_D6_PORT |= (1 << LCD_D6_PIN)))
#define LCD_D7(X)   ((X) == 0     ? (LCD_D7_PORT &= ~(1 << LCD_D7_PIN))           : (LCD_D7_PORT |= (1 << LCD_D7_PIN)))
#define LCD_AK(X)   ((X) == 0     ? (LCD_AK_PORT &= ~(1 << LCD_AK_PIN))           : (LCD_AK_PORT |= (1 << LCD_AK_PIN)))

#define LCD_EN_PULSE    LCD_EN(1); DELAY_EN_PULSE; LCD_EN(0); DELAY_EN_HOLD

void LCD_init();

// commands:
// 0x01    Clear the display screen (takes 20ms)
// 0x06    Shift the cursor right (e.g. data gets written in an incrementing order, left to right)
// 0x0C    Display on, cursor off
// 0x0E    Display on, cursor blinking
// 0x80    Force the cursor to the beginning of the 1st line
// 0xC0	   Force the cursor to the beginning of the 2nd line
// 0x10    Shift cursor position to the left
// 0x14    Shift cursor position to the right
// 0x18    Shift entire display to the left
// 0x1C    Shift entire display to the right
// 0x38    2 lines, 5x8 matrix, 8-bit mode
// 0x28    2 lines, 5x8 matrix,4-bit mode 
// 0x30    1 line, 8-bit mode
// 0x20    1 line, 4-bit mode	
void LCD_command(uint8_t cmd);
void LCD_char(char chr);
void LCD_animate(char* str);
inline void LCD_string(char* str)
{
    while (*str != '\0') {
        LCD_char(*str++);
    }
}
void LCD_clear_screen();
#endif