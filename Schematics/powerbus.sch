EESchema Schematic File Version 2
LIBS:main-rescue
LIBS:p9025ac
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
LIBS:ina300
LIBS:lm5176
LIBS:lp38692-3v3
LIBS:lp38692-5v
LIBS:lt1370
LIBS:ltc4412
LIBS:p9221
LIBS:tps562201
LIBS:tps565201
LIBS:Fuse_1A
LIBS:Fuse_5A
LIBS:lm3480
LIBS:ab2_ina226
LIBS:tca9803
LIBS:lm75
LIBS:p9221R1
LIBS:q_nmos_dgs_special
LIBS:q_pmos_dgs_special
LIBS:d_special
LIBS:main-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2840 3370 0    60   Input ~ 0
INPUT_POWERBUS+
Text HLabel 2860 3775 0    60   Input ~ 0
INPUT_POWERBUS-
Text HLabel 9555 3775 2    60   Output ~ 0
OUTPUT_POWERBUS_-
Text HLabel 2855 4765 0    60   BiDi ~ 0
BMS_POWERBUS_+
Text HLabel 2860 5180 0    60   BiDi ~ 0
BMS_POWERBUS_-
$Comp
L LM3480-3.3 U7
U 1 1 5B042EE4
P 8965 2165
F 0 "U7" H 8815 2290 50  0000 C CNN
F 1 "LM3480-3.3" H 8965 2290 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8965 2390 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm3480.pdf" H 8965 2165 50  0001 C CNN
	1    8965 2165
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR050
U 1 1 5B042F71
P 10625 2545
F 0 "#PWR050" H 10625 2295 50  0001 C CNN
F 1 "GND" H 10625 2395 50  0000 C CNN
F 2 "" H 10625 2545 50  0001 C CNN
F 3 "" H 10625 2545 50  0001 C CNN
	1    10625 2545
	1    0    0    -1  
$EndComp
$Comp
L device:C C26
U 1 1 5B042FF1
P 9615 2360
F 0 "C26" H 9640 2460 50  0000 L CNN
F 1 ".1u" H 9640 2260 50  0000 L CNN
F 2 "Capacitors_SMD:C_0201" H 9653 2210 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/445/885012105010-610995.pdf" H 9615 2360 50  0001 C CNN
	1    9615 2360
	1    0    0    -1  
$EndComp
$Comp
L device:C C25
U 1 1 5B043032
P 8400 2350
F 0 "C25" H 8425 2450 50  0000 L CNN
F 1 "4.7u" H 8425 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8438 2200 50  0001 C CNN
F 3 "https://nl.mouser.com/ProductDetail/TDK/C2012X5R1E475M125AB?qs=sGAEpiMZZMs0AnBnWHyRQFzBYxg9rzNcTmO3p7%252baQ5A%3d" H 8400 2350 50  0001 C CNN
	1    8400 2350
	1    0    0    -1  
$EndComp
Text HLabel 9535 3370 2    60   Output ~ 0
OUTPUT_POWERBUS_+
Text Notes 8665 1670 0    60   ~ 0
LDO for internal system power
$Comp
L INA226 INA2
U 1 1 5B074E1E
P 3505 1980
F 0 "INA2" H 3505 1680 60  0000 C CNN
F 1 "INA226" H 3505 2280 60  0000 C CNN
F 2 "vssop:VSSOP-10_3x3mm_Pitch0.5mm" H 3505 1980 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina226.pdf" H 3505 1980 60  0001 C CNN
	1    3505 1980
	1    0    0    -1  
$EndComp
Text HLabel 3105 1880 0    60   BiDi ~ 0
sda_smbus
Text HLabel 3105 1980 0    60   Input ~ 0
scl_smbus
Text HLabel 2230 2080 0    60   Output ~ 0
bus_alert
$Comp
L GND #PWR051
U 1 1 5B07608F
P 3275 2395
F 0 "#PWR051" H 3275 2145 50  0001 C CNN
F 1 "GND" H 3275 2245 50  0000 C CNN
F 2 "" H 3275 2395 50  0001 C CNN
F 3 "" H 3275 2395 50  0001 C CNN
	1    3275 2395
	1    0    0    -1  
