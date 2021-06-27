EESchema Schematic File Version 4
LIBS:audio-line-selector-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Audio line selector"
Date "2021-06-27"
Rev "v1.0"
Comp ""
Comment1 "Antti Helminen"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 4xxx:4066 U?
U 1 1 60E507A1
P 6800 3800
AR Path="/60E507A1" Ref="U?"  Part="1" 
AR Path="/60E4F6CA/60E507A1" Ref="U?"  Part="1" 
F 0 "U?" H 7100 4100 50  0000 C CNN
F 1 "4066" H 7100 4000 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6800 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 6800 3800 50  0001 C CNN
	1    6800 3800
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U?
U 2 1 60E507A8
P 6800 5000
AR Path="/60E507A8" Ref="U?"  Part="2" 
AR Path="/60E4F6CA/60E507A8" Ref="U?"  Part="2" 
F 0 "U?" H 7100 4800 50  0000 C CNN
F 1 "4066" H 7100 4900 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6800 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 6800 5000 50  0001 C CNN
	2    6800 5000
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 J?
U 1 1 60E507AF
P 5800 4500
AR Path="/60E507AF" Ref="J?"  Part="1" 
AR Path="/60E4F6CA/60E507AF" Ref="J?"  Part="1" 
F 0 "J?" H 5780 4825 50  0000 C CNN
F 1 "AudioJack3" H 5780 4734 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ1-3533NG_Horizontal" H 5800 4500 50  0001 C CNN
F 3 "~" H 5800 4500 50  0001 C CNN
	1    5800 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E507B6
P 6500 3650
AR Path="/60E507B6" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E507B6" Ref="R?"  Part="1" 
F 0 "R?" H 6559 3696 50  0000 L CNN
F 1 "47K" H 6559 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 6500 3650 50  0001 C CNN
F 3 "~" H 6500 3650 50  0001 C CNN
	1    6500 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E507BD
P 6500 3950
AR Path="/60E507BD" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E507BD" Ref="R?"  Part="1" 
F 0 "R?" H 6559 3996 50  0000 L CNN
F 1 "47K" H 6559 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 6500 3950 50  0001 C CNN
F 3 "~" H 6500 3950 50  0001 C CNN
	1    6500 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E507C4
P 6500 4050
AR Path="/60E507C4" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E507C4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6500 3800 50  0001 C CNN
F 1 "GND" H 6505 3877 50  0000 C CNN
F 2 "" H 6500 4050 50  0001 C CNN
F 3 "" H 6500 4050 50  0001 C CNN
	1    6500 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E507CA
P 6350 3800
AR Path="/60E507CA" Ref="C?"  Part="1" 
AR Path="/60E4F6CA/60E507CA" Ref="C?"  Part="1" 
F 0 "C?" V 6098 3800 50  0000 C CNN
F 1 "10uF" V 6189 3800 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 6350 3800 50  0001 C CNN
F 3 "~" H 6350 3800 50  0001 C CNN
	1    6350 3800
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60E507D1
P 6500 3550
AR Path="/60E507D1" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E507D1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6500 3400 50  0001 C CNN
F 1 "VCC" H 6517 3723 50  0000 C CNN
F 2 "" H 6500 3550 50  0001 C CNN
F 3 "" H 6500 3550 50  0001 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3750 6500 3800
Wire Wire Line
	6500 3800 6500 3850
Connection ~ 6500 3800
$Comp
L Device:R_Small R?
U 1 1 60E507DA
P 6500 4850
AR Path="/60E507DA" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E507DA" Ref="R?"  Part="1" 
F 0 "R?" H 6559 4896 50  0000 L CNN
F 1 "47K" H 6559 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 6500 4850 50  0001 C CNN
F 3 "~" H 6500 4850 50  0001 C CNN
	1    6500 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E507E1
P 6500 5150
AR Path="/60E507E1" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E507E1" Ref="R?"  Part="1" 
F 0 "R?" H 6559 5196 50  0000 L CNN
F 1 "47K" H 6559 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 6500 5150 50  0001 C CNN
F 3 "~" H 6500 5150 50  0001 C CNN
	1    6500 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E507E8
P 6500 5250
AR Path="/60E507E8" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E507E8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6500 5000 50  0001 C CNN
F 1 "GND" H 6505 5077 50  0000 C CNN
F 2 "" H 6500 5250 50  0001 C CNN
F 3 "" H 6500 5250 50  0001 C CNN
	1    6500 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E507EE
P 6350 5000
AR Path="/60E507EE" Ref="C?"  Part="1" 
AR Path="/60E4F6CA/60E507EE" Ref="C?"  Part="1" 
F 0 "C?" V 6098 5000 50  0000 C CNN
F 1 "10uF" V 6189 5000 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.4" H 6350 5000 50  0001 C CNN
F 3 "~" H 6350 5000 50  0001 C CNN
	1    6350 5000
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60E507F5
P 6500 4750
AR Path="/60E507F5" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E507F5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6500 4600 50  0001 C CNN
F 1 "VCC" H 6517 4923 50  0000 C CNN
F 2 "" H 6500 4750 50  0001 C CNN
F 3 "" H 6500 4750 50  0001 C CNN
	1    6500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4950 6500 5000
