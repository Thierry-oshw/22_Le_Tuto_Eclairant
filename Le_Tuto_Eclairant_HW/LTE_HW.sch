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
Text GLabel 2275 1150 1    50   Input ~ 0
5V
Text GLabel 2000 3225 0    50   Input ~ 0
REF_5V
$Comp
L Device:R_POT_Small RV1
U 1 1 622874D9
P 3475 1925
F 0 "RV1" H 3416 1971 50  0000 R CNN
F 1 "R_POT_Small" H 3416 1880 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 3475 1925 50  0001 C CNN
F 3 "C202382" H 3475 1925 50  0001 C CNN
	1    3475 1925
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 1150 2275 1225
NoConn ~ 2175 1225
NoConn ~ 1975 1225
NoConn ~ 2575 1625
NoConn ~ 2575 1725
Text GLabel 3525 1825 2    50   Input ~ 0
5V
Text GLabel 2650 2225 2    50   Input ~ 0
A0
Text GLabel 2650 2325 2    50   Input ~ 0
A1
Text GLabel 2650 2425 2    50   Input ~ 0
A2
Wire Wire Line
	2575 2225 2650 2225
Wire Wire Line
	2575 2325 2650 2325
Wire Wire Line
	2575 2425 2650 2425
Wire Wire Line
	3475 1825 3525 1825
Wire Wire Line
	3475 2025 3525 2025
Text GLabel 3525 2150 2    50   Input ~ 0
5V
Wire Wire Line
	3475 2150 3525 2150
Wire Wire Line
	3475 2350 3525 2350
Text GLabel 3650 1925 2    50   Input ~ 0
A0
Text GLabel 3650 2250 2    50   Input ~ 0
A1
Wire Wire Line
	3575 1925 3650 1925
Wire Wire Line
	3575 2250 3650 2250
NoConn ~ 1575 2225
NoConn ~ 1575 2325
NoConn ~ 1575 2725
NoConn ~ 1575 2825
NoConn ~ 1575 2925
Wire Wire Line
	2000 3225 2075 3225
Text GLabel 3525 2475 2    50   Input ~ 0
5V
Wire Wire Line
	3475 2475 3525 2475
Wire Wire Line
	3475 2675 3525 2675
Wire Wire Line
	3575 2575 3650 2575
Text GLabel 3650 2575 2    50   Input ~ 0
A2
NoConn ~ 1575 1925
NoConn ~ 2575 2025
Text GLabel 3525 2675 2    50   Input ~ 0
REF_5V
Text GLabel 3525 2350 2    50   Input ~ 0
REF_5V
Text GLabel 3525 2025 2    50   Input ~ 0
REF_5V
NoConn ~ 1575 2425
NoConn ~ 1575 2125
NoConn ~ 2575 2725
NoConn ~ 2575 2825
NoConn ~ 2575 2925
NoConn ~ 2575 2525
NoConn ~ 2575 2625
Wire Wire Line
	1200 4425 1250 4425
$Comp
L Connector:TestPoint TP2
U 1 1 62501324
P 1250 4425
F 0 "TP2" H 1308 4543 50  0000 L CNN
F 1 "TestPoint" H 1308 4452 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1450 4425 50  0001 C CNN
F 3 "~" H 1450 4425 50  0001 C CNN
	1    1250 4425
	0    1    1    0   
$EndComp
Text GLabel 1200 4425 0    50   Input ~ 0
REF_5V
Wire Wire Line
	1175 3900 1225 3900
$Comp
L Connector:TestPoint TP1
U 1 1 625001AF
P 1225 3900
F 0 "TP1" H 1283 4018 50  0000 L CNN
F 1 "TestPoint" H 1283 3927 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1425 3900 50  0001 C CNN
F 3 "~" H 1425 3900 50  0001 C CNN
	1    1225 3900
	0    1    1    0   
