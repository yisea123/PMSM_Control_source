EESchema Schematic File Version 4
LIBS:H7_Board-cache
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
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
L MCU_ST_STM32H7:STM32H743ZITx U2
U 1 1 5DD11955
P 8200 5100
F 0 "U2" H 8200 4450 50  0000 C CNN
F 1 "STM32H743ZITx" H 8200 3650 50  0000 C CNN
F 2 "Package_QFP:LQFP-144_20x20mm_P0.5mm" H 7100 1700 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00387108.pdf" H 8200 5100 50  0001 C CNN
	1    8200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1500 8500 1500
Connection ~ 7700 1500
Wire Wire Line
	7700 1500 7600 1500
Connection ~ 7800 1500
Wire Wire Line
	7800 1500 7700 1500
Connection ~ 7900 1500
Wire Wire Line
	7900 1500 7800 1500
Connection ~ 8000 1500
Wire Wire Line
	8000 1500 7900 1500
Connection ~ 8100 1500
Wire Wire Line
	8100 1500 8000 1500
Connection ~ 8200 1500
Wire Wire Line
	8200 1500 8100 1500
Connection ~ 8300 1500
Wire Wire Line
	8300 1500 8200 1500
Connection ~ 8400 1500
Wire Wire Line
	8400 1500 8300 1500
Connection ~ 8500 1500
Wire Wire Line
	8500 1500 8400 1500
Text Label 8100 1200 1    50   ~ 0
VDD_MCU
Wire Wire Line
	6900 2300 6850 2300
Wire Wire Line
	6900 2400 6850 2400
Wire Wire Line
	6850 2400 6850 2300
Connection ~ 6850 2300
Wire Wire Line
	6850 2300 6600 2300
Text Label 6600 2300 0    50   ~ 0
VCAP
Wire Wire Line
	6900 2500 6600 2500
Text Label 6600 2500 0    50   ~ 0
VREFP
Text Label 900  2050 1    50   ~ 0
VDD_MCU
Wire Wire Line
	900  2050 900  2200
$Comp
L Device:R_Small R1
U 1 1 5DD281F1
P 1150 2200
F 0 "R1" V 954 2200 50  0000 C CNN
F 1 "0" V 1045 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1150 2200 50  0001 C CNN
F 3 "~" H 1150 2200 50  0001 C CNN
	1    1150 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 2200 900  2200
$Comp
L power:GND #PWR02
U 1 1 5DD2959C
P 1400 2400
F 0 "#PWR02" H 1400 2150 50  0001 C CNN
F 1 "GND" H 1405 2227 50  0000 C CNN
F 2 "" H 1400 2400 50  0001 C CNN
F 3 "" H 1400 2400 50  0001 C CNN
	1    1400 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DD29EFD
P 900 2400
F 0 "#PWR01" H 900 2150 50  0001 C CNN
F 1 "GND" H 905 2227 50  0000 C CNN
F 2 "" H 900 2400 50  0001 C CNN
F 3 "" H 900 2400 50  0001 C CNN
	1    900  2400
	1    0    0    -1  
$EndComp
Text Label 1650 2050 1    50   ~ 0
VDDA
Wire Wire Line
	1650 2050 1650 2200
$Comp
L Device:R_Small R2
U 1 1 5DD2B140
P 1850 2200
F 0 "R2" V 1654 2200 50  0000 C CNN
F 1 "0" V 1745 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1850 2200 50  0001 C CNN
F 3 "~" H 1850 2200 50  0001 C CNN
	1    1850 2200
	0    1    1    0   
$EndComp
Text Label 2050 2050 1    50   ~ 0
VREFP
Wire Wire Line
	1750 2200 1650 2200
Connection ~ 1650 2200
Wire Wire Line
	1950 2200 2050 2200
Wire Wire Line
	2050 2200 2050 2050
Text Label 8800 1050 1    50   ~ 0
VDDA
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5DD32D19
P 8700 1300
F 0 "JP2" V 8654 1368 50  0000 L CNN
F 1 "SolderBridge" V 8745 1368 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 8700 1300 50  0001 C CNN
F 3 "~" H 8700 1300 50  0001 C CNN
	1    8700 1300
	0    1    1    0   
$EndComp
Text Label 7500 1200 1    50   ~ 0
VBAT
Wire Wire Line
	7500 1200 7500 1400
$Comp
L Device:C_Small C17
U 1 1 5DD378C9
P 4500 2050
F 0 "C17" H 4592 2096 50  0000 L CNN
F 1 "2.2u" H 4592 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4500 2050 50  0001 C CNN
F 3 "~" H 4500 2050 50  0001 C CNN
	1    4500 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 5DD3847F
P 4800 2050
F 0 "C18" H 4892 2096 50  0000 L CNN
F 1 "2.2u" H 4892 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4800 2050 50  0001 C CNN
F 3 "~" H 4800 2050 50  0001 C CNN
	1    4800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1950 4650 1950
Wire Wire Line
	4800 2150 4650 2150
Text Label 4650 1800 1    50   ~ 0
VCAP
Wire Wire Line
	4650 1800 4650 1850
Connection ~ 4650 1950
Wire Wire Line
	4650 1950 4500 1950
Wire Wire Line
	4650 2150 4650 2300
Connection ~ 4650 2150
Wire Wire Line
	4650 2150 4500 2150
$Comp
L power:GND #PWR010
U 1 1 5DD3AF39
P 4650 2300
F 0 "#PWR010" H 4650 2050 50  0001 C CNN
F 1 "GND" H 4655 2127 50  0000 C CNN
F 2 "" H 4650 2300 50  0001 C CNN
F 3 "" H 4650 2300 50  0001 C CNN
	1    4650 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5DD3B8AC
P 8150 9000
F 0 "#PWR016" H 8150 8750 50  0001 C CNN
F 1 "GND" H 8155 8827 50  0000 C CNN
F 2 "" H 8150 9000 50  0001 C CNN
F 3 "" H 8150 9000 50  0001 C CNN
	1    8150 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 9000 8150 8700
Wire Wire Line
	8150 8700 8200 8700
Connection ~ 8200 8700
Wire Wire Line
	8200 8700 8300 8700
Connection ~ 8300 8700
Wire Wire Line
	8300 8700 8400 8700
Connection ~ 8400 8700
Wire Wire Line
	8400 8700 8500 8700
Wire Wire Line
	8150 8700 8100 8700
Connection ~ 8150 8700
Connection ~ 7800 8700
Wire Wire Line
	7800 8700 7700 8700
Connection ~ 7900 8700
Wire Wire Line
	7900 8700 7800 8700
Connection ~ 8000 8700
Wire Wire Line
	8000 8700 7900 8700
Connection ~ 8100 8700
Wire Wire Line
	8100 8700 8000 8700
Wire Wire Line
	8600 8700 8600 9050
Text Label 8600 9050 3    50   ~ 0
AGND
Text Label 2700 900  1    50   ~ 0
VDD_MCU
$Comp
L Device:C_Small C11
U 1 1 5DD40B33
P 4350 1150
F 0 "C11" H 4442 1196 50  0000 L CNN
F 1 "4.7u" H 4442 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4350 1150 50  0001 C CNN
F 3 "~" H 4350 1150 50  0001 C CNN
	1    4350 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5DD41679
P 850 1150
F 0 "C1" H 942 1196 50  0000 L CNN
F 1 "0.1u" H 942 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 850 1150 50  0001 C CNN
F 3 "~" H 850 1150 50  0001 C CNN
	1    850  1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DD41A55
P 1150 1150
F 0 "C2" H 1242 1196 50  0000 L CNN
F 1 "0.1u" H 1242 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1150 1150 50  0001 C CNN
F 3 "~" H 1150 1150 50  0001 C CNN
	1    1150 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5DD41FA3
P 1500 1150
F 0 "C3" H 1592 1196 50  0000 L CNN
F 1 "0.1u" H 1592 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1500 1150 50  0001 C CNN
F 3 "~" H 1500 1150 50  0001 C CNN
	1    1500 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5DD42508
P 1800 1150
F 0 "C4" H 1892 1196 50  0000 L CNN
F 1 "0.1u" H 1892 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1800 1150 50  0001 C CNN
F 3 "~" H 1800 1150 50  0001 C CNN
	1    1800 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5DD481BC
P 2150 1150
F 0 "C5" H 2242 1196 50  0000 L CNN
F 1 "0.1u" H 2242 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2150 1150 50  0001 C CNN
F 3 "~" H 2150 1150 50  0001 C CNN
	1    2150 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5DD4866F
