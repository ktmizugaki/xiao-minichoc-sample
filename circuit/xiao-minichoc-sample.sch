EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr User 7874 6299
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
L Keyboard:Seeeduino_XIAO U1
U 1 1 621570BD
P 2050 2450
F 0 "U1" H 1400 3300 50  0000 C CNN
F 1 "SeeeduinoXIAO" H 2450 3300 50  0000 C CNN
F 2 "Keyboard:Seeeduino_XIAO_THT_UpsideDown" H 1700 2650 50  0001 C CNN
F 3 "" H 1700 2650 50  0001 C CNN
	1    2050 2450
	1    0    0    -1  
$EndComp
Text Label 1200 2450 2    50   ~ 0
A0
Text Label 1200 2750 2    50   ~ 0
D6
Text Label 1200 2900 2    50   ~ 0
D7
Text Label 2850 2900 0    50   ~ 0
D8
Text Label 2850 2750 0    50   ~ 0
D9
Text Label 2850 2600 0    50   ~ 0
D10
Text Label 4000 1100 0    50   ~ 0
D6
$Comp
L Device:R_US R6
U 1 1 6228276C
P 4000 1450
F 0 "R6" H 4068 1502 50  0000 L CNN
F 1 "~~600" H 4068 1404 50  0000 L CNN
F 2 "Keyboard:R_0603_1608Metric_Reversible" H 4000 1450 50  0001 C CNN
F 3 "~" H 4000 1450 50  0001 C CNN
	1    4000 1450
	1    0    0    -1  
$EndComp
Text Label 4000 1600 0    50   ~ 0
RD6
Wire Wire Line
	4000 1600 4000 2400
Text Label 4600 1100 0    50   ~ 0
D7
$Comp
L Device:R_US R7
U 1 1 62282980
P 4600 1450
F 0 "R7" H 4668 1502 50  0000 L CNN
F 1 "~~600" H 4668 1404 50  0000 L CNN
F 2 "Keyboard:R_0603_1608Metric_Reversible" H 4600 1450 50  0001 C CNN
F 3 "~" H 4600 1450 50  0001 C CNN
	1    4600 1450
	1    0    0    -1  
$EndComp
Text Label 4600 1600 0    50   ~ 0
RD7
Wire Wire Line
	4600 1600 4600 1900
Text Label 5200 1100 0    50   ~ 0
D8
$Comp
L Device:R_US R8
U 1 1 62282C1D
P 5200 1450
F 0 "R8" H 5268 1502 50  0000 L CNN
F 1 "~~600" H 5268 1404 50  0000 L CNN
F 2 "Keyboard:R_0603_1608Metric_Reversible" H 5200 1450 50  0001 C CNN
F 3 "~" H 5200 1450 50  0001 C CNN
	1    5200 1450
	1    0    0    -1  
$EndComp
Text Label 5200 1600 0    50   ~ 0
RD8
Wire Wire Line
	5200 1600 5200 1900
Text Label 5800 1100 0    50   ~ 0
D9
$Comp
L Device:R_US R9
U 1 1 62282F06
P 5800 1450
F 0 "R9" H 5868 1502 50  0000 L CNN
F 1 "~~600" H 5868 1404 50  0000 L CNN
F 2 "Keyboard:R_0603_1608Metric_Reversible" H 5800 1450 50  0001 C CNN
F 3 "~" H 5800 1450 50  0001 C CNN
	1    5800 1450
	1    0    0    -1  
$EndComp
Text Label 5800 1600 0    50   ~ 0
RD9
Wire Wire Line
	5800 1600 5800 1900
Wire Wire Line
	5800 1100 5900 1100
Text Label 6400 1100 0    50   ~ 0
D10
$Comp
L Device:R_US R10
U 1 1 6268A23A
P 6400 1450
F 0 "R10" H 6468 1502 50  0000 L CNN
F 1 "~~600" H 6468 1404 50  0000 L CNN
F 2 "Keyboard:R_0603_1608Metric_Reversible" H 6400 1450 50  0001 C CNN
F 3 "~" H 6400 1450 50  0001 C CNN
	1    6400 1450
	1    0    0    -1  