Wire Wire Line
	6500 5000 6500 5050
Connection ~ 6500 5000
$Comp
L power:GNDS #PWR?
U 1 1 60E50800
P 6850 4550
AR Path="/60E50800" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E50800" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6850 4300 50  0001 C CNN
F 1 "GNDS" H 6855 4377 50  0000 C CNN
F 2 "" H 6850 4550 50  0001 C CNN
F 3 "" H 6850 4550 50  0001 C CNN
	1    6850 4550
	1    0    0    -1  
$EndComp
Text GLabel 7100 3800 2    50   Output ~ 0
R
Text GLabel 7100 5000 2    50   Output ~ 0
L
$Comp
L Connector:AudioJack3 J?
U 1 1 60E5643C
P 10550 2950
AR Path="/60E5643C" Ref="J?"  Part="1" 
AR Path="/60E4F6CA/60E5643C" Ref="J?"  Part="1" 
F 0 "J?" H 10530 3275 50  0000 C CNN
F 1 "AudioJack3" H 10530 3184 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ1-3533NG_Horizontal" H 10550 2950 50  0001 C CNN
F 3 "~" H 10550 2950 50  0001 C CNN
	1    10550 2950
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E56443
P 9800 2400
AR Path="/60E56443" Ref="C?"  Part="1" 
AR Path="/60E4F6CA/60E56443" Ref="C?"  Part="1" 
F 0 "C?" V 9548 2400 50  0000 C CNN
F 1 "10uF" V 9639 2400 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 9800 2400 50  0001 C CNN
F 3 "~" H 9800 2400 50  0001 C CNN
	1    9800 2400
	0    -1   1    0   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E5644A
P 9800 3600
AR Path="/60E5644A" Ref="C?"  Part="1" 
AR Path="/60E4F6CA/60E5644A" Ref="C?"  Part="1" 
F 0 "C?" V 9548 3600 50  0000 C CNN
F 1 "10uF" V 9639 3600 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 9800 3600 50  0001 C CNN
F 3 "~" H 9800 3600 50  0001 C CNN
	1    9800 3600
	0    -1   1    0   
$EndComp
$Comp
L power:GNDS #PWR?
U 1 1 60E56457
P 9800 2950
AR Path="/60E56457" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E56457" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9800 2700 50  0001 C CNN
F 1 "GNDS" H 9805 2777 50  0000 C CNN
F 2 "" H 9800 2950 50  0001 C CNN
F 3 "" H 9800 2950 50  0001 C CNN
	1    9800 2950
	1    0    0    -1  
$EndComp
Text GLabel 9650 3600 0    50   Input ~ 0
L
Text GLabel 9650 2400 0    50   Input ~ 0
R
$Comp
L 4xxx:4066 U?
U 5 1 60E578C3
P 1700 6700
AR Path="/60E578C3" Ref="U?"  Part="5" 
AR Path="/60E4F6CA/60E578C3" Ref="U?"  Part="5" 
F 0 "U?" H 1930 6746 50  0000 L CNN
F 1 "4066" H 1930 6655 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1700 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 1700 6700 50  0001 C CNN
	5    1700 6700
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D?
U 1 1 60E578CA
P 1700 5900
AR Path="/60E578CA" Ref="D?"  Part="1" 
AR Path="/60E4F6CA/60E578CA" Ref="D?"  Part="1" 
F 0 "D?" V 1654 6028 50  0001 L CNN
F 1 "DIODE" V 1745 6028 50  0001 L CNN
F 2 "Diode_SMD:Diode_Bridge_Diotec_ABS" H 1700 5900 50  0001 C CNN
F 3 "~" H 1700 5900 50  0001 C CNN
	1    1700 5900
	0    1    1    0   
$EndComp
$Comp
L pspice:DIODE D?
U 1 1 60E578D0
P 1950 5900
AR Path="/60E578D0" Ref="D?"  Part="1" 
AR Path="/60E4F6CA/60E578D0" Ref="D?"  Part="1" 
F 0 "D?" V 1904 6028 50  0000 L CNN
F 1 "DIODE" V 1995 6028 50  0000 L CNN
F 2 "Diode_SMD:Diode_Bridge_Diotec_ABS" H 1950 5900 50  0001 C CNN
F 3 "~" H 1950 5900 50  0001 C CNN
	1    1950 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 6100 1700 6100
Wire Wire Line
	1700 6200 1700 6100
Connection ~ 1700 6100
$Comp
L 4xxx:4066 U?
U 5 1 60E59826
P 3800 6750
AR Path="/60E59826" Ref="U?"  Part="5" 
AR Path="/60E4F6CA/60E59826" Ref="U?"  Part="5" 
F 0 "U?" H 4030 6796 50  0000 L CNN
F 1 "4066" H 4030 6705 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3800 6750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 3800 6750 50  0001 C CNN
	5    3800 6750
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D?
U 1 1 60E5982D
P 3800 5950
AR Path="/60E5982D" Ref="D?"  Part="1" 
AR Path="/60E4F6CA/60E5982D" Ref="D?"  Part="1" 
F 0 "D?" V 3754 6078 50  0001 L CNN
F 1 "DIODE" V 3845 6078 50  0001 L CNN
F 2 "Diode_SMD:Diode_Bridge_Diotec_ABS" H 3800 5950 50  0001 C CNN
F 3 "~" H 3800 5950 50  0001 C CNN
	1    3800 5950
	0    1    1    0   
