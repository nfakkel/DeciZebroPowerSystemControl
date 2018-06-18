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
Sheet 3 6
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
L LTC4412 U4
U 1 1 5AFEE155
P 2720 2950
F 0 "U4" H 2720 3350 60  0000 C CNN
F 1 "LTC4412" H 2720 2500 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23-6" H 2720 2500 60  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/4412fb.pdf" H 2720 2500 60  0001 C CNN
	1    2720 2950
	1    0    0    -1  
$EndComp
$Comp
L device:Q_PMOS_DGS Q3
U 1 1 5AFEE1A0
P 3500 2100
F 0 "Q3" H 3700 2150 50  0000 L CNN
F 1 "IPD85P04P4-07" H 3700 2050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-3_TabPin2" H 3700 2200 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/196/IPD85P04P4-07_DS_10-349929.pdf" H 3500 2100 50  0001 C CNN
	1    3500 2100
	0    -1   -1   0   
$EndComp
$Comp
L device:R R13
U 1 1 5AFEE26A
P 4100 2900
F 0 "R13" V 4180 2900 50  0000 C CNN
F 1 "470k" V 4100 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 4030 2900 50  0001 C CNN
F 3 "https://nl.mouser.com/ProductDetail/Vishay-Beyschlag/MCS04020C4703FE000?qs=sGAEpiMZZMtlubZbdhIBIMAhWB6%252bRofmvxprcUCoTdE%3d" H 4100 2900 50  0001 C CNN
	1    4100 2900
	1    0    0    -1  
$EndComp
$Comp
L device:Q_PMOS_DGS Q2
U 1 1 5AFEE2E4
P 2905 1150
F 0 "Q2" H 3105 1200 50  0000 L CNN
F 1 "IPD85P04P4-07" H 3105 1100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-3_TabPin2" H 3105 1250 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/196/IPD85P04P4-07_DS_10-349929.pdf" H 2905 1150 50  0001 C CNN
	1    2905 1150
	0    -1   -1   0   
$EndComp
$Comp
L LT1370 U6
U 1 1 5AFEF402
P 6400 2300
F 0 "U6" H 6400 3050 60  0000 C CNN
F 1 "LT1370" H 6400 1550 60  0000 C CNN
F 2 "Library:LT1370CT7" H 6400 1550 60  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/1370fs.pdf" H 6400 1550 60  0001 C CNN
	1    6400 2300
	1    0    0    -1  
$EndComp
$Comp
L device:C C17
U 1 1 5B017E60
P 4850 1850
F 0 "C17" H 4875 1950 50  0000 L CNN
F 1 "47u" H 4875 1750 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-X_EIA-7343-43_Hand" H 4888 1700 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/212/KEM_T2009_T495-1092841.pdf" H 4850 1850 50  0001 C CNN
	1    4850 1850
	1    0    0    -1  
$EndComp
$Comp
L device:C C19
U 1 1 5B019294
P 5350 2050
F 0 "C19" H 5375 2150 50  0000 L CNN
F 1 "4.7n" H 5375 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5388 1900 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/445/885012205048-554055.pdf" H 5350 2050 50  0001 C CNN
	1    5350 2050
	1    0    0    -1  
$EndComp
$Comp
L device:C C18
U 1 1 5B0192C7
P 5100 2050
F 0 "C18" H 5125 2150 50  0000 L CNN
F 1 "4.7n" H 5125 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5138 1900 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/445/885012205048-554055.pdf" H 5100 2050 50  0001 C CNN
	1    5100 2050
	1    0    0    -1  
$EndComp
$Comp
L device:R R15
U 1 1 5B019302
P 5100 2450
F 0 "R15" V 5180 2450 50  0000 C CNN
F 1 "2k" V 5100 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5030 2450 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/427/crcwce3-1223726.pdf" H 5100 2450 50  0001 C CNN
	1    5100 2450
	1    0    0    -1  
$EndComp
$Comp
L device:L L2
U 1 1 5B01962E
P 7600 1850
F 0 "L2" V 7550 1850 50  0000 C CNN
F 1 "680u" V 7675 1850 50  0000 C CNN
F 2 "Library:coil1115x1000" H 7600 1850 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/3/ASPI-1040HI-23933.pdf" H 7600 1850 50  0001 C CNN
	1    7600 1850
	0    1    1    0   
$EndComp
$Comp
L device:C C20
U 1 1 5B01970A
P 8050 1850
F 0 "C20" H 8075 1950 50  0000 L CNN
F 1 "2.2u" H 8075 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8088 1700 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/396/mlcc02_e-1307760.pdf" H 8050 1850 50  0001 C CNN
	1    8050 1850
	0    -1   -1   0   
