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
Sheet 4 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R50
U 1 1 5B031077
P 8240 1575
F 0 "R50" V 8320 1575 50  0000 C CNN
F 1 "10" V 8240 1575 50  0000 C CNN
F 2 "" V 8170 1575 50  0001 C CNN
F 3 "" H 8240 1575 50  0001 C CNN
	1    8240 1575
	1    0    0    -1  
$EndComp
$Comp
L R R56
U 1 1 5B031C7E
P 8640 1575
F 0 "R56" V 8720 1575 50  0000 C CNN
F 1 "10" V 8640 1575 50  0000 C CNN
F 2 "" V 8570 1575 50  0001 C CNN
F 3 "" H 8640 1575 50  0001 C CNN
	1    8640 1575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR056
U 1 1 5B036880
P 9685 2435
F 0 "#PWR056" H 9685 2185 50  0001 C CNN
F 1 "GND" H 9685 2285 50  0000 C CNN
F 2 "" H 9685 2435 50  0001 C CNN
F 3 "" H 9685 2435 50  0001 C CNN
	1    9685 2435
	1    0    0    -1  
$EndComp
$Comp
L Polyfuse F5
U 1 1 5B03B23D
P 9265 1275
F 0 "F5" V 9165 1275 50  0000 C CNN
F 1 "Polyfuse" V 9365 1275 50  0000 C CNN
F 2 "" H 9315 1075 50  0001 L CNN
F 3 "" H 9265 1275 50  0001 C CNN
	1    9265 1275
	0    1    1    0   
$EndComp
$Comp
L R R61
U 1 1 5B040F1B
P 9655 1425
F 0 "R61" V 9735 1425 50  0000 C CNN
F 1 "150k" V 9655 1425 50  0000 C CNN
F 2 "" V 9585 1425 50  0001 C CNN
F 3 "" H 9655 1425 50  0001 C CNN
	1    9655 1425
	1    0    0    -1  
$EndComp
$Comp
L R R62
U 1 1 5B041002
P 9655 1820
F 0 "R62" V 9735 1820 50  0000 C CNN
F 1 "51k" V 9655 1820 50  0000 C CNN
F 2 "" V 9585 1820 50  0001 C CNN
F 3 "" H 9655 1820 50  0001 C CNN
	1    9655 1820
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR057
U 1 1 5B0415AE
P 9655 1970
F 0 "#PWR057" H 9655 1720 50  0001 C CNN
F 1 "GND" H 9655 1820 50  0000 C CNN
F 2 "" H 9655 1970 50  0001 C CNN
F 3 "" H 9655 1970 50  0001 C CNN
	1    9655 1970
	1    0    0    -1  
$EndComp
Text HLabel 9655 1620 2    60   Output ~ 0
16v_fuse
$Comp
L R R59
U 1 1 5B0438FA
P 9560 5205
F 0 "R59" V 9640 5205 50  0000 C CNN
F 1 "100k" V 9560 5205 50  0000 C CNN
F 2 "" V 9490 5205 50  0001 C CNN
F 3 "" H 9560 5205 50  0001 C CNN
	1    9560 5205
	1    0    0    -1  
$EndComp
$Comp
L R R60
U 1 1 5B043900
P 9560 5600
F 0 "R60" V 9640 5600 50  0000 C CNN
F 1 "100k" V 9560 5600 50  0000 C CNN
F 2 "" V 9490 5600 50  0001 C CNN
F 3 "" H 9560 5600 50  0001 C CNN
	1    9560 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR058
U 1 1 5B043908
P 9560 5750
F 0 "#PWR058" H 9560 5500 50  0001 C CNN
F 1 "GND" H 9560 5600 50  0000 C CNN
F 2 "" H 9560 5750 50  0001 C CNN
F 3 "" H 9560 5750 50  0001 C CNN
	1    9560 5750
	1    0    0    -1  
$EndComp
Text HLabel 9560 5400 2    60   Output ~ 0
3.3v_fuse
$Comp
L Polyfuse F1
U 1 1 5B044399
P 9170 3175
F 0 "F1" V 9070 3175 50  0000 C CNN
F 1 "Polyfuse" V 9270 3175 50  0000 C CNN
F 2 "" H 9220 2975 50  0001 L CNN
F 3 "" H 9170 3175 50  0001 C CNN
	1    9170 3175
	0    1    1    0   
$EndComp
$Comp
L R R57
U 1 1 5B0443A1
P 9560 3325
F 0 "R57" V 9640 3325 50  0000 C CNN
F 1 "100k" V 9560 3325 50  0000 C CNN
F 2 "" V 9490 3325 50  0001 C CNN
F 3 "" H 9560 3325 50  0001 C CNN
	1    9560 3325
	1    0    0    -1  
$EndComp
$Comp
L R R58
U 1 1 5B0443A7
P 9560 3720
F 0 "R58" V 9640 3720 50  0000 C CNN
F 1 "100k" V 9560 3720 50  0000 C CNN
F 2 "" V 9490 3720 50  0001 C CNN
F 3 "" H 9560 3720 50  0001 C CNN
	1    9560 3720
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR059
U 1 1 5B0443AF
P 9560 3870
F 0 "#PWR059" H 9560 3620 50  0001 C CNN
F 1 "GND" H 9560 3720 50  0000 C CNN
F 2 "" H 9560 3870 50  0001 C CNN
F 3 "" H 9560 3870 50  0001 C CNN
	1    9560 3870
	1    0    0    -1  
$EndComp
Text HLabel 9560 3520 2    60   Output ~ 0
5v_fuse
Text HLabel 7590 4005 0    60   BiDi ~ 0
SDA_SMBUS
Text HLabel 7590 4105 0    60   BiDi ~ 0
SCL_SMBUS
$Comp
L R_Shunt R53
U 1 1 5B0512B1
P 8405 1275
F 0 "R53" V 8230 1275 50  0000 C CNN
F 1 "1.5m" V 8305 1275 50  0000 C CNN
F 2 "" V 8335 1275 50  0001 C CNN
F 3 "" H 8405 1275 50  0001 C CNN
	1    8405 1275
	0    1    1    0   
$EndComp
$Comp
L C C38
U 1 1 5B031FF9
P 8445 1725
F 0 "C38" H 8470 1825 50  0000 L CNN
F 1 "1u" H 8470 1625 50  0000 L CNN
F 2 "" H 8483 1575 50  0001 C CNN
F 3 "" H 8445 1725 50  0001 C CNN
	1    8445 1725
	0    1    1    0   
$EndComp
$Comp
L INA226 INA1
U 1 1 5B05B7DD
P 8345 4105
F 0 "INA1" H 8345 3805 60  0000 C CNN
F 1 "INA226" H 8345 4405 60  0000 C CNN
F 2 "" H 8345 4105 60  0000 C CNN
F 3 "" H 8345 4105 60  0000 C CNN
	1    8345 4105
	1    0    0    -1  
$EndComp
$Comp
L R R48
U 1 1 5B05B7E3
P 8145 3475
F 0 "R48" V 8225 3475 50  0000 C CNN
F 1 "1k" V 8145 3475 50  0000 C CNN
F 2 "" V 8075 3475 50  0001 C CNN
F 3 "" H 8145 3475 50  0001 C CNN
	1    8145 3475
	1    0    0    -1  
