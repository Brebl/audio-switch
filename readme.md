# Audio line selector  
This is an avr project for selecting/forwarding one audio signal from multiple input lines.
The project is designed to minimize power consumption by making use of sleep modes, interrupts and internal timers.
Also decent sound is a one goal.

## Layout  
Panel with audio jacks, leds and push-button.  
PICTURE

## Code  
Press of a button tells you via led which audio line is selected. Pressing the button again changes the input line. After 10 secs, leds turn off to save power. Button debounce function is capable of handling multiple pins at the same time. Although one pin is used.  
  
## Hardware  
I'm using Atmel's Attiny2313a MCU, with internal 128 kHz oscillator. ISP programmer needs to be slowed down because of this low power oscillator. (avrdude -B option)  
BC547 Transistors had a nasty habit of making clicking sound when the emitter current went on/off, so I switched to CD4066B CMOS Quad Bilateral Switch. Audio voltage drops a bit and thus slightly lower volume. Other than that, works nice.  
  
I know that looking at others proto-boards makes you wanna puke. So here's mine...
PICTURE