$EndComp
$Comp
L device:D_special D8
U 1 1 5B019C6E
P 8450 2800
AR Path="/5B019C6E" Ref="D8"  Part="1" 
AR Path="/5AF2E888/5B019C6E" Ref="D8"  Part="1" 
F 0 "D8" H 8450 2900 50  0000 C CNN
F 1 "PMEG100V060ELPDZ" H 8450 2700 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-277A" H 8450 2800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PMEG100V060ELPD.pdf" H 8450 2800 50  0001 C CNN
	1    8450 2800
	0    -1   -1   0   
$EndComp
$Comp
L device:L L4
U 1 1 5B019CBB
P 8850 1850
F 0 "L4" V 8800 1850 50  0000 C CNN
F 1 "680u" V 8925 1850 50  0000 C CNN
F 2 "Library:coil1115x1000" H 8850 1850 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/3/ASPI-1040HI-23933.pdf" H 8850 1850 50  0001 C CNN
	1    8850 1850
	0    1    1    0   
$EndComp
$Comp
L device:R R17
U 1 1 5B019CF8
P 9150 2100
F 0 "R17" V 9230 2100 50  0000 C CNN
F 1 "60k" V 9150 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9080 2100 50  0001 C CNN
F 3 "" H 9150 2100 50  0001 C CNN
	1    9150 2100
	1    0    0    -1  
$EndComp
$Comp
L device:R R14
U 1 1 5B019D53
P 4280 5695
F 0 "R14" V 4360 5695 50  0000 C CNN
F 1 "11k" V 4280 5695 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 4210 5695 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/427/crcwce3-1223726.pdf" H 4280 5695 50  0001 C CNN
	1    4280 5695
	0    1    1    0   
$EndComp
$Comp
L C C23
U 1 1 5B019D8E
P 9800 2300
F 0 "C23" H 9825 2400 50  0000 L CNN
F 1 "47u" H 9825 2200 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-X_EIA-7343-43_Hand" H 9838 2150 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/212/KEM_T2009_T495-1092841.pdf" H 9800 2300 50  0001 C CNN
	1    9800 2300
	-1   0    0    1   
$EndComp
$Comp
L device:L L3
U 1 1 5B021A29
P 7750 4150
F 0 "L3" V 7700 4150 50  0000 C CNN
F 1 "680u" V 7825 4150 50  0000 C CNN
F 2 "Inductors_SMD:L_1210" H 7750 4150 50  0001 C CNN
F 3 "https://datasheet.octopart.com/CBC3225T100KR-Taiyo-Yuden-datasheet-101669841.pdf" H 7750 4150 50  0001 C CNN
	1    7750 4150
	0    1    1    0   
$EndComp
$Comp
L device:C C21
U 1 1 5B021AAE
P 8300 4150
F 0 "C21" H 8325 4250 50  0000 L CNN
F 1 "2.2u" H 8325 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8338 4000 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/396/mlcc02_e-1307760.pdf" H 8300 4150 50  0001 C CNN
	1    8300 4150
	0    -1   -1   0   
$EndComp
$Comp
L device:L L5
U 1 1 5B021B0D
P 9050 4150
F 0 "L5" V 9000 4150 50  0000 C CNN
F 1 "680u" V 9125 4150 50  0000 C CNN
F 2 "Inductors_SMD:L_1210" H 9050 4150 50  0001 C CNN
F 3 "https://datasheet.octopart.com/CBC3225T100KR-Taiyo-Yuden-datasheet-101669841.pdf" H 9050 4150 50  0001 C CNN
	1    9050 4150
	0    1    1    0   
$EndComp
$Comp
L device:Q_NMOS_DGS Q4
U 1 1 5B021B4E
P 7900 4750
AR Path="/5B021B4E" Ref="Q4"  Part="1" 
AR Path="/5AF2E888/5B021B4E" Ref="Q4"  Part="1" 
F 0 "Q4" H 8100 4800 50  0000 L CNN
F 1 "BSS316N H6327 " H 8100 4700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8100 4850 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/196/BSS316N_Rev2.3-63035.pdf" H 7900 4750 50  0001 C CNN
	1    7900 4750
	1    0    0    -1  
