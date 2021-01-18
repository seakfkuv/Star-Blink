EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "5-POINTED-STAR"
Date "01.04.2020"
Rev ""
Comp "HSR"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C C2
U 1 1 5E84DF74
P 1400 3100
F 0 "C2" H 1515 3146 50  0000 L CNN
F 1 "0.1uF" H 1515 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1438 2950 50  0001 C CNN
F 3 "~" H 1400 3100 50  0001 C CNN
	1    1400 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E84FB25
P 1750 3100
F 0 "C4" H 1865 3146 50  0000 L CNN
F 1 "0.1uF" H 1865 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1788 2950 50  0001 C CNN
F 3 "~" H 1750 3100 50  0001 C CNN
	1    1750 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5E850082
P 950 3100
F 0 "C1" H 1065 3146 50  0000 L CNN
F 1 "4.7uF" H 1065 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 988 2950 50  0001 C CNN
F 3 "~" H 950 3100 50  0001 C CNN
	1    950  3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3250 1400 3250
Wire Wire Line
	1400 2950 1400 2700
Wire Wire Line
	1400 2700 2000 2700
Wire Wire Line
	1400 3250 1400 3550
Connection ~ 1400 3250
$Comp
L power:GND #PWR05
U 1 1 5E853A16
P 1400 3850
F 0 "#PWR05" H 1400 3600 50  0001 C CNN
F 1 "GND" H 1405 3677 50  0000 C CNN
F 2 "" H 1400 3850 50  0001 C CNN
F 3 "" H 1400 3850 50  0001 C CNN
	1    1400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2950 950  2600
Wire Wire Line
	950  2600 2000 2600
Wire Wire Line
	2350 3400 2350 4100
Wire Wire Line
	2350 4100 950  4100
Wire Wire Line
	950  3250 950  4100
$Comp
L power:GND #PWR01
U 1 1 5E855E49
P 950 4100
F 0 "#PWR01" H 950 3850 50  0001 C CNN
F 1 "GND" H 955 3927 50  0000 C CNN
F 2 "" H 950 4100 50  0001 C CNN
F 3 "" H 950 4100 50  0001 C CNN
	1    950  4100
	1    0    0    -1  
$EndComp
Connection ~ 950  4100
Wire Wire Line
	2250 3400 2250 3550
Connection ~ 1400 3550
Wire Wire Line
	1400 3550 1400 3850
Text GLabel 1400 2000 1    50   Input ~ 0
3.3V
Wire Wire Line
	1400 2000 1400 2100
Connection ~ 1400 2700
Wire Wire Line
	1400 2100 950  2100
Wire Wire Line
	950  2100 950  2600
Connection ~ 1400 2100
Wire Wire Line
	1400 2100 1400 2700
Connection ~ 950  2600
$Comp
L Device:Q_Photo_NPN Q1
U 1 1 5E8AE55A
P 850 5650
F 0 "Q1" H 1040 5696 50  0000 L CNN
F 1 "Q_Photo_NPN" H 1040 5605 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 1050 5750 50  0001 C CNN
F 3 "~" H 850 5650 50  0001 C CNN
	1    850  5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E8AFD24
P 950 5100
F 0 "R1" H 1020 5146 50  0000 L CNN
F 1 "10k" H 1020 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 880 5100 50  0001 C CNN
F 3 "~" H 950 5100 50  0001 C CNN
	1    950  5100
	1    0    0    -1  
$EndComp
Text GLabel 950  4700 1    50   Input ~ 0
3.3V
Wire Wire Line
	950  4700 950  4950
Wire Wire Line
	950  5250 950  5350
Wire Wire Line
	950  5850 950  6050
$Comp
L power:GND #PWR02
U 1 1 5E8B1458
P 950 6050
F 0 "#PWR02" H 950 5800 50  0001 C CNN
F 1 "GND" H 955 5877 50  0000 C CNN
F 2 "" H 950 6050 50  0001 C CNN
F 3 "" H 950 6050 50  0001 C CNN
	1    950  6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E8B1D8C
P 750 7650
F 0 "#PWR03" H 750 7400 50  0001 C CNN
F 1 "GND" H 755 7477 50  0000 C CNN
F 2 "" H 750 7650 50  0001 C CNN
F 3 "" H 750 7650 50  0001 C CNN
	1    750  7650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5E8B202E
P 1600 7150
F 0 "#PWR06" H 1600 6900 50  0001 C CNN
F 1 "GND" H 1605 6977 50  0000 C CNN
F 2 "" H 1600 7150 50  0001 C CNN
F 3 "" H 1600 7150 50  0001 C CNN
	1    1600 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E8B24DA
P 1100 6550
F 0 "R2" V 893 6550 50  0000 C CNN
F 1 "2k" V 984 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1030 6550 50  0001 C CNN
F 3 "~" H 1100 6550 50  0001 C CNN
	1    1100 6550
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5E8B2F31
P 1600 6750
F 0 "C3" H 1715 6796 50  0000 L CNN
F 1 "100n" H 1715 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1638 6600 50  0001 C CNN
F 3 "~" H 1600 6750 50  0001 C CNN
	1    1600 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6550 1600 6550
Wire Wire Line
	1600 6550 1600 6600
Wire Wire Line
	1600 6900 1600 7150
Wire Wire Line
	1600 6550 2050 6550
Connection ~ 1600 6550
$Comp
L 5-pointed-Star:tes1-519426 U2
U 1 1 5E8B7D76
P 1950 1350
F 0 "U2" H 2375 2025 50  0000 C CNN
F 1 "tes1-0510" H 2375 1934 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:tes1-0510" H 1950 1350 50  0001 C CNN
F 3 "" H 1950 1350 50  0001 C CNN
	1    1950 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5E8BB834
P 1400 1200
F 0 "#PWR04" H 1400 950 50  0001 C CNN
F 1 "GND" H 1405 1027 50  0000 C CNN
F 2 "" H 1400 1200 50  0001 C CNN
F 3 "" H 1400 1200 50  0001 C CNN
	1    1400 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5E8BC197
P 2850 1300
F 0 "#PWR07" H 2850 1050 50  0001 C CNN
F 1 "GND" H 2855 1127 50  0000 C CNN
F 2 "" H 2850 1300 50  0001 C CNN
F 3 "" H 2850 1300 50  0001 C CNN
	1    2850 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1100 2850 1100
Wire Wire Line
	2850 1100 2850 1300
Wire Wire Line
	2800 900  3050 900 
Text GLabel 3050 900  2    50   Input ~ 0
3.3V
$Comp
L 5-pointed-Star:Hohlstecker_Buchse U1
U 1 1 5E8C04F9
P 950 1200
F 0 "U1" H 1183 1725 50  0000 C CNN
F 1 "Hohlstecker_Buchse" H 1183 1634 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:Hohlstecker_Buchse" H 950 1200 50  0001 C CNN
F 3 "" H 950 1200 50  0001 C CNN
	1    950  1200
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U8
U 1 1 5E8DE0AA
P 7500 1250
F 0 "U8" H 8050 1825 50  0000 C CNN
F 1 "WS2812_Diode" H 8050 1734 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 7500 1250 50  0001 C CNN
F 3 "" H 7500 1250 50  0001 C CNN
	1    7500 1250
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U15
U 1 1 5E8DEDDD
P 10250 2050
F 0 "U15" H 10800 2625 50  0000 C CNN
F 1 "WS2812_Diode" H 10800 2534 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 10250 2050 50  0001 C CNN
F 3 "" H 10250 2050 50  0001 C CNN
	1    10250 2050
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U22
U 1 1 5E8DF0DB
P 9350 3650
F 0 "U22" H 9900 4225 50  0000 C CNN
F 1 "WS2812_Diode" H 9900 4134 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 9350 3650 50  0001 C CNN
F 3 "" H 9350 3650 50  0001 C CNN
	1    9350 3650
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U29
U 1 1 5E8DF834
P 8400 5250
F 0 "U29" H 8950 5825 50  0000 C CNN
F 1 "WS2812_Diode" H 8950 5734 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 8400 5250 50  0001 C CNN
F 3 "" H 8400 5250 50  0001 C CNN
	1    8400 5250
	1    0    0    -1  
