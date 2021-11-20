# Audio switch   

This is an avr project for selecting one audio signal from multiple input lines (6-port maximum). The project is designed to minimize power consumption by making use of sleep modes, interrupts and internal timers.\
Also decent sound is a one goal.

## Layout

5-port setup with HD44780 display, installed in 3.5" FDD mounting bracket.\
![Test setup](/pics/display_setup.jpg)

## Code / operation

Press of a button tells you via led which audio line is selected. Pressing the button again changes the input line. After 10 secs or so, leds turn off to save power. There's also possibility to add lcd display like HD44780 in place of those leds.

To get this running you can use a toolchain
```
avr-libc gcc-avr binutils-avr avrdude
```

For to flash your MCU, run
```shell
make fuses
make flash
```

## Hardware  

I'm using Atmel's Attiny2313a MCU, with internal 128 kHz oscillator. ISP programmer needs to be slowed down because of this low power oscillator. (avrdude -B option)
BC547 Transistors had a nasty habit of making clicking sound when the emitter current went on/off, so I switched to CD4066B CMOS Quad Bilateral Switch, which works nice. This pcb feature a 10-pin male ISP connector for programming. Powering this device could be made through USB. Board is designed using KiCad software.

### Board

Here's my printed circuit board I ordered from a fabricator pcbway.com\
<img src="/pics/front.jpg" alt="Front" width="200">
<img src="/pics/back.jpg" alt="Back" width="200">

### Electrical charecteristics

Voltage: 5V\
Current: 0,11mA\
Audio connection: max 6x stereo in, 1x stereo out