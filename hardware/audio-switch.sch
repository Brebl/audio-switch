EESchema Schematic File Version 4
LIBS:audio-switch-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Audio switch"
Date "2021-06-27"
Rev "v1.0"
Comp ""
Comment1 "Antti Helminen"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C C2
U 1 1 60BB4498
P 3250 2700
F 0 "C2" H 3365 2746 50  0000 L CNN
F 1 "100nF" H 3365 2655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 3288 2550 50  0001 C CNN
F 3 "~" H 3250 2700 50  0001 C CNN
	1    3250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1800 3250 1800
Wire Wire Line
	3250 1800 3250 2550
Wire Wire Line
	4100 1200 4100 1800
$Comp
L Switch:SW_Push SW1
U 1 1 60BB4824
P 4850 5350
F 0 "SW1" V 4804 5498 50  0000 L CNN
F 1 "SW_Push" V 4895 5498 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P3.81mm_Drill1mm" H 4850 5550 50  0001 C CNN
F 3 "" H 4850 5550 50  0001 C CNN
	1    4850 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 60BB4CA6
P 5650 1900
F 0 "R2" V 5443 1900 50  0000 C CNN
F 1 "270R" V 5534 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5580 1900 50  0001 C CNN
F 3 "~" H 5650 1900 50  0001 C CNN
	1    5650 1900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 60BB55B4
P 5150 2200
F 0 "D5" H 4850 2200 50  0000 C CNN
F 1 "LED" H 5142 2036 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5150 2200 50  0001 C CNN
F 3 "~" H 5150 2200 50  0001 C CNN
	1    5150 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 60BB584C
P 5150 2100
F 0 "D6" H 4850 2100 50  0000 C CNN
F 1 "LED" H 5142 1936 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5150 2100 50  0001 C CNN
F 3 "~" H 5150 2100 50  0001 C CNN
	1    5150 2100
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 60BB5A4E
P 5150 2300
F 0 "D3" H 4850 2300 50  0000 C CNN
F 1 "LED" H 5142 2136 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5150 2300 50  0001 C CNN
F 3 "~" H 5150 2300 50  0001 C CNN
	1    5150 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 60BB5A93
P 5150 2400
F 0 "D2" H 4850 2400 50  0000 C CNN
F 1 "LED" H 5142 2236 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5150 2400 50  0001 C CNN
F 3 "~" H 5150 2400 50  0001 C CNN
	1    5150 2400
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 60BB5ACB
P 5150 2500
F 0 "D1" H 4850 2500 50  0000 C CNN
F 1 "LED" H 5142 2336 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5150 2500 50  0001 C CNN
F 3 "~" H 5150 2500 50  0001 C CNN
	1    5150 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 2100 5000 2100
Wire Wire Line
	4700 2200 5000 2200
Wire Wire Line
	4700 2300 5000 2300
Wire Wire Line
	4700 2400 5000 2400
Wire Wire Line
	4700 2500 5000 2500
Wire Wire Line
	5300 2300 5300 2400
Connection ~ 5300 2300
Wire Wire Line
	5300 2400 5300 2500
Connection ~ 5300 2400
Wire Wire Line
	2500 6400 3100 6400
$Comp
L power:GND #PWR05
U 1 1 60BDAA33
P 2500 6400
F 0 "#PWR05" H 2500 6150 50  0001 C CNN
F 1 "GND" H 2505 6227 50  0000 C CNN
F 2 "" H 2500 6400 50  0001 C CNN
F 3 "" H 2500 6400 50  0001 C CNN
	1    2500 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4000 4100 6400
Connection ~ 4100 6400
Wire Wire Line
	4100 4000 3250 4000
Wire Wire Line
	3250 2850 3250 4000
$Comp
L Connector:AVR-ISP-10 J2
U 1 1 60D2C62A
P 1650 3000
F 0 "J2" H 1370 3096 50  0000 R CNN
F 1 "programming conn" H 1370 3005 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 1650 3000 50  0001 C CNN
F 3 "~" H 1650 3000 50  0001 C CNN
	1    1650 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60D2E288
P 1550 3650
F 0 "#PWR04" H 1550 3400 50  0001 C CNN
F 1 "GND" H 1555 3477 50  0000 C CNN
F 2 "" H 1550 3650 50  0001 C CNN
F 3 "" H 1550 3650 50  0001 C CNN
	1    1550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3650 1550 3400
$Comp
L Device:CP1 C1
U 1 1 60D75D11
P 1250 1350
F 0 "C1" H 1365 1396 50  0000 L CNN
F 1 "10uF" H 1365 1305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 1250 1350 50  0001 C CNN
F 3 "~" H 1250 1350 50  0001 C CNN
	1    1250 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60D75D9D
P 1250 1500
F 0 "#PWR03" H 1250 1250 50  0001 C CNN
F 1 "GND" H 1255 1327 50  0000 C CNN
F 2 "" H 1250 1500 50  0001 C CNN
F 3 "" H 1250 1500 50  0001 C CNN
	1    1250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2500 1550 1200
Connection ~ 1550 1200
Wire Wire Line
	1550 1200 2250 1200
Wire Wire Line
	4850 5550 4850 6400
$Comp
L power:VCC #PWR01
U 1 1 60DBB1BC
P 650 1200
F 0 "#PWR01" H 650 1050 50  0001 C CNN
F 1 "VCC" H 667 1373 50  0000 C CNN
F 2 "" H 650 1200 50  0001 C CNN
F 3 "" H 650 1200 50  0001 C CNN
	1    650  1200
	1    0    0    -1  