$EndComp
$Comp
L pspice:DIODE D?
U 1 1 60E59833
P 4050 5950
AR Path="/60E59833" Ref="D?"  Part="1" 
AR Path="/60E4F6CA/60E59833" Ref="D?"  Part="1" 
F 0 "D?" V 4004 6078 50  0000 L CNN
F 1 "DIODE" V 4095 6078 50  0000 L CNN
F 2 "Diode_SMD:Diode_Bridge_Diotec_ABS" H 4050 5950 50  0001 C CNN
F 3 "~" H 4050 5950 50  0001 C CNN
	1    4050 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 6150 3800 6150
Wire Wire Line
	3800 6250 3800 6150
Connection ~ 3800 6150
$Comp
L 4xxx:4066 U?
U 5 1 60E602E8
P 5850 6600
AR Path="/60E602E8" Ref="U?"  Part="5" 
AR Path="/60E4F6CA/60E602E8" Ref="U?"  Part="5" 
F 0 "U?" H 6080 6646 50  0000 L CNN
F 1 "4066" H 6080 6555 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5850 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 5850 6600 50  0001 C CNN
	5    5850 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 3600 10150 3600
Wire Wire Line
	10150 3600 10150 3050
Wire Wire Line
	10150 3050 10350 3050
Wire Wire Line
	9950 2400 10150 2400
Wire Wire Line
	10150 2400 10150 2950
Wire Wire Line
	10150 2950 10350 2950
Wire Wire Line
	9800 2850 9800 2950
Wire Wire Line
	9800 2850 10350 2850
Wire Wire Line
	6000 4600 6200 4600
Wire Wire Line
	6200 4600 6200 5000
Wire Wire Line
	6000 4500 6200 4500
Wire Wire Line
	6200 4500 6200 3800
Wire Wire Line
	6000 4400 6850 4400
Wire Wire Line
	6850 4400 6850 4550
$Comp
L 4xxx:4066 U?
U 1 1 60E8ED74
P 2200 1250
AR Path="/60E8ED74" Ref="U?"  Part="1" 
AR Path="/60E4F6CA/60E8ED74" Ref="U?"  Part="1" 
F 0 "U?" H 2500 1550 50  0000 C CNN
F 1 "4066" H 2500 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2200 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 2200 1250 50  0001 C CNN
	1    2200 1250
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U?
U 2 1 60E8ED7B
P 2200 2450
AR Path="/60E8ED7B" Ref="U?"  Part="2" 
AR Path="/60E4F6CA/60E8ED7B" Ref="U?"  Part="2" 
F 0 "U?" H 2500 2250 50  0000 C CNN
F 1 "4066" H 2500 2350 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2200 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 2200 2450 50  0001 C CNN
	2    2200 2450
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 J?
U 1 1 60E8ED82
P 1200 1950
AR Path="/60E8ED82" Ref="J?"  Part="1" 
AR Path="/60E4F6CA/60E8ED82" Ref="J?"  Part="1" 
F 0 "J?" H 1180 2275 50  0000 C CNN
F 1 "AudioJack3" H 1180 2184 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ1-3533NG_Horizontal" H 1200 1950 50  0001 C CNN
F 3 "~" H 1200 1950 50  0001 C CNN
	1    1200 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E8ED89
P 1900 1100
AR Path="/60E8ED89" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E8ED89" Ref="R?"  Part="1" 
F 0 "R?" H 1959 1146 50  0000 L CNN
F 1 "47K" H 1959 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 1900 1100 50  0001 C CNN
F 3 "~" H 1900 1100 50  0001 C CNN
	1    1900 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E8ED90
P 1900 1400
AR Path="/60E8ED90" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E8ED90" Ref="R?"  Part="1" 
F 0 "R?" H 1959 1446 50  0000 L CNN
F 1 "47K" H 1959 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 1900 1400 50  0001 C CNN
F 3 "~" H 1900 1400 50  0001 C CNN
	1    1900 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E8ED97
P 1900 1500
AR Path="/60E8ED97" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E8ED97" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1900 1250 50  0001 C CNN
F 1 "GND" H 1905 1327 50  0000 C CNN
F 2 "" H 1900 1500 50  0001 C CNN
F 3 "" H 1900 1500 50  0001 C CNN
	1    1900 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E8ED9D
P 1750 1250
AR Path="/60E8ED9D" Ref="C?"  Part="1" 
AR Path="/60E4F6CA/60E8ED9D" Ref="C?"  Part="1" 
F 0 "C?" V 1498 1250 50  0000 C CNN
F 1 "10uF" V 1589 1250 50  0000 C CNN
F 2 "Capacitor_THT:CP_Axial_L10.0mm_D6.0mm_P15.00mm_Horizontal" H 1750 1250 50  0001 C CNN
F 3 "~" H 1750 1250 50  0001 C CNN
	1    1750 1250
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60E8EDA4
P 1900 1000
AR Path="/60E8EDA4" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E8EDA4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1900 850 50  0001 C CNN
F 1 "VCC" H 1917 1173 50  0000 C CNN
F 2 "" H 1900 1000 50  0001 C CNN
F 3 "" H 1900 1000 50  0001 C CNN
	1    1900 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1200 1900 1250
