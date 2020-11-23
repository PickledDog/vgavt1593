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
L power:GND #PWR0101
U 1 1 5F9D2477
P 1550 1700
F 0 "#PWR0101" H 1550 1450 50  0001 C CNN
F 1 "GND" H 1555 1527 50  0000 C CNN
F 2 "" H 1550 1700 50  0001 C CNN
F 3 "" H 1550 1700 50  0001 C CNN
	1    1550 1700
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F9D32AF
P 1550 1500
F 0 "#FLG0101" H 1550 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 1550 1673 50  0000 C CNN
F 2 "" H 1550 1500 50  0001 C CNN
F 3 "~" H 1550 1500 50  0001 C CNN
	1    1550 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5F9D4090
P 1950 1550
F 0 "TP1" H 2008 1668 50  0000 L CNN
F 1 "TestPoint" H 2008 1577 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 2150 1550 50  0001 C CNN
F 3 "~" H 2150 1550 50  0001 C CNN
	1    1950 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1550 1950 1600
Wire Wire Line
	1950 1600 1550 1600
Wire Wire Line
	1550 1500 1550 1600
Wire Wire Line
	1550 1600 1550 1700
Connection ~ 1550 1600
$EndSCHEMATC
