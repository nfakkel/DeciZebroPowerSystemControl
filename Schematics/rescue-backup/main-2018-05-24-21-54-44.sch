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
Sheet 1 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4190 1190 1710 1560
U 5AF2E896
F0 "Control" 60
F1 "control.sch" 60
F2 "SDA_ZEBROBUS" I R 5900 1340 60 
F3 "SCL_ZEBROBUS" I R 5900 1540 60 
F4 "SDA_SMBUS" I L 4190 1290 60 
F5 "SCL_SMBUS" I L 4190 1380 60 
F6 "INTERRUP_ZEBROBUS" O R 5900 1260 60 
F7 "3.3V_fuse" I R 5900 2290 60 
F8 "5V_fuse" I R 5900 2370 60 
F9 "5V_enable" O R 5900 2530 60 
F10 "3.3V_enable" O R 5900 2600 60 
F11 "REF_ZEBROBUS" O R 5900 1440 60 
F12 "16V_fuse" I R 5900 2450 60 
F13 "16V_enable" O R 5900 2680 60 
F14 "v_solar" I L 4190 2460 60 
F15 "PDI_DATA" I L 4190 1650 60 
F16 "PDI_CLK" I L 4190 1765 60 
F17 "laptop_con" I L 4190 2260 60 
F18 "input_selec" I L 4190 2655 60 
F19 "pwm_solar" O L 4190 2360 60 
F20 "Exception_LED" O R 5900 2110 60 
F21 "v_laptop" I L 4190 2550 60 
F22 "QI_enable" O R 5900 1890 60 
F23 "ALERT" O L 4190 1495 60 
F24 "QI_int" I L 4190 2095 60 
F25 "v_limit" O R 5900 1985 60 
$EndSheet
$Sheet
S 4600 5970 1390 980 
U 5AF2E8A1
F0 "Battery Management System" 60
F1 "bms.sch" 60
F2 "VC4" B L 4600 6305 60 
F3 "VC3" B L 4600 6400 60 
F4 "VC2" B L 4600 6500 60 
F5 "VC1" B L 4600 6615 60 
F6 "VC0" B L 4600 6730 60 
F7 "BATT+" B L 4600 6040 60 
F8 "PACK+" B R 5990 6040 60 
F9 "SMBD" B R 5990 6835 60 
F10 "SMBC" B R 5990 6740 60 
F11 "ALERT" B R 5990 6640 60 
F12 "PACK-" B R 5990 6130 60 
F13 "BATT-" B L 4600 6130 60 
$EndSheet
$Sheet
S 7850 4480 1190 1180
U 5AF2E8BD
F0 "Output" 60
F1 "output.sch" 60
F2 "5V" O R 9040 4790 60 
F3 "3.3V" O R 9040 4900 60 
F4 "sys_3.3V" O R 9040 5430 60 
F5 "BUS_IN" I L 7850 4680 60 
F6 "POWERBUS_-" I L 7850 4770 60 
F7 "3.3V_fuse" O L 7850 5100 60 
F8 "5V_fuse" O L 7850 5190 60 
F9 "3.3V_enable" I L 7850 5360 60 
F10 "5V_enable" I L 7850 5440 60 
F11 "sys_GND" I R 9040 5540 60 
F12 "16V" O R 9040 5000 60 
F13 "16V_fuse" O L 7850 5270 60 
F14 "16V_enable" I L 7850 5530 60 
F15 "SDA_SMBUS" B R 9040 4535 60 
F16 "SCL_SMBUS" B R 9040 4625 60 
F17 "v_limit" I L 7850 4545 60 
$EndSheet
$Comp
L Conn_02x03_Counter_Clockwise J9
U 1 1 5B00911A
P 6370 1440
F 0 "J9" H 6420 1640 50  0000 C CNN
F 1 "Conn_02x03_Counter_Clockwise" H 6420 1240 50  0000 C CNN
F 2 "" H 6370 1440 50  0001 C CNN
F 3 "" H 6370 1440 50  0001 C CNN
	1    6370 1440
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5B01221A
P 6670 1540
F 0 "#PWR01" H 6670 1290 50  0001 C CNN
F 1 "GND" H 6670 1390 50  0000 C CNN
F 2 "" H 6670 1540 50  0001 C CNN
F 3 "" H 6670 1540 50  0001 C CNN
	1    6670 1540
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR02
U 1 1 5AFDF4FA
P 9160 5430
F 0 "#PWR02" H 9160 5280 50  0001 C CNN
F 1 "+3.3V" H 9160 5570 50  0000 C CNN
F 2 "" H 9160 5430 50  0001 C CNN
F 3 "" H 9160 5430 50  0001 C CNN
	1    9160 5430
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5AFE31FB
P 9160 5540
F 0 "#PWR03" H 9160 5290 50  0001 C CNN
F 1 "GND" H 9160 5390 50  0000 C CNN
F 2 "" H 9160 5540 50  0001 C CNN
F 3 "" H 9160 5540 50  0001 C CNN
	1    9160 5540
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 5B0400AC
P 9180 1310
F 0 "D3" H 9180 1410 50  0000 C CNN
F 1 "LED" H 9180 1210 50  0000 C CNN
F 2 "" H 9180 1310 50  0001 C CNN
F 3 "http://www.produktinfo.conrad.com/datenblaetter/175000-199999/184543-da-01-en-LED_20_5mm_rot_WU_8_53_HD.pdf" H 9180 1310 50  0001 C CNN
	1    9180 1310
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5B0401F7
P 9530 1310
F 0 "R4" V 9610 1310 50  0000 C CNN
F 1 "R" V 9530 1310 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9460 1310 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/427/rcge3-254226.pdf" H 9530 1310 50  0001 C CNN
	1    9530 1310
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5B04036A
P 8920 2740
F 0 "#PWR04" H 8920 2490 50  0001 C CNN
F 1 "GND" H 8920 2590 50  0000 C CNN
F 2 "" H 8920 2740 50  0001 C CNN
F 3 "" H 8920 2740 50  0001 C CNN
	1    8920 2740
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 5B043861
P 9180 1580
F 0 "D4" H 9180 1680 50  0000 C CNN
F 1 "LED" H 9180 1480 50  0000 C CNN
F 2 "" H 9180 1580 50  0001 C CNN
F 3 "http://www.produktinfo.conrad.com/datenblaetter/175000-199999/184543-da-01-en-LED_20_5mm_rot_WU_8_53_HD.pdf" H 9180 1580 50  0001 C CNN
	1    9180 1580
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5B043867
P 9530 1580
F 0 "R5" V 9610 1580 50  0000 C CNN
F 1 "R" V 9530 1580 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9460 1580 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/427/rcge3-254226.pdf" H 9530 1580 50  0001 C CNN
	1    9530 1580
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 5B04451A
P 9180 1040
F 0 "D2" H 9180 1140 50  0000 C CNN
F 1 "LED" H 9180 940 50  0000 C CNN
F 2 "" H 9180 1040 50  0001 C CNN
F 3 "http://www.produktinfo.conrad.com/datenblaetter/175000-199999/184543-da-01-en-LED_20_5mm_rot_WU_8_53_HD.pdf" H 9180 1040 50  0001 C CNN
	1    9180 1040
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5B044520
P 9530 1040
F 0 "R3" V 9610 1040 50  0000 C CNN
F 1 "R" V 9530 1040 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9460 1040 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/427/rcge3-254226.pdf" H 9530 1040 50  0001 C CNN
	1    9530 1040
	0    1    1    0   
