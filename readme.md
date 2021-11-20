# Audio switch   

This is an avr project for selecting one audio signal from multiple input lines (6-port maximum). The project is designed to minimize power consumption by making use of sleep modes, interrupts and internal timers.\
Also decent sound is a one goal.

## Layout

4-port setup with HD44780 display, installed in 3.5" FDD mounting bracket.\
![LCD](/pics/welcome.jpg)
![Test setup](/pics/display_setup.jpg)  

## Code / operation

Press of a button tells you via LCD which audio line is selected. Pressing the button again changes the input line. After 10 secs or so, display turn off to save power. Next version ditches the line-change button and automates this process based on port priority and incoming signals.\
In addition to Master, there's 3 git branches. Each for a different version of this project.
- led_version
- display_version
- automatic_version

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

I'm using Atmel's Attiny4313 MCU, with internal 128 kHz oscillator. ISP programmer needs to be slowed down because of this low power oscillator. (avrdude -B option)
BC547 Transistors had a nasty habit of making clicking sound when the emitter current went on/off, so I switched to CD4066B CMOS Quad Bilateral Switch, which works nice. This pcb feature a 10-pin male ISP connector for programming/debugging. Powering this device could be made through USB. Board is designed using KiCad software.

### Board

Here's my printed circuit board I ordered from a fabricator pcbway.com\
<img src="/pics/front_back.jpg" alt="Front">

First test setup with "a proper pcb". Works nice.\
<img src="/pics/test_setup.jpg" alt="test-setup">

### Electrical charecteristics

Voltage: 5V\
Current: 0,11mA\
Audio connection: max 6x stereo in, 1x stereo out