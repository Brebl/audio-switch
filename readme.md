# Audio switch   

This is an avr project for selecting one audio signal from multiple input lines (6-port maximum). The project is designed to minimize power consumption by making use of sleep modes, interrupts and internal timers. Other features include multifunction pushbutton, LCD, SPI-communication, automatic detection of audio signals via ADC.\
Also decent sound is a one feature.

## Layout

4-port setup with HD44780 display, installed in 3.5" FDD mounting bracket.\
![LCD](/pics/welcome.jpg)
![Test setup](/pics/display_setup.jpg)  

## Code / operation

Microcontroller unit (MCU) detects via analog-to-digital converter (ADC) what audio lines are receiving signal. MCU sends this information through Serial peripheral interface (SPI) to the primary MCU and based on input port priority primary MCU switches on correct input port. Port information is shown in LCD. After 10 secs or so, display turn off to save power. Display is accessed using 4-bit interface. Pushbutton can be used to force certain port open or to switch back to automatic operation.
  
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

Primary MCU is Atmel's Attiny4313 MCU, with internal 128 kHz oscillator. ISP programmer needs to be slowed down because of this low power oscillator. (avrdude -B option) Secondary MCU is Attiny24A. Switching is done by 4066B CMOS Quad Bilateral Switch.
This pcb feature a 10-pin male ISP connector for programming/debugging. Powering this device could be made through USB or with 5V regulator you can use for example 9-volt battery. Board is designed using KiCad software.

### Board

Here's my printed circuit board I ordered from a fabricator pcbway.com\
<img src="/pics/front_back.jpg" alt="Front">

First test setup with "a proper pcb". Works nice.\
<img src="/pics/test_setup.jpg" alt="test-setup">

### Electrical charecteristics

Voltage: 5V\
Current: 0,11mA\
Audio connection: max 6x stereo in, 1x stereo out

### Roadmap

- [x] Consept testing with Attiny2313A/4313
- [x] Sleep modes, interrupts
- [x] Simple pushbutton logic
- [x] LED interface
- [x] Schematics
- [x] Design PCB & place order
- [x] Board test setup, sound input/output
- [x] Fabricate enclosure
- [x] Power source
- [x] LCD interface
- [X] ATtiny24A with ADC
- [ ] SPI communication 
- [ ] Automatic audio signal detection
- [ ] Multifunction pushbutton