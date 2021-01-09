EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
L MCU_Module:Arduino_Nano_v3.x MCU
U 1 1 5FF85F8B
P 5800 2950
F 0 "MCU" H 5800 2900 50  0000 C CNN
F 1 "Arduino_Nano" H 5800 4350 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5800 2950 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5800 2950 50  0001 C CNN
	1    5800 2950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW1
U 1 1 5FF982B9
P 3900 2400
F 0 "SW1" H 3900 2685 50  0001 C CNN
F 1 "STOP" H 3900 2593 50  0000 C CNN
F 2 "" H 3900 2600 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3900 2600 50  0001 C CNN
	1    3900 2400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW2
U 1 1 5FF98CB1
P 3900 2750
F 0 "SW2" H 3900 3035 50  0001 C CNN
F 1 "MEM1" H 3900 2943 50  0000 C CNN
F 2 "" H 3900 2950 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3900 2950 50  0001 C CNN
	1    3900 2750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW3
U 1 1 5FF992C0
P 3900 3050
F 0 "SW3" H 3900 3335 50  0001 C CNN
F 1 "MEM2" H 3900 3243 50  0000 C CNN
F 2 "" H 3900 3250 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3900 3250 50  0001 C CNN
	1    3900 3050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW4
U 1 1 5FF99986
P 3900 3350
F 0 "SW4" H 3900 3635 50  0001 C CNN
F 1 "MEM3" H 3900 3543 50  0000 C CNN
F 2 "" H 3900 3550 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3900 3550 50  0001 C CNN
	1    3900 3350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW5
U 1 1 5FF99EC9
P 3900 3650
F 0 "SW5" H 3900 3935 50  0001 C CNN
F 1 "MEM4" H 3900 3843 50  0000 C CNN
F 2 "" H 3900 3850 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3900 3850 50  0001 C CNN
	1    3900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2650 4100 2650
Wire Wire Line
	4100 2650 4100 2400
$Comp
L Switch:SW_MEC_5G SW6
U 1 1 5FF9DEC0
P 3900 3950
F 0 "SW6" H 3900 4235 50  0001 C CNN
F 1 "MEM5" H 3900 4143 50  0000 C CNN
F 2 "" H 3900 4150 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3900 4150 50  0001 C CNN
	1    3900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2750 4100 2750
Wire Wire Line
	5300 2850 4100 2850
Wire Wire Line
	4100 2850 4100 3050
Wire Wire Line
	5300 2950 4250 2950
Wire Wire Line
	4250 2950 4250 3350
Wire Wire Line
	4250 3350 4100 3350
Wire Wire Line
	5300 3050 4400 3050
Wire Wire Line
	4400 3050 4400 3650
Wire Wire Line
	4400 3650 4100 3650
Wire Wire Line
	5300 3150 4550 3150
Wire Wire Line
	4550 3150 4550 3950
Wire Wire Line
	4550 3950 4100 3950
Wire Wire Line
	5800 3950 5800 4300
Wire Wire Line
	3450 2400 3700 2400
Connection ~ 3450 2750
Wire Wire Line
	3450 2750 3450 2400
Wire Wire Line
	3450 2750 3700 2750
Wire Wire Line
	3450 2750 3450 3050
Wire Wire Line
	3700 3050 3450 3050
Connection ~ 3450 3050
Wire Wire Line
	3450 3050 3450 3350
Wire Wire Line
	3700 3350 3450 3350
Connection ~ 3450 3350
Wire Wire Line
	3450 3350 3450 3650
Wire Wire Line
	3700 3650 3450 3650
Connection ~ 3450 3650
Wire Wire Line
	3450 3650 3450 3950
Wire Wire Line
	3700 3950 3450 3950
Connection ~ 3450 3950
Wire Wire Line
	3450 3950 3450 4300
Wire Wire Line
	5900 3950 5900 4300
Wire Wire Line
	5900 4300 5800 4300
Connection ~ 5800 4300
$Comp
L power:GND #PWR?
U 1 1 5FFA0A54
P 5800 4450
F 0 "#PWR?" H 5800 4200 50  0001 C CNN
F 1 "GND" H 5805 4277 50  0000 C CNB
F 2 "" H 5800 4450 50  0001 C CNN
F 3 "" H 5800 4450 50  0001 C CNN
	1    5800 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4450 5800 4300
