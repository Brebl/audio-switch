# Audio switch   

This is an avr project for selecting one audio signal from multiple input lines.\
The project is designed to minimize power consumption by making use of sleep modes, interrupts and internal timers.\
Also decent sound is a one goal.

## Code / operation

Press of a button tells you via led which audio line is selected. Pressing the button again changes the input line. After 10 secs or so, leds turn off to save power. There's also possibility to add lcd display like HD44780 in place of those leds.

For to flash your mcu, run
    make fuses
    make flash

## Hardware  

I'm using Atmel's Attiny2313a MCU, with internal 128 kHz oscillator. ISP programmer needs to be slowed down because of this low power oscillator. (avrdude -B option)
BC547 Transistors had a nasty habit of making clicking sound when the emitter current went on/off, so I switched to CD4066B CMOS Quad Bilateral Switch. Works nice. This pcb feature a 6-pin male ISP connector for programming. Powering this device could be made through USB. 

### Board

Here's my printed circuit board I ordered from a fabricator pcbway.com\
![Front](/pics/front.jpg "Front" | width=100)
![Back](/pics/back.jpg "Back" | width=100)

### Layout

A working 2-channel test setup (except power source).\
![Test setup](/pics/test_setup.jpg)

### Electrical charecteristics

Voltage: 5V\
Current: 0,11mA\
6-channel max