$EndComp
Text Label 6400 1600 0    50   ~ 0
RD10
Wire Wire Line
	6400 1600 6400 1900
Wire Wire Line
	6400 1100 6500 1100
Text Label 3800 2200 0    50   ~ 0
D6
Wire Wire Line
	3800 2200 5000 2200
Text Label 3800 2700 0    50   ~ 0
D7
Wire Wire Line
	3800 2700 4400 2700
Text Label 3800 3200 0    50   ~ 0
D8
Wire Wire Line
	3800 3200 4400 3200
Text Label 3800 3700 0    50   ~ 0
D9
Wire Wire Line
	3800 3700 4400 3700
Text Label 3800 4200 0    50   ~ 0
D10
Wire Wire Line
	3800 4200 4400 4200
$Comp
L Switch:SW_Push SW11
U 1 1 6229C353
P 4800 1900
F 0 "SW11" H 4750 1800 50  0000 C CNN
F 1 "SW11" H 4800 2094 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_V1_PG1350_Reversible" H 4800 2100 50  0001 C CNN
F 3 "" H 4800 2100 50  0001 C CNN
	1    4800 1900
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_ALT D11
U 1 1 6229C35A
P 5000 2050
F 0 "D11" V 4950 2200 50  0000 C CNN
F 1 "1N4148W" V 5045 2129 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 5000 2050 50  0001 C CNN
F 3 "~" H 5000 2050 50  0001 C CNN
	1    5000 2050
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW12
U 1 1 6229C361
P 5400 1900
F 0 "SW12" H 5350 1800 50  0000 C CNN
F 1 "SW12" H 5400 2094 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_V1_PG1350_Reversible" H 5400 2100 50  0001 C CNN
F 3 "" H 5400 2100 50  0001 C CNN
	1    5400 1900
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_ALT D12
U 1 1 6229C368
P 5600 2050
F 0 "D12" V 5550 2200 50  0000 C CNN
F 1 "1N4148W" V 5645 2129 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 5600 2050 50  0001 C CNN
F 3 "~" H 5600 2050 50  0001 C CNN
	1    5600 2050
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW13
U 1 1 6229C36F
P 6000 1900
F 0 "SW13" H 5950 1800 50  0000 C CNN
F 1 "SW13" H 6000 2094 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_V1_PG1350_Reversible" H 6000 2100 50  0001 C CNN
F 3 "" H 6000 2100 50  0001 C CNN
	1    6000 1900
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_ALT D13
U 1 1 6229C376
P 6200 2050
F 0 "D13" V 6150 2200 50  0000 C CNN
F 1 "1N4148W" V 6245 2129 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 6200 2050 50  0001 C CNN
F 3 "~" H 6200 2050 50  0001 C CNN
	1    6200 2050
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW14
U 1 1 6268A289
P 6600 1900
F 0 "SW14" H 6550 1800 50  0000 C CNN
F 1 "SW14" H 6600 2094 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_V1_PG1350_Reversible" H 6600 2100 50  0001 C CNN
F 3 "" H 6600 2100 50  0001 C CNN
	1    6600 1900
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_ALT D14
U 1 1 6268A290
P 6800 2050
F 0 "D14" V 6750 2200 50  0000 C CNN
F 1 "1N4148W" V 6845 2129 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 6800 2050 50  0001 C CNN
F 3 "~" H 6800 2050 50  0001 C CNN
	1    6800 2050
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW21
U 1 1 622A9C55
P 4200 2400
F 0 "SW21" H 4150 2300 50  0000 C CNN
F 1 "SW21" H 4200 2594 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_Mini_PG1232_Reversible" H 4200 2600 50  0001 C CNN
F 3 "" H 4200 2600 50  0001 C CNN
	1    4200 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D21
U 1 1 622A9C5C
P 4400 2550
F 0 "D21" V 4350 2700 50  0000 C CNN
F 1 "1N4148W" V 4445 2629 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 4400 2550 50  0001 C CNN
F 3 "~" H 4400 2550 50  0001 C CNN
	1    4400 2550
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW22
U 1 1 622A9C71
P 5400 2400
F 0 "SW22" H 5350 2300 50  0000 C CNN
F 1 "SW22" H 5400 2594 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_Mini_PG1232_Reversible" H 5400 2600 50  0001 C CNN
F 3 "" H 5400 2600 50  0001 C CNN
	1    5400 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D22