$EndComp
Text GLabel 4200 2450 1    50   Input ~ 0
3.3V
$Comp
L Device:C C9
U 1 1 5E8F4AAE
P 4550 3500
F 0 "C9" V 4700 3500 50  0000 C CNN
F 1 "100n" V 4800 3500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4588 3350 50  0001 C CNN
F 3 "~" H 4550 3500 50  0001 C CNN
	1    4550 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 3650 4300 3500
$Comp
L power:GND #PWR012
U 1 1 5E8FA732
P 4750 3550
F 0 "#PWR012" H 4750 3300 50  0001 C CNN
F 1 "GND" H 4755 3377 50  0000 C CNN
F 2 "" H 4750 3550 50  0001 C CNN
F 3 "" H 4750 3550 50  0001 C CNN
	1    4750 3550
	1    0    0    -1  
$EndComp
Text GLabel 4300 3100 1    50   Input ~ 0
3.3V
Connection ~ 4300 3500
Wire Wire Line
	4750 3500 4750 3550
Text GLabel 1250 5350 2    50   Input ~ 0
VALS
Wire Wire Line
	1250 5350 950  5350
Connection ~ 950  5350
Wire Wire Line
	950  5350 950  5450
Text GLabel 2050 6550 2    50   Input ~ 0
Int_SW
Text GLabel 3150 3100 3    50   Input ~ 0
Int_1
Text GLabel 3050 3100 3    50   Input ~ 0
Int_2
Text GLabel 2300 5950 0    50   Input ~ 0
SDA
Text GLabel 3250 2600 2    50   Input ~ 0
SDA
Wire Wire Line
	3000 2600 3250 2600
Text GLabel 3250 2700 2    50   Input ~ 0
SCl
Wire Wire Line
	3250 2700 3000 2700
$Comp
L Device:CP1 C11
U 1 1 5E955CED
P 4800 2900
F 0 "C11" V 4548 2900 50  0000 C CNN
F 1 "10u" V 4639 2900 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:865090368008" H 4800 2900 50  0001 C CNN
F 3 "~" H 4800 2900 50  0001 C CNN
	1    4800 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C8
U 1 1 5E96C729
P 4550 3250
F 0 "C8" V 4802 3250 50  0000 C CNN
F 1 "10u" V 4711 3250 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:865090368008" H 4550 3250 50  0001 C CNN
F 3 "~" H 4550 3250 50  0001 C CNN
	1    4550 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 3500 4750 3500
Wire Wire Line
	4400 3500 4300 3500
Wire Wire Line
	4300 3100 4300 3250
Wire Wire Line
	4400 3250 4300 3250
Connection ~ 4300 3250
Wire Wire Line
	4300 3250 4300 3500
Wire Wire Line
	4700 3250 4750 3250
Wire Wire Line
	4750 3250 4750 3500
Connection ~ 4750 3500
$Comp
L Device:C C6
U 1 1 5E97B008
P 3850 3400
F 0 "C6" V 3598 3400 50  0000 C CNN
F 1 "100n" V 3689 3400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3888 3250 50  0001 C CNN
F 3 "~" H 3850 3400 50  0001 C CNN
	1    3850 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E97B00E
P 3700 3550
F 0 "#PWR09" H 3700 3300 50  0001 C CNN
F 1 "GND" H 3705 3377 50  0000 C CNN
F 2 "" H 3700 3550 50  0001 C CNN
F 3 "" H 3700 3550 50  0001 C CNN
	1    3700 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C5
U 1 1 5E97B014
P 3850 3000
F 0 "C5" V 3598 3000 50  0000 C CNN
F 1 "10u" V 3689 3000 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:865090368008" H 3850 3000 50  0001 C CNN
F 3 "~" H 3850 3000 50  0001 C CNN
	1    3850 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3000 3700 3400
Connection ~ 3700 3400
Wire Wire Line
	3700 3400 3700 3550
Wire Wire Line
	4950 2900 4950 2500
$Comp
L Device:C C10
U 1 1 5E8F5ED6
P 4800 2500
F 0 "C10" V 4548 2500 50  0000 C CNN
F 1 "100n" V 4639 2500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4838 2350 50  0001 C CNN
F 3 "~" H 4800 2500 50  0001 C CNN
	1    4800 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 2900 4650 2900
Connection ~ 4200 2900
Wire Wire Line
	4200 2500 4650 2500
Wire Wire Line
	4200 2500 4200 2900
Wire Wire Line
	4200 2450 4200 2500
$Comp
L power:GND #PWR013
U 1 1 5E987F24
P 4950 3000
F 0 "#PWR013" H 4950 2750 50  0001 C CNN
F 1 "GND" H 4955 2827 50  0000 C CNN
F 2 "" H 4950 3000 50  0001 C CNN
F 3 "" H 4950 3000 50  0001 C CNN
	1    4950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3000 4950 2900
Connection ~ 4950 2900
Wire Wire Line
	4200 2900 4000 2900
Wire Wire Line
	4000 2900 4000 3000
Connection ~ 4000 3000
Wire Wire Line
	4000 3000 4000 3400
Connection ~ 4000 3400
Wire Wire Line
	4000 3400 4000 3650
Text GLabel 5650 5800 1    50   Input ~ 0
VALS
Text GLabel 2700 6250 0    50   Input ~ 0
MOSI
$Comp
L Device:C C13
U 1 1 5E9A0E1C
P 7550 1050
F 0 "C13" H 7650 1000 50  0000 L CNN
F 1 "100n" H 7650 900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7588 900 50  0001 C CNN
F 3 "~" H 7550 1050 50  0001 C CNN
	1    7550 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5E9A1EFA
P 10300 1850
F 0 "C20" H 10400 1800 50  0000 L CNN
F 1 "100n" H 10400 1700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10338 1700 50  0001 C CNN
F 3 "~" H 10300 1850 50  0001 C CNN
	1    10300 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C27
U 1 1 5E9A3AF2
P 9400 3450
F 0 "C27" H 9500 3400 50  0000 L CNN
F 1 "100n" H 9500 3300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9438 3300 50  0001 C CNN
F 3 "~" H 9400 3450 50  0001 C CNN
	1    9400 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C34
U 1 1 5E9A46E6
P 8450 5050
F 0 "C34" H 8550 5000 50  0000 L CNN
F 1 "100n" H 8550 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8488 4900 50  0001 C CNN
F 3 "~" H 8450 5050 50  0001 C CNN
	1    8450 5050
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U6
U 1 1 5E9DCE26
P 5700 1250
F 0 "U6" H 6250 1825 50  0000 C CNN
F 1 "WS2812_Diode" H 6250 1734 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 5700 1250 50  0001 C CNN
F 3 "" H 5700 1250 50  0001 C CNN
	1    5700 1250
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U7
U 1 1 5E9DCE2C
P 6600 1250
F 0 "U7" H 7150 1825 50  0000 C CNN
F 1 "WS2812_Diode" H 7150 1734 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 6600 1250 50  0001 C CNN
F 3 "" H 6600 1250 50  0001 C CNN
	1    6600 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5E9DCE32
P 5750 1050
F 0 "C7" H 5850 1150 50  0000 L CNN
F 1 "100n" H 5850 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5788 900 50  0001 C CNN
F 3 "~" H 5750 1050 50  0001 C CNN
	1    5750 1050
	1    0    0    -1  
$EndComp
Text GLabel 5650 600  0    50   Input ~ 0
5V
Wire Wire Line
	7550 900  7750 900 
Connection ~ 10300 900 
Wire Wire Line
	10300 600  9400 600 
Wire Wire Line
	10300 600  10300 900 
Wire Wire Line
	9400 600  9400 900 
Wire Wire Line
	9400 900  9600 900 
Connection ~ 9400 600 
Wire Wire Line
	9400 600  8450 600 
Connection ~ 9400 900 
Wire Wire Line
	8450 600  8450 900 
Wire Wire Line
	8450 900  8650 900 
Connection ~ 8450 600 
Wire Wire Line
	8450 600  7550 600 