$EndComp
Text Label 3500 2100 2    50   ~ 0
reset
Text Label 2050 3100 0    50   ~ 0
reset
Text Label 2050 2800 0    50   ~ 0
miso
Text Label 4700 2700 0    50   ~ 0
miso
Text Label 2050 2900 0    50   ~ 0
mosi
Text Label 4700 2600 0    50   ~ 0
mosi
Text Label 2050 3000 0    50   ~ 0
sck
Text Label 4700 2800 0    50   ~ 0
sck
Wire Wire Line
	5300 1900 5500 1900
$Comp
L power:GND #PWR07
U 1 1 60E010A1
P 5800 2050
F 0 "#PWR07" H 5800 1800 50  0001 C CNN
F 1 "GND" H 5805 1877 50  0000 C CNN
F 2 "" H 5800 2050 50  0001 C CNN
F 3 "" H 5800 2050 50  0001 C CNN
	1    5800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1900 5800 2050
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60E0476E
P 2250 1200
F 0 "#FLG01" H 2250 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 1374 50  0000 C CNN
F 2 "" H 2250 1200 50  0001 C CNN
F 3 "~" H 2250 1200 50  0001 C CNN
	1    2250 1200
	1    0    0    -1  
$EndComp
Connection ~ 2250 1200
Wire Wire Line
	2250 1200 4100 1200
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60E04912
P 3100 6400
F 0 "#FLG02" H 3100 6475 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 6574 50  0000 C CNN
F 2 "" H 3100 6400 50  0001 C CNN
F 3 "~" H 3100 6400 50  0001 C CNN
	1    3100 6400
	1    0    0    -1  
$EndComp
Connection ~ 3100 6400
Wire Wire Line
	3100 6400 4100 6400
$Sheet
S 6650 2500 1500 1050
U 60E4F6CA
F0 "Audio" 50
F1 "file60E4F6C9.sch" 50
$EndSheet
Text GLabel 4700 3000 2    50   Output ~ 0
audio_0
Text GLabel 4700 3100 2    50   Output ~ 0
audio_1
Text GLabel 4700 3200 2    50   Output ~ 0
audio_2
Text GLabel 4700 3300 2    50   Output ~ 0
audio_3
Text GLabel 4700 3400 2    50   Output ~ 0
audio_4
$Comp
L MCU_Microchip_ATtiny:ATtiny2313A-PU U1
U 1 1 60D787CF
P 4100 2900
F 0 "U1" H 4100 4178 50  0000 C CNN
F 1 "ATtiny2313A-PU" H 4100 4087 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4100 2900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8246.pdf" H 4100 2900 50  0001 C CNN
	1    4100 2900
	1    0    0    -1  
$EndComp
Connection ~ 4100 4000
Connection ~ 4100 1800
Wire Wire Line
	3500 2500 2850 2500
Wire Wire Line
	2850 2500 2850 2600
$Comp
L Device:R_Small R1
U 1 1 60D797B2
P 2850 2700
F 0 "R1" H 2700 2700 50  0000 L CNN
F 1 "47K" H 2650 2600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2850 2700 50  0001 C CNN
F 3 "~" H 2850 2700 50  0001 C CNN
	1    2850 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60D79914
P 2850 2800
F 0 "#PWR06" H 2850 2550 50  0001 C CNN
F 1 "GND" H 2855 2627 50  0000 C CNN
F 2 "" H 2850 2800 50  0001 C CNN
F 3 "" H 2850 2800 50  0001 C CNN
	1    2850 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 60E0DDB6
P 1050 650
F 0 "J1" V 990 698 50  0000 L CNN
F 1 "5V connector" V 899 698 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P3.81mm_Drill1mm" H 1050 650 50  0001 C CNN
F 3 "~" H 1050 650 50  0001 C CNN
	1    1050 650 
	0    1    -1   0   
$EndComp
Connection ~ 1250 1200
Wire Wire Line
	1250 1200 1550 1200
Wire Wire Line
	1050 850  1050 1200
$Comp
L power:GND #PWR02
U 1 1 60E10DFB
P 950 850
F 0 "#PWR02" H 950 600 50  0001 C CNN
F 1 "GND" H 955 677 50  0000 C CNN
F 2 "" H 950 850 50  0001 C CNN
F 3 "" H 950 850 50  0001 C CNN
	1    950  850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1200 1250 1200
Wire Wire Line
	650  1200 1050 1200
Connection ~ 1050 1200
Wire Wire Line
	4100 6400 4850 6400
Wire Wire Line
	4700 3600 4850 3600
Wire Wire Line
	4850 3600 4850 5150
Text GLabel 4700 3500 2    50   Output ~ 0
audio_5
$Comp
L Device:LED D4
U 1 1 60E3A861
P 5150 1650
F 0 "D4" H 4850 1650 50  0000 C CNN
F 1 "LED" H 5142 1486 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5150 1650 50  0001 C CNN
F 3 "~" H 5150 1650 50  0001 C CNN
	1    5150 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 2300 3000 2300
Wire Wire Line
	3000 2300 3000 1650
Wire Wire Line
	3000 1650 5000 1650
Wire Wire Line
	5300 1650 5300 1900
Connection ~ 5300 2200
Wire Wire Line
	5300 2200 5300 2300
Connection ~ 5300 2100
Wire Wire Line
	5300 2100 5300 2200
Connection ~ 5300 1900
Wire Wire Line
	5300 1900 5300 2100
$EndSCHEMATC