U 1 1 622A9C78
P 5600 2550
F 0 "D22" V 5550 2700 50  0000 C CNN
F 1 "1N4148W" V 5645 2629 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 5600 2550 50  0001 C CNN
F 3 "~" H 5600 2550 50  0001 C CNN
	1    5600 2550
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW23
U 1 1 62307FB5
P 6000 2400
F 0 "SW23" H 5950 2300 50  0000 C CNN
F 1 "SW23" H 6000 2594 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_Mini_PG1232_Reversible" H 6000 2600 50  0001 C CNN
F 3 "" H 6000 2600 50  0001 C CNN
	1    6000 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D23
U 1 1 622A9C86
P 6200 2550
F 0 "D23" V 6150 2700 50  0000 C CNN
F 1 "1N4148W" V 6245 2629 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 6200 2550 50  0001 C CNN
F 3 "~" H 6200 2550 50  0001 C CNN
	1    6200 2550
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW24
U 1 1 622B135A
P 6600 2400
F 0 "SW24" H 6550 2300 50  0000 C CNN
F 1 "SW24" H 6600 2594 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_Mini_PG1232_Reversible" H 6600 2600 50  0001 C CNN
F 3 "" H 6600 2600 50  0001 C CNN
	1    6600 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D24
U 1 1 6268A29E
P 6800 2550
F 0 "D24" V 6750 2700 50  0000 C CNN
F 1 "1N4148W" V 6845 2629 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 6800 2550 50  0001 C CNN
F 3 "~" H 6800 2550 50  0001 C CNN
	1    6800 2550
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW31
U 1 1 628151AB
P 4200 2900
F 0 "SW31" H 4150 2800 50  0000 C CNN
F 1 "SW31" H 4200 3094 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_Mini_PG1232_Reversible" H 4200 3100 50  0001 C CNN
F 3 "" H 4200 3100 50  0001 C CNN
	1    4200 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D31
U 1 1 628151A4
P 4400 3050
F 0 "D31" V 4350 3200 50  0000 C CNN
F 1 "1N4148W" V 4445 3129 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 4400 3050 50  0001 C CNN
F 3 "~" H 4400 3050 50  0001 C CNN
	1    4400 3050
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW32
U 1 1 622BB19F
P 4800 2900
F 0 "SW32" H 4750 2800 50  0000 C CNN
F 1 "SW32" H 4800 3094 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_Mini_PG1232_Reversible" H 4800 3100 50  0001 C CNN
F 3 "" H 4800 3100 50  0001 C CNN
	1    4800 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D32
U 1 1 622BB1A6
P 5000 3050
F 0 "D32" V 4950 3200 50  0000 C CNN
F 1 "1N4148W" V 5045 3129 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 5000 3050 50  0001 C CNN
F 3 "~" H 5000 3050 50  0001 C CNN
	1    5000 3050
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW33
U 1 1 622EC6DA
P 6000 2900
F 0 "SW33" H 5950 2800 50  0000 C CNN
F 1 "SW33" H 6000 3094 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_Mini_PG1232_Reversible" H 6000 3100 50  0001 C CNN
F 3 "" H 6000 3100 50  0001 C CNN
	1    6000 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D33
U 1 1 622BB1C2
P 6200 3050
F 0 "D33" V 6150 3200 50  0000 C CNN
F 1 "1N4148W" V 6245 3129 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 6200 3050 50  0001 C CNN
F 3 "~" H 6200 3050 50  0001 C CNN
	1    6200 3050
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW34
U 1 1 6268A2A5
P 6600 2900
F 0 "SW34" H 6550 2800 50  0000 C CNN
F 1 "SW34" H 6600 3094 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_Mini_PG1232_Reversible" H 6600 3100 50  0001 C CNN
F 3 "" H 6600 3100 50  0001 C CNN
	1    6600 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D34