$EndComp
$Comp
L D D9
U 1 1 5B021D13
P 8800 4550
AR Path="/5B021D13" Ref="D9"  Part="1" 
AR Path="/5AF2E888/5B021D13" Ref="D9"  Part="1" 
F 0 "D9" H 8800 4650 50  0000 C CNN
F 1 "MBR360G" H 8800 4450 50  0000 C CNN
F 2 "Diodes_THT:D_DO-201_P15.24mm_Horizontal" H 8800 4550 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/MBR350-D.PDF" H 8800 4550 50  0001 C CNN
	1    8800 4550
	0    -1   -1   0   
$EndComp
$Comp
L C C22
U 1 1 5B021F6D
P 9600 4600
F 0 "C22" H 9625 4700 50  0000 L CNN
F 1 "47u" H 9625 4500 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-X_EIA-7343-43_Hand" H 9638 4450 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/212/KEM_T2009_T495-1092841.pdf" H 9600 4600 50  0001 C CNN
	1    9600 4600
	-1   0    0    1   
$EndComp
$Comp
L device:C C11
U 1 1 5B03E107
P 1505 5595
F 0 "C11" H 1530 5695 50  0000 L CNN
F 1 "0.1u" H 1530 5495 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1543 5445 50  0001 C CNN
F 3 "" H 1505 5595 50  0001 C CNN
	1    1505 5595
	1    0    0    -1  
$EndComp
$Comp
L device:C C12
U 1 1 5B03E510
P 1560 5190
F 0 "C12" H 1585 5290 50  0000 L CNN
F 1 "0.1u" H 1585 5090 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1598 5040 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/212/KEM_C1006_X5R_SMD-1103249.pdf" H 1560 5190 50  0001 C CNN
	1    1560 5190
	1    0    0    -1  
$EndComp
$Comp
L device:C C14
U 1 1 5B03E56D
P 1800 5190
F 0 "C14" H 1825 5290 50  0000 L CNN
F 1 "10u" H 1825 5090 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1838 5040 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/212/KEM_C1006_X5R_SMD-1103249.pdf" H 1800 5190 50  0001 C CNN
	1    1800 5190
	1    0    0    -1  
$EndComp
$Comp
L device:C C15
U 1 1 5B03E602
P 3220 6825
F 0 "C15" H 3245 6925 50  0000 L CNN
F 1 "0.1u" H 3245 6725 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3258 6675 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/212/KEM_C1006_X5R_SMD-1103249.pdf" H 3220 6825 50  0001 C CNN
	1    3220 6825
	-1   0    0    -1  
$EndComp
$Comp
L device:C C16
U 1 1 5B03E689
P 2900 6825
F 0 "C16" H 2925 6925 50  0000 L CNN
F 1 "10u" H 2925 6725 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2938 6675 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/212/KEM_C1006_X5R_SMD-1103249.pdf" H 2900 6825 50  0001 C CNN
	1    2900 6825
	-1   0    0    -1  
$EndComp
Text HLabel 5920 4150 0    60   Input ~ 0
solar_in+
Text HLabel 7550 4750 0    60   Input ~ 0
pwm_solar
Text HLabel 4160 5195 2    60   BiDi ~ 0
sda_smbus
Text HLabel 2450 6445 0    60   BiDi ~ 0
scl_smbus
$Comp
L device:R R11
U 1 1 5B0470F7
P 1030 2850
F 0 "R11" V 1110 2850 50  0000 C CNN
F 1 "100k" V 1030 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 960 2850 50  0001 C CNN
F 3 "" H 1030 2850 50  0001 C CNN
	1    1030 2850
	1    0    0    -1  
$EndComp
$Comp
L device:R R12
U 1 1 5B0471BC
P 1030 3290
F 0 "R12" V 1110 3290 50  0000 C CNN
F 1 "8k" V 1030 3290 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 960 3290 50  0001 C CNN
F 3 "" H 1030 3290 50  0001 C CNN
	1    1030 3290
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR033
U 1 1 5B0476F2
P 1030 3440
F 0 "#PWR033" H 1030 3190 50  0001 C CNN
F 1 "GND" H 1030 3290 50  0000 C CNN
F 2 "" H 1030 3440 50  0001 C CNN
F 3 "" H 1030 3440 50  0001 C CNN
	1    1030 3440
	1    0    0    -1  