$EndComp
$Comp
L R R54
U 1 1 5B05B7E9
P 8545 3475
F 0 "R54" V 8625 3475 50  0000 C CNN
F 1 "1k" V 8545 3475 50  0000 C CNN
F 2 "" V 8475 3475 50  0001 C CNN
F 3 "" H 8545 3475 50  0001 C CNN
	1    8545 3475
	1    0    0    -1  
$EndComp
$Comp
L R R44
U 1 1 5B05B7EF
P 7800 3955
F 0 "R44" V 7880 3955 50  0000 C CNN
F 1 "10k" V 7800 3955 50  0000 C CNN
F 2 "" V 7730 3955 50  0001 C CNN
F 3 "" H 7800 3955 50  0001 C CNN
	1    7800 3955
	1    0    0    -1  
$EndComp
$Comp
L R R46
U 1 1 5B05B7F5
P 7890 3855
F 0 "R46" V 7970 3855 50  0000 C CNN
F 1 "10k" V 7890 3855 50  0000 C CNN
F 2 "" V 7820 3855 50  0001 C CNN
F 3 "" H 7890 3855 50  0001 C CNN
	1    7890 3855
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR060
U 1 1 5B05B7FB
P 7890 3705
F 0 "#PWR060" H 7890 3555 50  0001 C CNN
F 1 "+3.3V" H 7890 3845 50  0000 C CNN
F 2 "" H 7890 3705 50  0001 C CNN
F 3 "" H 7890 3705 50  0001 C CNN
	1    7890 3705
	1    0    0    -1  
$EndComp
NoConn ~ 7945 4205
$Comp
L GND #PWR061
U 1 1 5B05B802
P 7945 4470
F 0 "#PWR061" H 7945 4220 50  0001 C CNN
F 1 "GND" H 7945 4320 50  0000 C CNN
F 2 "" H 7945 4470 50  0001 C CNN
F 3 "" H 7945 4470 50  0001 C CNN
	1    7945 4470
	1    0    0    -1  
$EndComp
$Comp
L Polyfuse F2
U 1 1 5B05B808
P 9170 3175
F 0 "F2" V 9070 3175 50  0000 C CNN
F 1 "Polyfuse" V 9270 3175 50  0000 C CNN
F 2 "" H 9220 2975 50  0001 L CNN
F 3 "" H 9170 3175 50  0001 C CNN
	1    9170 3175
	0    1    1    0   
$EndComp
$Comp
L R_Shunt R51
U 1 1 5B05B80E
P 8310 3175
F 0 "R51" V 8135 3175 50  0000 C CNN
F 1 "5m R_Shunt" V 8210 3175 50  0000 C CNN
F 2 "" V 8240 3175 50  0001 C CNN
F 3 "" H 8310 3175 50  0001 C CNN
	1    8310 3175
	0    1    1    0   
$EndComp
$Comp
L C C36
U 1 1 5B05B814
P 8350 3625
F 0 "C36" H 8375 3725 50  0000 L CNN
F 1 "C" H 8375 3525 50  0000 L CNN
F 2 "" H 8388 3475 50  0001 C CNN
F 3 "" H 8350 3625 50  0001 C CNN
	1    8350 3625
	0    1    1    0   
$EndComp
$Comp
L Polyfuse F3
U 1 1 5B05CAEB
P 9170 5055
F 0 "F3" V 9070 5055 50  0000 C CNN
F 1 "Polyfuse" V 9270 5055 50  0000 C CNN
F 2 "" H 9220 4855 50  0001 L CNN
F 3 "" H 9170 5055 50  0001 C CNN
	1    9170 5055
	0    1    1    0   
$EndComp
Text HLabel 7590 5885 0    60   BiDi ~ 0
SDA_SMBUS
Text HLabel 7590 5985 0    60   BiDi ~ 0
SCL_SMBUS
$Comp
L INA226 INA2
U 1 1 5B05CAF3
P 8345 5985
F 0 "INA2" H 8345 5685 60  0000 C CNN
F 1 "INA226" H 8345 6285 60  0000 C CNN
F 2 "" H 8345 5985 60  0000 C CNN
F 3 "" H 8345 5985 60  0000 C CNN
	1    8345 5985
	1    0    0    -1  
$EndComp
$Comp
L R R49
U 1 1 5B05CAF9
P 8145 5355
F 0 "R49" V 8225 5355 50  0000 C CNN
F 1 "1k" V 8145 5355 50  0000 C CNN
F 2 "" V 8075 5355 50  0001 C CNN
F 3 "" H 8145 5355 50  0001 C CNN
	1    8145 5355
	1    0    0    -1  
$EndComp
$Comp
L R R55
U 1 1 5B05CAFF
P 8545 5355
F 0 "R55" V 8625 5355 50  0000 C CNN
F 1 "1k" V 8545 5355 50  0000 C CNN
F 2 "" V 8475 5355 50  0001 C CNN
F 3 "" H 8545 5355 50  0001 C CNN
	1    8545 5355
	1    0    0    -1  
$EndComp
$Comp
L R R45
U 1 1 5B05CB05
P 7800 5835
F 0 "R45" V 7880 5835 50  0000 C CNN
F 1 "10k" V 7800 5835 50  0000 C CNN
F 2 "" V 7730 5835 50  0001 C CNN
F 3 "" H 7800 5835 50  0001 C CNN
	1    7800 5835
	1    0    0    -1  
$EndComp
$Comp
L R R47
U 1 1 5B05CB0B
P 7890 5735
F 0 "R47" V 7970 5735 50  0000 C CNN
F 1 "10k" V 7890 5735 50  0000 C CNN
F 2 "" V 7820 5735 50  0001 C CNN
F 3 "" H 7890 5735 50  0001 C CNN
	1    7890 5735
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR062
U 1 1 5B05CB11
P 7890 5585
F 0 "#PWR062" H 7890 5435 50  0001 C CNN
F 1 "+3.3V" H 7890 5725 50  0000 C CNN
F 2 "" H 7890 5585 50  0001 C CNN
F 3 "" H 7890 5585 50  0001 C CNN
	1    7890 5585
	1    0    0    -1  
$EndComp
NoConn ~ 7945 6085
$Comp
L GND #PWR063
U 1 1 5B05CB18
P 7945 6350
F 0 "#PWR063" H 7945 6100 50  0001 C CNN
F 1 "GND" H 7945 6200 50  0000 C CNN
F 2 "" H 7945 6350 50  0001 C CNN
F 3 "" H 7945 6350 50  0001 C CNN
	1    7945 6350
	1    0    0    -1  
$EndComp
$Comp
L Polyfuse F4
U 1 1 5B05CB1E
P 9170 5055
F 0 "F4" V 9070 5055 50  0000 C CNN
F 1 "Polyfuse" V 9270 5055 50  0000 C CNN
F 2 "" H 9220 4855 50  0001 L CNN
F 3 "" H 9170 5055 50  0001 C CNN
	1    9170 5055
	0    1    1    0   