Connection ~ 8450 900 
Wire Wire Line
	7550 600  7550 900 
Connection ~ 7550 900 
$Comp
L power:GND #PWR011
U 1 1 5E9F072E
P 5650 1250
F 0 "#PWR011" H 5650 1000 50  0001 C CNN
F 1 "GND" V 5655 1122 50  0000 R CNN
F 2 "" H 5650 1250 50  0001 C CNN
F 3 "" H 5650 1250 50  0001 C CNN
	1    5650 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 1200 7550 1250
Connection ~ 7550 1250
Wire Wire Line
	8450 1200 8450 1250
Connection ~ 8450 1250
Wire Wire Line
	8450 1250 8350 1250
Wire Wire Line
	9400 1200 9400 1250
Connection ~ 9400 1250
Wire Wire Line
	9400 1250 9250 1250
Wire Wire Line
	10300 1200 10300 1250
Connection ~ 10300 1250
Wire Wire Line
	10300 1250 10200 1250
Wire Wire Line
	8350 1150 8350 1250
Connection ~ 8350 1250
Wire Wire Line
	8350 1250 7550 1250
Wire Wire Line
	9250 1150 9250 1250
Connection ~ 9250 1250
Wire Wire Line
	9250 1250 8450 1250
Wire Wire Line
	10200 1150 10200 1250
Connection ~ 10200 1250
Wire Wire Line
	10200 1250 9400 1250
Wire Wire Line
	9250 900  9250 950 
Wire Wire Line
	9250 950  9600 950 
Wire Wire Line
	9600 950  9600 1150
Wire Wire Line
	8650 950  8350 950 
Wire Wire Line
	8350 950  8350 900 
Wire Wire Line
	8650 950  8650 1150
Wire Wire Line
	10200 900  10200 950 
Wire Wire Line
	11100 1150 11100 1250
Wire Wire Line
	10300 1250 11100 1250
Wire Wire Line
	10300 900  10500 900 
Wire Wire Line
	10500 950  10500 1150
Wire Wire Line
	10200 950  10500 950 
Connection ~ 7550 600 
$Comp
L 5-pointed-Star:WS2812_Diode U9
U 1 1 5EA34443
P 8400 1250
F 0 "U9" H 8950 1825 50  0000 C CNN
F 1 "WS2812_Diode" H 8950 1734 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 8400 1250 50  0001 C CNN
F 3 "" H 8400 1250 50  0001 C CNN
	1    8400 1250
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U16
U 1 1 5EA34449
P 7500 2850
F 0 "U16" H 8050 3425 50  0000 C CNN
F 1 "WS2812_Diode" H 8050 3334 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 7500 2850 50  0001 C CNN
F 3 "" H 7500 2850 50  0001 C CNN
	1    7500 2850
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U23
U 1 1 5EA3444F
P 10250 3650
F 0 "U23" H 10800 4225 50  0000 C CNN
F 1 "WS2812_Diode" H 10800 4134 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 10250 3650 50  0001 C CNN
F 3 "" H 10250 3650 50  0001 C CNN
	1    10250 3650
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U30
U 1 1 5EA34455
P 9350 5250
F 0 "U30" H 9900 5825 50  0000 C CNN
F 1 "WS2812_Diode" H 9900 5734 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 9350 5250 50  0001 C CNN
F 3 "" H 9350 5250 50  0001 C CNN
	1    9350 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5EA3445B
P 8450 1050
F 0 "C14" H 8550 1000 50  0000 L CNN
F 1 "100n" H 8500 900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8488 900 50  0001 C CNN
F 3 "~" H 8450 1050 50  0001 C CNN
	1    8450 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 5EA34461
P 7550 2650
F 0 "C21" H 7650 2600 50  0000 L CNN
F 1 "100n" H 7650 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7588 2500 50  0001 C CNN
F 3 "~" H 7550 2650 50  0001 C CNN
	1    7550 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C28
U 1 1 5EA34467
P 10300 3450
F 0 "C28" H 10400 3400 50  0000 L CNN
F 1 "100n" H 10400 3300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10338 3300 50  0001 C CNN
F 3 "~" H 10300 3450 50  0001 C CNN
	1    10300 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C35
U 1 1 5EA3446D
P 9400 5050
F 0 "C35" H 9500 5000 50  0000 L CNN
F 1 "100n" H 9500 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9438 4900 50  0001 C CNN
F 3 "~" H 9400 5050 50  0001 C CNN
	1    9400 5050
	1    0    0    -1  
$EndComp
Text GLabel 7400 1400 0    50   Input ~ 0
5V
Wire Wire Line
	7550 1700 7750 1700
Connection ~ 10300 1700
Wire Wire Line
	10300 1400 9400 1400
Wire Wire Line
	10300 1400 10300 1700
Wire Wire Line
	9400 1400 9400 1700
Wire Wire Line
	9400 1700 9600 1700
Connection ~ 9400 1400
Wire Wire Line
	9400 1400 8450 1400
Connection ~ 9400 1700
Wire Wire Line
	8450 1400 8450 1700
Wire Wire Line
	8450 1700 8650 1700
Connection ~ 8450 1400
Wire Wire Line
	8450 1400 7550 1400
Connection ~ 8450 1700
Wire Wire Line
	7550 1400 7550 1700
Connection ~ 7550 1700
$Comp
L power:GND #PWR014
U 1 1 5EA34484
P 7400 2050
F 0 "#PWR014" H 7400 1800 50  0001 C CNN
F 1 "GND" V 7405 1922 50  0000 R CNN
F 2 "" H 7400 2050 50  0001 C CNN
F 3 "" H 7400 2050 50  0001 C CNN
	1    7400 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 2000 7550 2050
Connection ~ 7550 2050
Wire Wire Line
	7550 2050 7400 2050
Wire Wire Line
	8450 2000 8450 2050
Connection ~ 8450 2050
Wire Wire Line
	8450 2050 8350 2050
Wire Wire Line
	9400 2000 9400 2050
Connection ~ 9400 2050
Wire Wire Line
	9400 2050 9250 2050
Wire Wire Line
	10300 2000 10300 2050
Connection ~ 10300 2050
Wire Wire Line
	10300 2050 10200 2050
Wire Wire Line
	8350 1950 8350 2050
Connection ~ 8350 2050
Wire Wire Line
	8350 2050 7550 2050
Wire Wire Line
	9250 1950 9250 2050
Connection ~ 9250 2050
Wire Wire Line
	9250 2050 8450 2050
Wire Wire Line
	10200 1950 10200 2050
Connection ~ 10200 2050
Wire Wire Line
	10200 2050 9400 2050
Wire Wire Line
	9250 1700 9250 1750
Wire Wire Line
	9250 1750 9600 1750
Wire Wire Line
	9600 1750 9600 1950
Wire Wire Line
	8650 1750 8350 1750
Wire Wire Line
	8350 1750 8350 1700
Wire Wire Line
	8650 1750 8650 1950
Wire Wire Line
	10200 1700 10200 1750
Wire Wire Line
	11100 1950 11100 2050
Wire Wire Line
	10300 2050 11100 2050
Wire Wire Line
	10300 1700 10500 1700
Wire Wire Line
	10500 1750 10500 1950
Wire Wire Line
	10200 1750 10500 1750
Wire Wire Line
	7400 1400 7550 1400
Connection ~ 7550 1400
$Comp
L 5-pointed-Star:WS2812_Diode U11
U 1 1 5EA5432E
P 10250 1250
F 0 "U11" H 10800 1825 50  0000 C CNN
F 1 "WS2812_Diode" H 10800 1734 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 10250 1250 50  0001 C CNN
F 3 "" H 10250 1250 50  0001 C CNN
	1    10250 1250
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U18
U 1 1 5EA54334
P 9350 2850
F 0 "U18" H 9900 3425 50  0000 C CNN
F 1 "WS2812_Diode" H 9900 3334 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 9350 2850 50  0001 C CNN
F 3 "" H 9350 2850 50  0001 C CNN
	1    9350 2850
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U25
U 1 1 5EA5433A
P 8400 4450
F 0 "U25" H 8950 5025 50  0000 C CNN
F 1 "WS2812_Diode" H 8950 4934 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 8400 4450 50  0001 C CNN
F 3 "" H 8400 4450 50  0001 C CNN
	1    8400 4450
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U32
U 1 1 5EA54340
P 7500 6050
F 0 "U32" H 8050 6625 50  0000 C CNN
F 1 "WS2812_Diode" H 8050 6534 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 7500 6050 50  0001 C CNN
F 3 "" H 7500 6050 50  0001 C CNN
	1    7500 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5EA54346