$EndComp
Text HLabel 1080 3060 2    60   Output ~ 0
v_laptop
Text HLabel 1090 2405 0    60   Input ~ 0
LAPTOP_IN+
Text HLabel 1815 1050 0    60   Input ~ 0
QI_IN+
Text Label 9150 3050 0    60   ~ 0
POT_IN
Text Label 9250 2500 0    60   ~ 0
POT_OUT
Text Label 1250 5945 0    60   ~ 0
POT_IN
Text Label 4880 5695 2    60   ~ 0
POT_OUT
Text HLabel 10435 1850 2    60   Output ~ 0
LAP_QI_OUT-
Text HLabel 10450 3200 2    60   Output ~ 0
LAP_QI_OUT+
Text HLabel 7400 5250 0    60   Input ~ 0
solar_in-
Text HLabel 10550 4150 2    60   Output ~ 0
solar_out-
Text HLabel 10600 5250 2    60   Output ~ 0
solar_out+
$Comp
L device:Q_PMOS_DGS Q5
U 1 1 5B0429EC
P 10050 3300
F 0 "Q5" H 10250 3350 50  0000 L CNN
F 1 "IPD85P04P4-07" H 10250 3250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-3_TabPin2" H 10250 3400 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/196/IPD85P04P4-07_DS_10-349929.pdf" H 10050 3300 50  0001 C CNN
	1    10050 3300
	0    -1   -1   0   
$EndComp
$Comp
L device:Q_PMOS_DGS Q6
U 1 1 5B043A2C
P 10050 5350
F 0 "Q6" H 10250 5400 50  0000 L CNN
F 1 "IPD85P04P4-07" H 10250 5300 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-3_TabPin2" H 10250 5450 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/196/IPD85P04P4-07_DS_10-349929.pdf" H 10050 5350 50  0001 C CNN
	1    10050 5350
	0    -1   -1   0   
$EndComp
Text HLabel 1895 3200 0    60   Input ~ 0
INPUT_SEL
Text Notes 520  1830 0    60   ~ 0
Power path selector\nAble to switch between laptop and QI
Text Notes 6185 1255 0    60   ~ 0
Cuk converter for laptop or QI to 12.0-16.8V
Text Notes 8155 3915 0    60   ~ 0
Cuk converter for PV to 12.0-16.8V
Text Notes 2675 4100 0    60   ~ 0
Digital potentiometer
NoConn ~ 5600 2150
NoConn ~ 5600 2450
$Comp
L power1:GND #PWR034
U 1 1 5B102012
P 3500 7425
F 0 "#PWR034" H 3500 7175 50  0001 C CNN
F 1 "GND" H 3504 7257 50  0000 C CNN
F 2 "" H 3500 7425 50  0001 C CNN
F 3 "" H 3500 7425 50  0001 C CNN
	1    3500 7425
	1    0    0    -1  
$EndComp
$Comp
L device:C C13
U 1 1 5B03E1A4
P 1745 5595
F 0 "C13" H 1770 5695 50  0000 L CNN
F 1 "10u" H 1770 5495 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1783 5445 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/212/KEM_C1006_X5R_SMD-1103249.pdf" H 1745 5595 50  0001 C CNN
	1    1745 5595
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR035
U 1 1 5B1ED118
P 1135 5745
F 0 "#PWR035" H 1135 5495 50  0001 C CNN
F 1 "GND" H 1139 5577 50  0000 C CNN
F 2 "" H 1135 5745 50  0001 C CNN
F 3 "" H 1135 5745 50  0001 C CNN
	1    1135 5745
	1    0    0    -1  
$EndComp
Text HLabel 1870 3835 0    50   Input ~ 0
QI_IN-
Text HLabel 1865 3685 0    50   Input ~ 0
LAPTOP_IN-
NoConn ~ 4000 5445
$Comp
L PWR_FLAG #FLG036
U 1 1 5B0C7F6D
P 1155 2280
F 0 "#FLG036" H 1155 2355 50  0001 C CNN
F 1 "PWR_FLAG" H 1155 2430 50  0000 C CNN
F 2 "" H 1155 2280 50  0001 C CNN
F 3 "" H 1155 2280 50  0001 C CNN
	1    1155 2280
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG037
U 1 1 5B0C8D13
P 1855 975
F 0 "#FLG037" H 1855 1050 50  0001 C CNN
F 1 "PWR_FLAG" H 1855 1125 50  0000 C CNN
F 2 "" H 1855 975 50  0001 C CNN
F 3 "" H 1855 975 50  0001 C CNN
	1    1855 975 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG038
U 1 1 5B0CBDAD
P 5970 4080
F 0 "#FLG038" H 5970 4155 50  0001 C CNN
F 1 "PWR_FLAG" H 5970 4230 50  0000 C CNN
F 2 "" H 5970 4080 50  0001 C CNN
F 3 "" H 5970 4080 50  0001 C CNN
	1    5970 4080
	1    0    0    -1  