$EndComp
$Comp
L R_Shunt R52
U 1 1 5B05CB24
P 8310 5055
F 0 "R52" V 8135 5055 50  0000 C CNN
F 1 "5m R_Shunt" V 8210 5055 50  0000 C CNN
F 2 "" V 8240 5055 50  0001 C CNN
F 3 "" H 8310 5055 50  0001 C CNN
	1    8310 5055
	0    1    1    0   
$EndComp
$Comp
L C C37
U 1 1 5B05CB2A
P 8350 5505
F 0 "C37" H 8375 5605 50  0000 L CNN
F 1 "C" H 8375 5405 50  0000 L CNN
F 2 "" H 8388 5355 50  0001 C CNN
F 3 "" H 8350 5505 50  0001 C CNN
	1    8350 5505
	0    1    1    0   
$EndComp
Text HLabel 10400 1275 2    60   Output ~ 0
16V
$Comp
L C Css1
U 1 1 5B053DD4
P 1540 2745
F 0 "Css1" H 1490 2830 50  0000 L CNN
F 1 "15nF" H 1460 2670 50  0000 L CNN
F 2 "" H 1578 2595 50  0001 C CNN
F 3 "" H 1540 2745 50  0001 C CNN
	1    1540 2745
	0    1    1    0   
$EndComp
$Comp
L GND #PWR064
U 1 1 5B053DDB
P 1390 2745
F 0 "#PWR064" H 1390 2495 50  0001 C CNN
F 1 "GND" H 1390 2595 50  0000 C CNN
F 2 "" H 1390 2745 50  0001 C CNN
F 3 "" H 1390 2745 50  0001 C CNN
	1    1390 2745
	0    1    1    0   
$EndComp
$Comp
L GND #PWR065
U 1 1 5B053DE1
P 3735 2500
F 0 "#PWR065" H 3735 2250 50  0001 C CNN
F 1 "GND" H 3735 2350 50  0000 C CNN
F 2 "" H 3735 2500 50  0001 C CNN
F 3 "" H 3735 2500 50  0001 C CNN
	1    3735 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR066
U 1 1 5B053DE7
P 3430 3305
F 0 "#PWR066" H 3430 3055 50  0001 C CNN
F 1 "GND" H 3430 3155 50  0000 C CNN
F 2 "" H 3430 3305 50  0001 C CNN
F 3 "" H 3430 3305 50  0001 C CNN
	1    3430 3305
	1    0    0    -1  
$EndComp
$Comp
L R Rt1
U 1 1 5B053DED
P 1550 2300
F 0 "Rt1" V 1465 2305 50  0000 C CNN
F 1 "23.2k" V 1550 2300 50  0000 C CNN
F 2 "" V 1480 2300 50  0001 C CNN
F 3 "" H 1550 2300 50  0001 C CNN
	1    1550 2300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR067
U 1 1 5B053DF4
P 1400 2300
F 0 "#PWR067" H 1400 2050 50  0001 C CNN
F 1 "GND" H 1400 2150 50  0000 C CNN
F 2 "" H 1400 2300 50  0001 C CNN
F 3 "" H 1400 2300 50  0001 C CNN
	1    1400 2300
	0    1    1    0   
$EndComp
$Comp
L R Rmode1
U 1 1 5B053DFA
P 1990 2095
F 0 "Rmode1" V 1915 2100 50  0000 C CNN
F 1 "93.1k" V 1990 2095 50  0000 C CNN
F 2 "" V 1920 2095 50  0001 C CNN
F 3 "" H 1990 2095 50  0001 C CNN
	1    1990 2095
	0    1    1    0   
$EndComp
$Comp
L GND #PWR068
U 1 1 5B053E01
P 1840 2095
F 0 "#PWR068" H 1840 1845 50  0001 C CNN
F 1 "GND" H 1840 1945 50  0000 C CNN
F 2 "" H 1840 2095 50  0001 C CNN
F 3 "" H 1840 2095 50  0001 C CNN
	1    1840 2095
	1    0    0    -1  
$EndComp
$Comp
L C Cin1
U 1 1 5B053E1B
P 1230 955
F 0 "Cin1" H 1175 1025 50  0000 L CNN
F 1 "10uF" H 1160 885 50  0000 L CNN
F 2 "" H 1268 805 50  0001 C CNN
F 3 "" H 1230 955 50  0001 C CNN
	1    1230 955 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR069
U 1 1 5B053E22
P 940 1105
F 0 "#PWR069" H 940 855 50  0001 C CNN
F 1 "GND" H 940 955 50  0000 C CNN
F 2 "" H 940 1105 50  0001 C CNN
F 3 "" H 940 1105 50  0001 C CNN
	1    940  1105
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 M1
U 1 1 5B053E28
P 4590 1755
F 0 "M1" H 4790 1830 50  0000 L CNN
F 1 "CSD17310Q5A" H 4415 1915 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 4790 1680 50  0001 L CIN
F 3 "" H 4590 1755 50  0001 L CNN
	1    4590 1755
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 M2
U 1 1 5B053E2F
P 4590 2155
F 0 "M2" H 4790 2230 50  0000 L CNN
F 1 "CSD18514Q5A" H 4450 1995 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 4790 2080 50  0001 L CIN
F 3 "" H 4590 2155 50  0001 L CNN
	1    4590 2155
	1    0    0    -1  
$EndComp
$Comp
L 2N7000 M3
U 1 1 5B053E36
P 5630 1755
F 0 "M3" H 5830 1830 50  0000 L CNN
F 1 "CSD16321Q5" H 5570 1960 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 5830 1680 50  0001 L CIN
F 3 "" H 5630 1755 50  0001 L CNN
	1    5630 1755
	-1   0    0    -1  
$EndComp
$Comp
L 2N7000 M4
U 1 1 5B053E3D
P 5630 2155
F 0 "M4" H 5830 2230 50  0000 L CNN
F 1 "CSD18511Q5A" H 5585 2005 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 5830 2080 50  0001 L CIN
F 3 "" H 5630 2155 50  0001 L CNN
	1    5630 2155
	-1   0    0    -1  
$EndComp
$Comp
L C Cboot1
U 1 1 5B053E44
P 3410 1845
F 0 "Cboot1" H 3280 1920 50  0000 L CNN
F 1 "100nF" H 3275 1770 50  0000 L CNN
F 2 "" H 3448 1695 50  0001 C CNN
F 3 "" H 3410 1845 50  0001 C CNN
	1    3410 1845
	1    0    0    -1  
$EndComp
$Comp
L D_Zener Dboot1
U 1 1 5B053E4B
P 3740 3495
F 0 "Dboot1" H 3805 3595 50  0000 C CNN
F 1 "Zener" H 3780 3405 50  0000 C CNN
F 2 "" H 3740 3495 50  0001 C CNN
F 3 "" H 3740 3495 50  0001 C CNN
	1    3740 3495
	1    0    0    -1  
$EndComp
Text GLabel 3920 3495 2    60   Input ~ 0
VCC
$Comp
L L L3
U 1 1 5B053E53
P 5125 1955
F 0 "L3" V 5075 1955 50  0000 C CNN
F 1 "2.20uH" V 5200 1955 50  0000 C CNN
F 2 "" H 5125 1955 50  0001 C CNN
F 3 "" H 5125 1955 50  0001 C CNN
	1    5125 1955
	0    1    1    0   