U 1 1 6268A2AC
P 6800 3050
F 0 "D34" V 6750 3200 50  0000 C CNN
F 1 "1N4148W" V 6845 3129 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 6800 3050 50  0001 C CNN
F 3 "~" H 6800 3050 50  0001 C CNN
	1    6800 3050
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW41
U 1 1 622EC6BE
P 4200 3400
F 0 "SW41" H 4150 3300 50  0000 C CNN
F 1 "SW41" H 4200 3594 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_Mini_PG1232_Reversible" H 4200 3600 50  0001 C CNN
F 3 "" H 4200 3600 50  0001 C CNN
	1    4200 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D41
U 1 1 622EC6C5
P 4400 3550
F 0 "D41" V 4350 3700 50  0000 C CNN
F 1 "1N4148W" V 4445 3629 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 4400 3550 50  0001 C CNN
F 3 "~" H 4400 3550 50  0001 C CNN
	1    4400 3550
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW42
U 1 1 622EC6CC
P 4800 3400
F 0 "SW42" H 4750 3300 50  0000 C CNN
F 1 "SW42" H 4800 3594 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_Mini_PG1232_Reversible" H 4800 3600 50  0001 C CNN
F 3 "" H 4800 3600 50  0001 C CNN
	1    4800 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D42
U 1 1 622EC6D3
P 5000 3550
F 0 "D42" V 4950 3700 50  0000 C CNN
F 1 "1N4148W" V 5045 3629 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 5000 3550 50  0001 C CNN
F 3 "~" H 5000 3550 50  0001 C CNN
	1    5000 3550
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW43
U 1 1 622BB1BB
P 4200 3900
F 0 "SW43" H 4150 3800 50  0000 C CNN
F 1 "SW43" H 4200 4094 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_Mini_PG1232_Reversible" H 4200 4100 50  0001 C CNN
F 3 "" H 4200 4100 50  0001 C CNN
	1    4200 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D43
U 1 1 62307FA0
P 4400 4050
F 0 "D43" V 4350 4200 50  0000 C CNN
F 1 "1N4148W" V 4445 4129 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 4400 4050 50  0001 C CNN
F 3 "~" H 4400 4050 50  0001 C CNN
	1    4400 4050
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push BTN1
U 1 1 622EB40F
P 5400 3400
F 0 "BTN1" H 5350 3300 50  0000 C CNN
F 1 "BUTTON1" H 5400 3594 50  0001 C CNN
F 2 "Button_Switch_SMD:SW_SPST_KMR2" H 5400 3600 50  0001 C CNN
F 3 "" H 5400 3600 50  0001 C CNN
	1    5400 3400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push BTN1_2
U 1 1 627EE245
P 5400 3300
F 0 "BTN1_2" H 5350 3200 50  0000 C CNN
F 1 "BUTTON1" H 5400 3494 50  0001 C CNN
F 2 "Keyboard:Kailh_X_Switch_PG1425_Reversible" H 5400 3500 50  0001 C CNN
F 3 "" H 5400 3500 50  0001 C CNN
	1    5400 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D51
U 1 1 622EC6E1
P 5600 3550
F 0 "D51" V 5550 3700 50  0000 C CNN
F 1 "1N4148W" V 5645 3629 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 5600 3550 50  0001 C CNN
F 3 "~" H 5600 3550 50  0001 C CNN
	1    5600 3550
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push BTN2
U 1 1 622EC7C9
P 5400 3900
F 0 "BTN2" H 5350 3800 50  0000 C CNN
F 1 "BUTTON2" H 5400 4094 50  0001 C CNN
F 2 "Button_Switch_SMD:SW_SPST_KMR2" H 5400 4100 50  0001 C CNN
F 3 "" H 5400 4100 50  0001 C CNN
	1    5400 3900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push BTN2_2
U 1 1 627EEBF0
P 5400 3800
F 0 "BTN2_2" H 5350 3700 50  0000 C CNN
F 1 "BUTTON2" H 5400 3994 50  0001 C CNN
F 2 "Keyboard:Kailh_X_Switch_PG1425_Reversible" H 5400 4000 50  0001 C CNN
F 3 "" H 5400 4000 50  0001 C CNN
	1    5400 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D52