$EndComp
$Comp
L AD5121 U5
U 1 1 5B0CD2DC
P 2900 5445
F 0 "U5" H 3000 5645 60  0000 C CNN
F 1 "AD5121" H 3050 5445 60  0000 C CNN
F 2 "Housings_CSP:LFCSP-16-1EP_3x3mm_Pitch0.5mm" H 3050 5445 60  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/609/AD5121_5141-877035.pdf" H 3050 5445 60  0001 C CNN
	1    2900 5445
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG039
U 1 1 5B094665
P 10560 5200
F 0 "#FLG039" H 10560 5275 50  0001 C CNN
F 1 "PWR_FLAG" H 10560 5350 50  0000 C CNN
F 2 "" H 10560 5200 50  0001 C CNN
F 3 "" H 10560 5200 50  0001 C CNN
	1    10560 5200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG040
U 1 1 5B09534F
P 10375 3030
F 0 "#FLG040" H 10375 3105 50  0001 C CNN
F 1 "PWR_FLAG" H 10375 3180 50  0000 C CNN
F 2 "" H 10375 3030 50  0001 C CNN
F 3 "" H 10375 3030 50  0001 C CNN
	1    10375 3030
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG041
U 1 1 5B082B6F
P 10450 4095
F 0 "#FLG041" H 10450 4170 50  0001 C CNN
F 1 "PWR_FLAG" H 10450 4245 50  0000 C CNN
F 2 "" H 10450 4095 50  0001 C CNN
F 3 "" H 10450 4095 50  0001 C CNN
	1    10450 4095
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG042
U 1 1 5B0830D8
P 10250 1770
F 0 "#FLG042" H 10250 1845 50  0001 C CNN
F 1 "PWR_FLAG" H 10250 1920 50  0000 C CNN
F 2 "" H 10250 1770 50  0001 C CNN
F 3 "" H 10250 1770 50  0001 C CNN
	1    10250 1770
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG043
U 1 1 5B083901
P 2245 3685
F 0 "#FLG043" H 2245 3760 50  0001 C CNN
F 1 "PWR_FLAG" H 2245 3835 50  0000 C CNN
F 2 "" H 2245 3685 50  0001 C CNN
F 3 "" H 2245 3685 50  0001 C CNN
	1    2245 3685
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG044
U 1 1 5B083D5A
P 7590 5210
F 0 "#FLG044" H 7590 5285 50  0001 C CNN
F 1 "PWR_FLAG" H 7590 5360 50  0000 C CNN
F 2 "" H 7590 5210 50  0001 C CNN
F 3 "" H 7590 5210 50  0001 C CNN
	1    7590 5210
	1    0    0    -1  
$EndComp
$Comp
L INA226 INA1
U 1 1 5B086138
P 6080 4760
F 0 "INA1" H 6080 4460 60  0000 C CNN
F 1 "INA226" H 6080 5060 60  0000 C CNN
F 2 "vssop:VSSOP-10_3x3mm_Pitch0.5mm" H 6080 4760 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina226.pdf" H 6080 4760 60  0001 C CNN
	1    6080 4760
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR045
U 1 1 5B087651
P 5575 4490
F 0 "#PWR045" H 5575 4340 50  0001 C CNN
F 1 "+3.3V" H 5575 4630 50  0000 C CNN
F 2 "" H 5575 4490 50  0001 C CNN
F 3 "" H 5575 4490 50  0001 C CNN
	1    5575 4490
	1    0    0    -1  
$EndComp
Text HLabel 5510 4660 0    60   BiDi ~ 0
sda_smbus
Text HLabel 5445 4760 0    60   BiDi ~ 0
scl_smbus
NoConn ~ 5680 4860
$Comp
L GND #PWR046
U 1 1 5B08BCC5
P 5680 5245
F 0 "#PWR046" H 5680 4995 50  0001 C CNN
F 1 "GND" H 5680 5095 50  0000 C CNN
F 2 "" H 5680 5245 50  0001 C CNN
F 3 "" H 5680 5245 50  0001 C CNN
	1    5680 5245
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5B0DD85C
P 6850 4150
F 0 "R16" V 6930 4150 50  0000 C CNN
F 1 "100m" V 6850 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 6780 4150 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/447/PYu-PE_521_RoHS_L_5-1077989.pdf" H 6850 4150 50  0001 C CNN
	1    6850 4150
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR047
U 1 1 5B0EE6E7
P 1075 5145
F 0 "#PWR047" H 1075 4995 50  0001 C CNN
F 1 "+3.3V" H 1075 5285 50  0000 C CNN
F 2 "" H 1075 5145 50  0001 C CNN
F 3 "" H 1075 5145 50  0001 C CNN
	1    1075 5145
	1    0    0    -1  