Wire Wire Line
	1900 1250 1900 1300
Connection ~ 1900 1250
$Comp
L Device:R_Small R?
U 1 1 60E8EDAD
P 1900 2300
AR Path="/60E8EDAD" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E8EDAD" Ref="R?"  Part="1" 
F 0 "R?" H 1959 2346 50  0000 L CNN
F 1 "47K" H 1959 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 1900 2300 50  0001 C CNN
F 3 "~" H 1900 2300 50  0001 C CNN
	1    1900 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E8EDB4
P 1900 2600
AR Path="/60E8EDB4" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E8EDB4" Ref="R?"  Part="1" 
F 0 "R?" H 1959 2646 50  0000 L CNN
F 1 "47K" H 1959 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 1900 2600 50  0001 C CNN
F 3 "~" H 1900 2600 50  0001 C CNN
	1    1900 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E8EDBB
P 1900 2700
AR Path="/60E8EDBB" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E8EDBB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1900 2450 50  0001 C CNN
F 1 "GND" H 1905 2527 50  0000 C CNN
F 2 "" H 1900 2700 50  0001 C CNN
F 3 "" H 1900 2700 50  0001 C CNN
	1    1900 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E8EDC1
P 1750 2450
AR Path="/60E8EDC1" Ref="C?"  Part="1" 
AR Path="/60E4F6CA/60E8EDC1" Ref="C?"  Part="1" 
F 0 "C?" V 1498 2450 50  0000 C CNN
F 1 "10uF" V 1589 2450 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 1750 2450 50  0001 C CNN
F 3 "~" H 1750 2450 50  0001 C CNN
	1    1750 2450
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60E8EDC8
P 1900 2200
AR Path="/60E8EDC8" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E8EDC8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1900 2050 50  0001 C CNN
F 1 "VCC" H 1917 2373 50  0000 C CNN
F 2 "" H 1900 2200 50  0001 C CNN
F 3 "" H 1900 2200 50  0001 C CNN
	1    1900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2400 1900 2450
Wire Wire Line
	1900 2450 1900 2500
Connection ~ 1900 2450
$Comp
L power:GNDS #PWR?
U 1 1 60E8EDD1
P 2250 2000
AR Path="/60E8EDD1" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E8EDD1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2250 1750 50  0001 C CNN
F 1 "GNDS" H 2255 1827 50  0000 C CNN
F 2 "" H 2250 2000 50  0001 C CNN
F 3 "" H 2250 2000 50  0001 C CNN
	1    2250 2000
	1    0    0    -1  
$EndComp
Text GLabel 2500 1250 2    50   Output ~ 0
R
Text GLabel 2500 2450 2    50   Output ~ 0
L
Wire Wire Line
	1400 2050 1600 2050
Wire Wire Line
	1600 2050 1600 2450
Wire Wire Line
	1400 1950 1600 1950
Wire Wire Line
	1600 1950 1600 1250
Wire Wire Line
	1400 1850 2250 1850
Wire Wire Line
	2250 1850 2250 2000
$Comp
L 4xxx:4066 U?
U 1 1 60E8F4FC
P 4400 1300
AR Path="/60E8F4FC" Ref="U?"  Part="1" 
AR Path="/60E4F6CA/60E8F4FC" Ref="U?"  Part="1" 
F 0 "U?" H 4700 1600 50  0000 C CNN
F 1 "4066" H 4700 1500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4400 1300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 4400 1300 50  0001 C CNN
	1    4400 1300
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U?
U 2 1 60E8F503
P 4400 2500
AR Path="/60E8F503" Ref="U?"  Part="2" 
AR Path="/60E4F6CA/60E8F503" Ref="U?"  Part="2" 
F 0 "U?" H 4700 2300 50  0000 C CNN
F 1 "4066" H 4700 2400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4400 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 4400 2500 50  0001 C CNN
	2    4400 2500
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 J?
U 1 1 60E8F50A
P 3400 2000
AR Path="/60E8F50A" Ref="J?"  Part="1" 
AR Path="/60E4F6CA/60E8F50A" Ref="J?"  Part="1" 
F 0 "J?" H 3380 2325 50  0000 C CNN
F 1 "AudioJack3" H 3380 2234 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ1-3533NG_Horizontal" H 3400 2000 50  0001 C CNN
F 3 "~" H 3400 2000 50  0001 C CNN
	1    3400 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E8F511
P 4100 1150
AR Path="/60E8F511" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E8F511" Ref="R?"  Part="1" 
F 0 "R?" H 4159 1196 50  0000 L CNN
F 1 "47K" H 4159 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 4100 1150 50  0001 C CNN
F 3 "~" H 4100 1150 50  0001 C CNN
	1    4100 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E8F518
P 4100 1450
AR Path="/60E8F518" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E8F518" Ref="R?"  Part="1" 
F 0 "R?" H 4159 1496 50  0000 L CNN
F 1 "47K" H 4159 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 4100 1450 50  0001 C CNN
F 3 "~" H 4100 1450 50  0001 C CNN
	1    4100 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E8F51F