$Comp
L power:VCC #PWR?
U 1 1 5FFA1994
P 4500 1700
F 0 "#PWR?" H 4500 1550 50  0001 C CNN
F 1 "VCC" H 4515 1873 50  0000 C CNB
F 2 "" H 4500 1700 50  0001 C CNN
F 3 "" H 4500 1700 50  0001 C CNN
	1    4500 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1700 4500 1800
Wire Wire Line
	4500 1800 5700 1800
Wire Wire Line
	5700 1800 5700 1950
Text GLabel 3600 1800 0    50   Input ~ 0
PTT
Wire Wire Line
	5300 2550 4200 2550
Wire Wire Line
	4200 2550 4200 1800
Wire Wire Line
	4200 1800 3600 1800
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 5FFA5108
P 4700 3850
F 0 "JP1" V 4746 3762 50  0001 R CNN
F 1 "Delay" V 4700 3850 50  0000 R CNN
F 2 "" H 4700 3850 50  0001 C CNN
F 3 "~" H 4700 3850 50  0001 C CNN
	1    4700 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 4050 4700 4300
Wire Wire Line
	4700 3350 4700 3650
$Comp
L Jumper:Jumper_2_Open JP?
U 1 1 5FFA7604
P 5000 3850
F 0 "JP?" V 5046 3762 50  0001 R CNN
F 1 "FH2 Mode" V 5000 3850 50  0000 R CNN
F 2 "" H 5000 3850 50  0001 C CNN
F 3 "~" H 5000 3850 50  0001 C CNN
	1    5000 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5000 4050 5000 4300
Wire Wire Line
	5000 3450 5000 3650
Connection ~ 4700 4300
Wire Wire Line
	4700 4300 3450 4300
Wire Wire Line
	4700 4300 5000 4300
Connection ~ 5000 4300
Wire Wire Line
	5000 4300 5800 4300
Wire Wire Line
	4700 3350 5300 3350
Wire Wire Line
	5300 3450 5000 3450
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 5FFAFF87
P 7750 2700
F 0 "Q3" H 7941 2746 50  0000 L CNN
F 1 "BC547" H 7941 2655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7950 2625 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7750 2700 50  0001 L CNN
	1    7750 2700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5FFB168C
P 6750 2200
F 0 "Q1" H 6941 2246 50  0000 L CNN
F 1 "BC547" H 6941 2155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6950 2125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6750 2200 50  0001 L CNN
	1    6750 2200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q4
U 1 1 5FFB25CE
P 8150 3200
F 0 "Q4" H 8341 3246 50  0000 L CNN
F 1 "BC547" H 8341 3155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8350 3125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8150 3200 50  0001 L CNN
	1    8150 3200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q5
U 1 1 5FFB3894
P 8600 3650
F 0 "Q5" H 8791 3696 50  0000 L CNN
F 1 "BC547" H 8791 3605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8800 3575 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8600 3650 50  0001 L CNN
	1    8600 3650
	1    0    0    -1  
$EndComp
Connection ~ 5900 4300
$Comp
L Device:R R1
U 1 1 5FFBB8E0
P 6500 2600
F 0 "R1" H 6570 2646 50  0000 L CNN
F 1 "1k" H 6570 2555 50  0000 L CNN
F 2 "" V 6430 2600 50  0001 C CNN
F 3 "~" H 6500 2600 50  0001 C CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FFBC0CF
P 7000 2750
F 0 "R2" H 7070 2796 50  0000 L CNN
F 1 "1k" H 7070 2705 50  0000 L CNN
F 2 "" V 6930 2750 50  0001 C CNN
F 3 "~" H 7000 2750 50  0001 C CNN
	1    7000 2750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5FFADA05
P 7200 2450
F 0 "Q2" H 7391 2496 50  0000 L CNN
F 1 "BC547" H 7391 2405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7400 2375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7200 2450 50  0001 L CNN
	1    7200 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5FFBDEF8
P 7500 2950
F 0 "R3" H 7570 2996 50  0000 L CNN
F 1 "1k" H 7570 2905 50  0000 L CNN
F 2 "" V 7430 2950 50  0001 C CNN
F 3 "~" H 7500 2950 50  0001 C CNN
	1    7500 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5FFBFB9A
P 7300 3650
F 0 "R5" V 7400 3650 50  0000 C CNN
F 1 "1k" V 7200 3650 50  0000 C CNN
F 2 "" V 7230 3650 50  0001 C CNN
F 3 "~" H 7300 3650 50  0001 C CNN
	1    7300 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 2200 6500 2450