$EndComp
$Comp
L C Ccs1
U 1 1 5B053E5A
P 3765 3035
F 0 "Ccs1" H 3790 3135 50  0000 L CNN
F 1 "47pF" H 3790 2935 50  0000 L CNN
F 2 "" H 3803 2885 50  0001 C CNN
F 3 "" H 3765 3035 50  0001 C CNN
	1    3765 3035
	1    0    0    -1  
$EndComp
$Comp
L R Rcsp1
U 1 1 5B053E61
P 4095 2885
F 0 "Rcsp1" V 4175 2885 50  0000 C CNN
F 1 "100" V 4095 2885 50  0000 C CNN
F 2 "" V 4025 2885 50  0001 C CNN
F 3 "" H 4095 2885 50  0001 C CNN
	1    4095 2885
	0    1    1    0   
$EndComp
$Comp
L R Rcsg1
U 1 1 5B053E68
P 4095 3185
F 0 "Rcsg1" V 4175 3185 50  0000 C CNN
F 1 "100" V 4095 3185 50  0000 C CNN
F 2 "" V 4025 3185 50  0001 C CNN
F 3 "" H 4095 3185 50  0001 C CNN
	1    4095 3185
	0    1    1    0   
$EndComp
$Comp
L R Rsense1
U 1 1 5B053E6F
P 4245 3035
F 0 "Rsense1" V 4325 3035 50  0000 C CNN
F 1 "6m" V 4245 3035 50  0000 C CNN
F 2 "" V 4175 3035 50  0001 C CNN
F 3 "" H 4245 3035 50  0001 C CNN
	1    4245 3035
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR070
U 1 1 5B053E76
P 4245 3185
F 0 "#PWR070" H 4245 2935 50  0001 C CNN
F 1 "GND" H 4245 3035 50  0000 C CNN
F 2 "" H 4245 3185 50  0001 C CNN
F 3 "" H 4245 3185 50  0001 C CNN
	1    4245 3185
	1    0    0    -1  
$EndComp
$Comp
L C Cboot2
U 1 1 5B053E7C
P 4215 2635
F 0 "Cboot2" H 4080 2720 50  0000 L CNN
F 1 "100nF" H 4115 2565 50  0000 L CNN
F 2 "" H 4253 2485 50  0001 C CNN
F 3 "" H 4215 2635 50  0001 C CNN
	1    4215 2635
	1    0    0    -1  
$EndComp
$Comp
L D_Zener Dboot2
U 1 1 5B053E83
P 4480 2485
F 0 "Dboot2" H 4480 2585 50  0000 C CNN
F 1 "Zener" H 4480 2385 50  0000 C CNN
F 2 "" H 4480 2485 50  0001 C CNN
F 3 "" H 4480 2485 50  0001 C CNN
	1    4480 2485
	1    0    0    -1  
$EndComp
Text GLabel 5590 2485 2    60   Input ~ 0
VCC
$Comp
L C Cslope1
U 1 1 5B053E8B
P 1540 2500
F 0 "Cslope1" H 1415 2595 50  0000 L CNN
F 1 "110pF" H 1430 2415 50  0000 L CNN
F 2 "" H 1578 2350 50  0001 C CNN
F 3 "" H 1540 2500 50  0001 C CNN
	1    1540 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR071
U 1 1 5B053E92
P 1390 2500
F 0 "#PWR071" H 1390 2250 50  0001 C CNN
F 1 "GND" H 1390 2350 50  0000 C CNN
F 2 "" H 1390 2500 50  0001 C CNN
F 3 "" H 1390 2500 50  0001 C CNN
	1    1390 2500
	0    1    1    0   
$EndComp
$Comp
L C Ccomp1
U 1 1 5B053E98
P 1365 3210
F 0 "Ccomp1" H 1225 3310 50  0000 L CNN
F 1 "91pF" H 1285 3120 50  0000 L CNN
F 2 "" H 1403 3060 50  0001 C CNN
F 3 "" H 1365 3210 50  0001 C CNN
	1    1365 3210
	1    0    0    -1  
$EndComp
$Comp
L C Ccomp2
U 1 1 5B053E9F
P 1740 3070
F 0 "Ccomp2" H 1585 3170 50  0000 L CNN
F 1 "15nF" H 1650 2970 50  0000 L CNN
F 2 "" H 1778 2920 50  0001 C CNN
F 3 "" H 1740 3070 50  0001 C CNN
	1    1740 3070
	1    0    0    -1  
$EndComp
$Comp
L R Rcomp1
U 1 1 5B053EA6
P 1740 3370
F 0 "Rcomp1" V 1820 3370 50  0000 C CNN
F 1 "10.2k" V 1740 3370 50  0000 C CNN
F 2 "" V 1670 3370 50  0001 C CNN
F 3 "" H 1740 3370 50  0001 C CNN
	1    1740 3370
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR072
U 1 1 5B053EAD
P 1555 3530
F 0 "#PWR072" H 1555 3280 50  0001 C CNN
F 1 "GND" H 1555 3380 50  0000 C CNN
F 2 "" H 1555 3530 50  0001 C CNN
F 3 "" H 1555 3530 50  0001 C CNN
	1    1555 3530
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR073
U 1 1 5B053EB3
P 1985 3340
F 0 "#PWR073" H 1985 3090 50  0001 C CNN
F 1 "GND" H 1985 3190 50  0000 C CNN
F 2 "" H 1985 3340 50  0001 C CNN
F 3 "" H 1985 3340 50  0001 C CNN
	1    1985 3340
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR074
U 1 1 5B053EB9
P 6905 1920
F 0 "#PWR074" H 6905 1670 50  0001 C CNN
F 1 "GND" H 6905 1770 50  0000 C CNN
F 2 "" H 6905 1920 50  0001 C CNN
F 3 "" H 6905 1920 50  0001 C CNN
	1    6905 1920
	1    0    0    -1  
$EndComp
$Comp
L R Rfbt1
U 1 1 5B053EBF
P 7215 1425
F 0 "Rfbt1" V 7295 1425 50  0000 C CNN
F 1 "383k" V 7215 1425 50  0000 C CNN
F 2 "" V 7145 1425 50  0001 C CNN
F 3 "" H 7215 1425 50  0001 C CNN
	1    7215 1425
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR075
U 1 1 5B053EC6
P 7645 1575
F 0 "#PWR075" H 7645 1325 50  0001 C CNN
F 1 "GND" H 7645 1425 50  0000 C CNN
F 2 "" H 7645 1575 50  0001 C CNN
F 3 "" H 7645 1575 50  0001 C CNN
	1    7645 1575
	1    0    0    -1  
$EndComp
$Comp
L R Rfbb1
U 1 1 5B053ECC
P 6905 1770
F 0 "Rfbb1" V 6820 1775 50  0000 C CNN
F 1 "20k" V 6905 1770 50  0000 C CNN
F 2 "" V 6835 1770 50  0001 C CNN
F 3 "" H 6905 1770 50  0001 C CNN
	1    6905 1770
	-1   0    0    1   