P 4100 1550
AR Path="/60E8F51F" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E8F51F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 1300 50  0001 C CNN
F 1 "GND" H 4105 1377 50  0000 C CNN
F 2 "" H 4100 1550 50  0001 C CNN
F 3 "" H 4100 1550 50  0001 C CNN
	1    4100 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E8F525
P 3950 1300
AR Path="/60E8F525" Ref="C?"  Part="1" 
AR Path="/60E4F6CA/60E8F525" Ref="C?"  Part="1" 
F 0 "C?" V 3698 1300 50  0000 C CNN
F 1 "10uF" V 3789 1300 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 3950 1300 50  0001 C CNN
F 3 "~" H 3950 1300 50  0001 C CNN
	1    3950 1300
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60E8F52C
P 4100 1050
AR Path="/60E8F52C" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E8F52C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 900 50  0001 C CNN
F 1 "VCC" H 4117 1223 50  0000 C CNN
F 2 "" H 4100 1050 50  0001 C CNN
F 3 "" H 4100 1050 50  0001 C CNN
	1    4100 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1250 4100 1300
Wire Wire Line
	4100 1300 4100 1350
Connection ~ 4100 1300
$Comp
L Device:R_Small R?
U 1 1 60E8F535
P 4100 2350
AR Path="/60E8F535" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E8F535" Ref="R?"  Part="1" 
F 0 "R?" H 4159 2396 50  0000 L CNN
F 1 "47K" H 4159 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 4100 2350 50  0001 C CNN
F 3 "~" H 4100 2350 50  0001 C CNN
	1    4100 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E8F53C
P 4100 2650
AR Path="/60E8F53C" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E8F53C" Ref="R?"  Part="1" 
F 0 "R?" H 4159 2696 50  0000 L CNN
F 1 "47K" H 4159 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 4100 2650 50  0001 C CNN
F 3 "~" H 4100 2650 50  0001 C CNN
	1    4100 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E8F543
P 4100 2750
AR Path="/60E8F543" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E8F543" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 2500 50  0001 C CNN
F 1 "GND" H 4105 2577 50  0000 C CNN
F 2 "" H 4100 2750 50  0001 C CNN
F 3 "" H 4100 2750 50  0001 C CNN
	1    4100 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E8F549
P 3950 2500
AR Path="/60E8F549" Ref="C?"  Part="1" 
AR Path="/60E4F6CA/60E8F549" Ref="C?"  Part="1" 
F 0 "C?" V 3698 2500 50  0000 C CNN
F 1 "10uF" V 3789 2500 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 3950 2500 50  0001 C CNN
F 3 "~" H 3950 2500 50  0001 C CNN
	1    3950 2500
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60E8F550
P 4100 2250
AR Path="/60E8F550" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E8F550" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 2100 50  0001 C CNN
F 1 "VCC" H 4117 2423 50  0000 C CNN
F 2 "" H 4100 2250 50  0001 C CNN
F 3 "" H 4100 2250 50  0001 C CNN
	1    4100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2450 4100 2500
Wire Wire Line
	4100 2500 4100 2550
Connection ~ 4100 2500
$Comp
L power:GNDS #PWR?
U 1 1 60E8F559
P 4450 2050
AR Path="/60E8F559" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E8F559" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 1800 50  0001 C CNN
F 1 "GNDS" H 4455 1877 50  0000 C CNN
F 2 "" H 4450 2050 50  0001 C CNN
F 3 "" H 4450 2050 50  0001 C CNN
	1    4450 2050
	1    0    0    -1  
$EndComp
Text GLabel 4700 1300 2    50   Output ~ 0
R
Text GLabel 4700 2500 2    50   Output ~ 0
L
Wire Wire Line
	3600 2100 3800 2100
Wire Wire Line
	3800 2100 3800 2500
Wire Wire Line
	3600 2000 3800 2000
Wire Wire Line
	3800 2000 3800 1300
Wire Wire Line
	3600 1900 4450 1900
Wire Wire Line
	4450 1900 4450 2050
$Comp
L 4xxx:4066 U?
U 3 1 60E901A6
P 2200 3750
AR Path="/60E901A6" Ref="U?"  Part="1" 
AR Path="/60E4F6CA/60E901A6" Ref="U?"  Part="3" 
F 0 "U?" H 2500 4050 50  0000 C CNN
F 1 "4066" H 2500 3950 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2200 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 2200 3750 50  0001 C CNN
	3    2200 3750
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U?
U 4 1 60E901AD
P 2200 4950
AR Path="/60E901AD" Ref="U?"  Part="2" 
AR Path="/60E4F6CA/60E901AD" Ref="U?"  Part="4" 
F 0 "U?" H 2500 4750 50  0000 C CNN
F 1 "4066" H 2500 4850 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2200 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 2200 4950 50  0001 C CNN
	4    2200 4950
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 J?
U 1 1 60E901B4
P 1200 4450
AR Path="/60E901B4" Ref="J?"  Part="1" 
AR Path="/60E4F6CA/60E901B4" Ref="J?"  Part="1" 
F 0 "J?" H 1180 4775 50  0000 C CNN
F 1 "AudioJack3" H 1180 4684 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ1-3533NG_Horizontal" H 1200 4450 50  0001 C CNN
F 3 "~" H 1200 4450 50  0001 C CNN
	1    1200 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E901BB