$EndComp
Text Notes 3715 1275 0    60   ~ 0
Bus monitor
$Comp
L R R18
U 1 1 5B086567
P 4310 3070
F 0 "R18" V 4390 3070 50  0000 C CNN
F 1 "10" V 4310 3070 50  0000 C CNN
F 2 "Resistors_SMD:R_0201" V 4240 3070 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/219/RK73H-5715.pdf" H 4310 3070 50  0001 C CNN
	1    4310 3070
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5B0866A6
P 4840 3070
F 0 "R20" V 4920 3070 50  0000 C CNN
F 1 "10" V 4840 3070 50  0000 C CNN
F 2 "Resistors_SMD:R_0201" V 4770 3070 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/219/RK73H-5715.pdf" H 4840 3070 50  0001 C CNN
	1    4840 3070
	1    0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 5B0867F1
P 4590 2825
F 0 "C24" H 4615 2925 50  0000 L CNN
F 1 ".1u" H 4615 2725 50  0000 L CNN
F 2 "Capacitors_SMD:C_0201" H 4628 2675 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/445/885012105010-610995.pdf" H 4590 2825 50  0001 C CNN
	1    4590 2825
	0    -1   1    0   
$EndComp
$Comp
L PWR_FLAG #FLG052
U 1 1 5B08F7F6
P 3045 3370
F 0 "#FLG052" H 3045 3445 50  0001 C CNN
F 1 "PWR_FLAG" H 3045 3520 50  0000 C CNN
F 2 "" H 3045 3370 50  0001 C CNN
F 3 "" H 3045 3370 50  0001 C CNN
	1    3045 3370
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG053
U 1 1 5B08F980
P 3920 3775
F 0 "#FLG053" H 3920 3850 50  0001 C CNN
F 1 "PWR_FLAG" H 3920 3925 50  0000 C CNN
F 2 "" H 3920 3775 50  0001 C CNN
F 3 "" H 3920 3775 50  0001 C CNN
	1    3920 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	2860 5180 5860 5180
Wire Wire Line
	8965 2545 8965 2465
Connection ~ 8965 2545
Wire Wire Line
	2860 3775 9555 3775
Wire Wire Line
	3905 1880 4310 1880
Wire Wire Line
	3905 1980 4840 1980
Wire Wire Line
	3905 2390 3905 2080
Wire Wire Line
	3105 2390 3905 2390
Wire Wire Line
	3275 2390 3275 2395
Connection ~ 3905 2180
Wire Wire Line
	3105 2390 3105 2180
Connection ~ 3275 2390
Wire Wire Line
	8295 2545 10625 2545
Wire Wire Line
	4440 2825 4310 2825
Connection ~ 4310 2825
Connection ~ 4840 2825
Wire Wire Line
	4310 1880 4310 2920
Wire Wire Line
	2840 3370 4445 3370
Wire Wire Line
	4745 3370 6530 3370
Connection ~ 3920 3775
Connection ~ 3045 3370
Wire Wire Line
	6930 3370 9535 3370
Wire Wire Line
	6730 3670 6730 3775
Connection ~ 6730 3775
Wire Wire Line
	5860 5180 5860 3775
Connection ~ 5860 3775
$Comp
L R R19
U 1 1 5B0D583A
P 4595 3370
F 0 "R19" V 4675 3370 50  0000 C CNN
F 1 "5m" V 4595 3370 50  0000 C CNN
F 2 "Resistors_SMD:R_2010" V 4525 3370 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/447/PYu-PE_521_RoHS_L_5-1077989.pdf" H 4595 3370 50  0001 C CNN
	1    4595 3370
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4310 3220 4310 3370
Connection ~ 4310 3370
Wire Wire Line
	4840 3220 4840 3370