P 2500 1150
F 0 "C6" H 2592 1196 50  0000 L CNN
F 1 "0.1u" H 2592 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2500 1150 50  0001 C CNN
F 3 "~" H 2500 1150 50  0001 C CNN
	1    2500 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5DD48B8C
P 2900 1150
F 0 "C7" H 2992 1196 50  0000 L CNN
F 1 "0.1u" H 2992 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2900 1150 50  0001 C CNN
F 3 "~" H 2900 1150 50  0001 C CNN
	1    2900 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5DD4E370
P 3300 1150
F 0 "C8" H 3392 1196 50  0000 L CNN
F 1 "0.1u" H 3392 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3300 1150 50  0001 C CNN
F 3 "~" H 3300 1150 50  0001 C CNN
	1    3300 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5DD4E912
P 3700 1150
F 0 "C9" H 3792 1196 50  0000 L CNN
F 1 "0.1u" H 3792 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3700 1150 50  0001 C CNN
F 3 "~" H 3700 1150 50  0001 C CNN
	1    3700 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5DD4EDFA
P 4050 1150
F 0 "C10" H 4142 1196 50  0000 L CNN
F 1 "0.1u" H 4142 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4050 1150 50  0001 C CNN
F 3 "~" H 4050 1150 50  0001 C CNN
	1    4050 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 900  2700 1050
Connection ~ 2700 1050
Wire Wire Line
	2700 1250 2700 1350
Connection ~ 2700 1250
$Comp
L power:GND #PWR04
U 1 1 5DD5B3DE
P 2700 1350
F 0 "#PWR04" H 2700 1100 50  0001 C CNN
F 1 "GND" H 2705 1177 50  0000 C CNN
F 2 "" H 2700 1350 50  0001 C CNN
F 3 "" H 2700 1350 50  0001 C CNN
	1    2700 1350
	1    0    0    -1  
$EndComp
Text Label 4100 1800 1    50   ~ 0
VBAT
$Comp
L Device:C_Small C16
U 1 1 5DD5BB50
P 4100 2050
F 0 "C16" H 4192 2096 50  0000 L CNN
F 1 "1u" H 4192 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4100 2050 50  0001 C CNN
F 3 "~" H 4100 2050 50  0001 C CNN
	1    4100 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5DD5C351
P 4100 2300
F 0 "#PWR07" H 4100 2050 50  0001 C CNN
F 1 "GND" H 4105 2127 50  0000 C CNN
F 2 "" H 4100 2300 50  0001 C CNN
F 3 "" H 4100 2300 50  0001 C CNN
	1    4100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2300 4100 2150
Wire Wire Line
	4100 1950 4100 1900
Text Label 3700 1800 1    50   ~ 0
VDDA
$Comp
L Device:C_Small C15
U 1 1 5DD61351
P 3700 2050
F 0 "C15" H 3792 2096 50  0000 L CNN
F 1 "1u" H 3792 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3700 2050 50  0001 C CNN
F 3 "~" H 3700 2050 50  0001 C CNN
	1    3700 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5DD616DF
P 3450 2050
F 0 "C14" H 3542 2096 50  0000 L CNN
F 1 "0.1u" H 3542 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3450 2050 50  0001 C CNN
F 3 "~" H 3450 2050 50  0001 C CNN
	1    3450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1950 3450 1950
Wire Wire Line
	3700 2150 3450 2150
Text Label 3700 2350 3    50   ~ 0
AGND
Wire Wire Line
	3700 2350 3700 2150
Wire Wire Line
	3700 1950 3700 1800
$Comp
L Device:C_Small C13
U 1 1 5DD7222E
P 3200 2050
F 0 "C13" H 3292 2096 50  0000 L CNN
F 1 "1u" H 3292 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3200 2050 50  0001 C CNN
F 3 "~" H 3200 2050 50  0001 C CNN
	1    3200 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5DD72234
P 2950 2050
F 0 "C12" H 3042 2096 50  0000 L CNN
F 1 "0.1u" H 3042 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2950 2050 50  0001 C CNN
F 3 "~" H 2950 2050 50  0001 C CNN
	1    2950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1950 2950 1950
Wire Wire Line
	3200 2150 2950 2150
Text Label 3200 2350 3    50   ~ 0
AGND
Wire Wire Line
	3200 2350 3200 2150
Wire Wire Line
	3200 1950 3200 1800
Text Label 3200 1800 1    50   ~ 0
VREFP
Wire Wire Line
	6900 2100 6600 2100
Text Label 6600 2100 0    50   ~ 0
BOOT0
Text Label 6150 2100 0    50   ~ 0
BOOT0
Wire Wire Line
	6150 2100 6050 2100
$Comp
L Device:R_Small R6
U 1 1 5DD832B6
P 5900 2100
F 0 "R6" H 5841 2054 50  0000 R CNN
F 1 "10k" H 5841 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5900 2100 50  0001 C CNN
F 3 "~" H 5900 2100 50  0001 C CNN
	1    5900 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5DD83D48
P 5700 2100
F 0 "#PWR015" H 5700 1850 50  0001 C CNN
F 1 "GND" H 5705 1927 50  0000 C CNN
F 2 "" H 5700 2100 50  0001 C CNN
F 3 "" H 5700 2100 50  0001 C CNN
	1    5700 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 2100 5800 2100
Wire Wire Line
	6900 1800 6600 1800
Text Label 6600 1800 0    50   ~ 0
NRST
Wire Wire Line
	6900 1900 6350 1900
$Comp
L Device:R_Small R8
U 1 1 5DD92A96
P 6350 1800
F 0 "R8" H 6291 1754 50  0000 R CNN
F 1 "10k" H 6291 1845 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6350 1800 50  0001 C CNN
F 3 "~" H 6350 1800 50  0001 C CNN
	1    6350 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 1600 6350 1700
Text Label 3500 3550 1    50   ~ 0
VDD_MCU
Wire Wire Line
	2850 3600 3500 3600
Wire Wire Line
	3500 3600 3500 3550
Text Label 2850 3550 1    50   ~ 0
3V3_VDD
Wire Wire Line
	2850 3550 2850 3600
Text Label 6350 1600 1    50   ~ 0
3V3_VDD
Wire Wire Line
	6900 3200 6000 3200
Wire Wire Line
	6000 3200 6000 3000
Wire Wire Line
	6000 3000 5500 3000
Wire Wire Line
	6900 3300 6000 3300
Wire Wire Line
	6000 3300 6000 3500
Wire Wire Line
	6000 3500 5500 3500
Wire Wire Line
	5500 3150 5500 3000
Wire Wire Line
	5500 3350 5500 3500
$Comp
L power:GND #PWR014
U 1 1 5DDCC4C7
P 5650 3300
F 0 "#PWR014" H 5650 3050 50  0001 C CNN
F 1 "GND" H 5655 3127 50  0000 C CNN
F 2 "" H 5650 3300 50  0001 C CNN
F 3 "" H 5650 3300 50  0001 C CNN
	1    5650 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5DDCD3C3
P 5350 3300
F 0 "#PWR013" H 5350 3050 50  0001 C CNN
F 1 "GND" H 5355 3127 50  0000 C CNN
F 2 "" H 5350 3300 50  0001 C CNN
F 3 "" H 5350 3300 50  0001 C CNN
	1    5350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3250 5350 3300
Wire Wire Line
	5650 3250 5650 3300
$Comp
L Device:C_Small C24
U 1 1 5DDD9434
P 5100 3000
F 0 "C24" V 4871 3000 50  0000 C CNN
F 1 "18p" V 4962 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5100 3000 50  0001 C CNN
F 3 "~" H 5100 3000 50  0001 C CNN
	1    5100 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C25
U 1 1 5DDDC0B8
P 5100 3500
F 0 "C25" V 4871 3500 50  0000 C CNN
F 1 "18p" V 4962 3500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5100 3500 50  0001 C CNN
F 3 "~" H 5100 3500 50  0001 C CNN
	1    5100 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 3500 5500 3500
Connection ~ 5500 3500
Wire Wire Line
	5200 3000 5500 3000
Connection ~ 5500 3000
$Comp
L power:GND #PWR011
U 1 1 5DDE414A
P 4950 3000
F 0 "#PWR011" H 4950 2750 50  0001 C CNN
F 1 "GND" V 4955 2872 50  0000 R CNN
F 2 "" H 4950 3000 50  0001 C CNN
F 3 "" H 4950 3000 50  0001 C CNN
	1    4950 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 3000 5000 3000