$EndComp
$Comp
L LED D6
U 1 1 5B044F1F
P 9180 2110
F 0 "D6" H 9180 2210 50  0000 C CNN
F 1 "LED" H 9180 2010 50  0000 C CNN
F 2 "" H 9180 2110 50  0001 C CNN
F 3 "http://www.produktinfo.conrad.com/datenblaetter/175000-199999/184543-da-01-en-LED_20_5mm_rot_WU_8_53_HD.pdf" H 9180 2110 50  0001 C CNN
	1    9180 2110
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5B044F25
P 9530 2110
F 0 "R7" V 9610 2110 50  0000 C CNN
F 1 "R" V 9530 2110 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9460 2110 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/427/rcge3-254226.pdf" H 9530 2110 50  0001 C CNN
	1    9530 2110
	0    1    1    0   
$EndComp
$Comp
L LED D7
U 1 1 5B044F2D
P 9180 2380
F 0 "D7" H 9180 2480 50  0000 C CNN
F 1 "LED" H 9180 2280 50  0000 C CNN
F 2 "" H 9180 2380 50  0001 C CNN
F 3 "http://www.produktinfo.conrad.com/datenblaetter/175000-199999/184543-da-01-en-LED_20_5mm_rot_WU_8_53_HD.pdf" H 9180 2380 50  0001 C CNN
	1    9180 2380
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5B044F33
P 9530 2380
F 0 "R8" V 9610 2380 50  0000 C CNN
F 1 "R" V 9530 2380 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9460 2380 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/427/rcge3-254226.pdf" H 9530 2380 50  0001 C CNN
	1    9530 2380
	0    1    1    0   