$EndComp
$Comp
L FUSE F1
U 1 1 5B18CB1D
P 4455 1050
F 0 "F1" H 4655 1175 60  0000 C CNN
F 1 "FUSE" H 4655 800 60  0000 C CNN
F 2 "Library:0154001.DR" H 4655 740 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2140394.pdf" H 4455 1050 60  0001 C CNN
	1    4455 1050
	1    0    0    -1  
$EndComp
$Comp
L FUSE F5
U 1 1 5B18D8BF
P 6060 4150
F 0 "F5" H 6260 4275 60  0000 C CNN
F 1 "FUSE" H 6260 3900 60  0000 C CNN
F 2 "Library:0154001.DR" H 6260 3840 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2140394.pdf" H 6060 4150 60  0001 C CNN
	1    6060 4150
	1    0    0    -1  
$EndComp
$Comp
L R R52
U 1 1 5B1A5066
P 2485 1255
F 0 "R52" V 2565 1255 50  0000 C CNN
F 1 "500" V 2485 1255 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2415 1255 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/447/PYu-RC_Group_51_RoHS_L_9-1314892.pdf" H 2485 1255 50  0001 C CNN
	1    2485 1255
	1    0    0    -1  
$EndComp
$Comp
L LED D22
U 1 1 5B1A53A5
P 2485 1555
F 0 "D22" H 2485 1655 50  0000 C CNN
F 1 "LED" H 2485 1455 50  0000 C CNN
F 2 "LEDs:LED_0603" H 2485 1555 50  0001 C CNN
F 3 "" H 2485 1555 50  0001 C CNN
	1    2485 1555
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR048
U 1 1 5B1A61C9
P 2485 1705
F 0 "#PWR048" H 2485 1455 50  0001 C CNN
F 1 "GND" H 2485 1555 50  0000 C CNN
F 2 "" H 2485 1705 50  0001 C CNN
F 3 "" H 2485 1705 50  0001 C CNN
	1    2485 1705
	1    0    0    -1  
$EndComp
$Comp
L R R51
U 1 1 5B1ABF86
P 790 2865
F 0 "R51" V 870 2865 50  0000 C CNN
F 1 "1.4k" V 790 2865 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 720 2865 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/447/PYu-RC_Group_51_RoHS_L_9-1314892.pdf" H 790 2865 50  0001 C CNN
	1    790  2865
	1    0    0    -1  
$EndComp
$Comp
L LED D21
U 1 1 5B1ABF8C
P 790 3290
F 0 "D21" H 790 3390 50  0000 C CNN
F 1 "LED" H 790 3190 50  0000 C CNN
F 2 "LEDs:LED_0603" H 790 3290 50  0001 C CNN
F 3 "" H 790 3290 50  0001 C CNN
	1    790  3290
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR049
U 1 1 5B1ABF92
P 790 3440
F 0 "#PWR049" H 790 3190 50  0001 C CNN
F 1 "GND" H 790 3290 50  0000 C CNN
F 2 "" H 790 3440 50  0001 C CNN
F 3 "" H 790 3440 50  0001 C CNN
	1    790  3440
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4645 7050 4150
Wire Wire Line
	6950 4645 7050 4645
Wire Wire Line
	6950 4760 6950 4645
Connection ~ 4850 1400
Connection ~ 4100 2000
Wire Wire Line
	3700 2000 4250 2000
Wire Wire Line
	5680 4760 5445 4760
Wire Wire Line
	6625 4860 6480 4860
Wire Wire Line
	6625 5120 6625 4860
Wire Wire Line
	5510 5120 6625 5120
Wire Wire Line
	5510 4660 5510 5120
Wire Wire Line
	5680 4660 5510 4660
Connection ~ 5680 5220
Wire Wire Line
	6480 5220 5680 5220
Wire Wire Line
	6480 4960 6480 5220
Wire Wire Line
	5680 4960 5680 5245
Wire Wire Line
	5575 4560 5575 4490
Wire Wire Line
	4735 4560 5680 4560
Wire Wire Line
	6950 4760 6480 4760
Wire Wire Line
	7000 4150 7600 4150
Connection ~ 7590 5250
Wire Wire Line
	7590 5210 7590 5250
Connection ~ 10245 1850
Wire Wire Line
	10245 1850 10245 1855
Wire Wire Line
	10245 1855 10250 1855
Wire Wire Line
	10250 1855 10250 1770
