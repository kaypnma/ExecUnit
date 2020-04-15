-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/12/2020 19:00:32"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ArithUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	AddY : OUT std_logic_vector(63 DOWNTO 0);
	Y : OUT std_logic_vector(63 DOWNTO 0);
	NotA : IN std_logic;
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic;
	Zero : OUT std_logic;
	AltB : OUT std_logic;
	AltBu : OUT std_logic
	);
END ArithUnit;

-- Design Ports Information
-- AddY[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[8]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[9]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[10]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[11]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[13]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[14]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[15]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[16]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[17]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[18]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[19]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[20]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[21]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[22]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[23]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[24]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[25]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[26]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[27]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[28]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[29]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[30]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[31]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[32]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[33]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[34]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[35]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[36]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[37]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[38]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[39]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[40]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[41]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[42]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[43]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[44]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[45]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[46]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[47]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[48]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[49]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[50]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[51]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[52]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[53]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[54]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[55]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[56]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[57]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[58]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[59]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[60]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[61]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[62]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[63]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NotA	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ArithUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_AddY : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_NotA : std_logic;
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL ww_AltBu : std_logic;
SIGNAL \AddY[0]~output_o\ : std_logic;
SIGNAL \AddY[1]~output_o\ : std_logic;
SIGNAL \AddY[2]~output_o\ : std_logic;
SIGNAL \AddY[3]~output_o\ : std_logic;
SIGNAL \AddY[4]~output_o\ : std_logic;
SIGNAL \AddY[5]~output_o\ : std_logic;
SIGNAL \AddY[6]~output_o\ : std_logic;
SIGNAL \AddY[7]~output_o\ : std_logic;
SIGNAL \AddY[8]~output_o\ : std_logic;
SIGNAL \AddY[9]~output_o\ : std_logic;
SIGNAL \AddY[10]~output_o\ : std_logic;
SIGNAL \AddY[11]~output_o\ : std_logic;
SIGNAL \AddY[12]~output_o\ : std_logic;
SIGNAL \AddY[13]~output_o\ : std_logic;
SIGNAL \AddY[14]~output_o\ : std_logic;
SIGNAL \AddY[15]~output_o\ : std_logic;
SIGNAL \AddY[16]~output_o\ : std_logic;
SIGNAL \AddY[17]~output_o\ : std_logic;
SIGNAL \AddY[18]~output_o\ : std_logic;
SIGNAL \AddY[19]~output_o\ : std_logic;
SIGNAL \AddY[20]~output_o\ : std_logic;
SIGNAL \AddY[21]~output_o\ : std_logic;
SIGNAL \AddY[22]~output_o\ : std_logic;
SIGNAL \AddY[23]~output_o\ : std_logic;
SIGNAL \AddY[24]~output_o\ : std_logic;
SIGNAL \AddY[25]~output_o\ : std_logic;
SIGNAL \AddY[26]~output_o\ : std_logic;
SIGNAL \AddY[27]~output_o\ : std_logic;
SIGNAL \AddY[28]~output_o\ : std_logic;
SIGNAL \AddY[29]~output_o\ : std_logic;
SIGNAL \AddY[30]~output_o\ : std_logic;
SIGNAL \AddY[31]~output_o\ : std_logic;
SIGNAL \AddY[32]~output_o\ : std_logic;
SIGNAL \AddY[33]~output_o\ : std_logic;
SIGNAL \AddY[34]~output_o\ : std_logic;
SIGNAL \AddY[35]~output_o\ : std_logic;
SIGNAL \AddY[36]~output_o\ : std_logic;
SIGNAL \AddY[37]~output_o\ : std_logic;
SIGNAL \AddY[38]~output_o\ : std_logic;
SIGNAL \AddY[39]~output_o\ : std_logic;
SIGNAL \AddY[40]~output_o\ : std_logic;
SIGNAL \AddY[41]~output_o\ : std_logic;
SIGNAL \AddY[42]~output_o\ : std_logic;
SIGNAL \AddY[43]~output_o\ : std_logic;
SIGNAL \AddY[44]~output_o\ : std_logic;
SIGNAL \AddY[45]~output_o\ : std_logic;
SIGNAL \AddY[46]~output_o\ : std_logic;
SIGNAL \AddY[47]~output_o\ : std_logic;
SIGNAL \AddY[48]~output_o\ : std_logic;
SIGNAL \AddY[49]~output_o\ : std_logic;
SIGNAL \AddY[50]~output_o\ : std_logic;
SIGNAL \AddY[51]~output_o\ : std_logic;
SIGNAL \AddY[52]~output_o\ : std_logic;
SIGNAL \AddY[53]~output_o\ : std_logic;
SIGNAL \AddY[54]~output_o\ : std_logic;
SIGNAL \AddY[55]~output_o\ : std_logic;
SIGNAL \AddY[56]~output_o\ : std_logic;
SIGNAL \AddY[57]~output_o\ : std_logic;
SIGNAL \AddY[58]~output_o\ : std_logic;
SIGNAL \AddY[59]~output_o\ : std_logic;
SIGNAL \AddY[60]~output_o\ : std_logic;
SIGNAL \AddY[61]~output_o\ : std_logic;
SIGNAL \AddY[62]~output_o\ : std_logic;
SIGNAL \AddY[63]~output_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Y[32]~output_o\ : std_logic;
SIGNAL \Y[33]~output_o\ : std_logic;
SIGNAL \Y[34]~output_o\ : std_logic;
SIGNAL \Y[35]~output_o\ : std_logic;
SIGNAL \Y[36]~output_o\ : std_logic;
SIGNAL \Y[37]~output_o\ : std_logic;
SIGNAL \Y[38]~output_o\ : std_logic;
SIGNAL \Y[39]~output_o\ : std_logic;
SIGNAL \Y[40]~output_o\ : std_logic;
SIGNAL \Y[41]~output_o\ : std_logic;
SIGNAL \Y[42]~output_o\ : std_logic;
SIGNAL \Y[43]~output_o\ : std_logic;
SIGNAL \Y[44]~output_o\ : std_logic;
SIGNAL \Y[45]~output_o\ : std_logic;
SIGNAL \Y[46]~output_o\ : std_logic;
SIGNAL \Y[47]~output_o\ : std_logic;
SIGNAL \Y[48]~output_o\ : std_logic;
SIGNAL \Y[49]~output_o\ : std_logic;
SIGNAL \Y[50]~output_o\ : std_logic;
SIGNAL \Y[51]~output_o\ : std_logic;
SIGNAL \Y[52]~output_o\ : std_logic;
SIGNAL \Y[53]~output_o\ : std_logic;
SIGNAL \Y[54]~output_o\ : std_logic;
SIGNAL \Y[55]~output_o\ : std_logic;
SIGNAL \Y[56]~output_o\ : std_logic;
SIGNAL \Y[57]~output_o\ : std_logic;
SIGNAL \Y[58]~output_o\ : std_logic;
SIGNAL \Y[59]~output_o\ : std_logic;
SIGNAL \Y[60]~output_o\ : std_logic;
SIGNAL \Y[61]~output_o\ : std_logic;
SIGNAL \Y[62]~output_o\ : std_logic;
SIGNAL \Y[63]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \NotA~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \adder64|Y[0]~0_combout\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \adder64|carry[1]~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \y_b[1]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \adder64|carry[2]~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \y_b[2]~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \adder64|carry[3]~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \y_b[3]~2_combout\ : std_logic;
SIGNAL \adder64|carry[4]~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \y_b[4]~3_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \y_b[5]~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \adder64|carry[5]~4_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \y_b[6]~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \adder64|carry[6]~5_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \y_b[7]~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \adder64|carry[7]~6_combout\ : std_logic;
SIGNAL \adder64|carry[8]~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \y_b[8]~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \y_b[9]~8_combout\ : std_logic;
SIGNAL \adder64|carry[9]~8_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \y_b[10]~9_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \adder64|carry[10]~9_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \y_b[11]~10_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \adder64|carry[11]~10_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \y_b[12]~11_combout\ : std_logic;
SIGNAL \adder64|carry[12]~11_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \y_b[13]~12_combout\ : std_logic;
SIGNAL \adder64|carry[13]~12_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \adder64|carry[14]~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \y_b[14]~13_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \y_b[15]~14_combout\ : std_logic;
SIGNAL \adder64|carry[15]~14_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \y_b[16]~15_combout\ : std_logic;
SIGNAL \adder64|carry[16]~15_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \y_b[17]~16_combout\ : std_logic;
SIGNAL \adder64|carry[17]~16_combout\ : std_logic;
SIGNAL \adder64|carry[18]~17_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \y_b[18]~17_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \y_b[19]~18_combout\ : std_logic;
SIGNAL \adder64|carry[19]~18_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \adder64|carry[20]~19_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \y_b[20]~19_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \adder64|carry[21]~20_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \y_b[21]~20_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \adder64|carry[22]~21_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \y_b[22]~21_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \y_b[23]~22_combout\ : std_logic;
SIGNAL \adder64|carry[23]~22_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \y_b[24]~23_combout\ : std_logic;
SIGNAL \adder64|carry[24]~23_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \y_b[25]~24_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \adder64|carry[25]~24_combout\ : std_logic;
SIGNAL \adder64|carry[26]~25_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \y_b[26]~25_combout\ : std_logic;
SIGNAL \adder64|carry[27]~26_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \y_b[27]~26_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \y_b[28]~27_combout\ : std_logic;
SIGNAL \adder64|carry[28]~27_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \adder64|carry[29]~28_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \y_b[29]~28_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \y_b[30]~29_combout\ : std_logic;
SIGNAL \adder64|carry[30]~29_combout\ : std_logic;
SIGNAL \adder64|carry[31]~30_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \y_b[31]~30_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \adder64|carry[32]~31_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \y_b[32]~31_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \adder64|carry[33]~32_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \y_b[33]~32_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \adder64|carry[34]~33_combout\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \y_b[34]~33_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \y_b[35]~34_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \adder64|carry[35]~34_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \y_b[36]~35_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \adder64|carry[36]~35_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \adder64|carry[37]~36_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \y_b[37]~36_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \y_b[38]~37_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \adder64|carry[38]~37_combout\ : std_logic;
SIGNAL \adder64|carry[39]~38_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \y_b[39]~38_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \adder64|carry[40]~39_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \y_b[40]~39_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \y_b[41]~40_combout\ : std_logic;
SIGNAL \adder64|carry[41]~40_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \adder64|carry[42]~41_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \y_b[42]~41_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \y_b[43]~42_combout\ : std_logic;
SIGNAL \adder64|carry[43]~42_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \adder64|carry[44]~43_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \y_b[44]~43_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \y_b[45]~44_combout\ : std_logic;
SIGNAL \adder64|carry[45]~44_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \y_b[46]~45_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \adder64|carry[46]~45_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \y_b[47]~46_combout\ : std_logic;
SIGNAL \adder64|carry[47]~46_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \y_b[48]~47_combout\ : std_logic;
SIGNAL \adder64|carry[48]~47_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \y_b[49]~48_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \adder64|carry[49]~48_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \y_b[50]~49_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \adder64|carry[50]~49_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \y_b[51]~50_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \adder64|carry[51]~50_combout\ : std_logic;
SIGNAL \adder64|carry[52]~51_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \y_b[52]~51_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \y_b[53]~52_combout\ : std_logic;
SIGNAL \adder64|carry[53]~52_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \y_b[54]~53_combout\ : std_logic;
SIGNAL \adder64|carry[54]~53_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \y_b[55]~54_combout\ : std_logic;
SIGNAL \adder64|carry[55]~54_combout\ : std_logic;
SIGNAL \adder64|carry[56]~55_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \y_b[56]~55_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \y_b[57]~56_combout\ : std_logic;
SIGNAL \adder64|carry[57]~56_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \y_b[58]~57_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \adder64|carry[58]~57_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \y_b[59]~58_combout\ : std_logic;
SIGNAL \adder64|carry[59]~58_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \y_b[60]~59_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \adder64|carry[60]~59_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \y_b[61]~60_combout\ : std_logic;
SIGNAL \adder64|carry[61]~60_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \y_b[62]~61_combout\ : std_logic;
SIGNAL \adder64|carry[62]~61_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \y_b[63]~62_combout\ : std_logic;
SIGNAL \adder64|carry[63]~62_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;
SIGNAL \Y~2_combout\ : std_logic;
SIGNAL \Y~3_combout\ : std_logic;
SIGNAL \Y~4_combout\ : std_logic;
SIGNAL \Y~5_combout\ : std_logic;
SIGNAL \Y~6_combout\ : std_logic;
SIGNAL \Y~7_combout\ : std_logic;
SIGNAL \Y~8_combout\ : std_logic;
SIGNAL \Y~9_combout\ : std_logic;
SIGNAL \Y~10_combout\ : std_logic;
SIGNAL \Y~11_combout\ : std_logic;
SIGNAL \Y~12_combout\ : std_logic;
SIGNAL \Y~13_combout\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \adder64|p[63]~0_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \adder64|Cout~0_combout\ : std_logic;
SIGNAL \adder64|Ovfl~combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Equal0~17_combout\ : std_logic;
SIGNAL \Equal0~19_combout\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \Equal0~21_combout\ : std_logic;
SIGNAL \AltB~2_combout\ : std_logic;
SIGNAL \adder64|Y\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \adder64|ALT_INV_Cout~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
AddY <= ww_AddY;
Y <= ww_Y;
ww_NotA <= NotA;
ww_AddnSub <= AddnSub;
ww_ExtWord <= ExtWord;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
Zero <= ww_Zero;
AltB <= ww_AltB;
AltBu <= ww_AltBu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\adder64|ALT_INV_Cout~0_combout\ <= NOT \adder64|Cout~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X79_Y73_N2
\AddY[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \AddY[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\AddY[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(1),
	devoe => ww_devoe,
	o => \AddY[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\AddY[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(2),
	devoe => ww_devoe,
	o => \AddY[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\AddY[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(3),
	devoe => ww_devoe,
	o => \AddY[3]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\AddY[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(4),
	devoe => ww_devoe,
	o => \AddY[4]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\AddY[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(5),
	devoe => ww_devoe,
	o => \AddY[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\AddY[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(6),
	devoe => ww_devoe,
	o => \AddY[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\AddY[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(7),
	devoe => ww_devoe,
	o => \AddY[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\AddY[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(8),
	devoe => ww_devoe,
	o => \AddY[8]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\AddY[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(9),
	devoe => ww_devoe,
	o => \AddY[9]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\AddY[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(10),
	devoe => ww_devoe,
	o => \AddY[10]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\AddY[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(11),
	devoe => ww_devoe,
	o => \AddY[11]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\AddY[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(12),
	devoe => ww_devoe,
	o => \AddY[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\AddY[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(13),
	devoe => ww_devoe,
	o => \AddY[13]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\AddY[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(14),
	devoe => ww_devoe,
	o => \AddY[14]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\AddY[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(15),
	devoe => ww_devoe,
	o => \AddY[15]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\AddY[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(16),
	devoe => ww_devoe,
	o => \AddY[16]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\AddY[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(17),
	devoe => ww_devoe,
	o => \AddY[17]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\AddY[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(18),
	devoe => ww_devoe,
	o => \AddY[18]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\AddY[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(19),
	devoe => ww_devoe,
	o => \AddY[19]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\AddY[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(20),
	devoe => ww_devoe,
	o => \AddY[20]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\AddY[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(21),
	devoe => ww_devoe,
	o => \AddY[21]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\AddY[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(22),
	devoe => ww_devoe,
	o => \AddY[22]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\AddY[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(23),
	devoe => ww_devoe,
	o => \AddY[23]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\AddY[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(24),
	devoe => ww_devoe,
	o => \AddY[24]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\AddY[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(25),
	devoe => ww_devoe,
	o => \AddY[25]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\AddY[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(26),
	devoe => ww_devoe,
	o => \AddY[26]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\AddY[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(27),
	devoe => ww_devoe,
	o => \AddY[27]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\AddY[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(28),
	devoe => ww_devoe,
	o => \AddY[28]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\AddY[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(29),
	devoe => ww_devoe,
	o => \AddY[29]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\AddY[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(30),
	devoe => ww_devoe,
	o => \AddY[30]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\AddY[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(31),
	devoe => ww_devoe,
	o => \AddY[31]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\AddY[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(32),
	devoe => ww_devoe,
	o => \AddY[32]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\AddY[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(33),
	devoe => ww_devoe,
	o => \AddY[33]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\AddY[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(34),
	devoe => ww_devoe,
	o => \AddY[34]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\AddY[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(35),
	devoe => ww_devoe,
	o => \AddY[35]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\AddY[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(36),
	devoe => ww_devoe,
	o => \AddY[36]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\AddY[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(37),
	devoe => ww_devoe,
	o => \AddY[37]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\AddY[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(38),
	devoe => ww_devoe,
	o => \AddY[38]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\AddY[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(39),
	devoe => ww_devoe,
	o => \AddY[39]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\AddY[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(40),
	devoe => ww_devoe,
	o => \AddY[40]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\AddY[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(41),
	devoe => ww_devoe,
	o => \AddY[41]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\AddY[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(42),
	devoe => ww_devoe,
	o => \AddY[42]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\AddY[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(43),
	devoe => ww_devoe,
	o => \AddY[43]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\AddY[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(44),
	devoe => ww_devoe,
	o => \AddY[44]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\AddY[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(45),
	devoe => ww_devoe,
	o => \AddY[45]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\AddY[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(46),
	devoe => ww_devoe,
	o => \AddY[46]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\AddY[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(47),
	devoe => ww_devoe,
	o => \AddY[47]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\AddY[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(48),
	devoe => ww_devoe,
	o => \AddY[48]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\AddY[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(49),
	devoe => ww_devoe,
	o => \AddY[49]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\AddY[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(50),
	devoe => ww_devoe,
	o => \AddY[50]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\AddY[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(51),
	devoe => ww_devoe,
	o => \AddY[51]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\AddY[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(52),
	devoe => ww_devoe,
	o => \AddY[52]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\AddY[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(53),
	devoe => ww_devoe,
	o => \AddY[53]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\AddY[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(54),
	devoe => ww_devoe,
	o => \AddY[54]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\AddY[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(55),
	devoe => ww_devoe,
	o => \AddY[55]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\AddY[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(56),
	devoe => ww_devoe,
	o => \AddY[56]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\AddY[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(57),
	devoe => ww_devoe,
	o => \AddY[57]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\AddY[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(58),
	devoe => ww_devoe,
	o => \AddY[58]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\AddY[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(59),
	devoe => ww_devoe,
	o => \AddY[59]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\AddY[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(60),
	devoe => ww_devoe,
	o => \AddY[60]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\AddY[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(61),
	devoe => ww_devoe,
	o => \AddY[61]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\AddY[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(62),
	devoe => ww_devoe,
	o => \AddY[62]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\AddY[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(63),
	devoe => ww_devoe,
	o => \AddY[63]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(1),
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(2),
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(3),
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(4),
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(5),
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(6),
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(7),
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(8),
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(9),
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(10),
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(11),
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(12),
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(13),
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(14),
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(15),
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(16),
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(17),
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(18),
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(19),
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(20),
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(21),
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(22),
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(23),
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(24),
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(25),
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(26),
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(27),
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(28),
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(29),
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(30),
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Y\(31),
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~0_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~1_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~2_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~3_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~4_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~5_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~6_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~7_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~8_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~9_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~10_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~11_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~12_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~13_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~14_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~15_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~16_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~17_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~18_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~19_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~20_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~21_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~22_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~23_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~24_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~25_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~26_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~27_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~28_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~29_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~30_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~31_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|Ovfl~combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~21_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\AltB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AltB~2_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder64|ALT_INV_Cout~0_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X0_Y63_N15
\NotA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NotA,
	o => \NotA~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X73_Y69_N8
\adder64|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y[0]~0_combout\ = \NotA~input_o\ $ (\A[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NotA~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \adder64|Y[0]~0_combout\);

-- Location: IOIBUF_X115_Y21_N15
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: LCCOMB_X73_Y69_N10
\adder64|carry[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[1]~0_combout\ = (\B[0]~input_o\ & (\NotA~input_o\ $ ((\A[0]~input_o\)))) # (!\B[0]~input_o\ & (((\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \NotA~input_o\,
	datac => \A[0]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \adder64|carry[1]~0_combout\);

-- Location: IOIBUF_X81_Y73_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X73_Y69_N4
\y_b[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[1]~0_combout\ = \B[1]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[1]~0_combout\);

-- Location: IOIBUF_X69_Y73_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X73_Y69_N14
\adder64|Y[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(1) = \adder64|carry[1]~0_combout\ $ (\NotA~input_o\ $ (\y_b[1]~0_combout\ $ (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[1]~0_combout\,
	datab => \NotA~input_o\,
	datac => \y_b[1]~0_combout\,
	datad => \A[1]~input_o\,
	combout => \adder64|Y\(1));

-- Location: IOIBUF_X67_Y73_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X73_Y69_N16
\adder64|carry[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[2]~1_combout\ = (\adder64|carry[1]~0_combout\ & ((\y_b[1]~0_combout\) # (\NotA~input_o\ $ (\A[1]~input_o\)))) # (!\adder64|carry[1]~0_combout\ & (\y_b[1]~0_combout\ & (\NotA~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[1]~0_combout\,
	datab => \NotA~input_o\,
	datac => \y_b[1]~0_combout\,
	datad => \A[1]~input_o\,
	combout => \adder64|carry[2]~1_combout\);

-- Location: IOIBUF_X79_Y73_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X73_Y69_N18
\y_b[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[2]~1_combout\ = \B[2]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[2]~1_combout\);

-- Location: LCCOMB_X73_Y69_N12
\adder64|Y[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(2) = \A[2]~input_o\ $ (\adder64|carry[2]~1_combout\ $ (\NotA~input_o\ $ (\y_b[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \adder64|carry[2]~1_combout\,
	datac => \NotA~input_o\,
	datad => \y_b[2]~1_combout\,
	combout => \adder64|Y\(2));

-- Location: IOIBUF_X69_Y73_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X73_Y69_N30
\adder64|carry[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[3]~2_combout\ = (\adder64|carry[2]~1_combout\ & ((\y_b[2]~1_combout\) # (\A[2]~input_o\ $ (\NotA~input_o\)))) # (!\adder64|carry[2]~1_combout\ & (\y_b[2]~1_combout\ & (\A[2]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \adder64|carry[2]~1_combout\,
	datac => \NotA~input_o\,
	datad => \y_b[2]~1_combout\,
	combout => \adder64|carry[3]~2_combout\);

-- Location: IOIBUF_X67_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X73_Y69_N24
\y_b[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[3]~2_combout\ = \B[3]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[3]~2_combout\);

-- Location: LCCOMB_X73_Y69_N26
\adder64|Y[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(3) = \A[3]~input_o\ $ (\NotA~input_o\ $ (\adder64|carry[3]~2_combout\ $ (\y_b[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \NotA~input_o\,
	datac => \adder64|carry[3]~2_combout\,
	datad => \y_b[3]~2_combout\,
	combout => \adder64|Y\(3));

-- Location: LCCOMB_X73_Y69_N20
\adder64|carry[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[4]~3_combout\ = (\adder64|carry[3]~2_combout\ & ((\y_b[3]~2_combout\) # (\A[3]~input_o\ $ (\NotA~input_o\)))) # (!\adder64|carry[3]~2_combout\ & (\y_b[3]~2_combout\ & (\A[3]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \NotA~input_o\,
	datac => \adder64|carry[3]~2_combout\,
	datad => \y_b[3]~2_combout\,
	combout => \adder64|carry[4]~3_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X53_Y69_N16
\y_b[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[4]~3_combout\ = \B[4]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[4]~3_combout\);

-- Location: LCCOMB_X53_Y69_N26
\adder64|Y[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(4) = \adder64|carry[4]~3_combout\ $ (\A[4]~input_o\ $ (\NotA~input_o\ $ (\y_b[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[4]~3_combout\,
	datab => \A[4]~input_o\,
	datac => \NotA~input_o\,
	datad => \y_b[4]~3_combout\,
	combout => \adder64|Y\(4));

-- Location: IOIBUF_X52_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X53_Y69_N22
\y_b[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[5]~4_combout\ = \B[5]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[5]~4_combout\);

-- Location: IOIBUF_X47_Y73_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X53_Y69_N12
\adder64|carry[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[5]~4_combout\ = (\adder64|carry[4]~3_combout\ & ((\y_b[4]~3_combout\) # (\A[4]~input_o\ $ (\NotA~input_o\)))) # (!\adder64|carry[4]~3_combout\ & (\y_b[4]~3_combout\ & (\A[4]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[4]~3_combout\,
	datab => \A[4]~input_o\,
	datac => \NotA~input_o\,
	datad => \y_b[4]~3_combout\,
	combout => \adder64|carry[5]~4_combout\);

-- Location: LCCOMB_X53_Y69_N0
\adder64|Y[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(5) = \y_b[5]~4_combout\ $ (\A[5]~input_o\ $ (\NotA~input_o\ $ (\adder64|carry[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[5]~4_combout\,
	datab => \A[5]~input_o\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[5]~4_combout\,
	combout => \adder64|Y\(5));

-- Location: IOIBUF_X54_Y73_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X53_Y69_N20
\y_b[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[6]~5_combout\ = \B[6]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[6]~5_combout\);

-- Location: IOIBUF_X58_Y73_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X53_Y69_N2
\adder64|carry[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[6]~5_combout\ = (\y_b[5]~4_combout\ & ((\adder64|carry[5]~4_combout\) # (\A[5]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[5]~4_combout\ & (\adder64|carry[5]~4_combout\ & (\A[5]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[5]~4_combout\,
	datab => \A[5]~input_o\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[5]~4_combout\,
	combout => \adder64|carry[6]~5_combout\);

-- Location: LCCOMB_X53_Y69_N14
\adder64|Y[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(6) = \y_b[6]~5_combout\ $ (\NotA~input_o\ $ (\A[6]~input_o\ $ (\adder64|carry[6]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[6]~5_combout\,
	datab => \NotA~input_o\,
	datac => \A[6]~input_o\,
	datad => \adder64|carry[6]~5_combout\,
	combout => \adder64|Y\(6));

-- Location: IOIBUF_X49_Y73_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X53_Y69_N10
\y_b[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[7]~6_combout\ = \B[7]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[7]~6_combout\);

-- Location: IOIBUF_X54_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X53_Y69_N24
\adder64|carry[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[7]~6_combout\ = (\y_b[6]~5_combout\ & ((\adder64|carry[6]~5_combout\) # (\NotA~input_o\ $ (\A[6]~input_o\)))) # (!\y_b[6]~5_combout\ & (\adder64|carry[6]~5_combout\ & (\NotA~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[6]~5_combout\,
	datab => \NotA~input_o\,
	datac => \A[6]~input_o\,
	datad => \adder64|carry[6]~5_combout\,
	combout => \adder64|carry[7]~6_combout\);

-- Location: LCCOMB_X53_Y69_N4
\adder64|Y[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(7) = \y_b[7]~6_combout\ $ (\NotA~input_o\ $ (\A[7]~input_o\ $ (\adder64|carry[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[7]~6_combout\,
	datab => \NotA~input_o\,
	datac => \A[7]~input_o\,
	datad => \adder64|carry[7]~6_combout\,
	combout => \adder64|Y\(7));

-- Location: LCCOMB_X53_Y69_N30
\adder64|carry[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[8]~7_combout\ = (\y_b[7]~6_combout\ & ((\adder64|carry[7]~6_combout\) # (\NotA~input_o\ $ (\A[7]~input_o\)))) # (!\y_b[7]~6_combout\ & (\adder64|carry[7]~6_combout\ & (\NotA~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[7]~6_combout\,
	datab => \NotA~input_o\,
	datac => \A[7]~input_o\,
	datad => \adder64|carry[7]~6_combout\,
	combout => \adder64|carry[8]~7_combout\);

-- Location: IOIBUF_X74_Y0_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X73_Y4_N8
\y_b[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[8]~7_combout\ = \AddnSub~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[8]~input_o\,
	combout => \y_b[8]~7_combout\);

-- Location: IOIBUF_X79_Y0_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X73_Y4_N2
\adder64|Y[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(8) = \adder64|carry[8]~7_combout\ $ (\y_b[8]~7_combout\ $ (\NotA~input_o\ $ (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[8]~7_combout\,
	datab => \y_b[8]~7_combout\,
	datac => \NotA~input_o\,
	datad => \A[8]~input_o\,
	combout => \adder64|Y\(8));

-- Location: IOIBUF_X69_Y0_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X73_Y4_N30
\y_b[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[9]~8_combout\ = \B[9]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \y_b[9]~8_combout\);

-- Location: LCCOMB_X73_Y4_N20
\adder64|carry[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[9]~8_combout\ = (\adder64|carry[8]~7_combout\ & ((\y_b[8]~7_combout\) # (\NotA~input_o\ $ (\A[8]~input_o\)))) # (!\adder64|carry[8]~7_combout\ & (\y_b[8]~7_combout\ & (\NotA~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[8]~7_combout\,
	datab => \y_b[8]~7_combout\,
	datac => \NotA~input_o\,
	datad => \A[8]~input_o\,
	combout => \adder64|carry[9]~8_combout\);

-- Location: IOIBUF_X81_Y0_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X73_Y4_N16
\adder64|Y[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(9) = \y_b[9]~8_combout\ $ (\adder64|carry[9]~8_combout\ $ (\NotA~input_o\ $ (\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[9]~8_combout\,
	datab => \adder64|carry[9]~8_combout\,
	datac => \NotA~input_o\,
	datad => \A[9]~input_o\,
	combout => \adder64|Y\(9));

-- Location: IOIBUF_X69_Y0_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X73_Y4_N12
\y_b[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[10]~9_combout\ = \B[10]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[10]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \y_b[10]~9_combout\);

-- Location: IOIBUF_X72_Y0_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X73_Y4_N18
\adder64|carry[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[10]~9_combout\ = (\y_b[9]~8_combout\ & ((\adder64|carry[9]~8_combout\) # (\NotA~input_o\ $ (\A[9]~input_o\)))) # (!\y_b[9]~8_combout\ & (\adder64|carry[9]~8_combout\ & (\NotA~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[9]~8_combout\,
	datab => \adder64|carry[9]~8_combout\,
	datac => \NotA~input_o\,
	datad => \A[9]~input_o\,
	combout => \adder64|carry[10]~9_combout\);

-- Location: LCCOMB_X73_Y4_N22
\adder64|Y[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(10) = \y_b[10]~9_combout\ $ (\A[10]~input_o\ $ (\NotA~input_o\ $ (\adder64|carry[10]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[10]~9_combout\,
	datab => \A[10]~input_o\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[10]~9_combout\,
	combout => \adder64|Y\(10));

-- Location: IOIBUF_X74_Y0_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X73_Y4_N10
\y_b[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[11]~10_combout\ = \AddnSub~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[11]~input_o\,
	combout => \y_b[11]~10_combout\);

-- Location: IOIBUF_X72_Y0_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X73_Y4_N24
\adder64|carry[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[11]~10_combout\ = (\y_b[10]~9_combout\ & ((\adder64|carry[10]~9_combout\) # (\A[10]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[10]~9_combout\ & (\adder64|carry[10]~9_combout\ & (\A[10]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[10]~9_combout\,
	datab => \A[10]~input_o\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[10]~9_combout\,
	combout => \adder64|carry[11]~10_combout\);

-- Location: LCCOMB_X73_Y4_N4
\adder64|Y[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(11) = \y_b[11]~10_combout\ $ (\A[11]~input_o\ $ (\NotA~input_o\ $ (\adder64|carry[11]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[11]~10_combout\,
	datab => \A[11]~input_o\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[11]~10_combout\,
	combout => \adder64|Y\(11));

-- Location: IOIBUF_X56_Y0_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X48_Y4_N8
\y_b[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[12]~11_combout\ = \B[12]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[12]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[12]~11_combout\);

-- Location: LCCOMB_X73_Y4_N6
\adder64|carry[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[12]~11_combout\ = (\y_b[11]~10_combout\ & ((\adder64|carry[11]~10_combout\) # (\A[11]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[11]~10_combout\ & (\adder64|carry[11]~10_combout\ & (\A[11]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[11]~10_combout\,
	datab => \A[11]~input_o\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[11]~10_combout\,
	combout => \adder64|carry[12]~11_combout\);

-- Location: LCCOMB_X48_Y4_N26
\adder64|Y[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(12) = \A[12]~input_o\ $ (\NotA~input_o\ $ (\y_b[12]~11_combout\ $ (\adder64|carry[12]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \NotA~input_o\,
	datac => \y_b[12]~11_combout\,
	datad => \adder64|carry[12]~11_combout\,
	combout => \adder64|Y\(12));

-- Location: IOIBUF_X49_Y0_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X48_Y4_N30
\y_b[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[13]~12_combout\ = \AddnSub~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[13]~input_o\,
	combout => \y_b[13]~12_combout\);

-- Location: LCCOMB_X48_Y4_N20
\adder64|carry[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[13]~12_combout\ = (\y_b[12]~11_combout\ & ((\adder64|carry[12]~11_combout\) # (\A[12]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[12]~11_combout\ & (\adder64|carry[12]~11_combout\ & (\A[12]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \NotA~input_o\,
	datac => \y_b[12]~11_combout\,
	datad => \adder64|carry[12]~11_combout\,
	combout => \adder64|carry[13]~12_combout\);

-- Location: LCCOMB_X48_Y4_N24
\adder64|Y[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(13) = \A[13]~input_o\ $ (\NotA~input_o\ $ (\y_b[13]~12_combout\ $ (\adder64|carry[13]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \NotA~input_o\,
	datac => \y_b[13]~12_combout\,
	datad => \adder64|carry[13]~12_combout\,
	combout => \adder64|Y\(13));

-- Location: IOIBUF_X52_Y0_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X48_Y4_N18
\adder64|carry[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[14]~13_combout\ = (\y_b[13]~12_combout\ & ((\adder64|carry[13]~12_combout\) # (\A[13]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[13]~12_combout\ & (\adder64|carry[13]~12_combout\ & (\A[13]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \NotA~input_o\,
	datac => \y_b[13]~12_combout\,
	datad => \adder64|carry[13]~12_combout\,
	combout => \adder64|carry[14]~13_combout\);

-- Location: IOIBUF_X49_Y0_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X48_Y4_N28
\y_b[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[14]~13_combout\ = \AddnSub~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[14]~input_o\,
	combout => \y_b[14]~13_combout\);

-- Location: LCCOMB_X48_Y4_N6
\adder64|Y[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(14) = \A[14]~input_o\ $ (\adder64|carry[14]~13_combout\ $ (\NotA~input_o\ $ (\y_b[14]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \adder64|carry[14]~13_combout\,
	datac => \NotA~input_o\,
	datad => \y_b[14]~13_combout\,
	combout => \adder64|Y\(14));

-- Location: IOIBUF_X49_Y0_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X48_Y4_N10
\y_b[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[15]~14_combout\ = \B[15]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[15]~14_combout\);

-- Location: LCCOMB_X48_Y4_N0
\adder64|carry[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[15]~14_combout\ = (\adder64|carry[14]~13_combout\ & ((\y_b[14]~13_combout\) # (\A[14]~input_o\ $ (\NotA~input_o\)))) # (!\adder64|carry[14]~13_combout\ & (\y_b[14]~13_combout\ & (\A[14]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \adder64|carry[14]~13_combout\,
	datac => \NotA~input_o\,
	datad => \y_b[14]~13_combout\,
	combout => \adder64|carry[15]~14_combout\);

-- Location: IOIBUF_X52_Y0_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X48_Y4_N12
\adder64|Y[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(15) = \y_b[15]~14_combout\ $ (\adder64|carry[15]~14_combout\ $ (\A[15]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[15]~14_combout\,
	datab => \adder64|carry[15]~14_combout\,
	datac => \A[15]~input_o\,
	datad => \NotA~input_o\,
	combout => \adder64|Y\(15));

-- Location: IOIBUF_X0_Y28_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X1_Y29_N0
\y_b[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[16]~15_combout\ = \B[16]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[16]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[16]~15_combout\);

-- Location: LCCOMB_X48_Y4_N22
\adder64|carry[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[16]~15_combout\ = (\y_b[15]~14_combout\ & ((\adder64|carry[15]~14_combout\) # (\A[15]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[15]~14_combout\ & (\adder64|carry[15]~14_combout\ & (\A[15]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[15]~14_combout\,
	datab => \adder64|carry[15]~14_combout\,
	datac => \A[15]~input_o\,
	datad => \NotA~input_o\,
	combout => \adder64|carry[16]~15_combout\);

-- Location: LCCOMB_X1_Y29_N18
\adder64|Y[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(16) = \A[16]~input_o\ $ (\y_b[16]~15_combout\ $ (\NotA~input_o\ $ (\adder64|carry[16]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \y_b[16]~15_combout\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[16]~15_combout\,
	combout => \adder64|Y\(16));

-- Location: IOIBUF_X0_Y29_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X1_Y29_N22
\y_b[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[17]~16_combout\ = \B[17]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[17]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[17]~16_combout\);

-- Location: LCCOMB_X1_Y29_N20
\adder64|carry[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[17]~16_combout\ = (\y_b[16]~15_combout\ & ((\adder64|carry[16]~15_combout\) # (\A[16]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[16]~15_combout\ & (\adder64|carry[16]~15_combout\ & (\A[16]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \y_b[16]~15_combout\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[16]~15_combout\,
	combout => \adder64|carry[17]~16_combout\);

-- Location: LCCOMB_X1_Y29_N16
\adder64|Y[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(17) = \A[17]~input_o\ $ (\NotA~input_o\ $ (\y_b[17]~16_combout\ $ (\adder64|carry[17]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \NotA~input_o\,
	datac => \y_b[17]~16_combout\,
	datad => \adder64|carry[17]~16_combout\,
	combout => \adder64|Y\(17));

-- Location: LCCOMB_X1_Y29_N10
\adder64|carry[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[18]~17_combout\ = (\y_b[17]~16_combout\ & ((\adder64|carry[17]~16_combout\) # (\A[17]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[17]~16_combout\ & (\adder64|carry[17]~16_combout\ & (\A[17]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \NotA~input_o\,
	datac => \y_b[17]~16_combout\,
	datad => \adder64|carry[17]~16_combout\,
	combout => \adder64|carry[18]~17_combout\);

-- Location: IOIBUF_X0_Y30_N8
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X1_Y29_N28
\y_b[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[18]~17_combout\ = \AddnSub~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[18]~input_o\,
	combout => \y_b[18]~17_combout\);

-- Location: LCCOMB_X1_Y29_N6
\adder64|Y[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(18) = \adder64|carry[18]~17_combout\ $ (\NotA~input_o\ $ (\A[18]~input_o\ $ (\y_b[18]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[18]~17_combout\,
	datab => \NotA~input_o\,
	datac => \A[18]~input_o\,
	datad => \y_b[18]~17_combout\,
	combout => \adder64|Y\(18));

-- Location: IOIBUF_X0_Y30_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X1_Y29_N26
\y_b[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[19]~18_combout\ = \AddnSub~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[19]~input_o\,
	combout => \y_b[19]~18_combout\);

-- Location: LCCOMB_X1_Y29_N8
\adder64|carry[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[19]~18_combout\ = (\adder64|carry[18]~17_combout\ & ((\y_b[18]~17_combout\) # (\NotA~input_o\ $ (\A[18]~input_o\)))) # (!\adder64|carry[18]~17_combout\ & (\y_b[18]~17_combout\ & (\NotA~input_o\ $ (\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[18]~17_combout\,
	datab => \NotA~input_o\,
	datac => \A[18]~input_o\,
	datad => \y_b[18]~17_combout\,
	combout => \adder64|carry[19]~18_combout\);

-- Location: IOIBUF_X0_Y31_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X1_Y29_N12
\adder64|Y[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(19) = \y_b[19]~18_combout\ $ (\NotA~input_o\ $ (\adder64|carry[19]~18_combout\ $ (\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[19]~18_combout\,
	datab => \NotA~input_o\,
	datac => \adder64|carry[19]~18_combout\,
	datad => \A[19]~input_o\,
	combout => \adder64|Y\(19));

-- Location: LCCOMB_X1_Y29_N14
\adder64|carry[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[20]~19_combout\ = (\y_b[19]~18_combout\ & ((\adder64|carry[19]~18_combout\) # (\NotA~input_o\ $ (\A[19]~input_o\)))) # (!\y_b[19]~18_combout\ & (\adder64|carry[19]~18_combout\ & (\NotA~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[19]~18_combout\,
	datab => \NotA~input_o\,
	datac => \adder64|carry[19]~18_combout\,
	datad => \A[19]~input_o\,
	combout => \adder64|carry[20]~19_combout\);

-- Location: IOIBUF_X33_Y73_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X33_Y69_N8
\y_b[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[20]~19_combout\ = \B[20]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[20]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[20]~19_combout\);

-- Location: IOIBUF_X40_Y73_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X33_Y69_N18
\adder64|Y[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(20) = \adder64|carry[20]~19_combout\ $ (\y_b[20]~19_combout\ $ (\NotA~input_o\ $ (\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[20]~19_combout\,
	datab => \y_b[20]~19_combout\,
	datac => \NotA~input_o\,
	datad => \A[20]~input_o\,
	combout => \adder64|Y\(20));

-- Location: LCCOMB_X33_Y69_N28
\adder64|carry[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[21]~20_combout\ = (\adder64|carry[20]~19_combout\ & ((\y_b[20]~19_combout\) # (\NotA~input_o\ $ (\A[20]~input_o\)))) # (!\adder64|carry[20]~19_combout\ & (\y_b[20]~19_combout\ & (\NotA~input_o\ $ (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[20]~19_combout\,
	datab => \y_b[20]~19_combout\,
	datac => \NotA~input_o\,
	datad => \A[20]~input_o\,
	combout => \adder64|carry[21]~20_combout\);

-- Location: IOIBUF_X35_Y73_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X33_Y69_N14
\y_b[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[21]~20_combout\ = \B[21]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[21]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[21]~20_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X33_Y69_N0
\adder64|Y[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(21) = \NotA~input_o\ $ (\adder64|carry[21]~20_combout\ $ (\y_b[21]~20_combout\ $ (\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \adder64|carry[21]~20_combout\,
	datac => \y_b[21]~20_combout\,
	datad => \A[21]~input_o\,
	combout => \adder64|Y\(21));

-- Location: LCCOMB_X33_Y69_N10
\adder64|carry[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[22]~21_combout\ = (\adder64|carry[21]~20_combout\ & ((\y_b[21]~20_combout\) # (\NotA~input_o\ $ (\A[21]~input_o\)))) # (!\adder64|carry[21]~20_combout\ & (\y_b[21]~20_combout\ & (\NotA~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \adder64|carry[21]~20_combout\,
	datac => \y_b[21]~20_combout\,
	datad => \A[21]~input_o\,
	combout => \adder64|carry[22]~21_combout\);

-- Location: IOIBUF_X35_Y73_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X33_Y69_N20
\y_b[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[22]~21_combout\ = \B[22]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[22]~21_combout\);

-- Location: IOIBUF_X33_Y73_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X33_Y69_N22
\adder64|Y[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(22) = \adder64|carry[22]~21_combout\ $ (\y_b[22]~21_combout\ $ (\NotA~input_o\ $ (\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[22]~21_combout\,
	datab => \y_b[22]~21_combout\,
	datac => \NotA~input_o\,
	datad => \A[22]~input_o\,
	combout => \adder64|Y\(22));

-- Location: IOIBUF_X31_Y73_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X33_Y69_N2
\y_b[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[23]~22_combout\ = \B[23]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[23]~22_combout\);

-- Location: LCCOMB_X33_Y69_N24
\adder64|carry[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[23]~22_combout\ = (\adder64|carry[22]~21_combout\ & ((\y_b[22]~21_combout\) # (\NotA~input_o\ $ (\A[22]~input_o\)))) # (!\adder64|carry[22]~21_combout\ & (\y_b[22]~21_combout\ & (\NotA~input_o\ $ (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[22]~21_combout\,
	datab => \y_b[22]~21_combout\,
	datac => \NotA~input_o\,
	datad => \A[22]~input_o\,
	combout => \adder64|carry[23]~22_combout\);

-- Location: LCCOMB_X33_Y69_N12
\adder64|Y[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(23) = \A[23]~input_o\ $ (\y_b[23]~22_combout\ $ (\NotA~input_o\ $ (\adder64|carry[23]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \y_b[23]~22_combout\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[23]~22_combout\,
	combout => \adder64|Y\(23));

-- Location: IOIBUF_X18_Y73_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X21_Y69_N16
\y_b[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[24]~23_combout\ = \AddnSub~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[24]~input_o\,
	combout => \y_b[24]~23_combout\);

-- Location: LCCOMB_X33_Y69_N30
\adder64|carry[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[24]~23_combout\ = (\y_b[23]~22_combout\ & ((\adder64|carry[23]~22_combout\) # (\A[23]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[23]~22_combout\ & (\adder64|carry[23]~22_combout\ & (\A[23]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \y_b[23]~22_combout\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[23]~22_combout\,
	combout => \adder64|carry[24]~23_combout\);

-- Location: IOIBUF_X23_Y73_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X21_Y69_N26
\adder64|Y[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(24) = \NotA~input_o\ $ (\y_b[24]~23_combout\ $ (\adder64|carry[24]~23_combout\ $ (\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[24]~23_combout\,
	datac => \adder64|carry[24]~23_combout\,
	datad => \A[24]~input_o\,
	combout => \adder64|Y\(24));

-- Location: IOIBUF_X18_Y73_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X21_Y69_N14
\y_b[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[25]~24_combout\ = \AddnSub~input_o\ $ (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[25]~input_o\,
	combout => \y_b[25]~24_combout\);

-- Location: IOIBUF_X20_Y73_N1
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X21_Y69_N20
\adder64|carry[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[25]~24_combout\ = (\y_b[24]~23_combout\ & ((\adder64|carry[24]~23_combout\) # (\NotA~input_o\ $ (\A[24]~input_o\)))) # (!\y_b[24]~23_combout\ & (\adder64|carry[24]~23_combout\ & (\NotA~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[24]~23_combout\,
	datac => \adder64|carry[24]~23_combout\,
	datad => \A[24]~input_o\,
	combout => \adder64|carry[25]~24_combout\);

-- Location: LCCOMB_X21_Y69_N0
\adder64|Y[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(25) = \NotA~input_o\ $ (\y_b[25]~24_combout\ $ (\A[25]~input_o\ $ (\adder64|carry[25]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[25]~24_combout\,
	datac => \A[25]~input_o\,
	datad => \adder64|carry[25]~24_combout\,
	combout => \adder64|Y\(25));

-- Location: LCCOMB_X21_Y69_N2
\adder64|carry[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[26]~25_combout\ = (\y_b[25]~24_combout\ & ((\adder64|carry[25]~24_combout\) # (\NotA~input_o\ $ (\A[25]~input_o\)))) # (!\y_b[25]~24_combout\ & (\adder64|carry[25]~24_combout\ & (\NotA~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[25]~24_combout\,
	datac => \A[25]~input_o\,
	datad => \adder64|carry[25]~24_combout\,
	combout => \adder64|carry[26]~25_combout\);

-- Location: IOIBUF_X20_Y73_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X13_Y73_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X21_Y69_N12
\y_b[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[26]~25_combout\ = \AddnSub~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[26]~input_o\,
	combout => \y_b[26]~25_combout\);

-- Location: LCCOMB_X21_Y69_N22
\adder64|Y[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(26) = \NotA~input_o\ $ (\adder64|carry[26]~25_combout\ $ (\A[26]~input_o\ $ (\y_b[26]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \adder64|carry[26]~25_combout\,
	datac => \A[26]~input_o\,
	datad => \y_b[26]~25_combout\,
	combout => \adder64|Y\(26));

-- Location: LCCOMB_X21_Y69_N24
\adder64|carry[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[27]~26_combout\ = (\adder64|carry[26]~25_combout\ & ((\y_b[26]~25_combout\) # (\NotA~input_o\ $ (\A[26]~input_o\)))) # (!\adder64|carry[26]~25_combout\ & (\y_b[26]~25_combout\ & (\NotA~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \adder64|carry[26]~25_combout\,
	datac => \A[26]~input_o\,
	datad => \y_b[26]~25_combout\,
	combout => \adder64|carry[27]~26_combout\);

-- Location: IOIBUF_X20_Y73_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X21_Y69_N10
\y_b[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[27]~26_combout\ = \AddnSub~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[27]~input_o\,
	combout => \y_b[27]~26_combout\);

-- Location: LCCOMB_X21_Y69_N28
\adder64|Y[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(27) = \NotA~input_o\ $ (\adder64|carry[27]~26_combout\ $ (\A[27]~input_o\ $ (\y_b[27]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \adder64|carry[27]~26_combout\,
	datac => \A[27]~input_o\,
	datad => \y_b[27]~26_combout\,
	combout => \adder64|Y\(27));

-- Location: IOIBUF_X23_Y73_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X21_Y69_N8
\y_b[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[28]~27_combout\ = \B[28]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \y_b[28]~27_combout\);

-- Location: LCCOMB_X21_Y69_N30
\adder64|carry[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[28]~27_combout\ = (\adder64|carry[27]~26_combout\ & ((\y_b[27]~26_combout\) # (\NotA~input_o\ $ (\A[27]~input_o\)))) # (!\adder64|carry[27]~26_combout\ & (\y_b[27]~26_combout\ & (\NotA~input_o\ $ (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \adder64|carry[27]~26_combout\,
	datac => \A[27]~input_o\,
	datad => \y_b[27]~26_combout\,
	combout => \adder64|carry[28]~27_combout\);

-- Location: IOIBUF_X23_Y73_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X21_Y69_N18
\adder64|Y[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(28) = \NotA~input_o\ $ (\y_b[28]~27_combout\ $ (\adder64|carry[28]~27_combout\ $ (\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[28]~27_combout\,
	datac => \adder64|carry[28]~27_combout\,
	datad => \A[28]~input_o\,
	combout => \adder64|Y\(28));

-- Location: LCCOMB_X21_Y69_N4
\adder64|carry[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[29]~28_combout\ = (\y_b[28]~27_combout\ & ((\adder64|carry[28]~27_combout\) # (\NotA~input_o\ $ (\A[28]~input_o\)))) # (!\y_b[28]~27_combout\ & (\adder64|carry[28]~27_combout\ & (\NotA~input_o\ $ (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[28]~27_combout\,
	datac => \adder64|carry[28]~27_combout\,
	datad => \A[28]~input_o\,
	combout => \adder64|carry[29]~28_combout\);

-- Location: IOIBUF_X67_Y0_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X66_Y4_N8
\y_b[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[29]~28_combout\ = \B[29]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[29]~28_combout\);

-- Location: IOIBUF_X65_Y0_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X66_Y4_N2
\adder64|Y[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(29) = \NotA~input_o\ $ (\adder64|carry[29]~28_combout\ $ (\y_b[29]~28_combout\ $ (\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \adder64|carry[29]~28_combout\,
	datac => \y_b[29]~28_combout\,
	datad => \A[29]~input_o\,
	combout => \adder64|Y\(29));

-- Location: IOIBUF_X56_Y0_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X66_Y4_N30
\y_b[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[30]~29_combout\ = \B[30]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[30]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[30]~29_combout\);

-- Location: LCCOMB_X66_Y4_N28
\adder64|carry[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[30]~29_combout\ = (\adder64|carry[29]~28_combout\ & ((\y_b[29]~28_combout\) # (\NotA~input_o\ $ (\A[29]~input_o\)))) # (!\adder64|carry[29]~28_combout\ & (\y_b[29]~28_combout\ & (\NotA~input_o\ $ (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \adder64|carry[29]~28_combout\,
	datac => \y_b[29]~28_combout\,
	datad => \A[29]~input_o\,
	combout => \adder64|carry[30]~29_combout\);

-- Location: LCCOMB_X66_Y4_N0
\adder64|Y[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(30) = \NotA~input_o\ $ (\A[30]~input_o\ $ (\y_b[30]~29_combout\ $ (\adder64|carry[30]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[30]~input_o\,
	datac => \y_b[30]~29_combout\,
	datad => \adder64|carry[30]~29_combout\,
	combout => \adder64|Y\(30));

-- Location: LCCOMB_X66_Y4_N26
\adder64|carry[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[31]~30_combout\ = (\y_b[30]~29_combout\ & ((\adder64|carry[30]~29_combout\) # (\NotA~input_o\ $ (\A[30]~input_o\)))) # (!\y_b[30]~29_combout\ & (\adder64|carry[30]~29_combout\ & (\NotA~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[30]~input_o\,
	datac => \y_b[30]~29_combout\,
	datad => \adder64|carry[30]~29_combout\,
	combout => \adder64|carry[31]~30_combout\);

-- Location: IOIBUF_X65_Y0_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X66_Y4_N20
\y_b[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[31]~30_combout\ = \B[31]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[31]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[31]~30_combout\);

-- Location: LCCOMB_X66_Y4_N6
\adder64|Y[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(31) = \adder64|carry[31]~30_combout\ $ (\A[31]~input_o\ $ (\NotA~input_o\ $ (\y_b[31]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[31]~30_combout\,
	datab => \A[31]~input_o\,
	datac => \NotA~input_o\,
	datad => \y_b[31]~30_combout\,
	combout => \adder64|Y\(31));

-- Location: IOIBUF_X60_Y0_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X66_Y4_N16
\adder64|carry[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[32]~31_combout\ = (\adder64|carry[31]~30_combout\ & ((\y_b[31]~30_combout\) # (\A[31]~input_o\ $ (\NotA~input_o\)))) # (!\adder64|carry[31]~30_combout\ & (\y_b[31]~30_combout\ & (\A[31]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[31]~30_combout\,
	datab => \A[31]~input_o\,
	datac => \NotA~input_o\,
	datad => \y_b[31]~30_combout\,
	combout => \adder64|carry[32]~31_combout\);

-- Location: IOIBUF_X67_Y0_N8
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X66_Y4_N18
\y_b[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[32]~31_combout\ = \B[32]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[32]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[32]~31_combout\);

-- Location: LCCOMB_X66_Y4_N4
\adder64|Y[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(32) = \A[32]~input_o\ $ (\adder64|carry[32]~31_combout\ $ (\NotA~input_o\ $ (\y_b[32]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \adder64|carry[32]~31_combout\,
	datac => \NotA~input_o\,
	datad => \y_b[32]~31_combout\,
	combout => \adder64|Y\(32));

-- Location: IOIBUF_X58_Y0_N15
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X66_Y4_N14
\adder64|carry[33]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[33]~32_combout\ = (\adder64|carry[32]~31_combout\ & ((\y_b[32]~31_combout\) # (\A[32]~input_o\ $ (\NotA~input_o\)))) # (!\adder64|carry[32]~31_combout\ & (\y_b[32]~31_combout\ & (\A[32]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \adder64|carry[32]~31_combout\,
	datac => \NotA~input_o\,
	datad => \y_b[32]~31_combout\,
	combout => \adder64|carry[33]~32_combout\);

-- Location: IOIBUF_X58_Y0_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X66_Y4_N24
\y_b[33]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[33]~32_combout\ = \B[33]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[33]~32_combout\);

-- Location: LCCOMB_X66_Y4_N10
\adder64|Y[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(33) = \A[33]~input_o\ $ (\adder64|carry[33]~32_combout\ $ (\NotA~input_o\ $ (\y_b[33]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \adder64|carry[33]~32_combout\,
	datac => \NotA~input_o\,
	datad => \y_b[33]~32_combout\,
	combout => \adder64|Y\(33));

-- Location: IOIBUF_X85_Y0_N22
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X66_Y4_N12
\adder64|carry[34]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[34]~33_combout\ = (\adder64|carry[33]~32_combout\ & ((\y_b[33]~32_combout\) # (\A[33]~input_o\ $ (\NotA~input_o\)))) # (!\adder64|carry[33]~32_combout\ & (\y_b[33]~32_combout\ & (\A[33]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \adder64|carry[33]~32_combout\,
	datac => \NotA~input_o\,
	datad => \y_b[33]~32_combout\,
	combout => \adder64|carry[34]~33_combout\);

-- Location: IOIBUF_X89_Y0_N8
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X88_Y4_N24
\y_b[34]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[34]~33_combout\ = \AddnSub~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[34]~input_o\,
	combout => \y_b[34]~33_combout\);

-- Location: LCCOMB_X88_Y4_N2
\adder64|Y[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(34) = \A[34]~input_o\ $ (\adder64|carry[34]~33_combout\ $ (\NotA~input_o\ $ (\y_b[34]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \adder64|carry[34]~33_combout\,
	datac => \NotA~input_o\,
	datad => \y_b[34]~33_combout\,
	combout => \adder64|Y\(34));

-- Location: IOIBUF_X91_Y0_N15
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X88_Y4_N14
\y_b[35]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[35]~34_combout\ = \B[35]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[35]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \y_b[35]~34_combout\);

-- Location: IOIBUF_X58_Y0_N8
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X88_Y4_N12
\adder64|carry[35]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[35]~34_combout\ = (\adder64|carry[34]~33_combout\ & ((\y_b[34]~33_combout\) # (\A[34]~input_o\ $ (\NotA~input_o\)))) # (!\adder64|carry[34]~33_combout\ & (\y_b[34]~33_combout\ & (\A[34]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \adder64|carry[34]~33_combout\,
	datac => \NotA~input_o\,
	datad => \y_b[34]~33_combout\,
	combout => \adder64|carry[35]~34_combout\);

-- Location: LCCOMB_X88_Y4_N0
\adder64|Y[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(35) = \NotA~input_o\ $ (\y_b[35]~34_combout\ $ (\A[35]~input_o\ $ (\adder64|carry[35]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[35]~34_combout\,
	datac => \A[35]~input_o\,
	datad => \adder64|carry[35]~34_combout\,
	combout => \adder64|Y\(35));

-- Location: IOIBUF_X58_Y0_N1
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X88_Y4_N20
\y_b[36]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[36]~35_combout\ = \AddnSub~input_o\ $ (\B[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[36]~input_o\,
	combout => \y_b[36]~35_combout\);

-- Location: IOIBUF_X89_Y0_N22
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X88_Y4_N10
\adder64|carry[36]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[36]~35_combout\ = (\y_b[35]~34_combout\ & ((\adder64|carry[35]~34_combout\) # (\NotA~input_o\ $ (\A[35]~input_o\)))) # (!\y_b[35]~34_combout\ & (\adder64|carry[35]~34_combout\ & (\NotA~input_o\ $ (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[35]~34_combout\,
	datac => \A[35]~input_o\,
	datad => \adder64|carry[35]~34_combout\,
	combout => \adder64|carry[36]~35_combout\);

-- Location: LCCOMB_X88_Y4_N6
\adder64|Y[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(36) = \NotA~input_o\ $ (\y_b[36]~35_combout\ $ (\A[36]~input_o\ $ (\adder64|carry[36]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[36]~35_combout\,
	datac => \A[36]~input_o\,
	datad => \adder64|carry[36]~35_combout\,
	combout => \adder64|Y\(36));

-- Location: IOIBUF_X115_Y15_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X88_Y4_N8
\adder64|carry[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[37]~36_combout\ = (\y_b[36]~35_combout\ & ((\adder64|carry[36]~35_combout\) # (\NotA~input_o\ $ (\A[36]~input_o\)))) # (!\y_b[36]~35_combout\ & (\adder64|carry[36]~35_combout\ & (\NotA~input_o\ $ (\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[36]~35_combout\,
	datac => \A[36]~input_o\,
	datad => \adder64|carry[36]~35_combout\,
	combout => \adder64|carry[37]~36_combout\);

-- Location: IOIBUF_X115_Y13_N1
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X114_Y14_N24
\y_b[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[37]~36_combout\ = \B[37]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \y_b[37]~36_combout\);

-- Location: LCCOMB_X114_Y14_N2
\adder64|Y[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(37) = \A[37]~input_o\ $ (\adder64|carry[37]~36_combout\ $ (\NotA~input_o\ $ (\y_b[37]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \adder64|carry[37]~36_combout\,
	datac => \NotA~input_o\,
	datad => \y_b[37]~36_combout\,
	combout => \adder64|Y\(37));

-- Location: IOIBUF_X115_Y14_N8
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X114_Y14_N6
\y_b[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[38]~37_combout\ = \B[38]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \y_b[38]~37_combout\);

-- Location: IOIBUF_X115_Y14_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X114_Y14_N12
\adder64|carry[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[38]~37_combout\ = (\adder64|carry[37]~36_combout\ & ((\y_b[37]~36_combout\) # (\A[37]~input_o\ $ (\NotA~input_o\)))) # (!\adder64|carry[37]~36_combout\ & (\y_b[37]~36_combout\ & (\A[37]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \adder64|carry[37]~36_combout\,
	datac => \NotA~input_o\,
	datad => \y_b[37]~36_combout\,
	combout => \adder64|carry[38]~37_combout\);

-- Location: LCCOMB_X114_Y14_N16
\adder64|Y[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(38) = \y_b[38]~37_combout\ $ (\A[38]~input_o\ $ (\NotA~input_o\ $ (\adder64|carry[38]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[38]~37_combout\,
	datab => \A[38]~input_o\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[38]~37_combout\,
	combout => \adder64|Y\(38));

-- Location: LCCOMB_X114_Y14_N10
\adder64|carry[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[39]~38_combout\ = (\y_b[38]~37_combout\ & ((\adder64|carry[38]~37_combout\) # (\A[38]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[38]~37_combout\ & (\adder64|carry[38]~37_combout\ & (\A[38]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[38]~37_combout\,
	datab => \A[38]~input_o\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[38]~37_combout\,
	combout => \adder64|carry[39]~38_combout\);

-- Location: IOIBUF_X115_Y12_N8
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X114_Y14_N28
\y_b[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[39]~38_combout\ = \AddnSub~input_o\ $ (\B[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[39]~input_o\,
	combout => \y_b[39]~38_combout\);

-- Location: IOIBUF_X115_Y13_N8
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X114_Y14_N14
\adder64|Y[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(39) = \adder64|carry[39]~38_combout\ $ (\y_b[39]~38_combout\ $ (\NotA~input_o\ $ (\A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[39]~38_combout\,
	datab => \y_b[39]~38_combout\,
	datac => \NotA~input_o\,
	datad => \A[39]~input_o\,
	combout => \adder64|Y\(39));

-- Location: LCCOMB_X114_Y14_N0
\adder64|carry[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[40]~39_combout\ = (\adder64|carry[39]~38_combout\ & ((\y_b[39]~38_combout\) # (\NotA~input_o\ $ (\A[39]~input_o\)))) # (!\adder64|carry[39]~38_combout\ & (\y_b[39]~38_combout\ & (\NotA~input_o\ $ (\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[39]~38_combout\,
	datab => \y_b[39]~38_combout\,
	datac => \NotA~input_o\,
	datad => \A[39]~input_o\,
	combout => \adder64|carry[40]~39_combout\);

-- Location: IOIBUF_X115_Y51_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X114_Y50_N8
\y_b[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[40]~39_combout\ = \AddnSub~input_o\ $ (\B[40]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[40]~input_o\,
	combout => \y_b[40]~39_combout\);

-- Location: IOIBUF_X115_Y50_N8
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X114_Y50_N2
\adder64|Y[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(40) = \adder64|carry[40]~39_combout\ $ (\y_b[40]~39_combout\ $ (\NotA~input_o\ $ (\A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[40]~39_combout\,
	datab => \y_b[40]~39_combout\,
	datac => \NotA~input_o\,
	datad => \A[40]~input_o\,
	combout => \adder64|Y\(40));

-- Location: IOIBUF_X115_Y49_N8
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X114_Y50_N30
\y_b[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[41]~40_combout\ = \AddnSub~input_o\ $ (\B[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[41]~input_o\,
	combout => \y_b[41]~40_combout\);

-- Location: LCCOMB_X114_Y50_N28
\adder64|carry[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[41]~40_combout\ = (\adder64|carry[40]~39_combout\ & ((\y_b[40]~39_combout\) # (\NotA~input_o\ $ (\A[40]~input_o\)))) # (!\adder64|carry[40]~39_combout\ & (\y_b[40]~39_combout\ & (\NotA~input_o\ $ (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[40]~39_combout\,
	datab => \y_b[40]~39_combout\,
	datac => \NotA~input_o\,
	datad => \A[40]~input_o\,
	combout => \adder64|carry[41]~40_combout\);

-- Location: IOIBUF_X115_Y51_N1
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X114_Y50_N24
\adder64|Y[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(41) = \y_b[41]~40_combout\ $ (\adder64|carry[41]~40_combout\ $ (\NotA~input_o\ $ (\A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[41]~40_combout\,
	datab => \adder64|carry[41]~40_combout\,
	datac => \NotA~input_o\,
	datad => \A[41]~input_o\,
	combout => \adder64|Y\(41));

-- Location: LCCOMB_X114_Y50_N10
\adder64|carry[42]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[42]~41_combout\ = (\y_b[41]~40_combout\ & ((\adder64|carry[41]~40_combout\) # (\NotA~input_o\ $ (\A[41]~input_o\)))) # (!\y_b[41]~40_combout\ & (\adder64|carry[41]~40_combout\ & (\NotA~input_o\ $ (\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[41]~40_combout\,
	datab => \adder64|carry[41]~40_combout\,
	datac => \NotA~input_o\,
	datad => \A[41]~input_o\,
	combout => \adder64|carry[42]~41_combout\);

-- Location: IOIBUF_X115_Y48_N1
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X114_Y50_N20
\y_b[42]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[42]~41_combout\ = \B[42]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[42]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \y_b[42]~41_combout\);

-- Location: IOIBUF_X115_Y49_N1
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X114_Y50_N22
\adder64|Y[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(42) = \adder64|carry[42]~41_combout\ $ (\y_b[42]~41_combout\ $ (\NotA~input_o\ $ (\A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[42]~41_combout\,
	datab => \y_b[42]~41_combout\,
	datac => \NotA~input_o\,
	datad => \A[42]~input_o\,
	combout => \adder64|Y\(42));

-- Location: IOIBUF_X115_Y50_N1
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X114_Y50_N18
\y_b[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[43]~42_combout\ = \AddnSub~input_o\ $ (\B[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[43]~input_o\,
	combout => \y_b[43]~42_combout\);

-- Location: LCCOMB_X114_Y50_N16
\adder64|carry[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[43]~42_combout\ = (\adder64|carry[42]~41_combout\ & ((\y_b[42]~41_combout\) # (\NotA~input_o\ $ (\A[42]~input_o\)))) # (!\adder64|carry[42]~41_combout\ & (\y_b[42]~41_combout\ & (\NotA~input_o\ $ (\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[42]~41_combout\,
	datab => \y_b[42]~41_combout\,
	datac => \NotA~input_o\,
	datad => \A[42]~input_o\,
	combout => \adder64|carry[43]~42_combout\);

-- Location: IOIBUF_X115_Y48_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X114_Y50_N12
\adder64|Y[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(43) = \y_b[43]~42_combout\ $ (\adder64|carry[43]~42_combout\ $ (\NotA~input_o\ $ (\A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[43]~42_combout\,
	datab => \adder64|carry[43]~42_combout\,
	datac => \NotA~input_o\,
	datad => \A[43]~input_o\,
	combout => \adder64|Y\(43));

-- Location: LCCOMB_X114_Y50_N6
\adder64|carry[44]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[44]~43_combout\ = (\y_b[43]~42_combout\ & ((\adder64|carry[43]~42_combout\) # (\NotA~input_o\ $ (\A[43]~input_o\)))) # (!\y_b[43]~42_combout\ & (\adder64|carry[43]~42_combout\ & (\NotA~input_o\ $ (\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[43]~42_combout\,
	datab => \adder64|carry[43]~42_combout\,
	datac => \NotA~input_o\,
	datad => \A[43]~input_o\,
	combout => \adder64|carry[44]~43_combout\);

-- Location: IOIBUF_X115_Y45_N22
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X114_Y44_N8
\y_b[44]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[44]~43_combout\ = \AddnSub~input_o\ $ (\B[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[44]~input_o\,
	combout => \y_b[44]~43_combout\);

-- Location: IOIBUF_X115_Y46_N8
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X114_Y44_N18
\adder64|Y[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(44) = \NotA~input_o\ $ (\adder64|carry[44]~43_combout\ $ (\y_b[44]~43_combout\ $ (\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \adder64|carry[44]~43_combout\,
	datac => \y_b[44]~43_combout\,
	datad => \A[44]~input_o\,
	combout => \adder64|Y\(44));

-- Location: IOIBUF_X115_Y41_N8
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X114_Y44_N30
\y_b[45]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[45]~44_combout\ = \AddnSub~input_o\ $ (\B[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[45]~input_o\,
	combout => \y_b[45]~44_combout\);

-- Location: LCCOMB_X114_Y44_N28
\adder64|carry[45]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[45]~44_combout\ = (\adder64|carry[44]~43_combout\ & ((\y_b[44]~43_combout\) # (\NotA~input_o\ $ (\A[44]~input_o\)))) # (!\adder64|carry[44]~43_combout\ & (\y_b[44]~43_combout\ & (\NotA~input_o\ $ (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \adder64|carry[44]~43_combout\,
	datac => \y_b[44]~43_combout\,
	datad => \A[44]~input_o\,
	combout => \adder64|carry[45]~44_combout\);

-- Location: IOIBUF_X115_Y45_N15
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X114_Y44_N16
\adder64|Y[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(45) = \y_b[45]~44_combout\ $ (\adder64|carry[45]~44_combout\ $ (\A[45]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[45]~44_combout\,
	datab => \adder64|carry[45]~44_combout\,
	datac => \A[45]~input_o\,
	datad => \NotA~input_o\,
	combout => \adder64|Y\(45));

-- Location: IOIBUF_X115_Y44_N1
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X114_Y44_N20
\y_b[46]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[46]~45_combout\ = \AddnSub~input_o\ $ (\B[46]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[46]~input_o\,
	combout => \y_b[46]~45_combout\);

-- Location: IOIBUF_X115_Y40_N1
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X114_Y44_N10
\adder64|carry[46]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[46]~45_combout\ = (\y_b[45]~44_combout\ & ((\adder64|carry[45]~44_combout\) # (\A[45]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[45]~44_combout\ & (\adder64|carry[45]~44_combout\ & (\A[45]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[45]~44_combout\,
	datab => \adder64|carry[45]~44_combout\,
	datac => \A[45]~input_o\,
	datad => \NotA~input_o\,
	combout => \adder64|carry[46]~45_combout\);

-- Location: LCCOMB_X114_Y44_N6
\adder64|Y[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(46) = \NotA~input_o\ $ (\y_b[46]~45_combout\ $ (\A[46]~input_o\ $ (\adder64|carry[46]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[46]~45_combout\,
	datac => \A[46]~input_o\,
	datad => \adder64|carry[46]~45_combout\,
	combout => \adder64|Y\(46));

-- Location: IOIBUF_X115_Y41_N1
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X114_Y44_N26
\y_b[47]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[47]~46_combout\ = \AddnSub~input_o\ $ (\B[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[47]~input_o\,
	combout => \y_b[47]~46_combout\);

-- Location: LCCOMB_X114_Y44_N24
\adder64|carry[47]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[47]~46_combout\ = (\y_b[46]~45_combout\ & ((\adder64|carry[46]~45_combout\) # (\NotA~input_o\ $ (\A[46]~input_o\)))) # (!\y_b[46]~45_combout\ & (\adder64|carry[46]~45_combout\ & (\NotA~input_o\ $ (\A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[46]~45_combout\,
	datac => \A[46]~input_o\,
	datad => \adder64|carry[46]~45_combout\,
	combout => \adder64|carry[47]~46_combout\);

-- Location: LCCOMB_X114_Y44_N12
\adder64|Y[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(47) = \NotA~input_o\ $ (\A[47]~input_o\ $ (\y_b[47]~46_combout\ $ (\adder64|carry[47]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[47]~input_o\,
	datac => \y_b[47]~46_combout\,
	datad => \adder64|carry[47]~46_combout\,
	combout => \adder64|Y\(47));

-- Location: IOIBUF_X115_Y46_N1
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X114_Y44_N0
\y_b[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[48]~47_combout\ = \AddnSub~input_o\ $ (\B[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[48]~input_o\,
	combout => \y_b[48]~47_combout\);

-- Location: LCCOMB_X114_Y44_N14
\adder64|carry[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[48]~47_combout\ = (\y_b[47]~46_combout\ & ((\adder64|carry[47]~46_combout\) # (\NotA~input_o\ $ (\A[47]~input_o\)))) # (!\y_b[47]~46_combout\ & (\adder64|carry[47]~46_combout\ & (\NotA~input_o\ $ (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[47]~input_o\,
	datac => \y_b[47]~46_combout\,
	datad => \adder64|carry[47]~46_combout\,
	combout => \adder64|carry[48]~47_combout\);

-- Location: IOIBUF_X115_Y44_N8
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X114_Y44_N2
\adder64|Y[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(48) = \NotA~input_o\ $ (\y_b[48]~47_combout\ $ (\adder64|carry[48]~47_combout\ $ (\A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[48]~47_combout\,
	datac => \adder64|carry[48]~47_combout\,
	datad => \A[48]~input_o\,
	combout => \adder64|Y\(48));

-- Location: IOIBUF_X107_Y73_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X108_Y69_N8
\y_b[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[49]~48_combout\ = \B[49]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[49]~48_combout\);

-- Location: IOIBUF_X105_Y73_N1
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X114_Y44_N4
\adder64|carry[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[49]~48_combout\ = (\y_b[48]~47_combout\ & ((\adder64|carry[48]~47_combout\) # (\NotA~input_o\ $ (\A[48]~input_o\)))) # (!\y_b[48]~47_combout\ & (\adder64|carry[48]~47_combout\ & (\NotA~input_o\ $ (\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[48]~47_combout\,
	datac => \adder64|carry[48]~47_combout\,
	datad => \A[48]~input_o\,
	combout => \adder64|carry[49]~48_combout\);

-- Location: LCCOMB_X108_Y69_N18
\adder64|Y[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(49) = \NotA~input_o\ $ (\y_b[49]~48_combout\ $ (\A[49]~input_o\ $ (\adder64|carry[49]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[49]~48_combout\,
	datac => \A[49]~input_o\,
	datad => \adder64|carry[49]~48_combout\,
	combout => \adder64|Y\(49));

-- Location: IOIBUF_X111_Y73_N1
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X108_Y69_N14
\y_b[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[50]~49_combout\ = \B[50]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[50]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[50]~49_combout\);

-- Location: IOIBUF_X107_Y73_N8
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X108_Y69_N20
\adder64|carry[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[50]~49_combout\ = (\y_b[49]~48_combout\ & ((\adder64|carry[49]~48_combout\) # (\NotA~input_o\ $ (\A[49]~input_o\)))) # (!\y_b[49]~48_combout\ & (\adder64|carry[49]~48_combout\ & (\NotA~input_o\ $ (\A[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[49]~48_combout\,
	datac => \A[49]~input_o\,
	datad => \adder64|carry[49]~48_combout\,
	combout => \adder64|carry[50]~49_combout\);

-- Location: LCCOMB_X108_Y69_N16
\adder64|Y[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(50) = \NotA~input_o\ $ (\y_b[50]~49_combout\ $ (\A[50]~input_o\ $ (\adder64|carry[50]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[50]~49_combout\,
	datac => \A[50]~input_o\,
	datad => \adder64|carry[50]~49_combout\,
	combout => \adder64|Y\(50));

-- Location: IOIBUF_X109_Y73_N1
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X108_Y69_N28
\y_b[51]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[51]~50_combout\ = \B[51]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[51]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[51]~50_combout\);

-- Location: IOIBUF_X105_Y73_N8
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X108_Y69_N10
\adder64|carry[51]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[51]~50_combout\ = (\y_b[50]~49_combout\ & ((\adder64|carry[50]~49_combout\) # (\NotA~input_o\ $ (\A[50]~input_o\)))) # (!\y_b[50]~49_combout\ & (\adder64|carry[50]~49_combout\ & (\NotA~input_o\ $ (\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[50]~49_combout\,
	datac => \A[50]~input_o\,
	datad => \adder64|carry[50]~49_combout\,
	combout => \adder64|carry[51]~50_combout\);

-- Location: LCCOMB_X108_Y69_N6
\adder64|Y[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(51) = \NotA~input_o\ $ (\y_b[51]~50_combout\ $ (\A[51]~input_o\ $ (\adder64|carry[51]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[51]~50_combout\,
	datac => \A[51]~input_o\,
	datad => \adder64|carry[51]~50_combout\,
	combout => \adder64|Y\(51));

-- Location: LCCOMB_X108_Y69_N24
\adder64|carry[52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[52]~51_combout\ = (\y_b[51]~50_combout\ & ((\adder64|carry[51]~50_combout\) # (\NotA~input_o\ $ (\A[51]~input_o\)))) # (!\y_b[51]~50_combout\ & (\adder64|carry[51]~50_combout\ & (\NotA~input_o\ $ (\A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[51]~50_combout\,
	datac => \A[51]~input_o\,
	datad => \adder64|carry[51]~50_combout\,
	combout => \adder64|carry[52]~51_combout\);

-- Location: IOIBUF_X109_Y73_N8
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X108_Y69_N26
\y_b[52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[52]~51_combout\ = \B[52]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[52]~51_combout\);

-- Location: IOIBUF_X111_Y73_N8
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X108_Y69_N4
\adder64|Y[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(52) = \NotA~input_o\ $ (\adder64|carry[52]~51_combout\ $ (\y_b[52]~51_combout\ $ (\A[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \adder64|carry[52]~51_combout\,
	datac => \y_b[52]~51_combout\,
	datad => \A[52]~input_o\,
	combout => \adder64|Y\(52));

-- Location: IOIBUF_X107_Y73_N22
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X108_Y69_N0
\y_b[53]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[53]~52_combout\ = \B[53]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[53]~52_combout\);

-- Location: LCCOMB_X108_Y69_N30
\adder64|carry[53]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[53]~52_combout\ = (\adder64|carry[52]~51_combout\ & ((\y_b[52]~51_combout\) # (\NotA~input_o\ $ (\A[52]~input_o\)))) # (!\adder64|carry[52]~51_combout\ & (\y_b[52]~51_combout\ & (\NotA~input_o\ $ (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \adder64|carry[52]~51_combout\,
	datac => \y_b[52]~51_combout\,
	datad => \A[52]~input_o\,
	combout => \adder64|carry[53]~52_combout\);

-- Location: IOIBUF_X107_Y73_N15
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X108_Y69_N2
\adder64|Y[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(53) = \NotA~input_o\ $ (\y_b[53]~52_combout\ $ (\adder64|carry[53]~52_combout\ $ (\A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[53]~52_combout\,
	datac => \adder64|carry[53]~52_combout\,
	datad => \A[53]~input_o\,
	combout => \adder64|Y\(53));

-- Location: IOIBUF_X98_Y73_N15
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X96_Y73_N15
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X100_Y69_N16
\y_b[54]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[54]~53_combout\ = \B[54]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[54]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[54]~53_combout\);

-- Location: LCCOMB_X108_Y69_N12
\adder64|carry[54]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[54]~53_combout\ = (\y_b[53]~52_combout\ & ((\adder64|carry[53]~52_combout\) # (\NotA~input_o\ $ (\A[53]~input_o\)))) # (!\y_b[53]~52_combout\ & (\adder64|carry[53]~52_combout\ & (\NotA~input_o\ $ (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[53]~52_combout\,
	datac => \adder64|carry[53]~52_combout\,
	datad => \A[53]~input_o\,
	combout => \adder64|carry[54]~53_combout\);

-- Location: LCCOMB_X100_Y69_N18
\adder64|Y[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(54) = \A[54]~input_o\ $ (\y_b[54]~53_combout\ $ (\NotA~input_o\ $ (\adder64|carry[54]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \y_b[54]~53_combout\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[54]~53_combout\,
	combout => \adder64|Y\(54));

-- Location: IOIBUF_X98_Y73_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X96_Y73_N22
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X100_Y69_N30
\y_b[55]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[55]~54_combout\ = \B[55]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[55]~54_combout\);

-- Location: LCCOMB_X100_Y69_N12
\adder64|carry[55]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[55]~54_combout\ = (\y_b[54]~53_combout\ & ((\adder64|carry[54]~53_combout\) # (\A[54]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[54]~53_combout\ & (\adder64|carry[54]~53_combout\ & (\A[54]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \y_b[54]~53_combout\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[54]~53_combout\,
	combout => \adder64|carry[55]~54_combout\);

-- Location: LCCOMB_X100_Y69_N24
\adder64|Y[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(55) = \A[55]~input_o\ $ (\NotA~input_o\ $ (\y_b[55]~54_combout\ $ (\adder64|carry[55]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \NotA~input_o\,
	datac => \y_b[55]~54_combout\,
	datad => \adder64|carry[55]~54_combout\,
	combout => \adder64|Y\(55));

-- Location: LCCOMB_X100_Y69_N10
\adder64|carry[56]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[56]~55_combout\ = (\y_b[55]~54_combout\ & ((\adder64|carry[55]~54_combout\) # (\A[55]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[55]~54_combout\ & (\adder64|carry[55]~54_combout\ & (\A[55]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \NotA~input_o\,
	datac => \y_b[55]~54_combout\,
	datad => \adder64|carry[55]~54_combout\,
	combout => \adder64|carry[56]~55_combout\);

-- Location: IOIBUF_X102_Y73_N1
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X100_Y69_N28
\y_b[56]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[56]~55_combout\ = \B[56]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[56]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[56]~55_combout\);

-- Location: IOIBUF_X100_Y73_N15
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X100_Y69_N6
\adder64|Y[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(56) = \adder64|carry[56]~55_combout\ $ (\y_b[56]~55_combout\ $ (\NotA~input_o\ $ (\A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[56]~55_combout\,
	datab => \y_b[56]~55_combout\,
	datac => \NotA~input_o\,
	datad => \A[56]~input_o\,
	combout => \adder64|Y\(56));

-- Location: IOIBUF_X100_Y73_N22
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X100_Y69_N2
\y_b[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[57]~56_combout\ = \B[57]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[57]~56_combout\);

-- Location: LCCOMB_X100_Y69_N0
\adder64|carry[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[57]~56_combout\ = (\adder64|carry[56]~55_combout\ & ((\y_b[56]~55_combout\) # (\NotA~input_o\ $ (\A[56]~input_o\)))) # (!\adder64|carry[56]~55_combout\ & (\y_b[56]~55_combout\ & (\NotA~input_o\ $ (\A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|carry[56]~55_combout\,
	datab => \y_b[56]~55_combout\,
	datac => \NotA~input_o\,
	datad => \A[56]~input_o\,
	combout => \adder64|carry[57]~56_combout\);

-- Location: LCCOMB_X100_Y69_N20
\adder64|Y[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(57) = \A[57]~input_o\ $ (\y_b[57]~56_combout\ $ (\NotA~input_o\ $ (\adder64|carry[57]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \y_b[57]~56_combout\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[57]~56_combout\,
	combout => \adder64|Y\(57));

-- Location: IOIBUF_X85_Y73_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X88_Y69_N8
\y_b[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[58]~57_combout\ = \B[58]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[58]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[58]~57_combout\);

-- Location: IOIBUF_X87_Y73_N15
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X100_Y69_N22
\adder64|carry[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[58]~57_combout\ = (\y_b[57]~56_combout\ & ((\adder64|carry[57]~56_combout\) # (\A[57]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[57]~56_combout\ & (\adder64|carry[57]~56_combout\ & (\A[57]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \y_b[57]~56_combout\,
	datac => \NotA~input_o\,
	datad => \adder64|carry[57]~56_combout\,
	combout => \adder64|carry[58]~57_combout\);

-- Location: LCCOMB_X88_Y69_N2
\adder64|Y[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(58) = \NotA~input_o\ $ (\y_b[58]~57_combout\ $ (\A[58]~input_o\ $ (\adder64|carry[58]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[58]~57_combout\,
	datac => \A[58]~input_o\,
	datad => \adder64|carry[58]~57_combout\,
	combout => \adder64|Y\(58));

-- Location: IOIBUF_X83_Y73_N22
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X88_Y69_N22
\y_b[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[59]~58_combout\ = \B[59]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[59]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[59]~58_combout\);

-- Location: LCCOMB_X88_Y69_N20
\adder64|carry[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[59]~58_combout\ = (\y_b[58]~57_combout\ & ((\adder64|carry[58]~57_combout\) # (\NotA~input_o\ $ (\A[58]~input_o\)))) # (!\y_b[58]~57_combout\ & (\adder64|carry[58]~57_combout\ & (\NotA~input_o\ $ (\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[58]~57_combout\,
	datac => \A[58]~input_o\,
	datad => \adder64|carry[58]~57_combout\,
	combout => \adder64|carry[59]~58_combout\);

-- Location: LCCOMB_X88_Y69_N24
\adder64|Y[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(59) = \NotA~input_o\ $ (\A[59]~input_o\ $ (\y_b[59]~58_combout\ $ (\adder64|carry[59]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[59]~input_o\,
	datac => \y_b[59]~58_combout\,
	datad => \adder64|carry[59]~58_combout\,
	combout => \adder64|Y\(59));

-- Location: IOIBUF_X91_Y73_N15
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X88_Y69_N28
\y_b[60]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[60]~59_combout\ = \B[60]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[60]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[60]~59_combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X88_Y69_N10
\adder64|carry[60]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[60]~59_combout\ = (\y_b[59]~58_combout\ & ((\adder64|carry[59]~58_combout\) # (\NotA~input_o\ $ (\A[59]~input_o\)))) # (!\y_b[59]~58_combout\ & (\adder64|carry[59]~58_combout\ & (\NotA~input_o\ $ (\A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[59]~input_o\,
	datac => \y_b[59]~58_combout\,
	datad => \adder64|carry[59]~58_combout\,
	combout => \adder64|carry[60]~59_combout\);

-- Location: LCCOMB_X88_Y69_N6
\adder64|Y[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(60) = \NotA~input_o\ $ (\y_b[60]~59_combout\ $ (\A[60]~input_o\ $ (\adder64|carry[60]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[60]~59_combout\,
	datac => \A[60]~input_o\,
	datad => \adder64|carry[60]~59_combout\,
	combout => \adder64|Y\(60));

-- Location: IOIBUF_X85_Y73_N15
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X88_Y69_N26
\y_b[61]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[61]~60_combout\ = \B[61]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[61]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[61]~60_combout\);

-- Location: LCCOMB_X88_Y69_N16
\adder64|carry[61]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[61]~60_combout\ = (\y_b[60]~59_combout\ & ((\adder64|carry[60]~59_combout\) # (\NotA~input_o\ $ (\A[60]~input_o\)))) # (!\y_b[60]~59_combout\ & (\adder64|carry[60]~59_combout\ & (\NotA~input_o\ $ (\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[60]~59_combout\,
	datac => \A[60]~input_o\,
	datad => \adder64|carry[60]~59_combout\,
	combout => \adder64|carry[61]~60_combout\);

-- Location: IOIBUF_X89_Y73_N8
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X88_Y69_N4
\adder64|Y[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(61) = \y_b[61]~60_combout\ $ (\adder64|carry[61]~60_combout\ $ (\A[61]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[61]~60_combout\,
	datab => \adder64|carry[61]~60_combout\,
	datac => \A[61]~input_o\,
	datad => \NotA~input_o\,
	combout => \adder64|Y\(61));

-- Location: IOIBUF_X87_Y73_N22
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X88_Y69_N0
\y_b[62]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[62]~61_combout\ = \B[62]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \y_b[62]~61_combout\);

-- Location: LCCOMB_X88_Y69_N14
\adder64|carry[62]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[62]~61_combout\ = (\y_b[61]~60_combout\ & ((\adder64|carry[61]~60_combout\) # (\A[61]~input_o\ $ (\NotA~input_o\)))) # (!\y_b[61]~60_combout\ & (\adder64|carry[61]~60_combout\ & (\A[61]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_b[61]~60_combout\,
	datab => \adder64|carry[61]~60_combout\,
	datac => \A[61]~input_o\,
	datad => \NotA~input_o\,
	combout => \adder64|carry[62]~61_combout\);

-- Location: IOIBUF_X89_Y73_N22
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X88_Y69_N18
\adder64|Y[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(62) = \NotA~input_o\ $ (\y_b[62]~61_combout\ $ (\adder64|carry[62]~61_combout\ $ (\A[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[62]~61_combout\,
	datac => \adder64|carry[62]~61_combout\,
	datad => \A[62]~input_o\,
	combout => \adder64|Y\(62));

-- Location: IOIBUF_X89_Y0_N1
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X88_Y4_N18
\y_b[63]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_b[63]~62_combout\ = \AddnSub~input_o\ $ (\B[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[63]~input_o\,
	combout => \y_b[63]~62_combout\);

-- Location: LCCOMB_X88_Y69_N12
\adder64|carry[63]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|carry[63]~62_combout\ = (\y_b[62]~61_combout\ & ((\adder64|carry[62]~61_combout\) # (\NotA~input_o\ $ (\A[62]~input_o\)))) # (!\y_b[62]~61_combout\ & (\adder64|carry[62]~61_combout\ & (\NotA~input_o\ $ (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[62]~61_combout\,
	datac => \adder64|carry[62]~61_combout\,
	datad => \A[62]~input_o\,
	combout => \adder64|carry[63]~62_combout\);

-- Location: IOIBUF_X89_Y0_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X88_Y4_N28
\adder64|Y[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Y\(63) = \NotA~input_o\ $ (\y_b[63]~62_combout\ $ (\adder64|carry[63]~62_combout\ $ (\A[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[63]~62_combout\,
	datac => \adder64|carry[63]~62_combout\,
	datad => \A[63]~input_o\,
	combout => \adder64|Y\(63));

-- Location: IOIBUF_X115_Y65_N22
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X114_Y30_N0
\Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder64|Y\(31),
	datac => \adder64|Y\(32),
	datad => \ExtWord~input_o\,
	combout => \Y~0_combout\);

-- Location: LCCOMB_X114_Y30_N26
\Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder64|Y\(31),
	datac => \adder64|Y\(33),
	datad => \ExtWord~input_o\,
	combout => \Y~1_combout\);

-- Location: LCCOMB_X114_Y30_N4
\Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~2_combout\ = (\ExtWord~input_o\ & ((\adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\adder64|Y\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(34),
	datab => \adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~2_combout\);

-- Location: LCCOMB_X114_Y30_N6
\Y~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~3_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder64|Y\(31),
	datac => \adder64|Y\(35),
	datad => \ExtWord~input_o\,
	combout => \Y~3_combout\);

-- Location: LCCOMB_X114_Y30_N8
\Y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~4_combout\ = (\ExtWord~input_o\ & ((\adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\adder64|Y\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(36),
	datab => \adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~4_combout\);

-- Location: LCCOMB_X114_Y30_N2
\Y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~5_combout\ = (\ExtWord~input_o\ & ((\adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\adder64|Y\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(37),
	datab => \adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~5_combout\);

-- Location: LCCOMB_X114_Y30_N20
\Y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~6_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder64|Y\(31),
	datac => \adder64|Y\(38),
	datad => \ExtWord~input_o\,
	combout => \Y~6_combout\);

-- Location: LCCOMB_X114_Y30_N30
\Y~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~7_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder64|Y\(31),
	datac => \adder64|Y\(39),
	datad => \ExtWord~input_o\,
	combout => \Y~7_combout\);

-- Location: LCCOMB_X114_Y58_N0
\Y~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~8_combout\ = (\ExtWord~input_o\ & ((\adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\adder64|Y\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(40),
	datac => \adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~8_combout\);

-- Location: LCCOMB_X114_Y58_N2
\Y~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~9_combout\ = (\ExtWord~input_o\ & ((\adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\adder64|Y\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder64|Y\(41),
	datac => \adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~9_combout\);

-- Location: LCCOMB_X114_Y58_N28
\Y~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~10_combout\ = (\ExtWord~input_o\ & ((\adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\adder64|Y\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder64|Y\(42),
	datac => \adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~10_combout\);

-- Location: LCCOMB_X114_Y58_N30
\Y~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~11_combout\ = (\ExtWord~input_o\ & ((\adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\adder64|Y\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(43),
	datac => \adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~11_combout\);

-- Location: LCCOMB_X114_Y30_N16
\Y~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~12_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder64|Y\(31),
	datac => \adder64|Y\(44),
	datad => \ExtWord~input_o\,
	combout => \Y~12_combout\);

-- Location: LCCOMB_X114_Y58_N8
\Y~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~13_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(31),
	datac => \adder64|Y\(45),
	datad => \ExtWord~input_o\,
	combout => \Y~13_combout\);

-- Location: LCCOMB_X114_Y58_N18
\Y~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(31),
	datac => \adder64|Y\(46),
	datad => \ExtWord~input_o\,
	combout => \Y~14_combout\);

-- Location: LCCOMB_X114_Y58_N4
\Y~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(31),
	datac => \adder64|Y\(47),
	datad => \ExtWord~input_o\,
	combout => \Y~15_combout\);

-- Location: LCCOMB_X114_Y58_N14
\Y~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = (\ExtWord~input_o\ & ((\adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\adder64|Y\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(48),
	datac => \adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~16_combout\);

-- Location: LCCOMB_X114_Y58_N16
\Y~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = (\ExtWord~input_o\ & ((\adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\adder64|Y\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(49),
	datac => \adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~17_combout\);

-- Location: LCCOMB_X114_Y58_N26
\Y~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(31),
	datac => \adder64|Y\(50),
	datad => \ExtWord~input_o\,
	combout => \Y~18_combout\);

-- Location: LCCOMB_X114_Y58_N12
\Y~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = (\ExtWord~input_o\ & ((\adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\adder64|Y\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(51),
	datac => \adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~19_combout\);

-- Location: LCCOMB_X114_Y58_N22
\Y~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(31),
	datac => \adder64|Y\(52),
	datad => \ExtWord~input_o\,
	combout => \Y~20_combout\);

-- Location: LCCOMB_X114_Y58_N24
\Y~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(31),
	datac => \adder64|Y\(53),
	datad => \ExtWord~input_o\,
	combout => \Y~21_combout\);

-- Location: LCCOMB_X114_Y30_N18
\Y~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = (\ExtWord~input_o\ & ((\adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\adder64|Y\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(54),
	datab => \adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~22_combout\);

-- Location: LCCOMB_X73_Y69_N22
\Y~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(31),
	datac => \ExtWord~input_o\,
	datad => \adder64|Y\(55),
	combout => \Y~23_combout\);

-- Location: LCCOMB_X114_Y58_N10
\Y~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(31),
	datac => \adder64|Y\(56),
	datad => \ExtWord~input_o\,
	combout => \Y~24_combout\);

-- Location: LCCOMB_X114_Y30_N28
\Y~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder64|Y\(31),
	datac => \adder64|Y\(57),
	datad => \ExtWord~input_o\,
	combout => \Y~25_combout\);

-- Location: LCCOMB_X114_Y58_N20
\Y~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = (\ExtWord~input_o\ & ((\adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\adder64|Y\(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder64|Y\(58),
	datac => \adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~26_combout\);

-- Location: LCCOMB_X114_Y30_N14
\Y~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = (\ExtWord~input_o\ & ((\adder64|Y\(31)))) # (!\ExtWord~input_o\ & (\adder64|Y\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(59),
	datab => \adder64|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~27_combout\);

-- Location: LCCOMB_X114_Y30_N24
\Y~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder64|Y\(31),
	datac => \adder64|Y\(60),
	datad => \ExtWord~input_o\,
	combout => \Y~28_combout\);

-- Location: LCCOMB_X114_Y58_N6
\Y~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(31),
	datac => \adder64|Y\(61),
	datad => \ExtWord~input_o\,
	combout => \Y~29_combout\);

-- Location: LCCOMB_X73_Y69_N0
\Y~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|Y\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(31),
	datab => \ExtWord~input_o\,
	datac => \adder64|Y\(62),
	combout => \Y~30_combout\);

-- Location: LCCOMB_X88_Y4_N22
\adder64|p[63]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|p[63]~0_combout\ = \B[63]~input_o\ $ (\AddnSub~input_o\ $ (\NotA~input_o\ $ (\A[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \NotA~input_o\,
	datad => \A[63]~input_o\,
	combout => \adder64|p[63]~0_combout\);

-- Location: LCCOMB_X73_Y69_N2
\Y~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = (\ExtWord~input_o\ & (\adder64|Y\(31))) # (!\ExtWord~input_o\ & ((\adder64|p[63]~0_combout\ $ (\adder64|carry[63]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(31),
	datab => \adder64|p[63]~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \adder64|carry[63]~62_combout\,
	combout => \Y~31_combout\);

-- Location: LCCOMB_X88_Y4_N16
\adder64|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Cout~0_combout\ = (\y_b[63]~62_combout\ & ((\adder64|carry[63]~62_combout\) # (\NotA~input_o\ $ (\A[63]~input_o\)))) # (!\y_b[63]~62_combout\ & (\adder64|carry[63]~62_combout\ & (\NotA~input_o\ $ (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[63]~62_combout\,
	datac => \adder64|carry[63]~62_combout\,
	datad => \A[63]~input_o\,
	combout => \adder64|Cout~0_combout\);

-- Location: LCCOMB_X88_Y4_N26
\adder64|Ovfl\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder64|Ovfl~combout\ = (\y_b[63]~62_combout\ & (!\adder64|carry[63]~62_combout\ & (\NotA~input_o\ $ (\A[63]~input_o\)))) # (!\y_b[63]~62_combout\ & (\adder64|carry[63]~62_combout\ & (\NotA~input_o\ $ (!\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[63]~62_combout\,
	datac => \adder64|carry[63]~62_combout\,
	datad => \A[63]~input_o\,
	combout => \adder64|Ovfl~combout\);

-- Location: LCCOMB_X21_Y69_N6
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\adder64|Y\(26) & (!\adder64|Y\(25) & (!\adder64|Y\(24) & !\adder64|Y\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(26),
	datab => \adder64|Y\(25),
	datac => \adder64|Y\(24),
	datad => \adder64|Y\(27),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X1_Y29_N24
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\adder64|Y\(18) & (!\adder64|Y\(16) & (!\adder64|Y\(17) & !\adder64|Y\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(18),
	datab => \adder64|Y\(16),
	datac => \adder64|Y\(17),
	datad => \adder64|Y\(19),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X66_Y4_N22
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\adder64|Y\(28) & (!\adder64|Y\(30) & (!\adder64|Y\(29) & !\adder64|Y\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(28),
	datab => \adder64|Y\(30),
	datac => \adder64|Y\(29),
	datad => \adder64|Y\(31),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X33_Y69_N16
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\adder64|Y\(23) & (!\adder64|Y\(20) & (!\adder64|Y\(22) & !\adder64|Y\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(23),
	datab => \adder64|Y\(20),
	datac => \adder64|Y\(22),
	datad => \adder64|Y\(21),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X33_Y69_N26
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8_combout\ & (\Equal0~6_combout\ & (\Equal0~9_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X73_Y69_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\adder64|Y\(3) & !\adder64|Y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adder64|Y\(3),
	datad => \adder64|Y\(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X73_Y69_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (!\adder64|Y\(1) & (\adder64|p[63]~0_combout\ $ (!\adder64|carry[63]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|p[63]~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \adder64|Y\(1),
	datad => \adder64|carry[63]~62_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X48_Y4_N16
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\adder64|Y\(15) & (!\adder64|Y\(13) & (!\adder64|Y\(12) & !\adder64|Y\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(15),
	datab => \adder64|Y\(13),
	datac => \adder64|Y\(12),
	datad => \adder64|Y\(14),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X53_Y69_N8
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\adder64|Y\(4) & (!\adder64|Y\(7) & (!\adder64|Y\(6) & !\adder64|Y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(4),
	datab => \adder64|Y\(7),
	datac => \adder64|Y\(6),
	datad => \adder64|Y\(5),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X73_Y4_N0
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\adder64|Y\(10) & (!\adder64|Y\(8) & (!\adder64|Y\(11) & !\adder64|Y\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(10),
	datab => \adder64|Y\(8),
	datac => \adder64|Y\(11),
	datad => \adder64|Y\(9),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X53_Y69_N18
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~1_combout\ & (\Equal0~4_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X114_Y30_N12
\Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!\adder64|Y\(36) & (!\adder64|Y\(39) & (!\adder64|Y\(38) & !\adder64|Y\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(36),
	datab => \adder64|Y\(39),
	datac => \adder64|Y\(38),
	datad => \adder64|Y\(37),
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X114_Y44_N22
\Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (!\adder64|Y\(47) & (!\adder64|Y\(45) & (!\adder64|Y\(46) & !\adder64|Y\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(47),
	datab => \adder64|Y\(45),
	datac => \adder64|Y\(46),
	datad => \adder64|Y\(44),
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X114_Y50_N0
\Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (!\adder64|Y\(43) & (!\adder64|Y\(41) & (!\adder64|Y\(42) & !\adder64|Y\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(43),
	datab => \adder64|Y\(41),
	datac => \adder64|Y\(42),
	datad => \adder64|Y\(40),
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X114_Y30_N10
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!\adder64|Y\(33) & (!\adder64|Y\(32) & (!\adder64|Y\(35) & !\adder64|Y\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(33),
	datab => \adder64|Y\(32),
	datac => \adder64|Y\(35),
	datad => \adder64|Y\(34),
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X114_Y30_N22
\Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = (\Equal0~12_combout\ & (\Equal0~14_combout\ & (\Equal0~13_combout\ & \Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~12_combout\,
	datab => \Equal0~14_combout\,
	datac => \Equal0~13_combout\,
	datad => \Equal0~11_combout\,
	combout => \Equal0~15_combout\);

-- Location: LCCOMB_X100_Y69_N26
\Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~18_combout\ = (!\adder64|Y\(59) & (!\adder64|Y\(57) & (!\adder64|Y\(58) & !\adder64|Y\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(59),
	datab => \adder64|Y\(57),
	datac => \adder64|Y\(58),
	datad => \adder64|Y\(56),
	combout => \Equal0~18_combout\);

-- Location: LCCOMB_X108_Y69_N22
\Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = (!\adder64|Y\(51) & (!\adder64|Y\(50) & (!\adder64|Y\(49) & !\adder64|Y\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(51),
	datab => \adder64|Y\(50),
	datac => \adder64|Y\(49),
	datad => \adder64|Y\(48),
	combout => \Equal0~16_combout\);

-- Location: LCCOMB_X100_Y69_N8
\Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~17_combout\ = (!\adder64|Y\(54) & (!\adder64|Y\(55) & (!\adder64|Y\(52) & !\adder64|Y\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y\(54),
	datab => \adder64|Y\(55),
	datac => \adder64|Y\(52),
	datad => \adder64|Y\(53),
	combout => \Equal0~17_combout\);

-- Location: LCCOMB_X88_Y69_N30
\Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~19_combout\ = (!\adder64|Y[0]~0_combout\ & (!\adder64|Y\(62) & (!\adder64|Y\(61) & !\adder64|Y\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder64|Y[0]~0_combout\,
	datab => \adder64|Y\(62),
	datac => \adder64|Y\(61),
	datad => \adder64|Y\(60),
	combout => \Equal0~19_combout\);

-- Location: LCCOMB_X100_Y69_N4
\Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~20_combout\ = (\Equal0~18_combout\ & (\Equal0~16_combout\ & (\Equal0~17_combout\ & \Equal0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~18_combout\,
	datab => \Equal0~16_combout\,
	datac => \Equal0~17_combout\,
	datad => \Equal0~19_combout\,
	combout => \Equal0~20_combout\);

-- Location: LCCOMB_X33_Y69_N4
\Equal0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~21_combout\ = (\Equal0~10_combout\ & (\Equal0~5_combout\ & (\Equal0~15_combout\ & \Equal0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~15_combout\,
	datad => \Equal0~20_combout\,
	combout => \Equal0~21_combout\);

-- Location: LCCOMB_X88_Y4_N4
\AltB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~2_combout\ = (\y_b[63]~62_combout\ & ((\NotA~input_o\ $ (\A[63]~input_o\)) # (!\adder64|carry[63]~62_combout\))) # (!\y_b[63]~62_combout\ & (!\adder64|carry[63]~62_combout\ & (\NotA~input_o\ $ (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \y_b[63]~62_combout\,
	datac => \adder64|carry[63]~62_combout\,
	datad => \A[63]~input_o\,
	combout => \AltB~2_combout\);

ww_AddY(0) <= \AddY[0]~output_o\;

ww_AddY(1) <= \AddY[1]~output_o\;

ww_AddY(2) <= \AddY[2]~output_o\;

ww_AddY(3) <= \AddY[3]~output_o\;

ww_AddY(4) <= \AddY[4]~output_o\;

ww_AddY(5) <= \AddY[5]~output_o\;

ww_AddY(6) <= \AddY[6]~output_o\;

ww_AddY(7) <= \AddY[7]~output_o\;

ww_AddY(8) <= \AddY[8]~output_o\;

ww_AddY(9) <= \AddY[9]~output_o\;

ww_AddY(10) <= \AddY[10]~output_o\;

ww_AddY(11) <= \AddY[11]~output_o\;

ww_AddY(12) <= \AddY[12]~output_o\;

ww_AddY(13) <= \AddY[13]~output_o\;

ww_AddY(14) <= \AddY[14]~output_o\;

ww_AddY(15) <= \AddY[15]~output_o\;

ww_AddY(16) <= \AddY[16]~output_o\;

ww_AddY(17) <= \AddY[17]~output_o\;

ww_AddY(18) <= \AddY[18]~output_o\;

ww_AddY(19) <= \AddY[19]~output_o\;

ww_AddY(20) <= \AddY[20]~output_o\;

ww_AddY(21) <= \AddY[21]~output_o\;

ww_AddY(22) <= \AddY[22]~output_o\;

ww_AddY(23) <= \AddY[23]~output_o\;

ww_AddY(24) <= \AddY[24]~output_o\;

ww_AddY(25) <= \AddY[25]~output_o\;

ww_AddY(26) <= \AddY[26]~output_o\;

ww_AddY(27) <= \AddY[27]~output_o\;

ww_AddY(28) <= \AddY[28]~output_o\;

ww_AddY(29) <= \AddY[29]~output_o\;

ww_AddY(30) <= \AddY[30]~output_o\;

ww_AddY(31) <= \AddY[31]~output_o\;

ww_AddY(32) <= \AddY[32]~output_o\;

ww_AddY(33) <= \AddY[33]~output_o\;

ww_AddY(34) <= \AddY[34]~output_o\;

ww_AddY(35) <= \AddY[35]~output_o\;

ww_AddY(36) <= \AddY[36]~output_o\;

ww_AddY(37) <= \AddY[37]~output_o\;

ww_AddY(38) <= \AddY[38]~output_o\;

ww_AddY(39) <= \AddY[39]~output_o\;

ww_AddY(40) <= \AddY[40]~output_o\;

ww_AddY(41) <= \AddY[41]~output_o\;

ww_AddY(42) <= \AddY[42]~output_o\;

ww_AddY(43) <= \AddY[43]~output_o\;

ww_AddY(44) <= \AddY[44]~output_o\;

ww_AddY(45) <= \AddY[45]~output_o\;

ww_AddY(46) <= \AddY[46]~output_o\;

ww_AddY(47) <= \AddY[47]~output_o\;

ww_AddY(48) <= \AddY[48]~output_o\;

ww_AddY(49) <= \AddY[49]~output_o\;

ww_AddY(50) <= \AddY[50]~output_o\;

ww_AddY(51) <= \AddY[51]~output_o\;

ww_AddY(52) <= \AddY[52]~output_o\;

ww_AddY(53) <= \AddY[53]~output_o\;

ww_AddY(54) <= \AddY[54]~output_o\;

ww_AddY(55) <= \AddY[55]~output_o\;

ww_AddY(56) <= \AddY[56]~output_o\;

ww_AddY(57) <= \AddY[57]~output_o\;

ww_AddY(58) <= \AddY[58]~output_o\;

ww_AddY(59) <= \AddY[59]~output_o\;

ww_AddY(60) <= \AddY[60]~output_o\;

ww_AddY(61) <= \AddY[61]~output_o\;

ww_AddY(62) <= \AddY[62]~output_o\;

ww_AddY(63) <= \AddY[63]~output_o\;

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;

ww_Y(32) <= \Y[32]~output_o\;

ww_Y(33) <= \Y[33]~output_o\;

ww_Y(34) <= \Y[34]~output_o\;

ww_Y(35) <= \Y[35]~output_o\;

ww_Y(36) <= \Y[36]~output_o\;

ww_Y(37) <= \Y[37]~output_o\;

ww_Y(38) <= \Y[38]~output_o\;

ww_Y(39) <= \Y[39]~output_o\;

ww_Y(40) <= \Y[40]~output_o\;

ww_Y(41) <= \Y[41]~output_o\;

ww_Y(42) <= \Y[42]~output_o\;

ww_Y(43) <= \Y[43]~output_o\;

ww_Y(44) <= \Y[44]~output_o\;

ww_Y(45) <= \Y[45]~output_o\;

ww_Y(46) <= \Y[46]~output_o\;

ww_Y(47) <= \Y[47]~output_o\;

ww_Y(48) <= \Y[48]~output_o\;

ww_Y(49) <= \Y[49]~output_o\;

ww_Y(50) <= \Y[50]~output_o\;

ww_Y(51) <= \Y[51]~output_o\;

ww_Y(52) <= \Y[52]~output_o\;

ww_Y(53) <= \Y[53]~output_o\;

ww_Y(54) <= \Y[54]~output_o\;

ww_Y(55) <= \Y[55]~output_o\;

ww_Y(56) <= \Y[56]~output_o\;

ww_Y(57) <= \Y[57]~output_o\;

ww_Y(58) <= \Y[58]~output_o\;

ww_Y(59) <= \Y[59]~output_o\;

ww_Y(60) <= \Y[60]~output_o\;

ww_Y(61) <= \Y[61]~output_o\;

ww_Y(62) <= \Y[62]~output_o\;

ww_Y(63) <= \Y[63]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


