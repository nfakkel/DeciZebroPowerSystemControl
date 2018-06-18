EESchema Schematic File Version 2
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
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
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
LIBS:p9221R
LIBS:tps562201
LIBS:tps565201
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
S 6650 4165 1085 1040
U 5B0BF04C
F0 "BMS" 60
F1 "BMS.sch" 60
F2 "VC4" B L 6650 4655 60 
F3 "VC3" B L 6650 4740 60 
F4 "VC2" B L 6650 4825 60 
F5 "VC1" B L 6650 4905 60 
F6 "VC0" B L 6650 4990 60 
F7 "SMBD" B R 7735 4685 60 
F8 "SMBC" B R 7735 4790 60 
F9 "ALERT" B R 7735 4895 60 
F10 "PACK-" B R 7735 4330 60 
F11 "BATT-" B L 6650 4330 60 
F12 "PACK+" B R 7735 4225 60 
F13 "BATT+" B L 6650 4230 60 
$EndSheet
$Comp
L Conn_01x05 J1
U 1 1 5B0C5150
P 4775 4855
F 0 "J1" H 4775 5155 50  0000 C CNN
F 1 "Conn_01x05" H 4775 4555 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B05B-XH-A_05x2.50mm_Straight" H 4775 4855 50  0001 C CNN
F 3 "" H 4775 4855 50  0001 C CNN
	1    4775 4855
	-1   0    0    1   
$EndComp
Wire Wire Line
	4975 4655 6650 4655
Wire Wire Line
	6650 4740 4975 4740
Wire Wire Line
	4975 4740 4975 4755
Wire Wire Line
	6650 4825 4975 4825
Wire Wire Line
	4975 4825 4975 4855
Wire Wire Line
	6650 4905 5010 4905
Wire Wire Line
	5010 4905 5010 4955
Wire Wire Line
	5010 4955 4975 4955
Wire Wire Line
	6650 4990 5100 4990
Wire Wire Line
	5100 4990 5100 5055
Wire Wire Line
	5100 5055 4975 5055
$Comp
L Conn_01x02 J2
U 1 1 5B0C6D09
P 4795 4325
F 0 "J2" H 4795 4425 50  0000 C CNN
F 1 "Conn_01x02" H 4795 4125 50  0000 C CNN
F 2 "Connectors_JST:JST_VH_B2P-VH-FB-B_2x3.96mm_Vertical" H 4795 4325 50  0001 C CNN
F 3 "" H 4795 4325 50  0001 C CNN
	1    4795 4325
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 4230 5005 4230
Wire Wire Line
	5005 4230 5005 4225
Wire Wire Line
	5005 4225 4995 4225
Wire Wire Line
	4995 4325 6615 4325
Wire Wire Line
	6615 4325 6615 4330
Wire Wire Line
	6615 4330 6650 4330
$Comp
L Conn_01x02 J3
U 1 1 5B0C7861
P 8615 4230
F 0 "J3" H 8615 4330 50  0000 C CNN
F 1 "Conn_01x02" H 8615 4030 50  0000 C CNN
F 2 "Connectors_JST:JST_VH_B2P-VH-FB-B_2x3.96mm_Vertical" H 8615 4230 50  0001 C CNN
F 3 "" H 8615 4230 50  0001 C CNN
	1    8615 4230
	1    0    0    -1  
$EndComp
Wire Wire Line
	7735 4225 8415 4225
Wire Wire Line
	8415 4225 8415 4230
Wire Wire Line
	7735 4330 8415 4330
$Comp
L Conn_01x03 J4
U 1 1 5B0C84F9
P 8625 4800
F 0 "J4" H 8625 5000 50  0000 C CNN
F 1 "Conn_01x03" H 8625 4600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 8625 4800 50  0001 C CNN
F 3 "" H 8625 4800 50  0001 C CNN
	1    8625 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 4700 7770 4700
Wire Wire Line
	7770 4700 7770 4685
Wire Wire Line
	7770 4685 7735 4685
Wire Wire Line
	8425 4800 7770 4800
Wire Wire Line
	7770 4800 7770 4790
Wire Wire Line
	7770 4790 7735 4790
Wire Wire Line
	8425 4900 7755 4900
Wire Wire Line
	7755 4900 7755 4895
Wire Wire Line
	7755 4895 7735 4895
$EndSCHEMATC