$EndComp
$Comp
L LED D5
U 1 1 5B044F3B
P 9180 1840
F 0 "D5" H 9180 1940 50  0000 C CNN
F 1 "LED" H 9180 1740 50  0000 C CNN
F 2 "" H 9180 1840 50  0001 C CNN
F 3 "http://www.produktinfo.conrad.com/datenblaetter/175000-199999/184543-da-01-en-LED_20_5mm_rot_WU_8_53_HD.pdf" H 9180 1840 50  0001 C CNN
	1    9180 1840
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5B044F41
P 9530 1840
F 0 "R6" V 9610 1840 50  0000 C CNN
F 1 "R" V 9530 1840 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9460 1840 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/427/rcge3-254226.pdf" H 9530 1840 50  0001 C CNN
	1    9530 1840
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 5B04CD95
P 9680 1040
F 0 "#PWR05" H 9680 890 50  0001 C CNN
F 1 "+3.3V" H 9680 1180 50  0000 C CNN
F 2 "" H 9680 1040 50  0001 C CNN
F 3 "" H 9680 1040 50  0001 C CNN
	1    9680 1040
	0    1    1    0   
$EndComp
Text Label 9040 4790 0    60   ~ 0
5V_out
Text Label 9040 4900 0    60   ~ 0
3.3V_OUT
Text Label 9040 5000 0    60   ~ 0
16V_OUT
Text Label 10090 1310 2    60   ~ 0
3.3V_OUT
Text Label 10090 1580 2    60   ~ 0
5V_OUT
Text Label 10090 1840 2    60   ~ 0
16V_OUT
$Comp
L LED D8
U 1 1 5B0594F5
P 9180 2650
F 0 "D8" H 9180 2750 50  0000 C CNN
F 1 "LED" H 9180 2550 50  0000 C CNN
F 2 "" H 9180 2650 50  0001 C CNN
F 3 "http://www.produktinfo.conrad.com/datenblaetter/175000-199999/184543-da-01-en-LED_20_5mm_rot_WU_8_53_HD.pdf" H 9180 2650 50  0001 C CNN
	1    9180 2650
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5B0594FB
P 9530 2650
F 0 "R9" V 9610 2650 50  0000 C CNN
F 1 "R" V 9530 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9460 2650 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/427/rcge3-254226.pdf" H 9530 2650 50  0001 C CNN
	1    9530 2650
	0    1    1    0   
$EndComp
Text Label 10090 2110 2    60   ~ 0
LAPTOP_IN
Text Label 10120 2380 2    60   ~ 0
COIL_IN
Text Label 10130 2650 2    60   ~ 0
SOLAR_IN
Text Label 6540 2110 2    60   ~ 0
Exception_LED
$Comp
L LED D1
U 1 1 5B080FF1
P 9180 750
F 0 "D1" H 9180 850 50  0000 C CNN
F 1 "LED" H 9180 650 50  0000 C CNN
F 2 "" H 9180 750 50  0001 C CNN
F 3 "http://www.produktinfo.conrad.com/datenblaetter/175000-199999/184543-da-01-en-LED_20_5mm_rot_WU_8_53_HD.pdf" H 9180 750 50  0001 C CNN
	1    9180 750 
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B080FF7
P 9530 750
F 0 "R2" V 9610 750 50  0000 C CNN
F 1 "R" V 9530 750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9460 750 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/427/rcge3-254226.pdf" H 9530 750 50  0001 C CNN
	1    9530 750 
	0    1    1    0   
$EndComp
Text Label 10310 750  2    60   ~ 0
Exception_LED
Text Label 3555 1290 0    60   ~ 0
sda_intern
Text Label 3550 1380 0    60   ~ 0
scl_intern
$Comp
L Conn_02x03_Counter_Clockwise J6
U 1 1 5B04F5F7
P 1715 2025
F 0 "J6" H 1765 2225 50  0000 C CNN
F 1 "Conn_02x03_Counter_Clockwise" H 1765 1825 50  0000 C CNN
F 2 "" H 1715 2025 50  0001 C CNN
F 3 "" H 1715 2025 50  0001 C CNN
	1    1715 2025
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5B050D55
P 2085 2180
F 0 "#PWR06" H 2085 1930 50  0001 C CNN
F 1 "GND" H 2085 2030 50  0000 C CNN
F 2 "" H 2085 2180 50  0001 C CNN
F 3 "" H 2085 2180 50  0001 C CNN
	1    2085 2180
	1    0    0    -1  