$EndComp
$Comp
L LM5176 U7
U 1 1 5B053ED3
P 2740 1695
F 0 "U7" H 2740 1695 60  0000 C CNN
F 1 "LM5176" H 2740 195 60  0000 C CNN
F 2 "Housings_SSOP:HTSSOP-28_4.4x9.7mm_Pitch0.65mm_ThermalPad" H 2740 1695 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm5176.pdf" H 2740 1695 60  0001 C CNN
	1    2740 1695
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR076
U 1 1 5B053EDA
P 2140 3185
F 0 "#PWR076" H 2140 2935 50  0001 C CNN
F 1 "GND" H 2140 3035 50  0000 C CNN
F 2 "" H 2140 3185 50  0001 C CNN
F 3 "" H 2140 3185 50  0001 C CNN
	1    2140 3185
	0    -1   -1   0   
$EndComp
$Comp
L C Coutx1
U 1 1 5B053EE0
P 5745 1435
F 0 "Coutx1" H 5610 1525 50  0000 L CNN
F 1 "22uF" H 5770 1335 50  0000 L CNN
F 2 "" H 5783 1285 50  0001 C CNN
F 3 "" H 5745 1435 50  0001 C CNN
	1    5745 1435
	1    0    0    -1  
$EndComp
$Comp
L C Coutx2
U 1 1 5B053EE7
P 5985 1435
F 0 "Coutx2" H 5875 1520 50  0000 L CNN
F 1 "22uF" H 6010 1335 50  0000 L CNN
F 2 "" H 6023 1285 50  0001 C CNN
F 3 "" H 5985 1435 50  0001 C CNN
	1    5985 1435
	1    0    0    -1  
$EndComp
$Comp
L C Coutx3
U 1 1 5B053EEE
P 6240 1435
F 0 "Coutx3" H 6145 1520 50  0000 L CNN
F 1 "22uF" H 6265 1335 50  0000 L CNN
F 2 "" H 6278 1285 50  0001 C CNN
F 3 "" H 6240 1435 50  0001 C CNN
	1    6240 1435
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR077
U 1 1 5B053EF5
P 6240 1620
F 0 "#PWR077" H 6240 1370 50  0001 C CNN
F 1 "GND" H 6240 1470 50  0000 C CNN
F 2 "" H 6240 1620 50  0001 C CNN
F 3 "" H 6240 1620 50  0001 C CNN
	1    6240 1620
	1    0    0    -1  
$EndComp
$Comp
L C Cvcc1
U 1 1 5B053EFB
P 5235 2980
F 0 "Cvcc1" H 5260 3080 50  0000 L CNN
F 1 "1uF" H 5260 2880 50  0000 L CNN
F 2 "" H 5273 2830 50  0001 C CNN
F 3 "" H 5235 2980 50  0001 C CNN
	1    5235 2980
	1    0    0    -1  
$EndComp
$Comp
L R Rpg1
U 1 1 5B053F02
P 5565 3120
F 0 "Rpg1" V 5645 3120 50  0000 C CNN
F 1 "10k" V 5565 3120 50  0000 C CNN
F 2 "" V 5495 3120 50  0001 C CNN
F 3 "" H 5565 3120 50  0001 C CNN
	1    5565 3120
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR078
U 1 1 5B053F09
P 5235 3130
F 0 "#PWR078" H 5235 2880 50  0001 C CNN
F 1 "GND" H 5235 2980 50  0000 C CNN
F 2 "" H 5235 3130 50  0001 C CNN
F 3 "" H 5235 3130 50  0001 C CNN
	1    5235 3130
	1    0    0    -1  
$EndComp
$Comp
L CP1 Cbulk1
U 1 1 5B053F0F
P 940 955
F 0 "Cbulk1" H 940 1030 50  0000 L CNN
F 1 "68uF" H 855 860 50  0000 L CNN
F 2 "" H 940 955 50  0001 C CNN
F 3 "" H 940 955 50  0001 C CNN
	1    940  955 
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky Df1
U 1 1 5B053F83
P 2140 955
F 0 "Df1" H 2140 1055 50  0000 C CNN
F 1 "Zener" H 2140 855 50  0000 C CNN
F 2 "" H 2140 955 50  0001 C CNN
F 3 "" H 2140 955 50  0001 C CNN
	1    2140 955 
	0    -1   -1   0   
$EndComp
$Comp
L R Rf1
U 1 1 5B053F8A
P 2140 1255
F 0 "Rf1" V 2060 1260 50  0000 C CNN
F 1 "10" V 2140 1255 50  0000 C CNN
F 2 "" V 2070 1255 50  0001 C CNN
F 3 "" H 2140 1255 50  0001 C CNN
	1    2140 1255
	1    0    0    -1  
$EndComp
$Comp
L C Cf1
U 1 1 5B053F91
P 2140 1560
F 0 "Cf1" H 2165 1660 50  0000 L CNN
F 1 "100nF" H 2165 1460 50  0000 L CNN
F 2 "" H 2178 1410 50  0001 C CNN
F 3 "" H 2140 1560 50  0001 C CNN
	1    2140 1560
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR079
U 1 1 5B053F9D
P 2140 1710
F 0 "#PWR079" H 2140 1460 50  0001 C CNN
F 1 "GND" H 2140 1560 50  0000 C CNN
F 2 "" H 2140 1710 50  0001 C CNN
F 3 "" H 2140 1710 50  0001 C CNN
	1    2140 1710
	0    1    1    0   
$EndComp
Text GLabel 3240 2295 2    60   Output ~ 0
VCC
$Comp
L CP1 Cout1
U 1 1 5B053FA5
P 7645 1425
F 0 "Cout1" H 7670 1525 50  0000 L CNN
F 1 "CP1" H 7670 1325 50  0000 L CNN
F 2 "" H 7645 1425 50  0001 C CNN
F 3 "" H 7645 1425 50  0001 C CNN
	1    7645 1425
	1    0    0    -1  
$EndComp
NoConn ~ 3240 2195
Text HLabel 870  805  0    60   Input ~ 0
BUS_IN
$Comp
L LP38692-3V3 LDO2
U 1 1 5B058F02
P 5720 5095
F 0 "LDO2" H 5970 4345 60  0000 C CNN
F 1 "LP38692-3V3" H 5870 4945 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-6" H 5970 4345 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp38692.pdf" H 5970 4345 60  0001 C CNN
	1    5720 5095
	1    0    0    -1  
$EndComp
$Comp
L LP38692-5V LDO1
U 1 1 5B058F09
P 5720 3945
F 0 "LDO1" H 5970 3195 60  0000 C CNN
F 1 "LP38692-5V" H 5870 3795 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-6" H 5970 3195 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp38692.pdf" H 5970 3195 60  0001 C CNN
	1    5720 3945
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR080
U 1 1 5B058F10
P 5820 4845
F 0 "#PWR080" H 5820 4595 50  0001 C CNN
F 1 "GNDREF" H 5820 4695 50  0000 C CNN
F 2 "" H 5820 4845 50  0001 C CNN
F 3 "" H 5820 4845 50  0001 C CNN
	1    5820 4845
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR081
U 1 1 5B058F16
P 5820 5995
F 0 "#PWR081" H 5820 5745 50  0001 C CNN
F 1 "GNDREF" H 5820 5845 50  0000 C CNN
F 2 "" H 5820 5995 50  0001 C CNN
F 3 "" H 5820 5995 50  0001 C CNN
	1    5820 5995
	1    0    0    -1  