$Comp
L power:GND #PWR012
U 1 1 5DDE8616
P 4950 3500
F 0 "#PWR012" H 4950 3250 50  0001 C CNN
F 1 "GND" V 4955 3372 50  0000 R CNN
F 2 "" H 4950 3500 50  0001 C CNN
F 3 "" H 4950 3500 50  0001 C CNN
	1    4950 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 3500 5000 3500
Wire Wire Line
	9400 6700 10300 6700
Wire Wire Line
	10300 6700 10300 6900
Wire Wire Line
	10300 6900 10800 6900
Wire Wire Line
	9400 6600 10300 6600
Wire Wire Line
	10300 6600 10300 6400
Wire Wire Line
	10300 6400 10800 6400
$Comp
L Device:C_Small C27
U 1 1 5DDFDE9C
P 11200 6900
F 0 "C27" V 10971 6900 50  0000 C CNN
F 1 "12.5p" V 11062 6900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 11200 6900 50  0001 C CNN
F 3 "~" H 11200 6900 50  0001 C CNN
	1    11200 6900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C26
U 1 1 5DDFDEA2
P 11200 6400
F 0 "C26" V 10971 6400 50  0000 C CNN
F 1 "12.5p" V 11062 6400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 11200 6400 50  0001 C CNN
F 3 "~" H 11200 6400 50  0001 C CNN
	1    11200 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11100 6400 10800 6400
Connection ~ 10800 6400
Wire Wire Line
	11100 6900 10800 6900
Connection ~ 10800 6900
$Comp
L power:GND #PWR019
U 1 1 5DDFDEAC
P 11350 6900
F 0 "#PWR019" H 11350 6650 50  0001 C CNN
F 1 "GND" V 11355 6772 50  0000 R CNN
F 2 "" H 11350 6900 50  0001 C CNN
F 3 "" H 11350 6900 50  0001 C CNN
	1    11350 6900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11350 6900 11300 6900
$Comp
L power:GND #PWR018
U 1 1 5DDFDEB3
P 11350 6400
F 0 "#PWR018" H 11350 6150 50  0001 C CNN
F 1 "GND" V 11355 6272 50  0000 R CNN
F 2 "" H 11350 6400 50  0001 C CNN
F 3 "" H 11350 6400 50  0001 C CNN
	1    11350 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11350 6400 11300 6400
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J1
U 1 1 5DE0DD33
P 12300 1700
F 0 "J1" H 11857 1746 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 11857 1655 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 12350 1150 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf" V 11950 450 50  0001 C CNN
	1    12300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 1600 13200 1600
Text Label 13200 1900 0    50   ~ 0
TDI
Text Label 13200 1600 0    50   ~ 0
SWDCKL_TCK
Text Label 13200 1700 0    50   ~ 0
SWDIO_TMS
Text Label 13200 1800 0    50   ~ 0
SWO_TDO
Wire Wire Line
	13200 1400 12800 1400
Wire Wire Line
	13200 1700 12800 1700
Wire Wire Line
	13200 1800 12800 1800
Wire Wire Line
	13200 1900 12800 1900
Text Label 12300 1050 1    50   ~ 0
VDD_MCU
Wire Wire Line
	12300 1050 12300 1100
$Comp
L power:GND #PWR020
U 1 1 5DE31F20
P 12300 2350
F 0 "#PWR020" H 12300 2100 50  0001 C CNN
F 1 "GND" H 12305 2177 50  0000 C CNN
F 2 "" H 12300 2350 50  0001 C CNN
F 3 "" H 12300 2350 50  0001 C CNN
	1    12300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 2350 12300 2300
Wire Wire Line
	12200 2300 12300 2300
Connection ~ 12300 2300
Text Label 9900 3100 2    50   ~ 0
SWDIO_TMS
Wire Wire Line
	9900 3100 9400 3100
Text Label 9900 3200 2    50   ~ 0
SWDCKL_TCK
Wire Wire Line
	9900 3200 9400 3200
Text Label 9900 3300 2    50   ~ 0
TDI
Wire Wire Line
	9900 3300 9400 3300
Text Label 9900 3800 2    50   ~ 0
SWO_TDO
Wire Wire Line
	9900 3800 9400 3800
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5DE57F8E
P 13000 3200
F 0 "J2" H 13050 3617 50  0000 C CNN
F 1 "PWM_CON" H 13050 3526 50  0000 C CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_2x05_P1.27mm_Vertical_SMD" H 13000 3200 50  0001 C CNN
F 3 "~" H 13000 3200 50  0001 C CNN
	1    13000 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 3000 12400 3000
Text Label 12400 3000 0    50   ~ 0
PWM_UH
Wire Wire Line
	12800 3100 12400 3100
Wire Wire Line
	12800 3200 12400 3200
Text Label 12400 3100 0    50   ~ 0
PWM_VH
Text Label 12400 3200 0    50   ~ 0
PWM_WH
Wire Wire Line
	13300 3000 13650 3000
Wire Wire Line
	13300 3100 13650 3100
Wire Wire Line
	13300 3200 13650 3200
Text Label 13650 3000 2    50   ~ 0
PWM_UL
Text Label 13650 3100 2    50   ~ 0
PWM_VL
Text Label 13650 3200 2    50   ~ 0
PWM_WL
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J4
U 1 1 5DE817AB
P 13000 4700
F 0 "J4" H 13050 5117 50  0000 C CNN
F 1 "SETTING_CON" H 13050 5026 50  0000 C CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_2x05_P1.27mm_Vertical_SMD" H 13000 4700 50  0001 C CNN
F 3 "~" H 13000 4700 50  0001 C CNN
	1    13000 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 4500 12800 4500
Text Label 12400 4500 0    50   ~ 0
Gate_Enable
Text Label 12400 4600 0    50   ~ 0
PWM_MODE
Wire Wire Line
	12400 4600 12800 4600
Wire Wire Line
	12800 4700 12400 4700
Text Label 12400 4700 0    50   ~ 0
OC_MODE
Wire Wire Line
	13300 4500 13650 4500
Wire Wire Line
	13300 4600 13650 4600
Wire Wire Line
	13650 4700 13300 4700
Text Label 13650 4500 2    50   ~ 0
OC_TRG
Text Label 13650 4600 2    50   ~ 0
Fault_TRG
Text Label 13650 4700 2    50   ~ 0
PG_TRG
Wire Wire Line
	6500 7700 6900 7700
Wire Wire Line
	6500 7800 6900 7800
Wire Wire Line
	6500 7900 6900 7900
Wire Wire Line
	6900 8000 6500 8000
Wire Wire Line
	6900 8100 6500 8100
Wire Wire Line
	6900 8200 6500 8200
Text Label 6500 7700 0    50   ~ 0
PWM_UL
Text Label 6500 7800 0    50   ~ 0
PWM_UH
Text Label 6500 7900 0    50   ~ 0
PWM_VL
Text Label 6500 8000 0    50   ~ 0
PWM_VH
Text Label 6500 8100 0    50   ~ 0
PWM_WL
Text Label 6500 8200 0    50   ~ 0
PWM_WH
Wire Wire Line
	6500 8300 6900 8300
Text Label 6500 8300 0    50   ~ 0
PWMTRGO
Text Label 12400 3400 0    50   ~ 0
PWMTRGO
Wire Wire Line
	12400 3400 12800 3400
Text Label 6500 8400 0    50   ~ 0
Fault_TRG
Wire Wire Line
	6500 8400 6900 8400
Wire Wire Line
	9400 4500 9900 4500
Text Label 9900 4500 2    50   ~ 0
OC_TRG
Wire Wire Line
	9400 4600 9900 4600
Text Label 9900 4600 2    50   ~ 0
PG_TRG
Wire Wire Line
	6900 5200 6500 5200
Wire Wire Line
	6900 5300 6500 5300
Wire Wire Line
	6900 5400 6500 5400
Text Label 6500 5200 0    50   ~ 0
PWM_MODE
Text Label 6500 5300 0    50   ~ 0
OC_MODE
Text Label 6500 5400 0    50   ~ 0
Gate_Enable
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 5DF2EBFF
P 13000 5450
F 0 "J5" H 13050 5867 50  0000 C CNN
F 1 "USER_DEBUG_CON" H 13050 5776 50  0000 C CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_2x05_P1.27mm_Vertical_SMD" H 13000 5450 50  0001 C CNN
F 3 "~" H 13000 5450 50  0001 C CNN
	1    13000 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 7100 6900 7100