P 1900 3600
AR Path="/60E901BB" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E901BB" Ref="R?"  Part="1" 
F 0 "R?" H 1959 3646 50  0000 L CNN
F 1 "47K" H 1959 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 1900 3600 50  0001 C CNN
F 3 "~" H 1900 3600 50  0001 C CNN
	1    1900 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E901C2
P 1900 3900
AR Path="/60E901C2" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E901C2" Ref="R?"  Part="1" 
F 0 "R?" H 1959 3946 50  0000 L CNN
F 1 "47K" H 1959 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 1900 3900 50  0001 C CNN
F 3 "~" H 1900 3900 50  0001 C CNN
	1    1900 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E901C9
P 1900 4000
AR Path="/60E901C9" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E901C9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1900 3750 50  0001 C CNN
F 1 "GND" H 1905 3827 50  0000 C CNN
F 2 "" H 1900 4000 50  0001 C CNN
F 3 "" H 1900 4000 50  0001 C CNN
	1    1900 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E901CF
P 1750 3750
AR Path="/60E901CF" Ref="C?"  Part="1" 
AR Path="/60E4F6CA/60E901CF" Ref="C?"  Part="1" 
F 0 "C?" V 1498 3750 50  0000 C CNN
F 1 "10uF" V 1589 3750 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 1750 3750 50  0001 C CNN
F 3 "~" H 1750 3750 50  0001 C CNN
	1    1750 3750
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60E901D6
P 1900 3500
AR Path="/60E901D6" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E901D6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1900 3350 50  0001 C CNN
F 1 "VCC" H 1917 3673 50  0000 C CNN
F 2 "" H 1900 3500 50  0001 C CNN
F 3 "" H 1900 3500 50  0001 C CNN
	1    1900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3700 1900 3750
Wire Wire Line
	1900 3750 1900 3800
Connection ~ 1900 3750
$Comp
L Device:R_Small R?
U 1 1 60E901DF
P 1900 4800
AR Path="/60E901DF" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E901DF" Ref="R?"  Part="1" 
F 0 "R?" H 1959 4846 50  0000 L CNN
F 1 "47K" H 1959 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 1900 4800 50  0001 C CNN
F 3 "~" H 1900 4800 50  0001 C CNN
	1    1900 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E901E6
P 1900 5100
AR Path="/60E901E6" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E901E6" Ref="R?"  Part="1" 
F 0 "R?" H 1959 5146 50  0000 L CNN
F 1 "47K" H 1959 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 1900 5100 50  0001 C CNN
F 3 "~" H 1900 5100 50  0001 C CNN
	1    1900 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E901ED
P 1900 5200
AR Path="/60E901ED" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E901ED" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1900 4950 50  0001 C CNN
F 1 "GND" H 1905 5027 50  0000 C CNN
F 2 "" H 1900 5200 50  0001 C CNN
F 3 "" H 1900 5200 50  0001 C CNN
	1    1900 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E901F3
P 1750 4950
AR Path="/60E901F3" Ref="C?"  Part="1" 
AR Path="/60E4F6CA/60E901F3" Ref="C?"  Part="1" 
F 0 "C?" V 1498 4950 50  0000 C CNN
F 1 "10uF" V 1589 4950 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 1750 4950 50  0001 C CNN
F 3 "~" H 1750 4950 50  0001 C CNN
	1    1750 4950
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60E901FA
P 1900 4700
AR Path="/60E901FA" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E901FA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1900 4550 50  0001 C CNN
F 1 "VCC" H 1917 4873 50  0000 C CNN
F 2 "" H 1900 4700 50  0001 C CNN
F 3 "" H 1900 4700 50  0001 C CNN
	1    1900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4900 1900 4950
Wire Wire Line
	1900 4950 1900 5000
Connection ~ 1900 4950
$Comp
L power:GNDS #PWR?
U 1 1 60E90203
P 2250 4500
AR Path="/60E90203" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E90203" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2250 4250 50  0001 C CNN
F 1 "GNDS" H 2255 4327 50  0000 C CNN
F 2 "" H 2250 4500 50  0001 C CNN
F 3 "" H 2250 4500 50  0001 C CNN
	1    2250 4500
	1    0    0    -1  
$EndComp
Text GLabel 2500 3750 2    50   Output ~ 0
R
Text GLabel 2500 4950 2    50   Output ~ 0
L
Wire Wire Line
	1400 4550 1600 4550
Wire Wire Line
	1600 4550 1600 4950
Wire Wire Line
	1400 4450 1600 4450
Wire Wire Line
	1600 4450 1600 3750
Wire Wire Line
	1400 4350 2250 4350
Wire Wire Line
	2250 4350 2250 4500