Wire Wire Line
	7000 2600 7000 2450
$Comp
L Device:R R6
U 1 1 5FFCDDBA
P 6500 3800
F 0 "R6" H 6430 3754 50  0000 R CNN
F 1 "1k" H 6430 3845 50  0000 R CNN
F 2 "" V 6430 3800 50  0001 C CNN
F 3 "~" H 6500 3800 50  0001 C CNN
	1    6500 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5FFCE6E9
P 6800 3800
F 0 "R7" H 6870 3846 50  0000 L CNN
F 1 "1k" H 6870 3755 50  0000 L CNN
F 2 "" V 6730 3800 50  0001 C CNN
F 3 "~" H 6800 3800 50  0001 C CNN
	1    6800 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5FFCEDA2
P 6500 4100
F 0 "D1" V 6500 4300 50  0000 R CNN
F 1 "PLAY" V 6600 4150 50  0000 L CNN
F 2 "" H 6500 4100 50  0001 C CNN
F 3 "~" H 6500 4100 50  0001 C CNN
	1    6500 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5FFCFBC7
P 6800 4100
F 0 "D2" V 6800 4000 50  0000 R CNN
F 1 "STOP" V 6900 4050 50  0000 R CNN
F 2 "" H 6800 4100 50  0001 C CNN
F 3 "~" H 6800 4100 50  0001 C CNN
	1    6800 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 4250 6500 4300
Connection ~ 6500 4300
Wire Wire Line
	6500 4300 5900 4300
Wire Wire Line
	6800 4250 6800 4300
Connection ~ 6800 4300
Wire Wire Line
	6800 4300 6500 4300
Wire Wire Line
	6300 3650 6500 3650
Wire Wire Line
	6300 3550 6800 3550
Wire Wire Line
	6800 3550 6800 3650
$Comp
L Device:R R4
U 1 1 5FFE7573
P 7700 3350
F 0 "R4" V 7800 3350 50  0000 C CNN
F 1 "1k" V 7600 3350 50  0000 C CNN
F 2 "" V 7630 3350 50  0001 C CNN
F 3 "~" H 7700 3350 50  0001 C CNN
	1    7700 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 4300 8250 4300
$Comp
L power:GND #PWR?
U 1 1 5FFF3CD0
P 6850 2450
F 0 "#PWR?" H 6850 2200 50  0001 C CNN
F 1 "GND" H 6855 2277 50  0000 C CNN
F 2 "" H 6850 2450 50  0001 C CNN
F 3 "" H 6850 2450 50  0001 C CNN
	1    6850 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFF40B4
P 7300 2700
F 0 "#PWR?" H 7300 2450 50  0001 C CNN
F 1 "GND" H 7305 2527 50  0000 C CNN
F 2 "" H 7300 2700 50  0001 C CNN
F 3 "" H 7300 2700 50  0001 C CNN
	1    7300 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2400 6850 2450
Wire Wire Line
	7300 2650 7300 2700
Wire Wire Line
	6500 3050 6300 3050
Wire Wire Line
	6500 2750 6500 3050
Wire Wire Line
	6300 3150 7000 3150
Wire Wire Line
	7000 3150 7000 2900
Wire Wire Line
	6550 2200 6500 2200
Wire Wire Line
	7500 2800 7500 2700
Wire Wire Line
	7500 2700 7550 2700
Wire Wire Line
	7500 3250 7500 3100
Wire Wire Line
	6300 3250 7500 3250
$Comp
L power:GND #PWR?
U 1 1 60002AC1
P 7850 2950
F 0 "#PWR?" H 7850 2700 50  0001 C CNN
F 1 "GND" H 7855 2777 50  0000 C CNN
F 2 "" H 7850 2950 50  0001 C CNN
F 3 "" H 7850 2950 50  0001 C CNN
	1    7850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2950 7850 2900
Wire Wire Line
	6300 3350 7550 3350
Wire Wire Line
	7850 3350 7900 3350
Wire Wire Line
	7900 3350 7900 3200
Wire Wire Line
	7900 3200 7950 3200
Wire Wire Line
	8250 3400 8250 4300
Connection ~ 8250 4300
Wire Wire Line
	8700 3850 8700 4300
Wire Wire Line
	8250 4300 8700 4300