P 10300 1050
F 0 "C16" H 10400 1000 50  0000 L CNN
F 1 "100n" H 10400 900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10338 900 50  0001 C CNN
F 3 "~" H 10300 1050 50  0001 C CNN
	1    10300 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 5EA5434C
P 9400 2650
F 0 "C23" H 9500 2600 50  0000 L CNN
F 1 "100n" H 9500 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9438 2500 50  0001 C CNN
F 3 "~" H 9400 2650 50  0001 C CNN
	1    9400 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C30
U 1 1 5EA54352
P 8450 4250
F 0 "C30" H 8550 4200 50  0000 L CNN
F 1 "100n" H 8550 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8488 4100 50  0001 C CNN
F 3 "~" H 8450 4250 50  0001 C CNN
	1    8450 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C37
U 1 1 5EA54358
P 7550 5850
F 0 "C37" H 7650 5800 50  0000 L CNN
F 1 "100n" H 7650 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7588 5700 50  0001 C CNN
F 3 "~" H 7550 5850 50  0001 C CNN
	1    7550 5850
	1    0    0    -1  
$EndComp
Text GLabel 7400 3000 0    50   Input ~ 0
5V
Wire Wire Line
	7550 3300 7750 3300
Connection ~ 10300 3300
Wire Wire Line
	10300 3000 9400 3000
Wire Wire Line
	10300 3000 10300 3300
Wire Wire Line
	9400 3000 9400 3300
Wire Wire Line
	9400 3300 9600 3300
Connection ~ 9400 3000
Wire Wire Line
	9400 3000 8450 3000
Connection ~ 9400 3300
Wire Wire Line
	8450 3000 8450 3300
Wire Wire Line
	8450 3300 8650 3300
Connection ~ 8450 3000
Wire Wire Line
	8450 3000 7550 3000
Connection ~ 8450 3300
Wire Wire Line
	7550 3000 7550 3300
Connection ~ 7550 3300
Wire Wire Line
	7550 3600 7550 3650
Connection ~ 7550 3650
Wire Wire Line
	7550 3650 7400 3650
Wire Wire Line
	8450 3600 8450 3650
Connection ~ 8450 3650
Wire Wire Line
	8450 3650 8350 3650
Wire Wire Line
	9400 3600 9400 3650
Connection ~ 9400 3650
Wire Wire Line
	9400 3650 9250 3650
Wire Wire Line
	10300 3600 10300 3650
Connection ~ 10300 3650
Wire Wire Line
	10300 3650 10200 3650
Wire Wire Line
	8350 3550 8350 3650
Connection ~ 8350 3650
Wire Wire Line
	8350 3650 7550 3650
Wire Wire Line
	9250 3550 9250 3650
Connection ~ 9250 3650
Wire Wire Line
	9250 3650 8450 3650
Wire Wire Line
	10200 3550 10200 3650
Connection ~ 10200 3650
Wire Wire Line
	10200 3650 9400 3650
Wire Wire Line
	9250 3300 9250 3350
Wire Wire Line
	9250 3350 9600 3350
Wire Wire Line
	9600 3350 9600 3550
Wire Wire Line
	8650 3350 8350 3350
Wire Wire Line
	8350 3350 8350 3300
Wire Wire Line
	8650 3350 8650 3550
Wire Wire Line
	10200 3300 10200 3350
Wire Wire Line
	11100 3550 11100 3650
Wire Wire Line
	10300 3650 11100 3650
Wire Wire Line
	10300 3300 10500 3300
Wire Wire Line
	10500 3350 10500 3550
Wire Wire Line
	10200 3350 10500 3350
Wire Wire Line
	7400 3000 7550 3000
Connection ~ 7550 3000
Connection ~ 7550 2200
Wire Wire Line
	7400 2200 7550 2200
Wire Wire Line
	10200 2550 10500 2550
Wire Wire Line
	10500 2550 10500 2750
Wire Wire Line
	10300 2500 10500 2500
Wire Wire Line
	10300 2850 11100 2850
Wire Wire Line
	11100 2750 11100 2850
Wire Wire Line
	10200 2500 10200 2550
Wire Wire Line
	8650 2550 8650 2750
Wire Wire Line
	8350 2550 8350 2500
Wire Wire Line
	8650 2550 8350 2550
Wire Wire Line
	9600 2550 9600 2750
Wire Wire Line
	9250 2550 9600 2550
Wire Wire Line
	9250 2500 9250 2550
Wire Wire Line
	10200 2850 9400 2850
Connection ~ 10200 2850
Wire Wire Line
	10200 2750 10200 2850
Wire Wire Line
	9250 2850 8450 2850
Connection ~ 9250 2850
Wire Wire Line
	9250 2750 9250 2850
Wire Wire Line
	8350 2850 7550 2850
Connection ~ 8350 2850
Wire Wire Line
	8350 2750 8350 2850
Wire Wire Line
	10300 2850 10200 2850
Connection ~ 10300 2850
Wire Wire Line
	10300 2800 10300 2850
Wire Wire Line
	9400 2850 9250 2850
Connection ~ 9400 2850
Wire Wire Line
	9400 2800 9400 2850
Wire Wire Line
	8450 2850 8350 2850
Connection ~ 8450 2850
Wire Wire Line
	8450 2800 8450 2850
Wire Wire Line
	7550 2850 7400 2850
Connection ~ 7550 2850
Wire Wire Line
	7550 2800 7550 2850
$Comp
L power:GND #PWR015
U 1 1 5EA489BE
P 7400 2850
F 0 "#PWR015" H 7400 2600 50  0001 C CNN
F 1 "GND" V 7405 2722 50  0000 R CNN
F 2 "" H 7400 2850 50  0001 C CNN
F 3 "" H 7400 2850 50  0001 C CNN
	1    7400 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 2200 7550 2500
Connection ~ 8450 2500
Wire Wire Line
	8450 2200 7550 2200
Connection ~ 8450 2200
Wire Wire Line
	8450 2500 8650 2500
Wire Wire Line
	8450 2200 8450 2500
Connection ~ 9400 2500
Wire Wire Line
	9400 2200 8450 2200
Connection ~ 9400 2200
Wire Wire Line
	9400 2500 9600 2500
Wire Wire Line
	9400 2200 9400 2500
Wire Wire Line
	10300 2200 10300 2500
Wire Wire Line
	10300 2200 9400 2200
Connection ~ 10300 2500
Wire Wire Line
	7550 2500 7750 2500
Text GLabel 7400 2200 0    50   Input ~ 0
5V
$Comp
L Device:C C36
U 1 1 5EA489A7
P 10300 5050
F 0 "C36" H 10400 5000 50  0000 L CNN
F 1 "100n" H 10400 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10338 4900 50  0001 C CNN
F 3 "~" H 10300 5050 50  0001 C CNN
	1    10300 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C29
U 1 1 5EA489A1
P 7550 4250
F 0 "C29" H 7650 4200 50  0000 L CNN
F 1 "100n" H 7650 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7588 4100 50  0001 C CNN
F 3 "~" H 7550 4250 50  0001 C CNN
	1    7550 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 5EA4899B
P 8450 2650
F 0 "C22" H 8550 2600 50  0000 L CNN
F 1 "100n" H 8550 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8488 2500 50  0001 C CNN
F 3 "~" H 8450 2650 50  0001 C CNN
	1    8450 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5EA48995