U 1 1 62307FBC
P 5600 4050
F 0 "D52" V 5550 4200 50  0000 C CNN
F 1 "1N4148W" V 5645 4129 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 5600 4050 50  0001 C CNN
F 3 "~" H 5600 4050 50  0001 C CNN
	1    5600 4050
	0    -1   -1   0   
$EndComp
$Comp
L Keyboard:JT8P-3.2T-B10K-1-16Y-2 TS1
U 1 1 622B9141
P 6650 3500
F 0 "TS1" V 6550 3500 50  0000 C CNN
F 1 "JT8P-3.2T-B10K-1-16Y-2" V 6404 3500 60  0001 C CNN
F 2 "Keyboard:JT8P-3.2T-B10K-1-16Y" H 6800 3150 60  0001 C CNN
F 3 "" H 6800 3150 60  0001 C CNN
	1    6650 3500
	0    -1   -1   0   
$EndComp
Text Label 6650 3350 0    50   ~ 0
A0
$Comp
L Device:D_Small_ALT D61
U 1 1 622D5E92
P 6500 3400
F 0 "D61" V 6500 3332 50  0000 R CNN
F 1 "SS2040FL" H 6500 3286 50  0001 C CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" V 6500 3400 50  0001 C CNN
F 3 "~" V 6500 3400 50  0001 C CNN
	1    6500 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D62
U 1 1 6268A2BA
P 6800 3600
F 0 "D62" V 6750 3750 50  0000 C CNN
F 1 "SS2040FL" V 6845 3679 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 6800 3600 50  0001 C CNN
F 3 "~" H 6800 3600 50  0001 C CNN
	1    6800 3600
	0    -1   -1   0   
$EndComp
$Comp
L Keyboard:JT8P-3.2T-B10K-1-16Y-2 TS1
U 2 1 622D2C65
P 6050 4000
F 0 "TS1" H 6050 3900 50  0000 C CNN
F 1 "JT8P-3.2T-B10K-1-16Y-2" H 6050 3772 60  0001 C CNN
F 2 "Keyboard:JT8P-3.2T-B10K-1-16Y" H 6050 3772 60  0001 C CNN
F 3 "" H 6200 3650 60  0001 C CNN
	2    6050 4000
	-1   0    0    -1  
$EndComp
Text Label 6050 3850 0    50   ~ 0
A0
$Comp
L Device:D_Small_ALT D63
U 1 1 622D5B58
P 5900 3900
F 0 "D63" V 5900 3850 50  0000 R CNN
F 1 "SS2040FL" V 5900 4014 50  0001 C CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" V 5900 3900 50  0001 C CNN
F 3 "~" V 5900 3900 50  0001 C CNN
	1    5900 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D64
U 1 1 627735A2
P 6200 4100
F 0 "D64" V 6150 4250 50  0000 C CNN
F 1 "SS2040FL" V 6245 4179 50  0001 L CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" H 6200 4100 50  0001 C CNN
F 3 "~" H 6200 4100 50  0001 C CNN
	1    6200 4100
	0    -1   -1   0   
$EndComp
Connection ~ 5200 2400
Wire Wire Line
	5600 2200 6200 2200
Wire Wire Line
	5600 2700 6200 2700
Wire Wire Line
	6200 2200 6800 2200
Wire Wire Line
	6200 2700 6800 2700
Wire Wire Line
	6200 3200 6800 3200
Wire Wire Line
	5600 4200 6200 4200
Connection ~ 6400 2400
Wire Wire Line
	6400 2400 6400 2900
Wire Wire Line
	5800 1900 5800 2400
Connection ~ 6200 2200
Connection ~ 6200 2700
Connection ~ 5800 2400
Wire Wire Line
	5800 2400 5800 2900
Wire Wire Line
	5200 1900 5200 2400
Connection ~ 5600 4200
Connection ~ 6200 3200
Wire Wire Line
	5000 3200 6200 3200
Connection ~ 5600 2200
Wire Wire Line
	5000 2200 5600 2200
Wire Wire Line
	4600 1900 4600 2900