Wire Wire Line
	6900 7300 6500 7300
Wire Wire Line
	6900 7400 6500 7400
Wire Wire Line
	6900 7500 6500 7500
Text Label 6500 7100 0    50   ~ 0
SPI4_SCK
Text Label 6500 7300 0    50   ~ 0
SPI4_NSS
Text Label 6500 7400 0    50   ~ 0
SPI4_MISO
Text Label 6500 7500 0    50   ~ 0
SPI4_MOSI
Wire Wire Line
	12400 5350 12800 5350
Wire Wire Line
	12800 5250 12400 5250
Wire Wire Line
	12800 5450 12400 5450
Wire Wire Line
	12800 5550 12400 5550
Text Label 12400 5350 0    50   ~ 0
SPI4_SCK
Text Label 12400 5250 0    50   ~ 0
SPI4_NSS
Text Label 12400 5450 0    50   ~ 0
SPI4_MISO
Text Label 12400 5550 0    50   ~ 0
SPI4_MOSI
Wire Wire Line
	6900 5800 6500 5800
Wire Wire Line
	6900 5900 6500 5900
Wire Wire Line
	6900 6000 6500 6000
Wire Wire Line
	6900 6100 6500 6100
Text Label 6500 5800 0    50   ~ 0
SPI5_NSS
Text Label 6500 5900 0    50   ~ 0
SPI5_SCK
Text Label 6500 6000 0    50   ~ 0
SPI5_MISO
Text Label 6500 6100 0    50   ~ 0
SPI5_MOSI
Wire Wire Line
	12800 6000 12400 6000
Wire Wire Line
	12800 6100 12400 6100
Wire Wire Line
	12800 6200 12400 6200
Wire Wire Line
	12800 6300 12400 6300
Text Label 12400 6000 0    50   ~ 0
SPI5_NSS
Text Label 12400 6100 0    50   ~ 0
SPI5_SCK
Text Label 12400 6200 0    50   ~ 0
SPI5_MISO
Text Label 12400 6300 0    50   ~ 0
SPI5_MOSI
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J3
U 1 1 5DF955D4
P 13000 3950
F 0 "J3" H 13050 4367 50  0000 C CNN
F 1 "ADC_CON" H 13050 4276 50  0000 C CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_2x05_P1.27mm_Vertical_SMD" H 13000 3950 50  0001 C CNN
F 3 "~" H 13000 3950 50  0001 C CNN
	1    13000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 3750 12800 3750
Wire Wire Line
	12400 3950 12800 3950
Wire Wire Line
	12400 4150 12800 4150
Text Label 12400 3750 0    50   ~ 0
ADC_U
Wire Wire Line
	9400 5500 9900 5500
Text Label 9900 5500 2    50   ~ 0
ADC_U
Wire Wire Line
	9400 5400 9900 5400
Text Label 9900 5400 2    50   ~ 0
ADC_V
Wire Wire Line
	6900 6200 6500 6200
Text Label 6500 6200 0    50   ~ 0
ADC_W
Wire Wire Line
	9400 3600 9900 3600
Text Label 9900 3600 2    50   ~ 0
Add_ADC1
Wire Wire Line
	9400 2200 9900 2200
Text Label 9900 2200 2    50   ~ 0
CurrentLimit
Text Label 12400 4900 0    50   ~ 0
CurrentLimit
Wire Wire Line
	12400 4900 12800 4900
Wire Wire Line
	9400 2400 9900 2400
Text Label 9900 2400 2    50   ~ 0
Add_ADC2
Wire Wire Line
	6900 6500 6500 6500
Text Label 6500 6500 0    50   ~ 0
Add_ADC3
Wire Wire Line
	6900 6600 6500 6600
Text Label 6500 6600 0    50   ~ 0
Add_ADC4
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J8
U 1 1 5E13FE8A
P 14650 3950
F 0 "J8" H 14700 4367 50  0000 C CNN
F 1 "UI_CON" H 14700 4276 50  0000 C CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_2x05_P1.27mm_Vertical_SMD" H 14650 3950 50  0001 C CNN
F 3 "~" H 14650 3950 50  0001 C CNN
	1    14650 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 3750 14050 3750
Wire Wire Line
	14450 3850 14050 3850
Wire Wire Line
	14450 3950 14050 3950
Text Label 14050 3750 0    50   ~ 0
Start_Stop
Wire Wire Line
	9400 4200 9900 4200
Wire Wire Line
	13300 3400 13650 3400
Text Label 13650 3400 2    50   ~ 0
Culc_PIN
Text Label 9900 4200 2    50   ~ 0
Culc_PIN
Wire Wire Line
	6500 7000 6900 7000
Text Label 6500 7000 0    50   ~ 0
LED1
Text Label 4000 4500 1    50   ~ 0
NRST
Wire Wire Line
	4000 4700 4000 4500
Wire Wire Line
	4000 5100 4000 5350
$Comp
L power:GND #PWR05
U 1 1 5E1D29C5
P 4000 5350
F 0 "#PWR05" H 4000 5100 50  0001 C CNN
F 1 "GND" H 4005 5177 50  0000 C CNN
F 2 "" H 4000 5350 50  0001 C CNN
F 3 "" H 4000 5350 50  0001 C CNN
	1    4000 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C23
U 1 1 5E1D3651
P 4450 4900
F 0 "C23" H 4542 4946 50  0000 L CNN
F 1 "0.1u" H 4542 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4450 4900 50  0001 C CNN
F 3 "~" H 4450 4900 50  0001 C CNN
	1    4450 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4800 4450 4700
Wire Wire Line
	4450 5000 4450 5100
Wire Wire Line
	9400 6500 9900 6500
Text Label 9900 6500 2    50   ~ 0
Start_Stop
Text Label 14050 3850 0    50   ~ 0
Stop
Text Label 9900 6400 2    50   ~ 0
Stop
Wire Wire Line
	9900 6400 9400 6400
Wire Wire Line
	9400 3500 9900 3500
Text Label 9900 3500 2    50   ~ 0
LED2
Wire Wire Line
	9400 4900 9900 4900
Text Label 9900 4900 2    50   ~ 0
LED3
Wire Wire Line
	9400 7800 9900 7800
Wire Wire Line
	9400 7700 9900 7700
Text Label 9900 7700 2    50   ~ 0
UART_TX
Text Label 9900 7800 2    50   ~ 0
UART_RX
Wire Wire Line
	9400 8100 9900 8100
Wire Wire Line
	9900 8200 9400 8200
Text Label 9900 8100 2    50   ~ 0
ABZ_ENC_A
Text Label 9900 8200 2    50   ~ 0
ABZ_ENC_B
Wire Wire Line
	13300 5350 13800 5350
Wire Wire Line
	13300 5250 13800 5250
Text Label 13800 5250 2    50   ~ 0
UART_TX
Text Label 13800 5350 2    50   ~ 0
UART_RX
Text Label 14050 3950 0    50   ~ 0
UI_PIN_1
Wire Wire Line
	14450 4050 14050 4050
Wire Wire Line
	14450 4150 14050 4150
Text Label 14050 4050 0    50   ~ 0
UI_PIN_2
Text Label 14050 4150 0    50   ~ 0
UI_PIN_3
Wire Wire Line
	15300 3750 14950 3750
Wire Wire Line
	14950 3850 15300 3850
Wire Wire Line
	15300 3950 14950 3950
Wire Wire Line
	14950 4050 15300 4050
Wire Wire Line
	15300 4150 14950 4150
Text Label 15300 3750 2    50   ~ 0
UI_PIN_4
Text Label 15300 3850 2    50   ~ 0
UI_PIN_5
Text Label 15300 3950 2    50   ~ 0
UI_PIN_6
Text Label 15300 4050 2    50   ~ 0
UI_PIN_7
Text Label 15300 4150 2    50   ~ 0
UI_PIN_8
Wire Wire Line
	9900 6900 9400 6900
Wire Wire Line
	9400 7000 9900 7000
Wire Wire Line
	9900 7100 9400 7100
Wire Wire Line
	9400 7200 9900 7200
Wire Wire Line
	9400 7300 9900 7300
Wire Wire Line
	9900 7400 9400 7400
Wire Wire Line
	9400 7500 9900 7500
Wire Wire Line
	9900 7600 9400 7600