P 9400 1050
F 0 "C15" H 9500 1000 50  0000 L CNN
F 1 "100n" H 9450 900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9438 900 50  0001 C CNN
F 3 "~" H 9400 1050 50  0001 C CNN
	1    9400 1050
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U31
U 1 1 5EA4898F
P 10250 5250
F 0 "U31" H 10800 5825 50  0000 C CNN
F 1 "WS2812_Diode" H 10800 5734 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 10250 5250 50  0001 C CNN
F 3 "" H 10250 5250 50  0001 C CNN
	1    10250 5250
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U24
U 1 1 5EA48989
P 7500 4450
F 0 "U24" H 8050 5025 50  0000 C CNN
F 1 "WS2812_Diode" H 8050 4934 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 7500 4450 50  0001 C CNN
F 3 "" H 7500 4450 50  0001 C CNN
	1    7500 4450
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U17
U 1 1 5EA48983
P 8400 2850
F 0 "U17" H 8950 3425 50  0000 C CNN
F 1 "WS2812_Diode" H 8950 3334 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 8400 2850 50  0001 C CNN
F 3 "" H 8400 2850 50  0001 C CNN
	1    8400 2850
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U10
U 1 1 5EA4897D
P 9350 1250
F 0 "U10" H 9900 1825 50  0000 C CNN
F 1 "WS2812_Diode" H 9900 1734 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 9350 1250 50  0001 C CNN
F 3 "" H 9350 1250 50  0001 C CNN
	1    9350 1250
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U12
U 1 1 5EB1B795
P 7500 2050
F 0 "U12" H 8050 2625 50  0000 C CNN
F 1 "WS2812_Diode" H 8050 2534 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 7500 2050 50  0001 C CNN
F 3 "" H 7500 2050 50  0001 C CNN
	1    7500 2050
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U19
U 1 1 5EB1B79B
P 10250 2850
F 0 "U19" H 10800 3425 50  0000 C CNN
F 1 "WS2812_Diode" H 10800 3334 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 10250 2850 50  0001 C CNN
F 3 "" H 10250 2850 50  0001 C CNN
	1    10250 2850
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U26
U 1 1 5EB1B7A1
P 9350 4450
F 0 "U26" H 9900 5025 50  0000 C CNN
F 1 "WS2812_Diode" H 9900 4934 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 9350 4450 50  0001 C CNN
F 3 "" H 9350 4450 50  0001 C CNN
	1    9350 4450
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U33
U 1 1 5EB1B7A7
P 8400 6050
F 0 "U33" H 8950 6625 50  0000 C CNN
F 1 "WS2812_Diode" H 8950 6534 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 8400 6050 50  0001 C CNN
F 3 "" H 8400 6050 50  0001 C CNN
	1    8400 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5EB1B7AD
P 7550 1850
F 0 "C17" H 7665 1896 50  0000 L CNN
F 1 "100n" H 7650 1700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7588 1700 50  0001 C CNN
F 3 "~" H 7550 1850 50  0001 C CNN
	1    7550 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 5EB1B7B3
P 10300 2650
F 0 "C24" H 10400 2600 50  0000 L CNN
F 1 "100n" H 10400 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10338 2500 50  0001 C CNN
F 3 "~" H 10300 2650 50  0001 C CNN
	1    10300 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C31
U 1 1 5EB1B7B9
P 9400 4250
F 0 "C31" H 9500 4200 50  0000 L CNN
F 1 "100n" H 9500 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9438 4100 50  0001 C CNN
F 3 "~" H 9400 4250 50  0001 C CNN
	1    9400 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C38
U 1 1 5EB1B7BF
P 8450 5850
F 0 "C38" H 8550 5800 50  0000 L CNN
F 1 "100n" H 8550 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8488 5700 50  0001 C CNN
F 3 "~" H 8450 5850 50  0001 C CNN
	1    8450 5850
	1    0    0    -1  
$EndComp
Text GLabel 7400 3800 0    50   Input ~ 0
5V
Wire Wire Line
	7550 4100 7750 4100
Connection ~ 10300 4100
Wire Wire Line
	10300 3800 9400 3800
Wire Wire Line
	10300 3800 10300 4100
Wire Wire Line
	9400 3800 9400 4100
Wire Wire Line
	9400 4100 9600 4100
Connection ~ 9400 3800
Connection ~ 9400 4100
Wire Wire Line
	8450 3800 8450 4100
Wire Wire Line
	8450 4100 8650 4100
Connection ~ 8450 3800
Wire Wire Line
	8450 3800 7550 3800
Connection ~ 8450 4100
Wire Wire Line
	7550 3800 7550 4100
Connection ~ 7550 4100
$Comp
L power:GND #PWR017
U 1 1 5EB1B7D6
P 7400 4450
F 0 "#PWR017" H 7400 4200 50  0001 C CNN
F 1 "GND" V 7405 4322 50  0000 R CNN
F 2 "" H 7400 4450 50  0001 C CNN
F 3 "" H 7400 4450 50  0001 C CNN
	1    7400 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 4400 7550 4450
Connection ~ 7550 4450
Wire Wire Line
	7550 4450 7400 4450
Wire Wire Line
	8450 4400 8450 4450
Connection ~ 8450 4450
Wire Wire Line
	8450 4450 8350 4450
Wire Wire Line
	9400 4400 9400 4450
Connection ~ 9400 4450
Wire Wire Line
	9400 4450 9250 4450
Wire Wire Line
	10300 4400 10300 4450
Connection ~ 10300 4450
Wire Wire Line
	10300 4450 10200 4450
Wire Wire Line
	8350 4350 8350 4450
Connection ~ 8350 4450
Wire Wire Line
	8350 4450 7550 4450
Wire Wire Line
	9250 4350 9250 4450
Connection ~ 9250 4450
Wire Wire Line
	9250 4450 8450 4450
Wire Wire Line
	10200 4350 10200 4450
Connection ~ 10200 4450
Wire Wire Line
	10200 4450 9400 4450
Wire Wire Line
	9250 4100 9250 4150
Wire Wire Line
	9250 4150 9600 4150
Wire Wire Line
	9600 4150 9600 4350
Wire Wire Line
	8650 4150 8350 4150
Wire Wire Line
	8350 4150 8350 4100
Wire Wire Line
	8650 4150 8650 4350
Wire Wire Line
	10200 4100 10200 4150
Wire Wire Line
	11100 4350 11100 4450
Wire Wire Line
	10300 4450 11100 4450
Wire Wire Line
	10300 4100 10500 4100
Wire Wire Line
	10500 4150 10500 4350
Wire Wire Line
	10200 4150 10500 4150
Wire Wire Line
	7400 3800 7550 3800
Connection ~ 7550 3800
$Comp
L 5-pointed-Star:WS2812_Diode U13
U 1 1 5EB2E577
P 8400 2050
F 0 "U13" H 8950 2625 50  0000 C CNN
F 1 "WS2812_Diode" H 8950 2534 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 8400 2050 50  0001 C CNN
F 3 "" H 8400 2050 50  0001 C CNN
	1    8400 2050
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U20
U 1 1 5EB2E57D
P 7500 3650
F 0 "U20" H 8050 4225 50  0000 C CNN
F 1 "WS2812_Diode" H 8050 4134 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 7500 3650 50  0001 C CNN
F 3 "" H 7500 3650 50  0001 C CNN
	1    7500 3650
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U27
U 1 1 5EB2E583
P 10250 4450
F 0 "U27" H 10800 5025 50  0000 C CNN
F 1 "WS2812_Diode" H 10800 4934 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 10250 4450 50  0001 C CNN
F 3 "" H 10250 4450 50  0001 C CNN
	1    10250 4450
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U34
U 1 1 5EB2E589
P 9350 6050
F 0 "U34" H 9900 6625 50  0000 C CNN
F 1 "WS2812_Diode" H 9900 6534 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 9350 6050 50  0001 C CNN
F 3 "" H 9350 6050 50  0001 C CNN
	1    9350 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5EB2E58F
P 8450 1850
F 0 "C18" H 8550 1800 50  0000 L CNN
F 1 "100n" H 8500 1700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8488 1700 50  0001 C CNN
F 3 "~" H 8450 1850 50  0001 C CNN
	1    8450 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 5EB2E595