$EndComp
$Comp
L C C33
U 1 1 5B058F1C
P 4920 4395
F 0 "C33" H 4835 4470 50  0000 L CNN
F 1 "1uF" H 4840 4320 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 4958 4245 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/13ec/0900766b813ec20a.pdf" H 4920 4395 50  0001 C CNN
	1    4920 4395
	1    0    0    -1  
$EndComp
$Comp
L C C32
U 1 1 5B058F23
P 4870 5545
F 0 "C32" H 4775 5620 50  0000 L CNN
F 1 "1uF" H 4785 5470 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 4908 5395 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/13ec/0900766b813ec20a.pdf" H 4870 5545 50  0001 C CNN
	1    4870 5545
	1    0    0    -1  
$EndComp
$Comp
L C C34
U 1 1 5B058F2A
P 6320 4695
F 0 "C34" H 6345 4795 50  0000 L CNN
F 1 "1uF" H 6345 4595 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 6358 4545 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/13ec/0900766b813ec20a.pdf" H 6320 4695 50  0001 C CNN
	1    6320 4695
	1    0    0    -1  
$EndComp
$Comp
L C C35
U 1 1 5B058F31
P 6320 5845
F 0 "C35" H 6345 5945 50  0000 L CNN
F 1 "1uF" H 6345 5745 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 6358 5695 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/13ec/0900766b813ec20a.pdf" H 6320 5845 50  0001 C CNN
	1    6320 5845
	1    0    0    -1  
$EndComp
Text Label 4350 4245 0    60   ~ 0
6.5V_IN
Text HLabel 5370 4495 0    60   Input ~ 0
5V_enable
Text HLabel 5370 5645 0    60   Input ~ 0
3.3V_enable
Text HLabel 10305 3175 2    60   Output ~ 0
5V
Text HLabel 10305 5055 2    60   Output ~ 0
3.3V
Wire Wire Line
	9415 1275 10400 1275
Connection ~ 9655 1280
Wire Wire Line
	9655 1575 9655 1670
Wire Wire Line
	9320 5055 10305 5055
Connection ~ 9560 5060
Wire Wire Line
	9560 5355 9560 5450
Wire Wire Line
	9320 3175 10305 3175
Connection ~ 9560 3180
Wire Wire Line
	9560 3475 9560 3570
Wire Wire Line
	8295 1725 8240 1725
Wire Wire Line
	8605 1275 9115 1275
Wire Wire Line
	8240 1425 8305 1425
Wire Wire Line
	8505 1425 8640 1425
Connection ~ 8640 1725
Wire Wire Line
	8200 3625 8200 3840
Wire Wire Line
	8200 3840 8845 3840
Wire Wire Line
	8845 4005 8745 4005
Wire Wire Line
	8745 4105 8930 4105
Connection ~ 8500 3625
Connection ~ 8200 3625
Wire Wire Line
	7590 4005 7945 4005
Connection ~ 7890 4005
Wire Wire Line
	7590 4105 7945 4105
Wire Wire Line
	7945 3705 7945 3905
Wire Wire Line
	7800 3705 7945 3705
Wire Wire Line
	7800 3705 7800 3805
Connection ~ 7890 3705
Wire Wire Line
	8745 4205 8745 4470
Wire Wire Line
	7945 4305 7945 4470
Wire Wire Line
	7945 4470 8745 4470
Connection ~ 8745 4305
Wire Wire Line
	8200 3625 8145 3625
Wire Wire Line
	8510 3175 9020 3175
Wire Wire Line
	8145 3325 8210 3325
Wire Wire Line
	8410 3325 8545 3325
Wire Wire Line
	8500 3625 8930 3625
Wire Wire Line
	8745 3625 8745 3905
Connection ~ 8545 3625
Wire Wire Line
	8930 3625 8930 4105
Connection ~ 8745 3625
Wire Wire Line
	8845 3840 8845 4005
Wire Wire Line
	8200 5505 8200 5720
Wire Wire Line
	8200 5720 8845 5720
Wire Wire Line
	8845 5885 8745 5885
Wire Wire Line
	8745 5985 8930 5985
Connection ~ 8500 5505
Connection ~ 8200 5505
Wire Wire Line
	7590 5885 7945 5885
Connection ~ 7890 5885
Wire Wire Line
	7590 5985 7945 5985
Wire Wire Line
	7945 5585 7945 5785
Wire Wire Line
	7800 5585 7945 5585
Wire Wire Line
	7800 5585 7800 5685
Connection ~ 7890 5585
Wire Wire Line
	8745 6085 8745 6350
Wire Wire Line
	7945 6185 7945 6350
Wire Wire Line
	7945 6350 8745 6350
Connection ~ 8745 6185
Wire Wire Line
	8200 5505 8145 5505
Wire Wire Line
	8510 5055 9020 5055
Wire Wire Line
	8145 5205 8210 5205
Wire Wire Line
	8410 5205 8545 5205
Wire Wire Line
	8500 5505 8930 5505
Wire Wire Line
	8745 5505 8745 5785
Connection ~ 8545 5505
Wire Wire Line
	8930 5505 8930 5985
Connection ~ 8745 5505
Wire Wire Line
	8845 5720 8845 5885
Wire Wire Line
	1845 2495 2140 2495
Wire Wire Line
	3240 2395 3430 2395
Wire Wire Line
	3430 2395 3430 3305
Wire Wire Line
	3430 3305 2030 3305
Wire Wire Line
	2030 3305 2030 2695
Wire Wire Line
	2030 2695 2140 2695
Wire Wire Line
	1690 2295 2140 2295
Wire Wire Line
	4690 805  4690 1555
Wire Wire Line
	4245 1895 3240 1895
Wire Wire Line
	4245 1755 4390 1755
Wire Wire Line
	3240 1795 3240 1695
Connection ~ 3410 1695
Wire Wire Line
	3240 1995 3590 1995
Wire Wire Line
	4245 1755 4245 1895
Wire Wire Line
	3240 1695 4325 1695
Wire Wire Line
	4325 1695 4325 1955
Wire Wire Line
	4325 1955 4975 1955
Wire Wire Line
	3240 2095 4385 2095
Wire Wire Line
	4385 2095 4385 2155
Wire Wire Line
	4385 2155 4390 2155
Connection ~ 4690 1955
Wire Wire Line
	5275 1955 5940 1955
Wire Wire Line
	4690 2355 5530 2355
Wire Wire Line
	3240 2995 3550 2995
Wire Wire Line
	3550 2995 3550 2885
Wire Wire Line
	3550 2885 3945 2885
Connection ~ 3765 2885
Wire Wire Line
	3240 3095 3550 3095
Wire Wire Line
	3550 3095 3550 3185
Wire Wire Line
	3550 3185 3945 3185
Connection ~ 3765 3185
Wire Wire Line
	4245 2885 5125 2885
Wire Wire Line
	5125 2885 5125 2355
Connection ~ 5125 2355
Wire Wire Line
	3240 2795 5940 2795
Wire Wire Line
	5940 2795 5940 1955
Connection ~ 5530 1955
Wire Wire Line
	3240 2595 4040 2595