Text Label 9900 7100 2    50   ~ 0
UI_PIN_3
Text Label 9900 7200 2    50   ~ 0
UI_PIN_4
Text Label 9900 7300 2    50   ~ 0
UI_PIN_5
Text Label 9900 7400 2    50   ~ 0
UI_PIN_6
Text Label 9900 7500 2    50   ~ 0
UI_PIN_7
Text Label 9900 7600 2    50   ~ 0
UI_PIN_8
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J7
U 1 1 5E459DE1
P 14650 3200
F 0 "J7" H 14700 3617 50  0000 C CNN
F 1 "PWR_CON" H 14700 3526 50  0000 C CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_2x05_P1.27mm_Vertical_SMD" H 14650 3200 50  0001 C CNN
F 3 "~" H 14650 3200 50  0001 C CNN
	1    14650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 3000 14450 3100
Connection ~ 14450 3100
Wire Wire Line
	14450 3100 14450 3200
Connection ~ 14450 3200
Wire Wire Line
	14450 3200 14450 3300
Connection ~ 14450 3300
Wire Wire Line
	14450 3300 14450 3400
Wire Wire Line
	14450 3200 14050 3200
Wire Wire Line
	14950 3000 14950 3100
Connection ~ 14950 3100
Wire Wire Line
	14950 3100 14950 3200
Connection ~ 14950 3200
Wire Wire Line
	14950 3200 14950 3300
Connection ~ 14950 3300
Wire Wire Line
	14950 3300 14950 3400
Wire Wire Line
	14950 3200 15300 3200
$Comp
L power:GND #PWR035
U 1 1 5E4AD40C
P 15300 3200
F 0 "#PWR035" H 15300 2950 50  0001 C CNN
F 1 "GND" V 15305 3072 50  0000 R CNN
F 2 "" H 15300 3200 50  0001 C CNN
F 3 "" H 15300 3200 50  0001 C CNN
	1    15300 3200
	0    -1   -1   0   
$EndComp
Text Label 14050 3200 0    50   ~ 0
5V_IN
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U1
U 1 1 5E4ECD74
P 1450 3400
F 0 "U1" H 1450 3642 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 1450 3551 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1450 3600 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 1550 3150 50  0001 C CNN
	1    1450 3400
	1    0    0    -1  
$EndComp
Text Label 800  3400 1    50   ~ 0
5V_IN
Wire Wire Line
	800  3400 950  3400
Text Label 2200 3400 1    50   ~ 0
3V3_VDD
Wire Wire Line
	1750 3400 1800 3400
$Comp
L Device:C_Small C20
U 1 1 5E51B2F1
P 1400 2300
F 0 "C20" H 1492 2346 50  0000 L CNN
F 1 "0.1u" H 1492 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1400 2300 50  0001 C CNN
F 3 "~" H 1400 2300 50  0001 C CNN
	1    1400 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C19
U 1 1 5E51BA1E
P 900 2300
F 0 "C19" H 992 2346 50  0000 L CNN
F 1 "0.1u" H 992 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 900 2300 50  0001 C CNN
F 3 "~" H 900 2300 50  0001 C CNN
	1    900  2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C22
U 1 1 5E51BED3
P 1800 3500
F 0 "C22" H 1892 3546 50  0000 L CNN
F 1 "10u" H 1892 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1800 3500 50  0001 C CNN
F 3 "~" H 1800 3500 50  0001 C CNN
	1    1800 3500
	1    0    0    -1  
$EndComp
Connection ~ 1800 3400
$Comp
L Device:C_Small C21
U 1 1 5E51C9FF
P 950 3500
F 0 "C21" H 1042 3546 50  0000 L CNN
F 1 "0.1u" H 1042 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 950 3500 50  0001 C CNN
F 3 "~" H 950 3500 50  0001 C CNN
	1    950  3500
	1    0    0    -1  
$EndComp
Connection ~ 950  3400
Wire Wire Line
	950  3400 1150 3400
Wire Wire Line
	950  3600 950  3700
Wire Wire Line
	950  3700 1450 3700
Wire Wire Line
	1800 3600 1800 3700
Wire Wire Line
	1800 3700 1450 3700
Connection ~ 1450 3700
Wire Wire Line
	1450 3700 1450 3850
$Comp
L power:GND #PWR03
U 1 1 5E56083B
P 1450 3850
F 0 "#PWR03" H 1450 3600 50  0001 C CNN
F 1 "GND" H 1455 3677 50  0000 C CNN
F 2 "" H 1450 3850 50  0001 C CNN
F 3 "" H 1450 3850 50  0001 C CNN
	1    1450 3850
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:ESDA6V1-5SC6 D12
U 1 1 5E577D3A
P 14450 1950
F 0 "D12" H 14780 1996 50  0000 L CNN
F 1 "ESDA6V1-5SC6" H 14780 1905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 15150 1700 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/esda6v1-5sc6.pdf" V 14450 1950 50  0001 C CNN
	1    14450 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5E580733
P 14450 2250
F 0 "#PWR032" H 14450 2000 50  0001 C CNN
F 1 "GND" H 14455 2077 50  0000 C CNN
F 2 "" H 14450 2250 50  0001 C CNN
F 3 "" H 14450 2250 50  0001 C CNN
	1    14450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 2150 14450 2250
Text Label 14650 1550 1    50   ~ 0
TDI
Wire Wire Line
	14650 1550 14650 1750
Text Label 14550 1550 1    50   ~ 0
SWO_TDO
Wire Wire Line
	14550 1550 14550 1750
Text Label 14450 1550 1    50   ~ 0
SWDIO_TMS
Wire Wire Line
	14450 1550 14450 1750
Text Label 14350 1550 1    50   ~ 0
SWDCKL_TCK
Wire Wire Line
	14350 1550 14350 1750
Wire Wire Line
	14250 1550 14250 1750
$Comp
L Power_Protection:ESDA6V1-5SC6 D9
U 1 1 5E638EEC
P 14300 6550
F 0 "D9" H 14630 6596 50  0000 L CNN
F 1 "ESDA6V1-5SC6" H 14630 6505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 15000 6300 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/esda6v1-5sc6.pdf" V 14300 6550 50  0001 C CNN
	1    14300 6550
	1    0    0    -1  
$EndComp
Text Label 14400 6350 1    50   ~ 0
SPI4_MOSI
Text Label 14300 6350 1    50   ~ 0
SPI4_MISO
Text Label 14200 6350 1    50   ~ 0
SPI4_SCK
Text Label 14100 6350 1    50   ~ 0
SPI4_NSS
$Comp
L Power_Protection:ESDA6V1-5SC6 D13
U 1 1 5E6864C7
P 15250 6550
F 0 "D13" H 15580 6596 50  0000 L CNN
F 1 "ESDA6V1-5SC6" H 15580 6505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 15950 6300 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/esda6v1-5sc6.pdf" V 15250 6550 50  0001 C CNN
	1    15250 6550
	1    0    0    -1  
$EndComp
Text Label 15050 6350 1    50   ~ 0
UART_TX
Text Label 15150 6350 1    50   ~ 0
UART_RX
Wire Wire Line
	9400 3900 9900 3900
Text Label 9900 3900 2    50   ~ 0
NJTRST
Wire Wire Line
	4900 4700 4450 4700
Connection ~ 4450 4700
Connection ~ 4450 5100
Wire Wire Line
	4450 5100 4900 5100
Text Label 8800 9650 3    50   ~ 0
AGND
$Comp
L power:GND #PWR017
U 1 1 5DDA1D6C
P 8500 9650
F 0 "#PWR017" H 8500 9400 50  0001 C CNN
F 1 "GND" H 8505 9477 50  0000 C CNN
F 2 "" H 8500 9650 50  0001 C CNN
F 3 "" H 8500 9650 50  0001 C CNN
	1    8500 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 9650 8500 9500
Wire Wire Line
	8500 9500 8800 9500
Wire Wire Line
	8800 9500 8800 9650
Text Label 9900 7000 2    50   ~ 0
CAN_TX
Text Label 9900 6900 2    50   ~ 0
CAN_RX
Text Label 13800 5450 2    50   ~ 0
CAN_TX
Wire Wire Line
	13800 5450 13300 5450
Text Label 13800 5550 2    50   ~ 0
CAN_RX
Wire Wire Line
	13800 5550 13300 5550