Connection ~ 4840 3370
$Comp
L L L12
U 1 1 5B192AD6
P 8145 2165
F 0 "L12" V 8095 2165 50  0000 C CNN
F 1 "270n" V 8220 2165 50  0000 C CNN
F 2 "Inductors_SMD:L_1210_HandSoldering" H 8145 2165 50  0001 C CNN
F 3 "https://nl.mouser.com/ProductDetail/Taiyo-Yuden/BRL3225TR27M?qs=sGAEpiMZZMsg%252by3WlYCkU5iuzh4MJmq0a1k53SaaGzA%3d" H 8145 2165 50  0001 C CNN
	1    8145 2165
	0    -1   -1   0   
$EndComp
$Comp
L C C38
U 1 1 5B192B47
P 7840 2340
F 0 "C38" H 7865 2440 50  0000 L CNN
F 1 "4.7u" H 7865 2240 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7878 2190 50  0001 C CNN
F 3 "https://nl.mouser.com/ProductDetail/TDK/C2012X5R1E475M125AB?qs=sGAEpiMZZMs0AnBnWHyRQFzBYxg9rzNcTmO3p7%252baQ5A%3d" H 7840 2340 50  0001 C CNN
	1    7840 2340
	1    0    0    -1  
$EndComp
$Comp
L C C57
U 1 1 5B192B9A
P 9990 2355
F 0 "C57" H 10015 2455 50  0000 L CNN
F 1 "10u" H 10015 2255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10028 2205 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/212/KEM_C1006_X5R_SMD-1103249.pdf" H 9990 2355 50  0001 C CNN
	1    9990 2355
	1    0    0    -1  
$EndComp
Wire Wire Line
	7445 2545 7995 2545
Wire Wire Line
	7840 2545 7840 2490
Wire Wire Line
	7840 2190 7840 2165
Wire Wire Line
	7100 2165 7995 2165
Wire Wire Line
	8295 2165 8665 2165
Wire Wire Line
	8400 2165 8400 2200
Wire Wire Line
	8400 2500 8400 2545
Connection ~ 8400 2545
Connection ~ 8400 2165
Wire Wire Line
	9265 2165 10625 2165
Wire Wire Line
	9990 2165 9990 2205
Wire Wire Line
	9615 2210 9615 2165
Connection ~ 9615 2165
Wire Wire Line
	9615 2510 9615 2545
Connection ~ 9615 2545
Wire Wire Line
	9990 2505 9990 2545
Connection ~ 9990 2545
Connection ~ 9990 2165
$Comp
L +3.3V #PWR054
U 1 1 5B194737
P 10625 2165
F 0 "#PWR054" H 10625 2015 50  0001 C CNN
F 1 "+3.3V" H 10625 2305 50  0000 C CNN
F 2 "" H 10625 2165 50  0001 C CNN
F 3 "" H 10625 2165 50  0001 C CNN
	1    10625 2165
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2165 7100 3370
Connection ~ 7100 3370
Connection ~ 7840 2165
Wire Wire Line
	7445 2545 7445 3775
Connection ~ 7445 3775
Connection ~ 7840 2545
$Comp
L +3.3V #PWR055
U 1 1 5B19581B
P 3045 1015
F 0 "#PWR055" H 3045 865 50  0001 C CNN
F 1 "+3.3V" H 3045 1155 50  0000 C CNN
F 2 "" H 3045 1015 50  0001 C CNN
F 3 "" H 3045 1015 50  0001 C CNN
	1    3045 1015
	1    0    0    -1  
$EndComp
Wire Wire Line
	3045 1015 3045 1780
Wire Wire Line
	3045 1780 3105 1780
$Comp
L D_TVS_ALT D23
U 1 1 5B1A2660
P 3825 4945
F 0 "D23" H 3825 5045 50  0000 C CNN
F 1 "D_TVS_ALT" H 3825 4845 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323" H 3825 4945 50  0001 C CNN
F 3 "" H 3825 4945 50  0001 C CNN
	1    3825 4945
	0    1    1    0   
$EndComp
Wire Wire Line
	3825 5095 3825 5180
Connection ~ 3825 5180
Wire Wire Line
	3825 4795 3825 4765