Connection ~ 10450 4150
Wire Wire Line
	10450 4150 10450 4095
Connection ~ 10375 3200
Wire Wire Line
	10375 3200 10375 3030
Connection ~ 10560 5250
Wire Wire Line
	10560 5200 10560 5250
Connection ~ 2050 4255
Wire Wire Line
	2050 4210 3450 4210
Connection ~ 2050 4295
Wire Wire Line
	3180 4255 2050 4255
Connection ~ 2050 4380
Wire Wire Line
	2050 4295 2900 4295
Wire Wire Line
	2050 4380 2600 4380
Connection ~ 2050 5040
Wire Wire Line
	5970 4080 5970 4150
Connection ~ 1855 1050
Wire Wire Line
	1855 975  1855 1050
Connection ~ 1155 2405
Connection ~ 1155 2700
Wire Wire Line
	1155 2405 1090 2405
Wire Wire Line
	1155 2700 1155 2280
Wire Wire Line
	4000 6665 4000 5945
Wire Wire Line
	3180 4255 3180 4595
Wire Wire Line
	2050 4210 2050 5195
Wire Wire Line
	1255 5040 1255 5445
Connection ~ 3500 6665
Wire Wire Line
	3500 6665 4000 6665
Connection ~ 3500 6550
Wire Wire Line
	3500 6445 3500 7425
Connection ~ 1960 5945
Wire Wire Line
	1960 5695 1960 5945
Wire Wire Line
	2050 5695 1960 5695
Wire Wire Line
	2600 6445 2450 6445
Wire Wire Line
	2600 4380 2600 4595
Wire Wire Line
	2900 4295 2900 4595
Wire Wire Line
	3450 4210 3450 4595
Connection ~ 1280 5745
Connection ~ 1505 5745
Wire Wire Line
	1135 5745 1745 5745
Connection ~ 1560 5340
Wire Wire Line
	1280 5340 1280 5745
Wire Wire Line
	1280 5340 1800 5340
Connection ~ 1560 5040
Connection ~ 1505 5445
Connection ~ 1745 5445
Wire Wire Line
	1255 5445 2050 5445
Connection ~ 1800 5040
Wire Wire Line
	1255 5040 2050 5040
Wire Wire Line
	4130 5695 4000 5695
Wire Wire Line
	3200 6550 3500 6550
Wire Wire Line
	3200 6445 3200 6550
Wire Wire Line
	1250 5945 2050 5945
Wire Wire Line
	4000 5195 4160 5195
Wire Wire Line
	790  2700 2070 2700
Connection ~ 1030 3060
Wire Wire Line
	1030 3060 1080 3060
Connection ~ 10350 4150
Wire Wire Line
	10350 4150 10350 5550
Wire Wire Line
	10350 5550 10050 5550
Wire Wire Line
	10250 5250 10600 5250
Wire Wire Line
	9200 4150 10550 4150
Wire Wire Line
	7400 5250 9850 5250
Connection ~ 10050 1850
Wire Wire Line
	10050 1850 10050 2500
Wire Wire Line
	10050 2500 9650 2500
Wire Wire Line
	9650 2500 9650 3500
Wire Wire Line
	9650 3500 10050 3500
Wire Wire Line
	10250 3200 10450 3200
Wire Wire Line
	8950 2150 7200 2150
Wire Wire Line
	7200 1850 7450 1850
Wire Wire Line
	7850 2450 7200 2450
Wire Wire Line
	1030 3000 1030 3140
Connection ~ 7850 1850
Wire Wire Line
	7850 1850 7850 2450
Connection ~ 9150 3200
Wire Wire Line
	9150 3200 9150 3050
Wire Wire Line
	8950 2500 8950 2150
Connection ~ 9150 2500
Wire Wire Line
	9150 2500 9150 2250
Connection ~ 9150 1850
Wire Wire Line
	8950 2500 9250 2500
Wire Wire Line
	8450 1850 8450 2650
Wire Wire Line
	8450 3200 8450 2950
Connection ~ 8000 5250
Connection ~ 8800 5250
Wire Wire Line
	8800 5250 8800 4700
Connection ~ 8800 4150
Connection ~ 4100 3200
Wire Wire Line
	4350 3200 4350 2450
Wire Wire Line
	3370 3200 4350 3200
Connection ~ 9800 3200
Connection ~ 9800 1850
Connection ~ 9600 5250
Connection ~ 9600 4150
Wire Wire Line
	7550 4750 7700 4750
Wire Wire Line
	9600 5250 9600 4750
Wire Wire Line
	8000 5250 8000 4950