Connection ~ 4600 2900
Connection ~ 5600 2700
Wire Wire Line
	4400 2700 5600 2700
Wire Wire Line
	4000 3400 4000 3800
Connection ~ 4000 3400
Connection ~ 5000 2200
Connection ~ 4400 2700
Connection ~ 4400 3700
Connection ~ 5000 3200
Connection ~ 4000 2400
Connection ~ 4600 1900
Connection ~ 5800 1900
Connection ~ 5200 1900
Wire Wire Line
	6500 1100 6500 3300
Wire Wire Line
	5900 1100 5900 3800
Wire Wire Line
	6400 1900 6400 2400
Connection ~ 6400 1900
Connection ~ 5000 3700
Wire Wire Line
	4600 2900 4600 3400
Wire Wire Line
	4400 3700 5000 3700
Wire Wire Line
	4000 2400 4000 2900
Connection ~ 4400 4200
Wire Wire Line
	5200 2400 5200 3300
Wire Wire Line
	5200 3400 5200 3800
Connection ~ 5200 3400
Connection ~ 5600 3700
Wire Wire Line
	5000 3700 5600 3700
Wire Wire Line
	5600 3700 6800 3700
Connection ~ 4000 2900
Wire Wire Line
	4000 2900 4000 3400
Connection ~ 4400 3200
Wire Wire Line
	4400 3200 5000 3200
Connection ~ 5200 3300
Wire Wire Line
	5200 3300 5200 3400
Wire Wire Line
	5600 3300 5600 3400
Connection ~ 5600 3400
Connection ~ 5200 3800
Wire Wire Line
	5200 3800 5200 3900
Wire Wire Line
	5600 3800 5600 3900
Connection ~ 5600 3900
Wire Wire Line
	4400 4200 5600 4200
$Comp
L Switch:SW_Push SW43_2
U 1 1 62864252
P 4200 3800
F 0 "SW43_2" H 4150 3700 50  0000 C CNN
F 1 "SW43" H 4200 3994 50  0001 C CNN
F 2 "Keyboard:Kailh_Choc_Mini_PG1232_Reversible" H 4200 4000 50  0001 C CNN
F 3 "" H 4200 4000 50  0001 C CNN
	1    4200 3800
	-1   0    0    -1  
$EndComp
Connection ~ 4000 3800
Wire Wire Line
	4000 3800 4000 3900
Wire Wire Line
	4400 3800 4400 3900
Connection ~ 4400 3900
$Comp
L Device:D_Small_ALT D6
U 1 1 628F9D98
P 4000 1200
F 0 "D6" V 4000 1150 50  0000 R CNN
F 1 "1SS355VM" V 4000 1314 50  0001 C CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" V 4000 1200 50  0001 C CNN
F 3 "~" V 4000 1200 50  0001 C CNN
	1    4000 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D7
U 1 1 628FA3B0
P 4600 1200
F 0 "D7" V 4600 1150 50  0000 R CNN
F 1 "1SS355VM" V 4600 1314 50  0001 C CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" V 4600 1200 50  0001 C CNN
F 3 "~" V 4600 1200 50  0001 C CNN
	1    4600 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D8
U 1 1 628FAE68
P 5200 1200
F 0 "D8" V 5200 1150 50  0000 R CNN
F 1 "1SS355VM" V 5200 1314 50  0001 C CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" V 5200 1200 50  0001 C CNN
F 3 "~" V 5200 1200 50  0001 C CNN
	1    5200 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D9
U 1 1 628FAE6F
P 5800 1200
F 0 "D9" V 5800 1150 50  0000 R CNN
F 1 "1SS355VM" V 5800 1314 50  0001 C CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" V 5800 1200 50  0001 C CNN
F 3 "~" V 5800 1200 50  0001 C CNN
	1    5800 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D10
U 1 1 628FB7E0
P 6400 1200
F 0 "D10" V 6400 1150 50  0000 R CNN
F 1 "1SS355VM" V 6400 1314 50  0001 C CNN
F 2 "Keyboard:D_SOD-123-323_Reversible" V 6400 1200 50  0001 C CNN
F 3 "~" V 6400 1200 50  0001 C CNN
	1    6400 1200
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