Connection ~ 3825 4765
Wire Wire Line
	2855 4765 5500 4765
Wire Wire Line
	5500 4765 5500 3370
Connection ~ 5500 3370
Text Notes 10675 2565 0    60   ~ 0
0V intern
$Comp
L PWR_FLAG #FLG056
U 1 1 5B1B0E72
P 10410 2545
F 0 "#FLG056" H 10410 2620 50  0001 C CNN
F 1 "PWR_FLAG" H 10410 2695 50  0000 C CNN
F 2 "" H 10410 2545 50  0001 C CNN
F 3 "" H 10410 2545 50  0001 C CNN
	1    10410 2545
	1    0    0    -1  
$EndComp
Connection ~ 10410 2545
$Comp
L PWR_FLAG #FLG057
U 1 1 5B1B10A2
P 10280 2165
F 0 "#FLG057" H 10280 2240 50  0001 C CNN
F 1 "PWR_FLAG" H 10280 2315 50  0000 C CNN
F 2 "" H 10280 2165 50  0001 C CNN
F 3 "" H 10280 2165 50  0001 C CNN
	1    10280 2165
	1    0    0    -1  
$EndComp
Connection ~ 10280 2165
$Comp
L L L7
U 1 1 5B188A70
P 8145 2545
F 0 "L7" V 8095 2545 50  0000 C CNN
F 1 "270n" V 8220 2545 50  0000 C CNN
F 2 "Inductors_SMD:L_1210_HandSoldering" H 8145 2545 50  0001 C CNN
F 3 "https://nl.mouser.com/ProductDetail/Taiyo-Yuden/BRL3225TR27M?qs=sGAEpiMZZMsg%252by3WlYCkU5iuzh4MJmq0a1k53SaaGzA%3d" H 8145 2545 50  0001 C CNN
	1    8145 2545
	0    -1   -1   0   
$EndComp
$Comp
L Q_PMOS_GDS Q7
U 1 1 5B2242CC
P 6730 3470
F 0 "Q7" H 6930 3520 50  0000 L CNN
F 1 "IPD85P04-07" H 6930 3420 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-3_TabPin2" H 6930 3570 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/196/IPD85P04P4-07_DS_10-349929.pdf" H 6730 3470 50  0001 C CNN
	1    6730 3470
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5B23ADE4
P 2375 1885
F 0 "R?" V 2455 1885 50  0000 C CNN
F 1 "10k" V 2375 1885 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2305 1885 50  0001 C CNN
F 3 "" H 2375 1885 50  0001 C CNN
	1    2375 1885
	1    0    0    -1  
$EndComp
Wire Wire Line
	2230 2080 3105 2080
Wire Wire Line
	2375 2035 2375 2080
Connection ~ 2375 2080
Wire Wire Line
	2375 1735 2375 1695
Wire Wire Line
	2375 1695 3045 1695
Connection ~ 3045 1695
$Comp
L C C?
U 1 1 5B23B344
P 3305 1240
F 0 "C?" H 3330 1340 50  0000 L CNN
F 1 ".1u" H 3330 1140 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3343 1090 50  0001 C CNN
F 3 "" H 3305 1240 50  0001 C CNN
	1    3305 1240
	1    0    0    -1  
$EndComp
Wire Wire Line
	4740 2825 4840 2825
Wire Wire Line
	3905 1780 4035 1780
Wire Wire Line
	4035 1780 4035 1980
Wire Wire Line
	4840 1980 4840 2920
Connection ~ 4035 1980
$Comp
L power1:GND #PWR?
U 1 1 5B23C9F4
P 3305 1390
F 0 "#PWR?" H 3305 1140 50  0001 C CNN
F 1 "GND" H 3305 1240 50  0000 C CNN
F 2 "" H 3305 1390 50  0001 C CNN
F 3 "" H 3305 1390 50  0001 C CNN
	1    3305 1390
	1    0    0    -1  
$EndComp
Wire Wire Line
	3305 1090 3305 1045
Wire Wire Line
	3305 1045 3045 1045
Connection ~ 3045 1045
$EndSCHEMATC