$Comp
L Device:R R8
U 1 1 60021D28
P 7150 1800
F 0 "R8" V 7357 1800 50  0000 C CNN
F 1 "866" V 7266 1800 50  0000 C CNN
F 2 "" V 7080 1800 50  0001 C CNN
F 3 "~" H 7150 1800 50  0001 C CNN
	1    7150 1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 600243C0
P 8200 2150
F 0 "R10" V 8300 2150 50  0000 C CNN
F 1 "1820" V 8100 2150 50  0000 C CNN
F 2 "" V 8130 2150 50  0001 C CNN
F 3 "~" H 8200 2150 50  0001 C CNN
	1    8200 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 60026181
P 8450 2650
F 0 "R11" V 8550 2650 50  0000 C CNN
F 1 "2490" V 8350 2650 50  0000 C CNN
F 2 "" V 8380 2650 50  0001 C CNN
F 3 "~" H 8450 2650 50  0001 C CNN
	1    8450 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 60027613
P 8700 3050
F 0 "R12" H 8770 3096 50  0000 L CNN
F 1 "3240" H 8770 3005 50  0000 L CNN
F 2 "" V 8630 3050 50  0001 C CNN
F 3 "~" H 8700 3050 50  0001 C CNN
	1    8700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2000 6850 1800
Wire Wire Line
	6850 1800 7000 1800
Wire Wire Line
	7300 2250 7300 1950
Wire Wire Line
	7300 1950 7500 1950
Wire Wire Line
	7850 2500 7850 2150
Wire Wire Line
	7850 2150 8050 2150
Wire Wire Line
	8250 3000 8250 2650
Wire Wire Line
	8250 2650 8300 2650
Wire Wire Line
	8700 3450 8700 3200
Wire Wire Line
	8700 2900 8700 2650
Wire Wire Line
	8700 2650 8600 2650
Wire Wire Line
	8350 2150 8700 2150
Wire Wire Line
	8700 2150 8700 2650
Connection ~ 8700 2650
Wire Wire Line
	7800 1950 8700 1950
Wire Wire Line
	8700 1950 8700 2150
Connection ~ 8700 2150
Wire Wire Line
	7300 1800 8700 1800
Wire Wire Line
	8700 1800 8700 1950
Connection ~ 8700 1950
$Comp
L Device:C C1
U 1 1 6003AEDB
P 9200 3450
F 0 "C1" H 9315 3496 50  0000 L CNN
F 1 "22n" H 9315 3405 50  0000 L CNN
F 2 "" H 9238 3300 50  0001 C CNN
F 3 "~" H 9200 3450 50  0001 C CNN
	1    9200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2650 9200 2650
Wire Wire Line
	9200 4300 8700 4300
Connection ~ 8700 4300
$Comp
L Connector:AudioPlug3 JACK
U 1 1 60040AF6
P 9800 2000
F 0 "JACK" H 10000 2250 50  0000 R CNN
F 1 "Yaesu TUN/LIN Input" H 10200 1650 50  0000 R CNN
F 2 "" H 9900 1950 50  0001 C CNN
F 3 "~" H 9900 1950 50  0001 C CNN
	1    9800 2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9200 2100 9200 2650
Connection ~ 9200 2650
Wire Wire Line
	9200 3600 9200 4300
Wire Wire Line
	9200 2650 9200 3300
$Comp
L power:GND #PWR?
U 1 1 60052C35
P 9000 2300
F 0 "#PWR?" H 9000 2050 50  0001 C CNN
F 1 "GND" H 9005 2127 50  0000 C CNN
F 2 "" H 9000 2300 50  0001 C CNN
F 3 "" H 9000 2300 50  0001 C CNN
	1    9000 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1900 9000 1900
Wire Wire Line
	9000 1900 9000 2300
Wire Wire Line
	7450 3650 8400 3650
Wire Wire Line
	6300 3450 7000 3450
Wire Wire Line
	7000 3450 7000 3650
Wire Wire Line
	7000 3650 7150 3650
$Comp
L Device:R R9
U 1 1 60022C4B
P 7650 1950
F 0 "R9" V 7750 1950 50  0000 C CNN
F 1 "1330" V 7550 1950 50  0000 C CNN
F 2 "" V 7580 1950 50  0001 C CNN
F 3 "~" H 7650 1950 50  0001 C CNN
	1    7650 1950
	0    -1   -1   0   
$EndComp
Text Label 4050 1700 2    50   ~ 0
PTT_From_Radio
$EndSCHEMATC