Text Label 15350 6350 1    50   ~ 0
CAN_TX
Text Label 15450 6350 1    50   ~ 0
CAN_RX
$Comp
L Power_Protection:ESDA6V1-5SC6 D10
U 1 1 5DDEC559
P 14300 7650
F 0 "D10" H 14630 7696 50  0000 L CNN
F 1 "ESDA6V1-5SC6" H 14630 7605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 15000 7400 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/esda6v1-5sc6.pdf" V 14300 7650 50  0001 C CNN
	1    14300 7650
	1    0    0    -1  
$EndComp
Text Label 14100 7450 1    50   ~ 0
SPI5_NSS
Text Label 14200 7450 1    50   ~ 0
SPI5_SCK
Text Label 14300 7450 1    50   ~ 0
SPI5_MISO
Text Label 14400 7450 1    50   ~ 0
SPI5_MOSI
$Comp
L Power_Protection:ESDA6V1-5SC6 D8
U 1 1 5DE06839
P 14300 5450
F 0 "D8" H 14630 5496 50  0000 L CNN
F 1 "ESDA6V1-5SC6" H 14630 5405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 15000 5200 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/esda6v1-5sc6.pdf" V 14300 5450 50  0001 C CNN
	1    14300 5450
	1    0    0    -1  
$EndComp
Text Label 14100 5250 1    50   ~ 0
PG_TRG
Text Label 14200 5250 1    50   ~ 0
Fault_TRG
Text Label 14300 5250 1    50   ~ 0
OC_TRG
$Comp
L power:GND #PWR028
U 1 1 5DE0832B
P 14300 5650
F 0 "#PWR028" H 14300 5400 50  0001 C CNN
F 1 "GND" V 14305 5522 50  0000 R CNN
F 2 "" H 14300 5650 50  0001 C CNN
F 3 "" H 14300 5650 50  0001 C CNN
	1    14300 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5DE6F7FF
P 14300 6750
F 0 "#PWR029" H 14300 6500 50  0001 C CNN
F 1 "GND" V 14305 6622 50  0000 R CNN
F 2 "" H 14300 6750 50  0001 C CNN
F 3 "" H 14300 6750 50  0001 C CNN
	1    14300 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5DE88709
P 15250 6750
F 0 "#PWR033" H 15250 6500 50  0001 C CNN
F 1 "GND" V 15255 6622 50  0000 R CNN
F 2 "" H 15250 6750 50  0001 C CNN
F 3 "" H 15250 6750 50  0001 C CNN
	1    15250 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5DE88D94
P 14300 7850
F 0 "#PWR030" H 14300 7600 50  0001 C CNN
F 1 "GND" V 14305 7722 50  0000 R CNN
F 2 "" H 14300 7850 50  0001 C CNN
F 3 "" H 14300 7850 50  0001 C CNN
	1    14300 7850
	1    0    0    -1  
$EndComp
Text Label 14400 5250 1    50   ~ 0
ABZ_ENC_A
Text Label 14500 5250 1    50   ~ 0
ABZ_ENC_B
$Comp
L Power_Protection:ESDA6V1-5SC6 D11
U 1 1 5DE89BAA
P 14300 8700
F 0 "D11" H 14630 8746 50  0000 L CNN
F 1 "ESDA6V1-5SC6" H 14630 8655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 15000 8450 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/esda6v1-5sc6.pdf" V 14300 8700 50  0001 C CNN
	1    14300 8700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5DE8B58F
P 14300 8900
F 0 "#PWR031" H 14300 8650 50  0001 C CNN
F 1 "GND" V 14305 8772 50  0000 R CNN
F 2 "" H 14300 8900 50  0001 C CNN
F 3 "" H 14300 8900 50  0001 C CNN
	1    14300 8900
	1    0    0    -1  
$EndComp
Text Label 14100 8500 1    50   ~ 0
Start_Stop
Text Label 14200 8500 1    50   ~ 0
Stop
Text Label 14300 8500 1    50   ~ 0
UI_PIN_1
Text Label 14400 8500 1    50   ~ 0
UI_PIN_2
Text Label 14500 8500 1    50   ~ 0
UI_PIN_3
$Comp
L Power_Protection:ESDA6V1-5SC6 D14
U 1 1 5DE904C9
P 15250 8700
F 0 "D14" H 15580 8746 50  0000 L CNN
F 1 "ESDA6V1-5SC6" H 15580 8655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 15950 8450 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/esda6v1-5sc6.pdf" V 15250 8700 50  0001 C CNN
	1    15250 8700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5DE904CF
P 15250 8900
F 0 "#PWR034" H 15250 8650 50  0001 C CNN
F 1 "GND" V 15255 8772 50  0000 R CNN
F 2 "" H 15250 8900 50  0001 C CNN
F 3 "" H 15250 8900 50  0001 C CNN
	1    15250 8900
	1    0    0    -1  
$EndComp
Text Label 15050 8500 1    50   ~ 0
UI_PIN_4
Text Label 15150 8500 1    50   ~ 0
UI_PIN_5
Text Label 15250 8500 1    50   ~ 0
UI_PIN_6
Text Label 15350 8500 1    50   ~ 0
UI_PIN_7
Text Label 15450 8500 1    50   ~ 0
UI_PIN_8
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5DEA9771
P 7350 1400
F 0 "JP1" H 7350 1175 50  0000 C CNN
F 1 "SolderBridge" H 7350 1266 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 7350 1400 50  0001 C CNN
F 3 "~" H 7350 1400 50  0001 C CNN
	1    7350 1400
	-1   0    0    1   
$EndComp
Connection ~ 7500 1400
Wire Wire Line
	7500 1400 7500 1500
Text Label 7200 1200 1    50   ~ 0
VDD_MCU
Wire Wire Line
	7200 1400 7200 1200
NoConn ~ 9400 1800
NoConn ~ 9400 1900
NoConn ~ 9400 2000
NoConn ~ 9400 2100
NoConn ~ 9400 2300
NoConn ~ 9400 2500
NoConn ~ 9400 2600
NoConn ~ 9400 2700
NoConn ~ 9400 2800
NoConn ~ 9400 2900
NoConn ~ 9400 3000
NoConn ~ 9400 3700
NoConn ~ 9400 4000
NoConn ~ 9400 4100
NoConn ~ 9400 4300
NoConn ~ 9400 4400
NoConn ~ 9400 4700
NoConn ~ 9400 4800
NoConn ~ 9400 5000
NoConn ~ 9400 5200
NoConn ~ 9400 5300
NoConn ~ 9400 5600
NoConn ~ 9400 5700
NoConn ~ 9400 5800
NoConn ~ 9400 5900
NoConn ~ 9400 6000
NoConn ~ 9400 6100
NoConn ~ 9400 6200
NoConn ~ 9400 6300
NoConn ~ 9400 7900
NoConn ~ 9400 8000
NoConn ~ 9400 8400
NoConn ~ 6900 7600
NoConn ~ 6900 7200
NoConn ~ 6900 6900
NoConn ~ 6900 6700
NoConn ~ 6900 6400
NoConn ~ 6900 6300
NoConn ~ 6900 5700
NoConn ~ 6900 5600
NoConn ~ 6900 5500
NoConn ~ 6900 5000
NoConn ~ 6900 4900
NoConn ~ 6900 4800
NoConn ~ 6900 4700
NoConn ~ 6900 4600
NoConn ~ 6900 4500
NoConn ~ 6900 4400
NoConn ~ 6900 4300
NoConn ~ 6900 4200
NoConn ~ 6900 4100
NoConn ~ 6900 4000
NoConn ~ 6900 3900
NoConn ~ 6900 3800
NoConn ~ 6900 3700
NoConn ~ 6900 3600
NoConn ~ 6900 3500
NoConn ~ 14500 7450
NoConn ~ 14500 6350
NoConn ~ 15250 6350
$Comp
L power:GND #PWR025
U 1 1 5E4E0094
P 13550 3300
F 0 "#PWR025" H 13550 3050 50  0001 C CNN
F 1 "GND" V 13555 3172 50  0000 R CNN
F 2 "" H 13550 3300 50  0001 C CNN
F 3 "" H 13550 3300 50  0001 C CNN
	1    13550 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13550 3300 13300 3300
$Comp
L power:GND #PWR021
U 1 1 5E4F8EDC
P 12500 3300
F 0 "#PWR021" H 12500 3050 50  0001 C CNN
F 1 "GND" V 12505 3172 50  0000 R CNN
F 2 "" H 12500 3300 50  0001 C CNN
F 3 "" H 12500 3300 50  0001 C CNN
	1    12500 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	12800 3300 12500 3300