$EndComp
NoConn ~ 1515 2025
NoConn ~ 2015 2025
$Comp
L +3.3V #PWR07
U 1 1 5B051C39
P 2015 1925
F 0 "#PWR07" H 2015 1775 50  0001 C CNN
F 1 "+3.3V" H 2015 2065 50  0000 C CNN
F 2 "" H 2015 1925 50  0001 C CNN
F 3 "" H 2015 1925 50  0001 C CNN
	1    2015 1925
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5B051D61
P 2255 2110
F 0 "R1" V 2335 2110 50  0000 C CNN
F 1 "10k" V 2255 2110 50  0000 C CNN
F 2 "" V 2185 2110 50  0001 C CNN
F 3 "" H 2255 2110 50  0001 C CNN
	1    2255 2110
	1    0    0    -1  
$EndComp
Text Label 6520 2290 2    60   ~ 0
3.3v_fuse
Text Label 6520 2370 2    60   ~ 0
5v_fuse
Text Label 6520 2450 2    60   ~ 0
16v_fuse
Text Label 6520 2530 2    60   ~ 0
5v_enable
Text Label 6520 2600 2    60   ~ 0
3.3v_enable
Text Label 6520 2680 2    60   ~ 0
16v_enable
Text Label 7160 5100 0    60   ~ 0
3.3v_fuse
Text Label 7160 5190 0    60   ~ 0
5v_fuse
Text Label 7160 5270 0    60   ~ 0
16v_fuse
Text Label 7160 5360 0    60   ~ 0
3.3v_enable
Text Label 7160 5440 0    60   ~ 0
5v_enable
Text Label 7160 5530 0    60   ~ 0
16v_enable
$Comp
L Conn_01x02 J3
U 1 1 5B04190F
P 895 4140
F 0 "J3" H 895 4240 50  0000 C CNN
F 1 "Conn_01x02" H 895 3940 50  0000 C CNN
F 2 "" H 895 4140 50  0001 C CNN
F 3 "" H 895 4140 50  0001 C CNN
	1    895  4140
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x02 J1
U 1 1 5B041E04
P 890 4490
F 0 "J1" H 890 4590 50  0000 C CNN
F 1 "Conn_01x02" H 890 4290 50  0000 C CNN
F 2 "" H 890 4490 50  0001 C CNN
F 3 "" H 890 4490 50  0001 C CNN
	1    890  4490
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x03 J2
U 1 1 5B0442BC
P 895 3750
F 0 "J2" H 895 3950 50  0000 C CNN
F 1 "Conn_01x03" H 895 3550 50  0000 C CNN
F 2 "" H 895 3750 50  0001 C CNN
F 3 "" H 895 3750 50  0001 C CNN
	1    895  3750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5B044DC6
P 1210 3850
F 0 "#PWR08" H 1210 3600 50  0001 C CNN
F 1 "GND" H 1210 3700 50  0000 C CNN
F 2 "" H 1210 3850 50  0001 C CNN
F 3 "" H 1210 3850 50  0001 C CNN
	1    1210 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5B0452D8
P 1210 4240
F 0 "#PWR09" H 1210 3990 50  0001 C CNN
F 1 "GND" H 1210 4090 50  0000 C CNN
F 2 "" H 1210 4240 50  0001 C CNN
F 3 "" H 1210 4240 50  0001 C CNN
	1    1210 4240
	1    0    0    -1  
$EndComp
Text Label 1525 3750 2    60   ~ 0
laptop_con
$Comp
L Conn_01x02 J12
U 1 1 5B049B91
P 6870 4095
F 0 "J12" H 6870 4195 50  0000 C CNN
F 1 "Conn_01x02" H 6870 3895 50  0000 C CNN
F 2 "" H 6870 4095 50  0001 C CNN
F 3 "" H 6870 4095 50  0001 C CNN
	1    6870 4095
	0    -1   -1   0   
$EndComp
Text Label 3690 2260 0    60   ~ 0
laptop_con
Text Label 1700 3295 0    60   ~ 0
sda_intern
Text Label 1715 3395 0    60   ~ 0
scl_intern
$Comp
L GND #PWR010
U 1 1 5B05DD92
P 6280 6940
F 0 "#PWR010" H 6280 6690 50  0001 C CNN
F 1 "GND" H 6280 6790 50  0000 C CNN
F 2 "" H 6280 6940 50  0001 C CNN
F 3 "" H 6280 6940 50  0001 C CNN
	1    6280 6940
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J11
U 1 1 5B07F606
P 6480 6840
F 0 "J11" H 6480 7040 50  0000 C CNN
F 1 "BMS_DATA_OUT" H 6480 6540 50  0000 C CNN
F 2 "" H 6480 6840 50  0001 C CNN
F 3 "FWS-02-01-T-S" H 6480 6840 50  0001 C CNN
	1    6480 6840
	1    0    0    1   
