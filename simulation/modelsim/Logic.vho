-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/22/2019 21:01:59"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Logic IS
    PORT (
	Logic_exe : IN std_logic;
	Logic_upd : IN std_logic;
	Logic_in : IN std_logic_vector(15 DOWNTO 0);
	a0 : OUT std_logic;
	a1 : OUT std_logic;
	a2 : OUT std_logic;
	a3 : OUT std_logic;
	a4 : OUT std_logic;
	a5 : OUT std_logic;
	a6 : OUT std_logic;
	b0 : OUT std_logic;
	b1 : OUT std_logic;
	b2 : OUT std_logic;
	b3 : OUT std_logic;
	b4 : OUT std_logic;
	b5 : OUT std_logic;
	b6 : OUT std_logic
	);
END Logic;

-- Design Ports Information
-- Logic_exe	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_upd	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[7]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[9]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[10]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[11]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[12]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[13]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[14]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Logic_in[15]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a5	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a6	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b5	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b6	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Logic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Logic_exe : std_logic;
SIGNAL ww_Logic_upd : std_logic;
SIGNAL ww_Logic_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_a0 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_a4 : std_logic;
SIGNAL ww_a5 : std_logic;
SIGNAL ww_a6 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_b4 : std_logic;
SIGNAL ww_b5 : std_logic;
SIGNAL ww_b6 : std_logic;
SIGNAL \Logic_exe~input_o\ : std_logic;
SIGNAL \Logic_upd~input_o\ : std_logic;
SIGNAL \Logic_in[0]~input_o\ : std_logic;
SIGNAL \Logic_in[1]~input_o\ : std_logic;
SIGNAL \Logic_in[2]~input_o\ : std_logic;
SIGNAL \Logic_in[3]~input_o\ : std_logic;
SIGNAL \Logic_in[4]~input_o\ : std_logic;
SIGNAL \Logic_in[5]~input_o\ : std_logic;
SIGNAL \Logic_in[6]~input_o\ : std_logic;
SIGNAL \Logic_in[7]~input_o\ : std_logic;
SIGNAL \Logic_in[8]~input_o\ : std_logic;
SIGNAL \Logic_in[9]~input_o\ : std_logic;
SIGNAL \Logic_in[10]~input_o\ : std_logic;
SIGNAL \Logic_in[11]~input_o\ : std_logic;
SIGNAL \Logic_in[12]~input_o\ : std_logic;
SIGNAL \Logic_in[13]~input_o\ : std_logic;
SIGNAL \Logic_in[14]~input_o\ : std_logic;
SIGNAL \Logic_in[15]~input_o\ : std_logic;
SIGNAL \a0~output_o\ : std_logic;
SIGNAL \a1~output_o\ : std_logic;
SIGNAL \a2~output_o\ : std_logic;
SIGNAL \a3~output_o\ : std_logic;
SIGNAL \a4~output_o\ : std_logic;
SIGNAL \a5~output_o\ : std_logic;
SIGNAL \a6~output_o\ : std_logic;
SIGNAL \b0~output_o\ : std_logic;
SIGNAL \b1~output_o\ : std_logic;
SIGNAL \b2~output_o\ : std_logic;
SIGNAL \b3~output_o\ : std_logic;
SIGNAL \b4~output_o\ : std_logic;
SIGNAL \b5~output_o\ : std_logic;
SIGNAL \b6~output_o\ : std_logic;

BEGIN

ww_Logic_exe <= Logic_exe;
ww_Logic_upd <= Logic_upd;
ww_Logic_in <= Logic_in;
a0 <= ww_a0;
a1 <= ww_a1;
a2 <= ww_a2;
a3 <= ww_a3;
a4 <= ww_a4;
a5 <= ww_a5;
a6 <= ww_a6;
b0 <= ww_b0;
b1 <= ww_b1;
b2 <= ww_b2;
b3 <= ww_b3;
b4 <= ww_b4;
b5 <= ww_b5;
b6 <= ww_b6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X29_Y0_N9
\a0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a0~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\a1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a1~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\a2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a2~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\a3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a3~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\a4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a4~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\a5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a5~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\a6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \a6~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\b0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b0~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\b1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b1~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\b2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b2~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\b3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b3~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\b4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b4~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\b5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b5~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\b6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \b6~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\Logic_exe~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_exe,
	o => \Logic_exe~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\Logic_upd~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_upd,
	o => \Logic_upd~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\Logic_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(0),
	o => \Logic_in[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\Logic_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(1),
	o => \Logic_in[1]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\Logic_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(2),
	o => \Logic_in[2]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\Logic_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(3),
	o => \Logic_in[3]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\Logic_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(4),
	o => \Logic_in[4]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\Logic_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(5),
	o => \Logic_in[5]~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\Logic_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(6),
	o => \Logic_in[6]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\Logic_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(7),
	o => \Logic_in[7]~input_o\);

-- Location: IOIBUF_X22_Y31_N8
\Logic_in[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(8),
	o => \Logic_in[8]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\Logic_in[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(9),
	o => \Logic_in[9]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\Logic_in[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(10),
	o => \Logic_in[10]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\Logic_in[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(11),
	o => \Logic_in[11]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\Logic_in[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(12),
	o => \Logic_in[12]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\Logic_in[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(13),
	o => \Logic_in[13]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\Logic_in[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(14),
	o => \Logic_in[14]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\Logic_in[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Logic_in(15),
	o => \Logic_in[15]~input_o\);

ww_a0 <= \a0~output_o\;

ww_a1 <= \a1~output_o\;

ww_a2 <= \a2~output_o\;

ww_a3 <= \a3~output_o\;

ww_a4 <= \a4~output_o\;

ww_a5 <= \a5~output_o\;

ww_a6 <= \a6~output_o\;

ww_b0 <= \b0~output_o\;

ww_b1 <= \b1~output_o\;

ww_b2 <= \b2~output_o\;

ww_b3 <= \b3~output_o\;

ww_b4 <= \b4~output_o\;

ww_b5 <= \b5~output_o\;

ww_b6 <= \b6~output_o\;
END structure;