P 7550 3450
F 0 "C25" H 7650 3400 50  0000 L CNN
F 1 "100n" H 7650 3300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7588 3300 50  0001 C CNN
F 3 "~" H 7550 3450 50  0001 C CNN
	1    7550 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C32
U 1 1 5EB2E59B
P 10300 4250
F 0 "C32" H 10400 4200 50  0000 L CNN
F 1 "100n" H 10400 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10338 4100 50  0001 C CNN
F 3 "~" H 10300 4250 50  0001 C CNN
	1    10300 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C39
U 1 1 5EB2E5A1
P 9400 5850
F 0 "C39" H 9500 5800 50  0000 L CNN
F 1 "100n" H 9500 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9438 5700 50  0001 C CNN
F 3 "~" H 9400 5850 50  0001 C CNN
	1    9400 5850
	1    0    0    -1  
$EndComp
Text GLabel 7400 4600 0    50   Input ~ 0
5V
Wire Wire Line
	7550 4900 7750 4900
Connection ~ 10300 4900
Wire Wire Line
	10300 4600 9400 4600
Wire Wire Line
	10300 4600 10300 4900
Wire Wire Line
	9400 4600 9400 4900
Wire Wire Line
	9400 4900 9600 4900
Connection ~ 9400 4600
Connection ~ 9400 4900
Wire Wire Line
	8450 4600 8450 4900
Wire Wire Line
	8450 4900 8650 4900
Connection ~ 8450 4600
Wire Wire Line
	8450 4600 7550 4600
Connection ~ 8450 4900
Wire Wire Line
	7550 4600 7550 4900
Connection ~ 7550 4900
$Comp
L power:GND #PWR018
U 1 1 5EB2E5B8
P 7400 5250
F 0 "#PWR018" H 7400 5000 50  0001 C CNN
F 1 "GND" V 7405 5122 50  0000 R CNN
F 2 "" H 7400 5250 50  0001 C CNN
F 3 "" H 7400 5250 50  0001 C CNN
	1    7400 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 5200 7550 5250
Connection ~ 7550 5250
Wire Wire Line
	7550 5250 7400 5250
Wire Wire Line
	8450 5200 8450 5250
Connection ~ 8450 5250
Wire Wire Line
	8450 5250 8350 5250
Wire Wire Line
	9400 5200 9400 5250
Connection ~ 9400 5250
Wire Wire Line
	9400 5250 9250 5250
Wire Wire Line
	10300 5200 10300 5250
Connection ~ 10300 5250
Wire Wire Line
	10300 5250 10200 5250
Wire Wire Line
	8350 5150 8350 5250
Connection ~ 8350 5250
Wire Wire Line
	8350 5250 7550 5250
Wire Wire Line
	9250 5150 9250 5250
Connection ~ 9250 5250
Wire Wire Line
	9250 5250 8450 5250
Wire Wire Line
	10200 5150 10200 5250
Connection ~ 10200 5250
Wire Wire Line
	10200 5250 9400 5250
Wire Wire Line
	9250 4900 9250 4950
Wire Wire Line
	9250 4950 9600 4950
Wire Wire Line
	9600 4950 9600 5150
Wire Wire Line
	8650 4950 8350 4950
Wire Wire Line
	8350 4950 8350 4900
Wire Wire Line
	8650 4950 8650 5150
Wire Wire Line
	10200 4900 10200 4950
Wire Wire Line
	10300 5250 11100 5250
Wire Wire Line
	10300 4900 10500 4900
Wire Wire Line
	10500 4950 10500 5150
Wire Wire Line
	10200 4950 10500 4950
Wire Wire Line
	7400 4600 7550 4600
Connection ~ 7550 4600
$Comp
L 5-pointed-Star:WS2812_Diode U14
U 1 1 5EB4BCA7
P 9350 2050
F 0 "U14" H 9900 2625 50  0000 C CNN
F 1 "WS2812_Diode" H 9900 2534 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 9350 2050 50  0001 C CNN
F 3 "" H 9350 2050 50  0001 C CNN
	1    9350 2050
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U21
U 1 1 5EB4BCAD
P 8400 3650
F 0 "U21" H 8950 4225 50  0000 C CNN
F 1 "WS2812_Diode" H 8950 4134 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 8400 3650 50  0001 C CNN
F 3 "" H 8400 3650 50  0001 C CNN
	1    8400 3650
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U28
U 1 1 5EB4BCB3
P 7500 5250
F 0 "U28" H 8050 5825 50  0000 C CNN
F 1 "WS2812_Diode" H 8050 5734 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 7500 5250 50  0001 C CNN
F 3 "" H 7500 5250 50  0001 C CNN
	1    7500 5250
	1    0    0    -1  
$EndComp
$Comp
L 5-pointed-Star:WS2812_Diode U35
U 1 1 5EB4BCB9
P 10250 6050
F 0 "U35" H 10800 6625 50  0000 C CNN
F 1 "WS2812_Diode" H 10800 6534 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:WS2812-2020" H 10250 6050 50  0001 C CNN
F 3 "" H 10250 6050 50  0001 C CNN
	1    10250 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5EB4BCBF
P 9400 1850
F 0 "C19" H 9500 1800 50  0000 L CNN
F 1 "100n" H 9450 1700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9438 1700 50  0001 C CNN
F 3 "~" H 9400 1850 50  0001 C CNN
	1    9400 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 5EB4BCC5
P 8450 3450
F 0 "C26" H 8550 3400 50  0000 L CNN
F 1 "100n" H 8550 3300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8488 3300 50  0001 C CNN
F 3 "~" H 8450 3450 50  0001 C CNN
	1    8450 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C33
U 1 1 5EB4BCCB
P 7550 5050
F 0 "C33" H 7650 5000 50  0000 L CNN
F 1 "100n" H 7650 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7588 4900 50  0001 C CNN
F 3 "~" H 7550 5050 50  0001 C CNN
	1    7550 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C40
U 1 1 5EB4BCD1
P 10300 5850
F 0 "C40" H 10400 5800 50  0000 L CNN
F 1 "100n" H 10400 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10338 5700 50  0001 C CNN
F 3 "~" H 10300 5850 50  0001 C CNN
	1    10300 5850
	1    0    0    -1  
$EndComp
Text GLabel 7400 5400 0    50   Input ~ 0
5V
Wire Wire Line
	7550 5700 7750 5700
Connection ~ 10300 5700
Wire Wire Line
	10300 5400 9400 5400
Wire Wire Line
	10300 5400 10300 5700
Wire Wire Line
	9400 5400 9400 5700
Wire Wire Line
	9400 5700 9600 5700
Connection ~ 9400 5400
Wire Wire Line
	9400 5400 8450 5400
Connection ~ 9400 5700
Wire Wire Line
	8450 5400 8450 5700
Wire Wire Line
	8450 5700 8650 5700
Connection ~ 8450 5400
Wire Wire Line
	8450 5400 7550 5400
Connection ~ 8450 5700
Wire Wire Line
	7550 5400 7550 5700
Connection ~ 7550 5700
$Comp
L power:GND #PWR019
U 1 1 5EB4BCE8
P 7400 6050
F 0 "#PWR019" H 7400 5800 50  0001 C CNN
F 1 "GND" V 7405 5922 50  0000 R CNN
F 2 "" H 7400 6050 50  0001 C CNN
F 3 "" H 7400 6050 50  0001 C CNN
	1    7400 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 6000 7550 6050
Connection ~ 7550 6050
Wire Wire Line
	7550 6050 7400 6050
Wire Wire Line
	8450 6000 8450 6050
Connection ~ 8450 6050
Wire Wire Line
	8450 6050 8350 6050
Wire Wire Line
	9400 6000 9400 6050
Connection ~ 9400 6050
Wire Wire Line
	9400 6050 9250 6050
Wire Wire Line
	10300 6000 10300 6050
Connection ~ 10300 6050
Wire Wire Line
	10300 6050 10200 6050
Wire Wire Line
	8350 5950 8350 6050
Connection ~ 8350 6050
Wire Wire Line
	8350 6050 7550 6050
Wire Wire Line
	9250 5950 9250 6050