$EndComp
$Comp
L Conn_01x05 J5
U 1 1 5B083EC5
P 910 6705
F 0 "J5" H 910 7005 50  0000 C CNN
F 1 "Conn_01x05" H 910 6405 50  0000 C CNN
F 2 "" H 910 6705 50  0001 C CNN
F 3 "JST-XH 4s" H 910 6705 50  0001 C CNN
	1    910  6705
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x02 J4
U 1 1 5B0918DC
P 910 6205
F 0 "J4" H 910 6305 50  0000 C CNN
F 1 "Conn_01x02" H 910 6005 50  0000 C CNN
F 2 "" H 910 6205 50  0001 C CNN
F 3 "" H 910 6205 50  0001 C CNN
	1    910  6205
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x02 J10
U 1 1 5B0C8CC7
P 6435 6040
F 0 "J10" H 6435 6140 50  0000 C CNN
F 1 "BMS_POWER_OUT" H 6435 5840 50  0000 C CNN
F 2 "" H 6435 6040 50  0001 C CNN
F 3 "" H 6435 6040 50  0001 C CNN
	1    6435 6040
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J8
U 1 1 5B0C90FE
P 3840 4750
F 0 "J8" H 3840 4850 50  0000 C CNN
F 1 "BMS_POWER_IN" H 3840 4550 50  0000 C CNN
F 2 "" H 3840 4750 50  0001 C CNN
F 3 "" H 3840 4750 50  0001 C CNN
	1    3840 4750
	-1   0    0    -1  
$EndComp
$Sheet
S 2160 3210 1140 1940
U 5AF2E888
F0 "Input" 60
F1 "input.sch" 60
F2 "solar_in+" I L 2160 4140 60 
F3 "v_solar" O R 3300 3450 60 
F4 "pwm_solar" I R 3300 3350 60 
F5 "sda_smbus" O L 2160 3295 60 
F6 "scl_smbus" O L 2160 3395 60 
F7 "v_laptop" O R 3300 3545 60 
F8 "LAPTOP_IN" I L 2160 3870 60 
F9 "QI_IN" I L 2160 4410 60 
F10 "3.3V" I R 3300 4955 60 
F11 "LAP_QI_OUT-" O R 3300 4005 60 
F12 "LAP_QI_OUT+" O R 3300 4100 60 
F13 "solar_in-" I L 2160 4270 60 
F14 "solar_out-" O R 3300 4630 60 
F15 "solar_out+" O R 3300 4745 60 
F16 "INPUT_SEL" I R 3300 3625 60 
$EndSheet
$Sheet
S 4350 3700 1800 1400
U 5B029260
F0 "PowerBus" 60
F1 "powerbus.sch" 60
F2 "OUTPUT_POWERBUS_-" O R 6150 4450 60 
F3 "BMS_POWERBUS_+" O L 4350 4750 60 
F4 "BMS_POWERBUS_-" O L 4350 4900 60 
F5 "switch_in" O R 6150 4300 60 
F6 "INTERNAL_3.3V" O L 4350 3875 60 
F7 "INPUT_POWERBUS+" I L 4350 4005 60 
F8 "INPUT_POWERBUS-" I L 4350 4100 60 
$EndSheet
Text Label 2390 1290 0    60   ~ 0
sda_intern
Text Label 2385 1390 0    60   ~ 0
scl_intern
$Comp
L GND #PWR011
U 1 1 5B0DDE29
P 2285 1190
F 0 "#PWR011" H 2285 940 50  0001 C CNN
F 1 "GND" H 2285 1040 50  0000 C CNN
F 2 "" H 2285 1190 50  0001 C CNN
F 3 "" H 2285 1190 50  0001 C CNN
	1    2285 1190
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x04 J7
U 1 1 5B0DDE23
P 2085 1290
F 0 "J7" H 2085 1490 50  0000 C CNN
F 1 "BMS_DATA_IN" H 2085 990 50  0000 C CNN
F 2 "" H 2085 1290 50  0001 C CNN
F 3 "FWS-02-01-T-S" H 2085 1290 50  0001 C CNN
	1    2085 1290
	-1   0    0    -1  
$EndComp
Text Label 3550 1495 0    60   ~ 0
alert_intern
Text Label 2385 1490 0    60   ~ 0
alert_intern
$Comp
L Conn_01x04 J13
U 1 1 5B0E3A9C
P 11135 3970
F 0 "J13" H 11135 4170 50  0000 C CNN
F 1 "Conn_01x04" H 11135 3670 50  0000 C CNN
F 2 "" H 11135 3970 50  0001 C CNN
F 3 "Molex KK 2045" H 11135 3970 50  0001 C CNN
	1    11135 3970
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J14
U 1 1 5B0E3D31
P 11135 4680
F 0 "J14" H 11135 4880 50  0000 C CNN
F 1 "Conn_01x04" H 11135 4380 50  0000 C CNN
F 2 "" H 11135 4680 50  0001 C CNN
F 3 "Molex KK 2045" H 11135 4680 50  0001 C CNN
	1    11135 4680
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J15
U 1 1 5B0E4040
P 11135 5450
F 0 "J15" H 11135 5650 50  0000 C CNN
F 1 "Conn_01x04" H 11135 5150 50  0000 C CNN
F 2 "" H 11135 5450 50  0001 C CNN
F 3 "Molex KK 2045" H 11135 5450 50  0001 C CNN
	1    11135 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5B0E431B