$EndComp
Text GLabel 1175 3900 0    50   Input ~ 0
5V
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 62741B08
P 750 6550
AR Path="/625B6984/62741B08" Ref="H?"  Part="1" 
AR Path="/62741B08" Ref="H1"  Part="1" 
F 0 "H1" H 850 6599 50  0000 L CNN
F 1 "MountingHole_Pad" H 850 6508 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 750 6550 50  0001 C CNN
F 3 "~" H 750 6550 50  0001 C CNN
	1    750  6550
	1    0    0    -1  
$EndComp
Text GLabel 2000 6750 2    50   Input ~ 0
REF_5V
Wire Wire Line
	750  6750 750  6650
Text GLabel 3150 4000 0    50   Input ~ 0
S0
Wire Wire Line
	3150 3900 3250 3900
Wire Wire Line
	3150 4000 3250 4000
Text GLabel 3150 4100 0    50   Input ~ 0
5V
Wire Wire Line
	3150 4100 3250 4100
Text GLabel 3150 3900 0    50   Input ~ 0
REF_5V
Text GLabel 950  2625 0    50   Input ~ 0
S0
$Comp
L Device:R R?
U 1 1 627465D2
P 1175 2625
AR Path="/5FC6D1B4/627465D2" Ref="R?"  Part="1" 
AR Path="/627465D2" Ref="R1"  Part="1" 
AR Path="/62714583/627465D2" Ref="R?"  Part="1" 
F 0 "R1" V 968 2625 50  0000 C CNN
F 1 "470R" V 1059 2625 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1105 2625 50  0001 C CNN
F 3 "C23179" H 1175 2625 50  0001 C CNN
	1    1175 2625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	950  2625 1025 2625
Wire Wire Line
	1325 2625 1575 2625
NoConn ~ 1575 2025
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 6274F2D1
P 3450 4000
F 0 "J1" H 3530 4042 50  0000 L CNN
F 1 "Conn_01x03" H 3530 3951 50  0000 L CNN
F 2 "Connector_JST:JST_XH_S3B-XH-A_1x03_P2.50mm_Horizontal" H 3450 4000 50  0001 C CNN
F 3 "C18428" H 3450 4000 50  0001 C CNN
	1    3450 4000
	1    0    0    -1  
$EndComp
Text Notes 3400 1550 0    50   ~ 0
potentiometers: RK09K113004U
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 627532E9
P 2075 2225
F 0 "A1" H 2075 1136 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2075 1045 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2075 2225 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2075 2225 50  0001 C CNN
	1    2075 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2175 3225 2075 3225
Connection ~ 2075 3225
NoConn ~ 1575 1625
NoConn ~ 1575 1725
NoConn ~ 1575 2525
$Comp
L Switch:SW_Push SW1
U 1 1 6275B739
P 1200 1825
F 0 "SW1" H 1200 2110 50  0000 C CNN
F 1 "SW_Push" H 1200 2019 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_PTS125Sx43PSMTR" H 1200 2025 50  0001 C CNN
F 3 "C411882" H 1200 2025 50  0001 C CNN
	1    1200 1825
	1    0    0    -1  
$EndComp
Text GLabel 950  1825 0    50   Input ~ 0
REF_5V
Wire Wire Line
	1400 1825 1575 1825
Wire Wire Line
	950  1825 1000 1825
Text Notes 625  1325 0    50   ~ 0
bouton:\nPTS125SJM73PSMTR2LFS
$Comp
L Device:R_POT_Small RV2
U 1 1 6276CA41
P 3475 2250
F 0 "RV2" H 3416 2296 50  0000 R CNN
F 1 "R_POT_Small" H 3416 2205 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 3475 2250 50  0001 C CNN
F 3 "C202382" H 3475 2250 50  0001 C CNN
	1    3475 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_Small RV3
U 1 1 6276CE35
P 3475 2575
F 0 "RV3" H 3416 2621 50  0000 R CNN
F 1 "R_POT_Small" H 3416 2530 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 3475 2575 50  0001 C CNN
F 3 "C202382" H 3475 2575 50  0001 C CNN
	1    3475 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  6750 2000 6750
$EndSCHEMATC