Connection ~ 9250 6050
Wire Wire Line
	9250 6050 8450 6050
Wire Wire Line
	10200 5950 10200 6050
Connection ~ 10200 6050
Wire Wire Line
	10200 6050 9400 6050
Wire Wire Line
	9250 5700 9250 5750
Wire Wire Line
	9250 5750 9600 5750
Wire Wire Line
	9600 5750 9600 5950
Wire Wire Line
	8650 5750 8350 5750
Wire Wire Line
	8350 5750 8350 5700
Wire Wire Line
	8650 5750 8650 5950
Wire Wire Line
	10200 5700 10200 5750
Wire Wire Line
	11100 5950 11100 6050
Wire Wire Line
	10300 6050 11100 6050
Wire Wire Line
	10300 5700 10500 5700
Wire Wire Line
	10500 5750 10500 5950
Wire Wire Line
	10200 5750 10500 5750
Wire Wire Line
	7400 5400 7550 5400
Connection ~ 7550 5400
Wire Wire Line
	5650 1250 5750 1250
Wire Wire Line
	6550 1150 6550 1250
Connection ~ 6550 1250
Wire Wire Line
	6550 1250 6650 1250
Wire Wire Line
	6650 1200 6650 1250
Connection ~ 6650 1250
Wire Wire Line
	6650 1250 7450 1250
Wire Wire Line
	7450 1150 7450 1250
Connection ~ 7450 1250
Wire Wire Line
	7450 1250 7550 1250
Wire Wire Line
	5650 600  5750 600 
Wire Wire Line
	6650 600  6650 900 
Connection ~ 6650 600 
Wire Wire Line
	6650 600  7550 600 
Wire Wire Line
	6650 900  6850 900 
Connection ~ 6650 900 
Wire Wire Line
	5750 600  5750 900 
Connection ~ 5750 600 
Wire Wire Line
	5750 600  6650 600 
Wire Wire Line
	5750 900  5950 900 
Connection ~ 5750 900 
Wire Wire Line
	5750 1200 5750 1250
Connection ~ 5750 1250
Wire Wire Line
	5750 1250 6550 1250
Wire Wire Line
	6550 900  6550 950 
Wire Wire Line
	6550 950  6850 950 
Wire Wire Line
	6850 950  6850 1150
Wire Wire Line
	7450 900  7450 950 
Wire Wire Line
	7450 950  7750 950 
Wire Wire Line
	7750 950  7750 1150
Wire Wire Line
	7200 1950 7200 1300
Wire Wire Line
	7200 1300 11150 1300
Wire Wire Line
	11150 1300 11150 900 
Wire Wire Line
	11150 900  11100 900 
Wire Wire Line
	7200 1950 7750 1950
Wire Wire Line
	7200 2750 7200 2100
Wire Wire Line
	7200 2100 11150 2100
Wire Wire Line
	11150 2100 11150 1700
Wire Wire Line
	11150 1700 11100 1700
Wire Wire Line
	7200 2750 7750 2750
Wire Wire Line
	7200 3550 7200 2900
Wire Wire Line
	7200 2900 11150 2900
Wire Wire Line
	11150 2900 11150 2500
Wire Wire Line
	11150 2500 11100 2500
Wire Wire Line
	7200 3550 7750 3550
Wire Wire Line
	7200 4350 7200 3700
Wire Wire Line
	7200 3700 11150 3700
Wire Wire Line
	11150 3700 11150 3300
Wire Wire Line
	11150 3300 11100 3300
Wire Wire Line
	7200 4350 7750 4350
Wire Wire Line
	7200 5950 7200 5300
Wire Wire Line
	7200 5300 11150 5300
Wire Wire Line
	11150 5300 11150 4900
Wire Wire Line
	11150 4900 11100 4900
Wire Wire Line
	7200 5950 7750 5950
Wire Wire Line
	1400 900  1700 900 
Wire Wire Line
	1700 900  1700 1100
Wire Wire Line
	1700 1100 1950 1100
Wire Wire Line
	1950 900  1950 1000
Wire Wire Line
	1950 1000 1400 1000
Wire Wire Line
	1400 1000 1400 1100
Connection ~ 1400 1000
Wire Wire Line
	1400 1200 1400 1100
Connection ~ 1400 1100
Text GLabel 5800 5600 1    50   Input ~ 0
3.3V
$Comp
L Device:R R5
U 1 1 5EF1D9CC
P 5800 6050
F 0 "R5" H 5870 6096 50  0000 L CNN
F 1 "10k" H 5870 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5730 6050 50  0001 C CNN
F 3 "~" H 5800 6050 50  0001 C CNN
	1    5800 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5900 5800 5600
Text GLabel 2700 4250 0    50   Input ~ 0
Int_SW
Text GLabel 2700 4450 0    50   Input ~ 0
Int_1
Text GLabel 2700 4350 0    50   Input ~ 0
Int_2
Text GLabel 1750 900  2    50   Input ~ 0
5V
Wire Wire Line
	1750 900  1700 900 
Connection ~ 1700 900 
$Comp
L Device:R R3
U 1 1 5F0D0E54
P 2400 5600
F 0 "R3" H 2470 5646 50  0000 L CNN
F 1 "4.7k" H 2470 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2330 5600 50  0001 C CNN
F 3 "~" H 2400 5600 50  0001 C CNN
	1    2400 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5950 2400 5950
Wire Wire Line
	2400 5750 2400 5950
Connection ~ 2400 5950
Wire Wire Line
	2400 5950 2900 5950
$Comp
L power:GND #PWR08
U 1 1 5F24A2DC
P 4500 1350
F 0 "#PWR08" H 4500 1100 50  0001 C CNN
F 1 "GND" H 4505 1177 50  0000 C CNN
F 2 "" H 4500 1350 50  0001 C CNN
F 3 "" H 4500 1350 50  0001 C CNN
	1    4500 1350
	1    0    0    -1  
$EndComp
Text GLabel 2300 6050 0    50   Input ~ 0
SCl
Wire Wire Line
	2700 6050 2900 6050
Wire Wire Line
	2300 6050 2700 6050
Connection ~ 2700 6050
Wire Wire Line
	2700 5750 2700 6050
$Comp
L Device:R R4
U 1 1 5F0D0AB3
P 2700 5600
F 0 "R4" H 2770 5646 50  0000 L CNN
F 1 "4.7k" H 2770 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2630 5600 50  0001 C CNN
F 3 "~" H 2700 5600 50  0001 C CNN
	1    2700 5600
	1    0    0    -1  
$EndComp
Text GLabel 3600 1200 0    50   Input ~ 0
MOSI
Text GLabel 3800 900  1    50   Input ~ 0
5V
Text GLabel 2700 5300 1    50   Input ~ 0
3.3V
Text GLabel 2400 5300 1    50   Input ~ 0
3.3V
Wire Wire Line
	2400 5300 2400 5450
Wire Wire Line
	2700 5300 2700 5450
$Comp
L 5-pointed-Star:sn74lv1t34 U4
U 1 1 5F6BD530
P 4150 1150
F 0 "U4" H 4175 1475 50  0000 C CNN
F 1 "sn74lv1t34" H 4175 1384 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:SC70-5" H 3800 800 50  0001 C CNN
F 3 "" H 3800 800 50  0001 C CNN
	1    4150 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1200 4500 1200
Wire Wire Line
	4500 1200 4500 1350
Wire Wire Line
	4700 1150 4700 1050
Wire Wire Line
	4700 1050 4450 1050
Wire Wire Line
	3600 1200 3900 1200
Wire Wire Line
	3900 1050 3800 1050
Wire Wire Line
	3800 900  3800 1050
$Comp
L Device:R R6
U 1 1 5F815817
P 5200 1150
F 0 "R6" V 4993 1150 50  0000 C CNN
F 1 "470" V 5084 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5130 1150 50  0001 C CNN
F 3 "~" H 5200 1150 50  0001 C CNN
	1    5200 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 1150 5950 1150
Wire Wire Line
	5050 1150 4700 1150