P 10770 4330
F 0 "#PWR012" H 10770 4080 50  0001 C CNN
F 1 "GND" H 10770 4180 50  0000 C CNN
F 2 "" H 10770 4330 50  0001 C CNN
F 3 "" H 10770 4330 50  0001 C CNN
	1    10770 4330
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5B0E6C18
P 10770 5050
F 0 "#PWR013" H 10770 4800 50  0001 C CNN
F 1 "GND" H 10770 4900 50  0000 C CNN
F 2 "" H 10770 5050 50  0001 C CNN
F 3 "" H 10770 5050 50  0001 C CNN
	1    10770 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5B0E6E10
P 10770 5850
F 0 "#PWR014" H 10770 5600 50  0001 C CNN
F 1 "GND" H 10770 5700 50  0000 C CNN
F 2 "" H 10770 5850 50  0001 C CNN
F 3 "" H 10770 5850 50  0001 C CNN
	1    10770 5850
	1    0    0    -1  
$EndComp
$Sheet
S 890  4960 1150 900 
U 5B04A48F
F0 "QI_charging" 60
F1 "QI_charging.sch" 60
F2 "QI_OUT" O R 2040 5060 60 
F3 "SCL_MCU_QI" I R 2040 5710 60 
F4 "SDA_MCU_QI" I R 2040 5535 60 
F5 "INT_MCU_QI" I R 2040 5375 60 
F6 "EN_MCU_QI" I R 2040 5215 60 
F7 "COIL_IN+" I L 890 5060 60 
F8 "COIL_IN-" I L 890 5210 60 
$EndSheet
Text Label 3885 5140 2    60   ~ 0
3.3v_enable
Text Label 2645 5535 2    60   ~ 0
sda_intern
Wire Wire Line
	5900 1260 6670 1260
Wire Wire Line
	6670 1260 6670 1340
Wire Wire Line
	6670 1440 6670 1540
Wire Wire Line
	6170 1340 5900 1340
Wire Wire Line
	6170 1540 5900 1540
Wire Wire Line
	5900 1440 6170 1440
Wire Wire Line
	9040 5430 9160 5430
Wire Wire Line
	9040 5540 9160 5540
Wire Wire Line
	9330 1310 9380 1310
Wire Wire Line
	8920 1310 9030 1310
Wire Wire Line
	9330 1580 9380 1580
Wire Wire Line
	8920 1580 9030 1580
Wire Wire Line
	9330 1040 9380 1040
Wire Wire Line
	9030 1040 8920 1040
Wire Wire Line
	9330 2110 9380 2110
Wire Wire Line
	8920 2110 9030 2110
Wire Wire Line
	9330 2380 9380 2380
Wire Wire Line
	8920 2380 9030 2380
Wire Wire Line
	9330 1840 9380 1840
Wire Wire Line
	8920 1840 9030 1840
Wire Wire Line
	8920 750  8920 2740
Wire Wire Line
	9040 4790 10550 4790
Wire Wire Line
	9040 4900 10635 4900
Wire Wire Line
	9040 5000 10620 5000
Wire Wire Line
	9680 1310 10090 1310
Wire Wire Line
	9680 1580 10090 1580
Wire Wire Line
	9680 1840 10090 1840
Wire Wire Line
	9330 2650 9380 2650
Wire Wire Line
	8920 2650 9030 2650
Connection ~ 8920 2650
Connection ~ 8920 2380
Connection ~ 8920 2110
Connection ~ 8920 1840
Connection ~ 8920 1580
Connection ~ 8920 1310
Wire Wire Line
	9680 2110 10090 2110
Wire Wire Line
	9680 2380 10120 2380
Wire Wire Line
	9680 2650 10130 2650
Wire Wire Line
	1645 3870 2160 3870
Wire Wire Line
	5900 2110 6540 2110
Wire Wire Line
	9330 750  9380 750 
Wire Wire Line
	9030 750  8920 750 
Connection ~ 8920 1040
Wire Wire Line
	9680 750  10310 750 
Wire Wire Line
	2770 1650 4190 1650