$Comp
L 4xxx:4066 U?
U 3 1 60E911DC
P 4400 3800
AR Path="/60E911DC" Ref="U?"  Part="1" 
AR Path="/60E4F6CA/60E911DC" Ref="U?"  Part="3" 
F 0 "U?" H 4700 4100 50  0000 C CNN
F 1 "4066" H 4700 4000 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4400 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 4400 3800 50  0001 C CNN
	3    4400 3800
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U?
U 4 1 60E911E3
P 4400 5000
AR Path="/60E911E3" Ref="U?"  Part="2" 
AR Path="/60E4F6CA/60E911E3" Ref="U?"  Part="4" 
F 0 "U?" H 4700 4800 50  0000 C CNN
F 1 "4066" H 4700 4900 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4400 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 4400 5000 50  0001 C CNN
	4    4400 5000
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 J?
U 1 1 60E911EA
P 3400 4500
AR Path="/60E911EA" Ref="J?"  Part="1" 
AR Path="/60E4F6CA/60E911EA" Ref="J?"  Part="1" 
F 0 "J?" H 3380 4825 50  0000 C CNN
F 1 "AudioJack3" H 3380 4734 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ1-3533NG_Horizontal" H 3400 4500 50  0001 C CNN
F 3 "~" H 3400 4500 50  0001 C CNN
	1    3400 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E911F1
P 4100 3650
AR Path="/60E911F1" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E911F1" Ref="R?"  Part="1" 
F 0 "R?" H 4159 3696 50  0000 L CNN
F 1 "47K" H 4159 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 4100 3650 50  0001 C CNN
F 3 "~" H 4100 3650 50  0001 C CNN
	1    4100 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E911F8
P 4100 3950
AR Path="/60E911F8" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E911F8" Ref="R?"  Part="1" 
F 0 "R?" H 4159 3996 50  0000 L CNN
F 1 "47K" H 4159 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 4100 3950 50  0001 C CNN
F 3 "~" H 4100 3950 50  0001 C CNN
	1    4100 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E911FF
P 4100 4050
AR Path="/60E911FF" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E911FF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 3800 50  0001 C CNN
F 1 "GND" H 4105 3877 50  0000 C CNN
F 2 "" H 4100 4050 50  0001 C CNN
F 3 "" H 4100 4050 50  0001 C CNN
	1    4100 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E91205
P 3950 3800
AR Path="/60E91205" Ref="C?"  Part="1" 
AR Path="/60E4F6CA/60E91205" Ref="C?"  Part="1" 
F 0 "C?" V 3698 3800 50  0000 C CNN
F 1 "10uF" V 3789 3800 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 3950 3800 50  0001 C CNN
F 3 "~" H 3950 3800 50  0001 C CNN
	1    3950 3800
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60E9120C
P 4100 3550
AR Path="/60E9120C" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E9120C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 3400 50  0001 C CNN
F 1 "VCC" H 4117 3723 50  0000 C CNN
F 2 "" H 4100 3550 50  0001 C CNN
F 3 "" H 4100 3550 50  0001 C CNN
	1    4100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3750 4100 3800
Wire Wire Line
	4100 3800 4100 3850
Connection ~ 4100 3800
$Comp
L Device:R_Small R?
U 1 1 60E91215
P 4100 4850
AR Path="/60E91215" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E91215" Ref="R?"  Part="1" 
F 0 "R?" H 4159 4896 50  0000 L CNN
F 1 "47K" H 4159 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 4100 4850 50  0001 C CNN
F 3 "~" H 4100 4850 50  0001 C CNN
	1    4100 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60E9121C
P 4100 5150
AR Path="/60E9121C" Ref="R?"  Part="1" 
AR Path="/60E4F6CA/60E9121C" Ref="R?"  Part="1" 
F 0 "R?" H 4159 5196 50  0000 L CNN
F 1 "47K" H 4159 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 4100 5150 50  0001 C CNN
F 3 "~" H 4100 5150 50  0001 C CNN
	1    4100 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E91223
P 4100 5250
AR Path="/60E91223" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E91223" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 5000 50  0001 C CNN
F 1 "GND" H 4105 5077 50  0000 C CNN
F 2 "" H 4100 5250 50  0001 C CNN
F 3 "" H 4100 5250 50  0001 C CNN
	1    4100 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 60E91229
P 3950 5000
AR Path="/60E91229" Ref="C?"  Part="1" 
AR Path="/60E4F6CA/60E91229" Ref="C?"  Part="1" 
F 0 "C?" V 3698 5000 50  0000 C CNN
F 1 "10uF" V 3789 5000 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 3950 5000 50  0001 C CNN
F 3 "~" H 3950 5000 50  0001 C CNN
	1    3950 5000
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60E91230
P 4100 4750
AR Path="/60E91230" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E91230" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 4600 50  0001 C CNN
F 1 "VCC" H 4117 4923 50  0000 C CNN
F 2 "" H 4100 4750 50  0001 C CNN
F 3 "" H 4100 4750 50  0001 C CNN
	1    4100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4950 4100 5000
Wire Wire Line
	4100 5000 4100 5050
Connection ~ 4100 5000
$Comp
L power:GNDS #PWR?
U 1 1 60E91239
P 4450 4550
AR Path="/60E91239" Ref="#PWR?"  Part="1" 
AR Path="/60E4F6CA/60E91239" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 4300 50  0001 C CNN
F 1 "GNDS" H 4455 4377 50  0000 C CNN
F 2 "" H 4450 4550 50  0001 C CNN
F 3 "" H 4450 4550 50  0001 C CNN
	1    4450 4550
	1    0    0    -1  