$Comp
L 5-pointed-Star:MSP430F2416TPM U5
U 1 1 5F8AE22B
P 4200 5850
F 0 "U5" H 5250 8150 50  0000 C CNN
F 1 "MSP430F2416TPM" H 5250 8000 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:MSP430F2416TPM" H 4200 5850 50  0001 C CNN
F 3 "" H 4200 5850 50  0001 C CNN
	1    4200 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2900 4200 3650
Connection ~ 4200 2500
Wire Wire Line
	5900 7000 5900 7150
$Comp
L power:GND #PWR022
U 1 1 5FBF286A
P 5900 7150
F 0 "#PWR022" H 5900 6900 50  0001 C CNN
F 1 "GND" H 5905 6977 50  0000 C CNN
F 2 "" H 5900 7150 50  0001 C CNN
F 3 "" H 5900 7150 50  0001 C CNN
	1    5900 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6200 5800 6900
Wire Wire Line
	5900 6900 5800 6900
Connection ~ 5800 6900
Wire Wire Line
	2900 6250 2700 6250
$Comp
L Device:C C41
U 1 1 5FD5D0F3
P 5950 7500
F 0 "C41" V 5750 7650 50  0000 L CNN
F 1 "10nF" V 5850 7650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5988 7350 50  0001 C CNN
F 3 "~" H 5950 7500 50  0001 C CNN
	1    5950 7500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5FD5E00E
P 6300 7600
F 0 "#PWR021" H 6300 7350 50  0001 C CNN
F 1 "GND" H 6305 7427 50  0000 C CNN
F 2 "" H 6300 7600 50  0001 C CNN
F 3 "" H 6300 7600 50  0001 C CNN
	1    6300 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4250 2900 4250
Wire Wire Line
	2700 4350 2900 4350
Wire Wire Line
	2700 4450 2900 4450
Wire Wire Line
	5650 5800 5650 5850
Wire Wire Line
	5650 5850 5500 5850
$Comp
L Jumper:Jumper_3_Open JP1
U 1 1 602001EB
P 6600 5750
F 0 "JP1" H 6600 5881 50  0000 C CNN
F 1 "Jumper_3_Open" H 6600 5972 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:Jumper_2.54" H 6600 5750 50  0001 C CNN
F 3 "~" H 6600 5750 50  0001 C CNN
	1    6600 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 5600 5800 5600
Wire Wire Line
	6350 5750 6250 5750
Wire Wire Line
	6250 5750 6250 6250
Wire Wire Line
	6250 6250 6550 6250
Wire Wire Line
	6850 5750 6950 5750
Wire Wire Line
	6950 5750 6950 6250
Wire Wire Line
	6950 6250 6650 6250
Wire Wire Line
	3000 3000 3050 3000
Wire Wire Line
	3050 3000 3050 3100
Wire Wire Line
	3000 2900 3150 2900
Wire Wire Line
	3150 2900 3150 3100
$Comp
L power:GND #PWR020
U 1 1 5EA9926F
P 3350 2900
F 0 "#PWR020" H 3350 2650 50  0001 C CNN
F 1 "GND" H 3355 2727 50  0000 C CNN
F 2 "" H 3350 2900 50  0001 C CNN
F 3 "" H 3350 2900 50  0001 C CNN
	1    3350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2800 3350 2800
Wire Wire Line
	3350 2800 3350 2900
$Comp
L power:GND #PWR010
U 1 1 5E8FF63F
P 3800 7550
F 0 "#PWR010" H 3800 7300 50  0001 C CNN
F 1 "GND" H 3805 7377 50  0000 C CNN
F 2 "" H 3800 7550 50  0001 C CNN
F 3 "" H 3800 7550 50  0001 C CNN
	1    3800 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 7350 3800 7550
Wire Wire Line
	3900 7350 3900 7550
Wire Wire Line
	3900 7550 3800 7550
Connection ~ 3800 7550
Connection ~ 7550 2500
$Comp
L 5-pointed-Star:Switch_SMD SW1
U 1 1 5ED5A0AD
P 400 7500
F 0 "SW1" H 550 8400 50  0000 C CNN
F 1 "Switch_SMD" H 700 8300 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:Switch_SMD" H 400 7500 50  0001 C CNN
F 3 "" H 400 7500 50  0001 C CNN
	1    400  7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6750 1350 6750
Wire Wire Line
	1350 6750 1350 6850
Wire Wire Line
	950  6550 950  6750
Wire Wire Line
	950  6750 600  6750
Wire Wire Line
	600  6750 600  6850
Connection ~ 950  6750
Wire Wire Line
	600  7350 600  7650
Wire Wire Line
	600  7650 750  7650
Wire Wire Line
	1350 7350 1350 7650
Wire Wire Line
	1350 7650 750  7650
Connection ~ 750  7650
Wire Wire Line
	7200 5150 7200 4500
Wire Wire Line
	7200 4500 11150 4500
Wire Wire Line
	11150 4500 11150 4100
Wire Wire Line
	11150 4100 11100 4100
Wire Wire Line
	7200 5150 7750 5150
Wire Wire Line
	1400 3550 2150 3550
Wire Wire Line
	2150 3400 2150 3550
Connection ~ 2150 3550
Wire Wire Line
	2150 3550 2250 3550
Wire Wire Line
	2000 2950 1750 2950
Wire Wire Line
	8450 3800 9400 3800
Wire Wire Line
	8450 4600 9400 4600
Wire Wire Line
	11100 5150 11100 5250
$Comp
L 5-pointed-Star:MMA8453Q,3-axis U3
U 1 1 5F1F3BE4
P 2000 3350
F 0 "U3" H 2500 4325 50  0000 C CNN
F 1 "MMA8453Q,3-axis" H 2500 4234 50  0000 C CNN
F 2 "5-pointed-Star_Footprint:MMA8453Q" H 2000 3350 50  0001 C CNN
F 3 "" H 2000 3350 50  0001 C CNN
	1    2000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6900 5800 7500
Wire Wire Line
	6100 7500 6300 7500
Wire Wire Line
	6300 7500 6300 7600
Wire Wire Line
	5900 6500 5550 6500
Wire Wire Line
	5550 6500 5550 7400
Wire Wire Line
	5550 7400 4950 7400
Wire Wire Line
	4950 7400 4950 7350
Wire Wire Line
	5900 6600 5600 6600
Wire Wire Line
	5600 6600 5600 7450
Wire Wire Line
	5600 7450 4850 7450
Wire Wire Line
	4850 7450 4850 7350
Wire Wire Line
	5900 6700 5650 6700
Wire Wire Line
	5650 6700 5650 7500
Wire Wire Line
	5650 7500 4750 7500
Wire Wire Line
	4750 7500 4750 7350
Wire Wire Line
	5900 6800 5700 6800
Wire Wire Line
	5700 6800 5700 7550
Wire Wire Line
	5700 7550 4650 7550
Wire Wire Line
	4650 7550 4650 7350
Wire Wire Line
	5800 7500 5800 7600
Wire Wire Line
	5800 7600 4550 7600
Wire Wire Line
	4550 7600 4550 7350
Connection ~ 5800 7500
$Comp
L 5-pointed-Star:JTAG-14 P1
U 1 1 5FA8CCD3
P 6550 7000
F 0 "P1" H 6850 7800 50  0000 L CNN
F 1 "JTAG-14" H 6850 7700 50  0000 L CNN
F 2 "5-pointed-Star_Footprint:JTAG_14" H 6550 7000 50  0001 C CNN
F 3 "" H 6550 7000 50  0001 C CNN
	1    6550 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5E9DCE38
P 6650 1050
F 0 "C12" H 6750 1000 50  0000 L CNN
F 1 "100n" H 6750 900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6688 900 50  0001 C CNN
F 3 "~" H 6650 1050 50  0001 C CNN
	1    6650 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5EC496AD
P 7400 3650
F 0 "#PWR0101" H 7400 3400 50  0001 C CNN
F 1 "GND" V 7405 3522 50  0000 R CNN
F 2 "" H 7400 3650 50  0001 C CNN
F 3 "" H 7400 3650 50  0001 C CNN
	1    7400 3650
	0    1    1    0   
$EndComp
$EndSCHEMATC