Wire Wire Line
	2770 1770 1515 1770
Wire Wire Line
	1515 1770 1515 1925
Wire Wire Line
	2015 2125 2085 2125
Wire Wire Line
	2085 2125 2085 2180
Wire Wire Line
	3170 1765 4190 1765
Wire Wire Line
	1515 2475 3170 2475
Wire Wire Line
	1515 2475 1515 2125
Wire Wire Line
	2015 1925 2255 1925
Wire Wire Line
	2255 1925 2255 1960
Wire Wire Line
	2255 2260 2255 2475
Connection ~ 2255 2475
Wire Wire Line
	5900 2290 6520 2290
Wire Wire Line
	5900 2370 6520 2370
Wire Wire Line
	5900 2450 6520 2450
Wire Wire Line
	5900 2530 6520 2530
Wire Wire Line
	5900 2600 6520 2600
Wire Wire Line
	5900 2680 6520 2680
Wire Wire Line
	7315 4295 7315 4680
Wire Wire Line
	7315 4680 7850 4680
Wire Wire Line
	6150 4450 7100 4450
Wire Wire Line
	7100 4450 7100 4770
Wire Wire Line
	7100 4770 7850 4770
Wire Wire Line
	7850 5100 7160 5100
Wire Wire Line
	7850 5190 7160 5190
Wire Wire Line
	7850 5270 7160 5270
Wire Wire Line
	7850 5360 7160 5360
Wire Wire Line
	7850 5440 7160 5440
Wire Wire Line
	7850 5530 7160 5530
Wire Wire Line
	1095 3750 1525 3750
Wire Wire Line
	1095 3650 1645 3650
Wire Wire Line
	1645 3650 1645 3870
Wire Wire Line
	1095 4240 1210 4240
Wire Wire Line
	1095 3850 1210 3850
Wire Wire Line
	1095 4140 2160 4140
Wire Wire Line
	6150 4300 6870 4300
Wire Wire Line
	6870 4300 6870 4295
Wire Wire Line
	6970 4295 7315 4295
Wire Wire Line
	3300 3450 3640 3450
Wire Wire Line
	4190 2460 3640 2460
Wire Wire Line
	3640 2460 3640 3450
Wire Wire Line
	3690 2260 4190 2260
Wire Wire Line
	2160 3395 1715 3395
Wire Wire Line
	1700 3295 2160 3295
Wire Wire Line
	3300 3545 3735 3545
Wire Wire Line
	3735 3545 3735 2550
Wire Wire Line
	3735 2550 4190 2550
Wire Wire Line
	3300 3625 3825 3625
Wire Wire Line
	3825 3625 3825 2655
Wire Wire Line
	3825 2655 4190 2655
Wire Wire Line
	5990 6640 6280 6640
Wire Wire Line
	6280 6740 5990 6740
Wire Wire Line
	6280 6840 5990 6840
Wire Wire Line
	5990 6840 5990 6835
Wire Wire Line
	2770 1650 2770 1770
Wire Wire Line
	3170 2475 3170 1765
Wire Wire Line
	1110 6505 4030 6505
Wire Wire Line
	4030 6505 4030 6305
Wire Wire Line
	4030 6305 4600 6305
Wire Wire Line
	1110 6605 4140 6605
Wire Wire Line
	4140 6605 4140 6400
Wire Wire Line
	4140 6400 4600 6400
Wire Wire Line
	1110 6705 4250 6705
Wire Wire Line
	4250 6705 4250 6500
Wire Wire Line
	4250 6500 4600 6500
Wire Wire Line
	1110 6805 4365 6805
Wire Wire Line
	4365 6805 4365 6615
Wire Wire Line
	4365 6615 4600 6615
Wire Wire Line
	1110 6905 4475 6905
Wire Wire Line
	4475 6905 4475 6730
Wire Wire Line
	4475 6730 4600 6730
Wire Wire Line
	4600 6040 3470 6040
Wire Wire Line
	3470 6040 3470 6300
Wire Wire Line
	3470 6300 2050 6300
Wire Wire Line
	2050 6300 2050 6105
Wire Wire Line
	2050 6105 1110 6105
Wire Wire Line
	4600 6130 3520 6130
Wire Wire Line
	3520 6130 3520 6350
Wire Wire Line
	3520 6350 1995 6350
Wire Wire Line
	1995 6350 1995 6205
Wire Wire Line
	1995 6205 1110 6205
Wire Wire Line
	5990 6040 6235 6040
Wire Wire Line
	6235 6140 5990 6140
Wire Wire Line
	5990 6140 5990 6130
Wire Wire Line
	4040 4850 4250 4850