$EndComp
Text GLabel 4700 3800 2    50   Output ~ 0
R
Text GLabel 4700 5000 2    50   Output ~ 0
L
Wire Wire Line
	3600 4600 3800 4600
Wire Wire Line
	3800 4600 3800 5000
Wire Wire Line
	3600 4500 3800 4500
Wire Wire Line
	3800 4500 3800 3800
Wire Wire Line
	3600 4400 4450 4400
Wire Wire Line
	4450 4400 4450 4550
Text GLabel 1100 700  0    50   Input ~ 0
audio_0
Text GLabel 1100 3200 0    50   Input ~ 0
audio_1
Text GLabel 3500 700  0    50   Input ~ 0
audio_2
Text GLabel 3500 3200 0    50   Input ~ 0
audio_3
Text GLabel 5900 3200 0    50   Input ~ 0
audio_4
Wire Wire Line
	1100 700  2200 700 
Wire Wire Line
	2200 700  2200 950 
Wire Wire Line
	2200 700  2800 700 
Wire Wire Line
	2800 700  2800 2750
Wire Wire Line
	2800 2750 2200 2750
Connection ~ 2200 700 
Wire Wire Line
	1100 3200 2200 3200
Wire Wire Line
	2200 3200 2200 3450
Wire Wire Line
	2200 3200 2700 3200
Wire Wire Line
	2700 3200 2700 5250
Wire Wire Line
	2700 5250 2200 5250
Connection ~ 2200 3200
Wire Wire Line
	2800 2750 2800 5700
Wire Wire Line
	2800 5700 1950 5700
Connection ~ 2800 2750
Wire Wire Line
	2200 5250 2200 5600
Wire Wire Line
	2200 5600 1700 5600
Wire Wire Line
	1700 5600 1700 5700
Connection ~ 2200 5250
Wire Wire Line
	3500 700  4400 700 
Wire Wire Line
	4400 700  4400 1000
Wire Wire Line
	4400 700  5000 700 
Wire Wire Line
	5000 700  5000 2800
Wire Wire Line
	5000 5750 4050 5750
Connection ~ 4400 700 
Wire Wire Line
	4400 2800 5000 2800
Connection ~ 5000 2800
Wire Wire Line
	5000 2800 5000 5750
Wire Wire Line
	3500 3200 4400 3200
Wire Wire Line
	4400 3200 4400 3500
Wire Wire Line
	4400 3200 4900 3200
Wire Wire Line
	4900 3200 4900 5300
Wire Wire Line
	4900 5300 4400 5300
Connection ~ 4400 3200
Wire Wire Line
	4400 5300 4400 5600
Wire Wire Line
	4400 5600 3800 5600
Wire Wire Line
	3800 5600 3800 5750
Connection ~ 4400 5300
Wire Wire Line
	5900 3200 6800 3200
Wire Wire Line
	6800 3200 6800 3500
Wire Wire Line
	6800 3200 7300 3200
Wire Wire Line
	7300 3200 7300 5300
Wire Wire Line
	7300 5300 6800 5300
Connection ~ 6800 3200
Wire Wire Line
	6800 5300 6800 6100
Wire Wire Line
	6800 6100 5850 6100
Connection ~ 6800 5300
$Comp
L power:GND #PWR?
U 1 1 60EB9C9A
P 5850 7100
F 0 "#PWR?" H 5850 6850 50  0001 C CNN
F 1 "GND" H 5855 6927 50  0000 C CNN
F 2 "" H 5850 7100 50  0001 C CNN
F 3 "" H 5850 7100 50  0001 C CNN
	1    5850 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60EB9D5B
P 3800 7250
F 0 "#PWR?" H 3800 7000 50  0001 C CNN
F 1 "GND" H 3805 7077 50  0000 C CNN
F 2 "" H 3800 7250 50  0001 C CNN
F 3 "" H 3800 7250 50  0001 C CNN
	1    3800 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60EB9E1C
P 1700 7200
F 0 "#PWR?" H 1700 6950 50  0001 C CNN
F 1 "GND" H 1705 7027 50  0000 C CNN
F 2 "" H 1700 7200 50  0001 C CNN
F 3 "" H 1700 7200 50  0001 C CNN
	1    1700 7200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 60D7B6B0
P 9800 2850
F 0 "#FLG?" H 9800 2925 50  0001 C CNN
F 1 "PWR_FLAG" H 9800 3024 50  0000 C CNN
F 2 "" H 9800 2850 50  0001 C CNN
F 3 "~" H 9800 2850 50  0001 C CNN
	1    9800 2850
	1    0    0    -1  
$EndComp
Connection ~ 9800 2850
Wire Notes Line
	8900 1750 11050 1750
Wire Notes Line
	11050 1750 11050 4100
Wire Notes Line
	11050 4100 8900 4100
Wire Notes Line
	8900 4100 8900 1750
Text Notes 9000 1850 0    50   ~ 0
Audio out
Wire Notes Line
	6650 600  7800 600 
Wire Notes Line
	7800 600  7800 6400
Wire Notes Line
	7800 6400 6700 6400
Text Notes 7350 750  0    50   ~ 0
Audio in
$EndSCHEMATC