$Comp
L power:GND #PWR022
U 1 1 5E55ED9D
P 12500 4800
F 0 "#PWR022" H 12500 4550 50  0001 C CNN
F 1 "GND" V 12505 4672 50  0000 R CNN
F 2 "" H 12500 4800 50  0001 C CNN
F 3 "" H 12500 4800 50  0001 C CNN
	1    12500 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5E55F646
P 13550 4800
F 0 "#PWR027" H 13550 4550 50  0001 C CNN
F 1 "GND" V 13555 4672 50  0000 R CNN
F 2 "" H 13550 4800 50  0001 C CNN
F 3 "" H 13550 4800 50  0001 C CNN
	1    13550 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13550 4800 13300 4800
Wire Wire Line
	13300 4900 13300 4800
Connection ~ 13300 4800
Wire Wire Line
	12800 4800 12500 4800
$Comp
L power:GND #PWR023
U 1 1 5E5DDF06
P 13500 5650
F 0 "#PWR023" H 13500 5400 50  0001 C CNN
F 1 "GND" V 13505 5522 50  0000 R CNN
F 2 "" H 13500 5650 50  0001 C CNN
F 3 "" H 13500 5650 50  0001 C CNN
	1    13500 5650
	0    -1   -1   0   
$EndComp
Text Label 4000 6000 1    50   ~ 0
LED1
Text Label 4500 6000 1    50   ~ 0
LED3
Text Label 4250 6000 1    50   ~ 0
LED2
$Comp
L Device:LED D1
U 1 1 5E5E3855
P 4000 6250
F 0 "D1" V 4039 6133 50  0000 R CNN
F 1 "LED" V 3948 6133 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4000 6250 50  0001 C CNN
F 3 "~" H 4000 6250 50  0001 C CNN
	1    4000 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5E5E60E8
P 4250 6250
F 0 "D2" V 4289 6133 50  0000 R CNN
F 1 "LED" V 4198 6133 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4250 6250 50  0001 C CNN
F 3 "~" H 4250 6250 50  0001 C CNN
	1    4250 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5E5E672B
P 4500 6250
F 0 "D3" V 4539 6133 50  0000 R CNN
F 1 "LED" V 4448 6133 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4500 6250 50  0001 C CNN
F 3 "~" H 4500 6250 50  0001 C CNN
	1    4500 6250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 6000 4500 6100
Wire Wire Line
	4250 6000 4250 6100
Wire Wire Line
	4000 6000 4000 6100
$Comp
L Device:R_Small R5
U 1 1 5E634D6A
P 4500 6600
F 0 "R5" H 4441 6554 50  0000 R CNN
F 1 "10k" H 4441 6645 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4500 6600 50  0001 C CNN
F 3 "~" H 4500 6600 50  0001 C CNN
	1    4500 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5E635EE8
P 4250 6600
F 0 "R4" H 4191 6554 50  0000 R CNN
F 1 "10k" H 4191 6645 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4250 6600 50  0001 C CNN
F 3 "~" H 4250 6600 50  0001 C CNN
	1    4250 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5E63621F
P 4000 6600
F 0 "R3" H 3941 6554 50  0000 R CNN
F 1 "10k" H 3941 6645 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4000 6600 50  0001 C CNN
F 3 "~" H 4000 6600 50  0001 C CNN
	1    4000 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6400 4000 6500
Wire Wire Line
	4250 6400 4250 6500
Wire Wire Line
	4500 6400 4500 6500
$Comp
L power:GND #PWR09
U 1 1 5E6847DC
P 4500 6900
F 0 "#PWR09" H 4500 6650 50  0001 C CNN
F 1 "GND" H 4505 6727 50  0000 C CNN
F 2 "" H 4500 6900 50  0001 C CNN
F 3 "" H 4500 6900 50  0001 C CNN
	1    4500 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6900 4500 6700
$Comp
L power:GND #PWR08
U 1 1 5E69F7CB
P 4250 6900
F 0 "#PWR08" H 4250 6650 50  0001 C CNN
F 1 "GND" H 4255 6727 50  0000 C CNN
F 2 "" H 4250 6900 50  0001 C CNN
F 3 "" H 4250 6900 50  0001 C CNN
	1    4250 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6900 4250 6700
$Comp
L power:GND #PWR06
U 1 1 5E6BA05F
P 4000 6900
F 0 "#PWR06" H 4000 6650 50  0001 C CNN
F 1 "GND" H 4005 6727 50  0000 C CNN
F 2 "" H 4000 6900 50  0001 C CNN
F 3 "" H 4000 6900 50  0001 C CNN
	1    4000 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6900 4000 6700
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5E875063
P 2450 1400
F 0 "#FLG02" H 2450 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 2450 1573 50  0000 C CNN
F 2 "" H 2450 1400 50  0001 C CNN
F 3 "~" H 2450 1400 50  0001 C CNN
	1    2450 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 1400 2450 1350
Wire Wire Line
	2450 1350 2700 1350
Connection ~ 2700 1350
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5E893498
P 950 3400
F 0 "#FLG01" H 950 3475 50  0001 C CNN
F 1 "PWR_FLAG" H 950 3573 50  0000 C CNN
F 2 "" H 950 3400 50  0001 C CNN
F 3 "~" H 950 3400 50  0001 C CNN
	1    950  3400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5E894867
P 4200 1850
F 0 "#FLG03" H 4200 1925 50  0001 C CNN
F 1 "PWR_FLAG" H 4200 2023 50  0000 C CNN
F 2 "" H 4200 1850 50  0001 C CNN
F 3 "~" H 4200 1850 50  0001 C CNN
	1    4200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1850 4200 1900
Wire Wire Line
	4200 1900 4100 1900
Connection ~ 4100 1900
Wire Wire Line
	4100 1900 4100 1800
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5E8B21FE
P 4750 1850
F 0 "#FLG04" H 4750 1925 50  0001 C CNN
F 1 "PWR_FLAG" H 4750 2023 50  0000 C CNN
F 2 "" H 4750 1850 50  0001 C CNN
F 3 "~" H 4750 1850 50  0001 C CNN
	1    4750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1850 4650 1850
Connection ~ 4650 1850
Wire Wire Line
	4650 1850 4650 1950
Text Label 13200 1400 0    50   ~ 0
NJTRST
Text Label 14250 1550 1    50   ~ 0
NJTRST
Wire Wire Line
	8800 1450 8800 1500
Wire Wire Line
	8700 1450 8700 1500
$Comp
L power:PWR_FLAG #FLG05
U 1 1 5E9B6AB1
P 8600 1350
F 0 "#FLG05" H 8600 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 8600 1523 50  0000 C CNN
F 2 "" H 8600 1350 50  0001 C CNN
F 3 "~" H 8600 1350 50  0001 C CNN
	1    8600 1350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG06
U 1 1 5E9B9130
P 8900 1350
F 0 "#FLG06" H 8900 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 8900 1523 50  0000 C CNN
F 2 "" H 8900 1350 50  0001 C CNN
F 3 "~" H 8900 1350 50  0001 C CNN
	1    8900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1350 8600 1450
Wire Wire Line
	8600 1450 8700 1450
Connection ~ 8700 1450
Wire Wire Line
	8900 1350 8900 1450
Wire Wire Line
	8900 1450 8800 1450
Wire Wire Line
	8700 1150 8700 1050
Text Label 8700 1050 1    50   ~ 0
3V3_VDD
Wire Wire Line
	8100 1200 8100 1500
Wire Wire Line
	1800 3400 2200 3400
Wire Wire Line
	8800 1050 8800 1450
Connection ~ 8800 1450
Text Label 12350 5650 1    50   ~ 0
VDD_MCU
Wire Wire Line
	13500 5650 13300 5650
$Comp
L Device:D_Schottky_Small D5
U 1 1 5DF1640E
P 12500 5650
F 0 "D5" V 12454 5718 50  0000 L CNN
F 1 "SBD RB520S" V 12545 5718 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" V 12500 5650 50  0001 C CNN
F 3 "~" V 12500 5650 50  0001 C CNN
	1    12500 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	12350 5650 12400 5650
Wire Wire Line
	12600 5650 12800 5650