Wire Wire Line
	4040 2595 4040 2485
Wire Wire Line
	4040 2485 4330 2485
Connection ~ 4215 2485
Wire Wire Line
	4630 2485 5590 2485
Wire Wire Line
	4215 2785 4215 2795
Connection ~ 4215 2795
Wire Wire Line
	3240 2695 5885 2695
Wire Wire Line
	5885 2695 5885 1755
Wire Wire Line
	5885 1755 5830 1755
Wire Wire Line
	3240 2495 3975 2495
Wire Wire Line
	3975 2495 3975 2640
Wire Wire Line
	3975 2640 5830 2640
Wire Wire Line
	5830 2640 5830 2155
Wire Wire Line
	1845 2495 1845 2745
Wire Wire Line
	1845 2745 1690 2745
Wire Wire Line
	2140 2395 1800 2395
Wire Wire Line
	1800 2395 1800 2500
Wire Wire Line
	1800 2500 1690 2500
Wire Wire Line
	1365 3060 1365 2920
Wire Wire Line
	1365 2920 1930 2920
Wire Wire Line
	1365 3360 1365 3520
Wire Wire Line
	1365 3520 1740 3520
Wire Wire Line
	1930 2920 1930 2595
Wire Wire Line
	1930 2595 2140 2595
Connection ~ 1740 2920
Wire Wire Line
	1555 3520 1555 3530
Connection ~ 1555 3520
Wire Wire Line
	2140 2195 1985 2195
Wire Wire Line
	1985 2195 1985 3340
Wire Wire Line
	2140 2795 1715 2795
Wire Wire Line
	1715 2795 1715 2885
Wire Wire Line
	1715 2885 640  2885
Wire Wire Line
	640  3770 6515 3770
Wire Wire Line
	640  2885 640  3770
Wire Wire Line
	5530 1275 5530 1555
Wire Wire Line
	5530 1275 8205 1275
Connection ~ 1700 2295
Wire Wire Line
	1960 3890 6830 3890
Wire Wire Line
	6830 3890 6830 1275
Wire Wire Line
	2140 2895 1960 2895
Wire Wire Line
	1960 2895 1960 3890
Wire Wire Line
	2140 2995 2140 3185
Connection ~ 2140 3095
Connection ~ 6830 1275
Connection ~ 7215 1275
Connection ~ 7645 1275
Wire Wire Line
	6515 3770 6515 1620
Wire Wire Line
	6240 1585 6240 1620
Wire Wire Line
	5745 1585 6240 1585
Connection ~ 5985 1585
Wire Wire Line
	5235 2485 5235 2830
Wire Wire Line
	5565 2485 5565 2970
Connection ~ 5235 2485
Wire Wire Line
	3240 2895 3510 2895
Wire Wire Line
	3510 2895 3510 3355
Wire Wire Line
	3510 3355 5565 3355
Connection ~ 5565 2485
Wire Wire Line
	870  805  4690 805 
Connection ~ 940  805 
Connection ~ 1230 805 
Wire Wire Line
	1230 1105 940  1105
Wire Wire Line
	1285 1795 2140 1795
Wire Wire Line
	1730 805  1730 1995
Wire Wire Line
	1730 1995 2140 1995
Connection ~ 1730 805 
Wire Wire Line
	2140 1410 2140 1405
Wire Wire Line
	2140 1410 1955 1410
Wire Wire Line
	1955 1410 1955 1895
Wire Wire Line
	1955 1895 2140 1895
Connection ~ 2140 805 
Wire Wire Line
	3590 1995 3590 3495
Connection ~ 3410 1995
Wire Wire Line
	3920 3495 3890 3495
Wire Wire Line
	5565 3355 5565 3270
Wire Wire Line
	6515 1620 7215 1620
Wire Wire Line
	7215 1620 7215 1575
Connection ~ 6905 1620
Wire Wire Line
	5820 4795 5820 4845
Wire Wire Line
	5820 5945 5820 5995
Wire Wire Line
	6320 5395 6320 5695
Wire Wire Line
	6320 4245 6320 4545
Wire Wire Line
	4920 4845 6320 4845
Wire Wire Line
	4350 4245 5370 4245
Connection ~ 4920 4245
Wire Wire Line
	4920 4545 4920 4845
Connection ~ 5820 4845
Wire Wire Line
	4720 4245 4720 5395
Connection ~ 4720 4245
Connection ~ 4870 5395
Wire Wire Line
	4870 5695 4870 5995
Wire Wire Line
	4870 5995 6320 5995
Connection ~ 5820 5995
Wire Wire Line
	6320 5395 6920 5395
Wire Wire Line
	6320 4245 6955 4245
Wire Wire Line
	4720 5395 5370 5395
Wire Wire Line
	6955 4245 6955 3175
Wire Wire Line
	6955 3175 8110 3175
Wire Wire Line
	6920 5395 6920 5055
Wire Wire Line
	6920 5055 8110 5055
$Comp
L L L2
U 1 1 5B05C270
P 1630 5325
F 0 "L2" V 1700 5365 50  0000 C CNN
F 1 "3.3uH" V 1580 5325 50  0000 C CNN
F 2 "" H 1630 5325 50  0001 C CNN
F 3 "" H 1630 5325 50  0001 C CNN
	1    1630 5325
	0    1    1    0   
$EndComp
$Comp
L R R43
U 1 1 5B05C277
P 3165 5425
F 0 "R43" V 3085 5415 50  0000 C CNN
F 1 "75k" V 3165 5425 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3095 5425 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/427/rcge3-254226.pdf" H 3165 5425 50  0001 C CNN
	1    3165 5425
	0    -1   -1   0   
$EndComp
$Comp
L R R41
U 1 1 5B05C27E
P 2855 5575
F 0 "R41" V 2935 5575 50  0000 C CNN
F 1 "10k" V 2855 5575 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2785 5575 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/447/PYu-RC_Group_51_RoHS_L_9-1314892.pdf" H 2855 5575 50  0001 C CNN
	1    2855 5575
	1    0    0    -1  
$EndComp
$Comp
L R R42
U 1 1 5B05C285
P 3165 5325
F 0 "R42" V 3245 5315 50  0000 C CNN
F 1 "10k" V 3165 5325 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3095 5325 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/447/PYu-RC_Group_51_RoHS_L_9-1314892.pdf" H 3165 5325 50  0001 C CNN
	1    3165 5325
	0    -1   -1   0   
$EndComp
$Comp
L C C30
U 1 1 5B05C28C
P 1925 5775
F 0 "C30" H 1825 5850 50  0000 L CNN
F 1 "0.1uF" H 1830 5705 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 1963 5625 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/13ec/0900766b813ec20a.pdf" H 1925 5775 50  0001 C CNN
	1    1925 5775
	1    0    0    -1  
$EndComp
$Comp
L C C28
U 1 1 5B05C293
P 1520 5775
F 0 "C28" H 1510 5850 50  0000 R CNN
F 1 "10uF" H 1425 5705 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 1558 5625 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/13ec/0900766b813ec20a.pdf" H 1520 5775 50  0001 C CNN
	1    1520 5775
	1    0    0    -1  
