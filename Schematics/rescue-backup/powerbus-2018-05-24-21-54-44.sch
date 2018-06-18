EESchema Schematic File Version 2
LIBS:main-rescue
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ad5121
LIBS:bq76920
LIBS:bq78350-r1
LIBS:lm5176
LIBS:lp38692-3v3
LIBS:lp38692-5v
LIBS:lt1370
LIBS:ltc4412
LIBS:p9221
LIBS:p9221R
LIBS:tps562201
LIBS:tps565201
LIBS:main-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2150 2750 0    60   Input ~ 0
INPUT_POWERBUS+
Text HLabel 2145 2955 0    60   Input ~ 0
INPUT_POWERBUS-
Text HLabel 8050 2950 2    60   Output ~ 0
OUTPUT_POWERBUS_-
Text HLabel 3900 5750 3    60   BiDi ~ 0
BMS_POWERBUS_+
Text HLabel 4050 5750 3    60   BiDi ~ 0
BMS_POWERBUS_-
Wire Wire Line
	2150 2750 8050 2750
Wire Wire Line
	3900 5750 3900 2750
Connection ~ 3900 2750
$Comp
L LM3480-3.3 U12
U 1 1 5B042EE4
P 5460 1690
F 0 "U12" H 5310 1815 50  0000 C CNN
F 1 "LM3480-3.3" H 5460 1815 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5460 1915 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm3480.pdf" H 5460 1690 50  0001 C CNN
	1    5460 1690
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR093
U 1 1 5B042F71
P 5460 2105
F 0 "#PWR093" H 5460 1855 50  0001 C CNN
F 1 "GND" H 5460 1955 50  0000 C CNN
F 2 "" H 5460 2105 50  0001 C CNN
F 3 "" H 5460 2105 50  0001 C CNN
	1    5460 2105
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1690 4600 2750
Connection ~ 4600 2750
Wire Wire Line
	5760 1690 6170 1690
$Comp
L C C53
U 1 1 5B042FF1
P 5935 1900
F 0 "C53" H 5960 2000 50  0000 L CNN
F 1 "1u" H 5960 1800 50  0000 L CNN
F 2 "" H 5973 1750 50  0001 C CNN
F 3 "" H 5935 1900 50  0001 C CNN
	1    5935 1900
	1    0    0    -1  
$EndComp
$Comp
L C C52
U 1 1 5B043032
P 4925 1920
F 0 "C52" H 4950 2020 50  0000 L CNN
F 1 "1u" H 4950 1820 50  0000 L CNN
F 2 "" H 4963 1770 50  0001 C CNN
F 3 "" H 4925 1920 50  0001 C CNN
	1    4925 1920
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 1770 4925 1690
Connection ~ 4925 1690
Wire Wire Line
	5935 1750 5935 1690
Connection ~ 5935 1690
Wire Wire Line
	4925 2070 5935 2070
Wire Wire Line
	5460 1990 5460 2105
Connection ~ 5460 2070
Wire Wire Line
	5935 2070 5935 2050
Wire Wire Line
	4600 1690 5160 1690
Text HLabel 8050 2750 2    60   Output ~ 0
switch_in
Wire Wire Line
	2145 2955 8050 2955
Wire Wire Line
	8050 2955 8050 2950
Wire Wire Line
	4050 5750 4050 2955
Connection ~ 4050 2955
Text HLabel 6170 1690 2    60   Output ~ 0
INTERNAL_3.3V
Text Notes 4995 1380 0    60   ~ 0
LDO voor system power
$EndSCHEMATC