Text Label 12350 6400 1    50   ~ 0
VDD_MCU
$Comp
L Device:D_Schottky_Small D6
U 1 1 5DF7527D
P 12500 6400
F 0 "D6" V 12454 6468 50  0000 L CNN
F 1 "SBD RB520S" V 12545 6468 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" V 12500 6400 50  0001 C CNN
F 3 "~" V 12500 6400 50  0001 C CNN
	1    12500 6400
	-1   0    0    1   
$EndComp
Wire Wire Line
	12350 6400 12400 6400
Wire Wire Line
	12600 6400 12800 6400
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J6
U 1 1 5DF60D0F
P 13000 6200
F 0 "J6" H 13050 6617 50  0000 C CNN
F 1 "ENC_CON" H 13050 6526 50  0000 C CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_2x05_P1.27mm_Vertical_SMD" H 13000 6200 50  0001 C CNN
F 3 "~" H 13000 6200 50  0001 C CNN
	1    13000 6200
	1    0    0    -1  
$EndComp
Text Label 13800 6100 2    50   ~ 0
ABZ_ENC_A
Text Label 13800 6000 2    50   ~ 0
ABZ_ENC_B
$Comp
L power:GND #PWR024
U 1 1 5DFED23A
P 13500 6400
F 0 "#PWR024" H 13500 6150 50  0001 C CNN
F 1 "GND" V 13450 6500 50  0000 R CNN
F 2 "" H 13500 6400 50  0001 C CNN
F 3 "" H 13500 6400 50  0001 C CNN
	1    13500 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13500 6400 13300 6400
$Comp
L Device:D_Schottky_Small D7
U 1 1 5E048749
P 13650 6300
F 0 "D7" V 13700 6150 50  0000 L CNN
F 1 "SBD RB520S" V 13800 6150 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" V 13650 6300 50  0001 C CNN
F 3 "~" V 13650 6300 50  0001 C CNN
	1    13650 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	13300 6300 13550 6300
Wire Wire Line
	9400 8300 9900 8300
Text Label 9900 8300 2    50   ~ 0
ABZ_ENC_GPIO
Text Label 13800 6200 2    50   ~ 0
ABZ_ENC_GPIO
Text Label 13900 6300 1    50   ~ 0
5V_IN
Wire Wire Line
	13300 6200 13800 6200
Wire Wire Line
	13300 6100 13800 6100
Wire Wire Line
	13300 6000 13800 6000
Wire Wire Line
	13750 6300 13900 6300
Wire Wire Line
	13650 3750 13300 3750
Wire Wire Line
	12800 3850 12400 3850
Text Label 12400 3850 0    50   ~ 0
ADC_V
Text Label 12400 3950 0    50   ~ 0
ADC_W
Text Label 12400 4050 0    50   ~ 0
Add_ADC1
Wire Wire Line
	12800 4050 12400 4050
Text Label 12400 4150 0    50   ~ 0
Add_ADC2
Text Label 13650 3750 2    50   ~ 0
Add_ADC3
Wire Wire Line
	13300 3850 13650 3850
Text Label 13650 3850 2    50   ~ 0
Add_ADC4
Text Label 6900 1650 1    50   ~ 0
NJTRST
Wire Wire Line
	6900 1650 6900 1800
Connection ~ 6900 1800
Wire Wire Line
	13300 3950 13300 4050
Connection ~ 13300 4050
Wire Wire Line
	13300 4050 13300 4150
$Comp
L power:GND #PWR026
U 1 1 5E3457E2
P 13550 4050
F 0 "#PWR026" H 13550 3800 50  0001 C CNN
F 1 "GND" V 13555 3922 50  0000 R CNN
F 2 "" H 13550 4050 50  0001 C CNN
F 3 "" H 13550 4050 50  0001 C CNN
	1    13550 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13300 4050 13550 4050
$Comp
L Device:Crystal_GND24_Small Y1
U 1 1 5E38E024
P 5500 3250
F 0 "Y1" V 5454 3419 50  0000 L CNN
F 1 "8M RH100-8.000-20-3050-EXT-TR" V 5900 2550 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 5500 3250 50  0001 C CNN
F 3 "~" H 5500 3250 50  0001 C CNN
	1    5500 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 3250 5375 3250
Wire Wire Line
	5600 3250 5625 3250
Connection ~ 5375 3250
Wire Wire Line
	5375 3250 5400 3250
Connection ~ 5625 3250
Wire Wire Line
	5625 3250 5650 3250
$Comp
L Device:Crystal Y2
U 1 1 5E3987B3
P 10800 6650
F 0 "Y2" V 10754 6781 50  0000 L CNN
F 1 "32k FC-135 32.7680KA-A0" V 10950 6150 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 10800 6650 50  0001 C CNN
F 3 "~" H 10800 6650 50  0001 C CNN
	1    10800 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	10800 6500 10800 6400
Wire Wire Line
	10800 6800 10800 6900
Wire Wire Line
	4000 5100 4450 5100
Wire Wire Line
	4000 4700 4450 4700
$Comp
L Switch:SW_Push SW1
U 1 1 5DDD4660
P 4000 4900
F 0 "SW1" V 4046 4852 50  0000 R CNN
F 1 "SW_RESET" V 3955 4852 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 4000 5100 50  0001 C CNN
F 3 "" H 4000 5100 50  0001 C CNN
	1    4000 4900
	0    -1   -1   0   
$EndComp
Connection ~ 4000 5100
Connection ~ 4000 4700
$Comp
L Device:D_TVS D4
U 1 1 5DDE15E0
P 4900 4900
F 0 "D4" V 4854 4979 50  0000 L CNN
F 1 "ESDALC6V1-1U2" V 4945 4979 50  0000 L CNN
F 2 "Diode_SMD:D_0201_0603Metric" H 4900 4900 50  0001 C CNN
F 3 "~" H 4900 4900 50  0001 C CNN
	1    4900 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 5050 4900 5100
Wire Wire Line
	4900 4750 4900 4700
$Comp
L Device:R_Small R7
U 1 1 5DE2CF64
P 5900 2450
F 0 "R7" H 5841 2404 50  0000 R CNN
F 1 "10k" H 5841 2495 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5900 2450 50  0001 C CNN
F 3 "~" H 5900 2450 50  0001 C CNN
	1    5900 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 2100 6050 2450
Wire Wire Line
	6050 2450 6000 2450
Connection ~ 6050 2100
Wire Wire Line
	6050 2100 6000 2100
Text Label 5650 2450 2    50   ~ 0
VDD_MCU
Wire Wire Line
	5650 2450 5800 2450
Wire Wire Line
	850  1050 1150 1050
Wire Wire Line
	2700 1050 2900 1050
Wire Wire Line
	850  1250 1150 1250
Wire Wire Line
	2700 1250 2900 1250
Wire Wire Line
	1250 2200 1400 2200
Connection ~ 1150 1050
Wire Wire Line
	1150 1050 1500 1050
Connection ~ 1150 1250
Wire Wire Line
	1150 1250 1500 1250
Connection ~ 1500 1050
Wire Wire Line
	1500 1050 1800 1050
Connection ~ 1500 1250
Wire Wire Line
	1500 1250 1800 1250
Connection ~ 1800 1050
Wire Wire Line
	1800 1050 2150 1050
Connection ~ 1800 1250
Wire Wire Line
	1800 1250 2150 1250
Connection ~ 2150 1050
Wire Wire Line
	2150 1050 2500 1050
Connection ~ 2150 1250
Wire Wire Line
	2150 1250 2500 1250
Connection ~ 2500 1050
Wire Wire Line
	2500 1050 2700 1050
Connection ~ 2500 1250
Wire Wire Line
	2500 1250 2700 1250
Connection ~ 2900 1050
Wire Wire Line
	2900 1050 3300 1050
Connection ~ 2900 1250
Wire Wire Line
	2900 1250 3300 1250
Connection ~ 3300 1050
Wire Wire Line
	3300 1050 3700 1050
Connection ~ 3300 1250
Wire Wire Line
	3300 1250 3700 1250
Connection ~ 3700 1050
Wire Wire Line
	3700 1050 4050 1050
Connection ~ 3700 1250
Wire Wire Line
	3700 1250 4050 1250
Connection ~ 4050 1050
Wire Wire Line
	4050 1050 4350 1050
Connection ~ 4050 1250
Wire Wire Line
	4050 1250 4350 1250
Connection ~ 900  2200
Connection ~ 1400 2200
Wire Wire Line
	1400 2200 1650 2200
Connection ~ 3200 1950
Connection ~ 3200 2150
Connection ~ 3700 1950
Connection ~ 3700 2150
$EndSCHEMATC