$EndComp
$Comp
L C C26
U 1 1 5B05C29A
P 1300 5475
F 0 "C26" H 1205 5555 50  0000 L CNN
F 1 "22uF" H 1210 5405 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 1338 5325 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/13ec/0900766b813ec20a.pdf" H 1300 5475 50  0001 C CNN
	1    1300 5475
	1    0    0    -1  
$EndComp
$Comp
L C C27
U 1 1 5B05C2A1
P 1480 5475
F 0 "C27" H 1505 5555 50  0000 L CNN
F 1 "22uF" H 1510 5405 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 1518 5325 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/13ec/0900766b813ec20a.pdf" H 1480 5475 50  0001 C CNN
	1    1480 5475
	1    0    0    -1  
$EndComp
$Comp
L C C31
U 1 1 5B05C2A8
P 2420 4985
F 0 "C31" H 2445 5085 50  0000 L CNN
F 1 "0.1uF" H 2445 4885 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 2458 4835 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/13ec/0900766b813ec20a.pdf" H 2420 4985 50  0001 C CNN
	1    2420 4985
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR082
U 1 1 5B05C2AF
P 2005 5225
F 0 "#PWR082" H 2005 4975 50  0001 C CNN
F 1 "GND" H 2005 5075 50  0000 C CNN
F 2 "" H 2005 5225 50  0001 C CNN
F 3 "" H 2005 5225 50  0001 C CNN
	1    2005 5225
	0    1    1    0   
$EndComp
$Comp
L C C29
U 1 1 5B05C2B5
P 1725 5775
F 0 "C29" H 1625 5850 50  0000 L CNN
F 1 "10uF" H 1625 5705 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 1763 5625 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/13ec/0900766b813ec20a.pdf" H 1725 5775 50  0001 C CNN
	1    1725 5775
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR083
U 1 1 5B05C2BC
P 1300 5625
F 0 "#PWR083" H 1300 5375 50  0001 C CNN
F 1 "GND" H 1300 5475 50  0000 C CNN
F 2 "" H 1300 5625 50  0001 C CNN
F 3 "" H 1300 5625 50  0001 C CNN
	1    1300 5625
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR084
U 1 1 5B05C2C2
P 2855 5725
F 0 "#PWR084" H 2855 5475 50  0001 C CNN
F 1 "GND" H 2855 5575 50  0000 C CNN
F 2 "" H 2855 5725 50  0001 C CNN
F 3 "" H 2855 5725 50  0001 C CNN
	1    2855 5725
	1    0    0    -1  
$EndComp
$Comp
L TPS565201 U6
U 1 1 5B05C2C8
P 2405 5125
F 0 "U6" H 2435 5110 60  0000 C CNN
F 1 "TPS565201" H 2440 4730 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 2405 5125 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps565201.pdf" H 2405 5125 60  0001 C CNN
	1    2405 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2855 5225 2855 4985
Wire Wire Line
	2855 4985 2570 4985
Wire Wire Line
	2270 4985 1780 4985
Wire Wire Line
	1780 4985 1780 5325
Wire Wire Line
	1780 5325 2005 5325
Wire Wire Line
	825  5325 1480 5325
Wire Wire Line
	1925 5625 1300 5625
Connection ~ 1480 5625
Connection ~ 1520 5625
Connection ~ 1725 5625
Wire Wire Line
	2005 5925 1320 5925
Connection ~ 1725 5925
Wire Wire Line
	2005 5925 2005 5425
Connection ~ 1925 5925
Wire Wire Line
	3015 5425 2855 5425
Wire Wire Line
	2855 5325 3015 5325
Connection ~ 1300 5325
Connection ~ 1520 5925
Wire Wire Line
	3315 5425 3830 5425
Wire Wire Line
	1300 4665 3830 4665
Wire Wire Line
	1300 4665 1300 5325
Text HLabel 1320 5925 0    60   Input ~ 0
BUS_IN
Text Label 825  5320 0    60   ~ 0
6.5V_OUT
Wire Wire Line
	3830 4665 3830 5425
$Comp
L INA300 U8
U 1 1 5B051565
P 8760 2385
F 0 "U8" H 8760 2735 60  0000 C CNN
F 1 "INA300" H 8760 2035 60  0000 C CNN
F 2 "" H 8760 2385 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina300-q1.pdf" H 8760 2385 60  0001 C CNN
	1    8760 2385
	1    0    0    -1  
$EndComp
Wire Wire Line
	8210 2285 8065 2285
Wire Wire Line
	8065 2285 8065 1955
Wire Wire Line
	8065 1955 8640 1955
Wire Wire Line
	8640 1955 8640 1725
Wire Wire Line
	8640 1725 8595 1725
Wire Wire Line
	8210 2185 8210 2070
Wire Wire Line
	8210 2070 8240 2070
Wire Wire Line
	8240 2070 8240 1725
NoConn ~ 9260 2185
Wire Wire Line
	9260 2385 9685 2385
Wire Wire Line
	9685 2385 9685 2435
$Comp
L +3.3V #PWR085
U 1 1 5B0568B3
P 9405 2285
F 0 "#PWR085" H 9405 2135 50  0001 C CNN
F 1 "+3.3V" H 9405 2425 50  0000 C CNN
F 2 "" H 9405 2285 50  0001 C CNN
F 3 "" H 9405 2285 50  0001 C CNN
	1    9405 2285
	1    0    0    -1  
$EndComp
Wire Wire Line
	9260 2285 9405 2285
NoConn ~ 9260 2485
Text Label 1285 1795 0    60   ~ 0
bb_enable
Wire Wire Line
	8210 2585 7630 2585
Text Label 7630 2585 0    60   ~ 0
bb_enable
Wire Wire Line
	8210 2485 7630 2485
Wire Wire Line
	8210 2385 7630 2385
$Comp
L +3.3V #PWR086
U 1 1 5B05BF5F
P 3315 5325
F 0 "#PWR086" H 3315 5175 50  0001 C CNN
F 1 "+3.3V" H 3315 5465 50  0000 C CNN
F 2 "" H 3315 5325 50  0001 C CNN
F 3 "" H 3315 5325 50  0001 C CNN
	1    3315 5325
	1    0    0    -1  
$EndComp
Text HLabel 7630 2485 0    60   Input ~ 0
16V_enable
Text HLabel 7630 2385 0    60   Input ~ 0
v_limit
Text Notes 7950 1015 0    60   ~ 0
Shunt current sensor & comparator,\ninput lpf with adjustable threshold from ucontroller
Text Notes 2115 4535 0    60   ~ 0
Buck to 6.5v
Text Notes 2825 1285 0    60   ~ 0
Buck-Boost to 16v
Text Notes 5290 6425 0    60   ~ 0
LDO to 3.3v & 5v
Text Notes 8265 4665 0    60   ~ 0
volt/current sensors (optional)
$Comp
L GND #PWR087
U 1 1 5B06B351
P 9260 2585
F 0 "#PWR087" H 9260 2335 50  0001 C CNN
F 1 "GND" H 9260 2435 50  0000 C CNN
F 2 "" H 9260 2585 50  0001 C CNN
F 3 "" H 9260 2585 50  0001 C CNN
	1    9260 2585
	1    0    0    -1  
$EndComp
$EndSCHEMATC