Wire Wire Line
	9600 4150 9600 4450
Wire Wire Line
	8800 4150 8800 4400
Wire Wire Line
	8450 4150 8900 4150
Connection ~ 8000 4150
Wire Wire Line
	8000 4150 8000 4550
Wire Wire Line
	7900 4150 8150 4150
Connection ~ 1450 2700
Wire Wire Line
	1450 2700 1450 2000
Wire Wire Line
	1815 1050 2705 1050
Wire Wire Line
	9800 3200 9800 2450
Connection ~ 8450 3200
Wire Wire Line
	9800 1850 9800 2150
Wire Wire Line
	9000 1850 10435 1850
Connection ~ 8450 1850
Wire Wire Line
	8200 1850 8700 1850
Wire Wire Line
	7750 1850 7900 1850
Connection ~ 7400 1850
Connection ~ 5350 2700
Connection ~ 5100 2700
Wire Wire Line
	5100 2700 5100 2600
Wire Wire Line
	5100 2200 5100 2300
Connection ~ 5350 1850
Wire Wire Line
	5100 1850 5100 1900
Wire Wire Line
	5350 1850 5350 1900
Wire Wire Line
	5100 1850 5600 1850
Wire Wire Line
	7400 1400 7400 1850
Wire Wire Line
	4850 2700 5600 2700
Wire Wire Line
	4850 2000 4850 2700
Wire Wire Line
	4100 3200 4100 3050
Wire Wire Line
	4850 1350 4850 1700
Wire Wire Line
	4850 1400 7400 1400
Wire Wire Line
	4250 2000 4250 1050
Connection ~ 4100 2700
Wire Wire Line
	4100 2000 4100 2750
Wire Wire Line
	3370 2700 4100 2700
Wire Wire Line
	1450 2000 3300 2000
Wire Wire Line
	3500 2950 3500 2300
Wire Wire Line
	3370 2950 3500 2950
Connection ~ 7050 4150
Wire Wire Line
	6480 4560 6650 4560
Wire Wire Line
	6650 4150 6650 4660
Connection ~ 6650 4150
Wire Wire Line
	6650 4660 6480 4660
Connection ~ 6650 4560
Wire Wire Line
	1075 5145 1075 5215
Wire Wire Line
	1075 5215 1255 5215
Connection ~ 1255 5215
Wire Wire Line
	5350 2700 5350 2200
Connection ~ 5495 3200
Connection ~ 5495 2700
Wire Wire Line
	5495 3200 9850 3200
Wire Wire Line
	9150 1950 9150 1850
Wire Wire Line
	5495 3685 5495 2700
Wire Wire Line
	1865 3685 5495 3685
Wire Wire Line
	3105 1050 4455 1050
Wire Wire Line
	4855 1050 4850 1350
Wire Wire Line
	5920 4150 6060 4150
Connection ~ 5970 4150
Wire Wire Line
	6460 4150 6700 4150
Wire Wire Line
	1870 3835 2005 3835
Wire Wire Line
	2005 3835 2005 3685
Connection ~ 2005 3685
Connection ~ 1930 3685
Connection ~ 4250 1050
Wire Wire Line
	2485 1050 2485 1105
Connection ~ 2485 1050
Wire Wire Line
	2905 1350 2905 2450
Wire Wire Line
	2905 2450 4350 2450
Wire Wire Line
	790  2715 790  2700
Connection ~ 1030 2700
Wire Wire Line
	790  3015 790  3140
Wire Wire Line
	1930 3685 1930 2950
Wire Wire Line
	1930 2950 2070 2950
Wire Wire Line
	1895 3200 2070 3200
Connection ~ 2245 3685
Wire Wire Line
	4880 5695 4430 5695
Wire Wire Line
	2900 6445 2900 6675
Wire Wire Line
	2900 6675 3220 6675
Wire Wire Line
	2900 6975 3500 6975
Connection ~ 3500 6975
Connection ~ 3220 6975
Connection ~ 2900 6675
$Comp
L C C?
U 1 1 5B24DB17
P 4735 4785
F 0 "C?" H 4760 4885 50  0000 L CNN
F 1 ".1u" H 4760 4685 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4773 4635 50  0001 C CNN
F 3 "" H 4735 4785 50  0001 C CNN
	1    4735 4785
	1    0    0    -1  
$EndComp
Wire Wire Line
	4735 4560 4735 4635
Connection ~ 5575 4560
Wire Wire Line
	4735 4935 4735 5030
Wire Wire Line
	4735 5030 5680 5030
Connection ~ 5680 5030
$EndSCHEMATC