Wire Wire Line
	4250 4850 4250 4900
Wire Wire Line
	4250 4900 4350 4900
Wire Wire Line
	4040 4750 4350 4750
Wire Wire Line
	3490 4630 3490 4005
Connection ~ 3490 4005
Wire Wire Line
	3580 4745 3580 4100
Connection ~ 3580 4100
Wire Wire Line
	2285 1290 2390 1290
Wire Wire Line
	2385 1390 2285 1390
Wire Wire Line
	3555 1290 4190 1290
Wire Wire Line
	3550 1380 4190 1380
Wire Wire Line
	4190 1495 3550 1495
Wire Wire Line
	2285 1490 2385 1490
Wire Wire Line
	10935 3870 10770 3870
Wire Wire Line
	10770 3870 10770 4330
Wire Wire Line
	10935 4170 10770 4170
Connection ~ 10770 4170
Wire Wire Line
	10935 4580 10770 4580
Wire Wire Line
	10770 4580 10770 5050
Wire Wire Line
	10935 4880 10770 4880
Connection ~ 10770 4880
Wire Wire Line
	10935 5350 10770 5350
Wire Wire Line
	10770 5350 10770 5850
Wire Wire Line
	10935 5650 10770 5650
Connection ~ 10770 5650
Wire Wire Line
	10550 4790 10550 3970
Wire Wire Line
	10550 3970 10935 3970
Wire Wire Line
	10935 4070 10890 4070
Wire Wire Line
	10890 4070 10890 3970
Connection ~ 10890 3970
Wire Wire Line
	10635 4900 10635 4680
Wire Wire Line
	10635 4680 10935 4680
Wire Wire Line
	10935 4780 10895 4780
Wire Wire Line
	10895 4780 10895 4680
Connection ~ 10895 4680
Wire Wire Line
	10620 5000 10620 5450
Wire Wire Line
	10620 5450 10935 5450
Wire Wire Line
	10935 5550 10895 5550
Wire Wire Line
	10895 5550 10895 5450
Connection ~ 10895 5450
Wire Wire Line
	3300 3350 3600 3350
Wire Wire Line
	3600 3350 3600 2360
Wire Wire Line
	3600 2360 4190 2360
Wire Wire Line
	3300 4005 4350 4005
Wire Wire Line
	3300 4100 4350 4100
Wire Wire Line
	3490 4630 3300 4630
Wire Wire Line
	3300 4745 3580 4745
Wire Wire Line
	3300 4955 3355 4955
Wire Wire Line
	3355 4955 3355 5135
Wire Wire Line
	3355 5135 3885 5135
Wire Wire Line
	3885 5135 3885 5140
Wire Wire Line
	1535 4490 1535 4855
Wire Wire Line
	1535 4855 850  4855
Wire Wire Line
	850  4855 850  5060
Wire Wire Line
	850  5060 890  5060
Wire Wire Line
	1090 4490 1535 4490
Wire Wire Line
	1090 4590 1470 4590
Wire Wire Line
	1470 4590 1470 4825
Wire Wire Line
	1470 4825 785  4825
Wire Wire Line
	785  4825 785  5210
Wire Wire Line
	785  5210 890  5210
Wire Wire Line
	2040 5060 2100 5060
Wire Wire Line
	2100 5060 2100 4410
Wire Wire Line
	2100 4410 2160 4410
Wire Wire Line
	2645 5535 2040 5535
Text Label 2615 5710 2    60   ~ 0
scl_intern
Wire Wire Line
	2040 5710 2615 5710
Text Label 6185 1890 2    60   ~ 0
QI_en
Wire Wire Line
	5900 1890 6185 1890
Text Label 2440 5295 2    60   ~ 0
QI_en
Wire Wire Line
	2040 5215 2145 5215
Text Label 3860 2095 0    60   ~ 0
int_QI
Wire Wire Line
	3860 2095 4190 2095
Text Label 2435 5375 2    60   ~ 0
int_QI
Wire Wire Line
	2040 5375 2435 5375
Wire Wire Line
	2145 5215 2145 5295
Wire Wire Line
	2145 5295 2440 5295
Text Notes 6650 3755 0    60   ~ 0
On/off switch
Text Notes 9230 3070 0    60   ~ 0
Status LEDs
Wire Wire Line
	9040 4535 9515 4535
Text Label 9515 4535 2    60   ~ 0
sda_intern
Wire Wire Line
	9040 4625 9515 4625
Text Label 9515 4625 2    60   ~ 0
scl_intern
Wire Wire Line
	7850 4545 7580 4545
Wire Wire Line
	7580 4545 7580 1985
Wire Wire Line
	7580 1985 5900 1985
$EndSCHEMATC
