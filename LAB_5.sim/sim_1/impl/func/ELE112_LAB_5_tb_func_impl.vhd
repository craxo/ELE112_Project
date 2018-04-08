-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Wed Jan 24 09:36:34 2018
-- Host        : UIAA208985B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/geirj/OneDrive - Universitetet i
--               Agder/Documents/ELE112/LAB_5/LAB_5/LAB_5.sim/sim_1/impl/func/ELE112_LAB_5_tb_func_impl.vhd}
-- Design      : ELE112_LAB_5
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ELE112_shiftlne is
  port (
    STARTED_OBUF : out STD_LOGIC;
    debug_out_OBUF : out STD_LOGIC_VECTOR ( 23 downto 0 );
    LC : out STD_LOGIC;
    SCLK_OBUF_BUFG : in STD_LOGIC;
    MISO_int : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    MODE_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lopt : out STD_LOGIC;
    lopt_1 : out STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : out STD_LOGIC;
    lopt_5 : out STD_LOGIC;
    lopt_6 : out STD_LOGIC;
    lopt_7 : out STD_LOGIC;
    lopt_8 : out STD_LOGIC;
    lopt_9 : out STD_LOGIC;
    lopt_10 : out STD_LOGIC;
    lopt_11 : out STD_LOGIC;
    lopt_12 : out STD_LOGIC;
    lopt_13 : out STD_LOGIC;
    lopt_14 : out STD_LOGIC;
    lopt_15 : out STD_LOGIC;
    lopt_16 : out STD_LOGIC;
    lopt_17 : out STD_LOGIC;
    lopt_18 : out STD_LOGIC;
    lopt_19 : out STD_LOGIC;
    lopt_20 : out STD_LOGIC
  );
end ELE112_shiftlne;

architecture STRUCTURE of ELE112_shiftlne is
  signal \^lc\ : STD_LOGIC;
  signal \Q_reg[0]_C_n_0\ : STD_LOGIC;
  signal \Q_reg[0]_P_n_0\ : STD_LOGIC;
  signal \Q_reg[10]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[11]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[12]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[13]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[14]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[15]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[16]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[17]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[18]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[19]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[1]_C_n_0\ : STD_LOGIC;
  signal \Q_reg[1]_P_n_0\ : STD_LOGIC;
  signal \Q_reg[20]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[21]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[22]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[23]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[2]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[3]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[4]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[5]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[6]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[7]_lopt_replica_1\ : STD_LOGIC;
  signal \Q_reg[8]_C_n_0\ : STD_LOGIC;
  signal \Q_reg[8]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[8]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[8]_LDC_n_0\ : STD_LOGIC;
  signal \Q_reg[8]_P_n_0\ : STD_LOGIC;
  signal \Q_reg[9]_C_n_0\ : STD_LOGIC;
  signal \Q_reg[9]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg[9]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \Q_reg[9]_LDC_n_0\ : STD_LOGIC;
  signal \Q_reg[9]_P_n_0\ : STD_LOGIC;
  signal \^started_obuf\ : STD_LOGIC;
  signal \^debug_out_obuf\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Q_reg[8]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \Q_reg[9]_LDC\ : label is "LDC";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \debug_out_OBUF[0]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \debug_out_OBUF[1]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \debug_out_OBUF[8]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \debug_out_OBUF[9]_inst_i_1\ : label is "soft_lutpair3";
begin
  LC <= \^lc\;
  STARTED_OBUF <= \^started_obuf\;
  debug_out_OBUF(23 downto 0) <= \^debug_out_obuf\(23 downto 0);
  lopt <= \Q_reg[23]_lopt_replica_1\;
  lopt_10 <= \Q_reg[18]_lopt_replica_1\;
  lopt_11 <= \Q_reg[19]_lopt_replica_1\;
  lopt_12 <= \Q_reg[20]_lopt_replica_1\;
  lopt_13 <= \Q_reg[21]_lopt_replica_1\;
  lopt_14 <= \Q_reg[22]_lopt_replica_1\;
  lopt_15 <= \Q_reg[2]_lopt_replica_1\;
  lopt_16 <= \Q_reg[3]_lopt_replica_1\;
  lopt_17 <= \Q_reg[4]_lopt_replica_1\;
  lopt_18 <= \Q_reg[5]_lopt_replica_1\;
  lopt_19 <= \Q_reg[6]_lopt_replica_1\;
  lopt_2 <= \Q_reg[10]_lopt_replica_1\;
  lopt_20 <= \Q_reg[7]_lopt_replica_1\;
  lopt_3 <= \Q_reg[11]_lopt_replica_1\;
  lopt_4 <= \Q_reg[12]_lopt_replica_1\;
  lopt_5 <= \Q_reg[13]_lopt_replica_1\;
  lopt_6 <= \Q_reg[14]_lopt_replica_1\;
  lopt_7 <= \Q_reg[15]_lopt_replica_1\;
  lopt_8 <= \Q_reg[16]_lopt_replica_1\;
  lopt_9 <= \Q_reg[17]_lopt_replica_1\;
  lopt_1 <= 'Z';
\Q[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => \out\(1),
      O => \^lc\
    );
\Q_reg[0]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \Q_reg[8]_LDC_i_2_n_0\,
      D => MISO_int,
      Q => \Q_reg[0]_C_n_0\
    );
\Q_reg[0]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => MISO_int,
      PRE => \Q_reg[8]_LDC_i_1_n_0\,
      Q => \Q_reg[0]_P_n_0\
    );
\Q_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(9),
      Q => \^debug_out_obuf\(10)
    );
\Q_reg[10]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(9),
      Q => \Q_reg[10]_lopt_replica_1\
    );
\Q_reg[11]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => \^debug_out_obuf\(10),
      PRE => \^lc\,
      Q => \^debug_out_obuf\(11)
    );
\Q_reg[11]_lopt_replica\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => \^debug_out_obuf\(10),
      PRE => \^lc\,
      Q => \Q_reg[11]_lopt_replica_1\
    );
\Q_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(11),
      Q => \^debug_out_obuf\(12)
    );
\Q_reg[12]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(11),
      Q => \Q_reg[12]_lopt_replica_1\
    );
\Q_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(12),
      Q => \^debug_out_obuf\(13)
    );
\Q_reg[13]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(12),
      Q => \Q_reg[13]_lopt_replica_1\
    );
\Q_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(13),
      Q => \^debug_out_obuf\(14)
    );
\Q_reg[14]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(13),
      Q => \Q_reg[14]_lopt_replica_1\
    );
\Q_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(14),
      Q => \^debug_out_obuf\(15)
    );
\Q_reg[15]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(14),
      Q => \Q_reg[15]_lopt_replica_1\
    );
\Q_reg[16]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => \^debug_out_obuf\(15),
      PRE => \^lc\,
      Q => \^debug_out_obuf\(16)
    );
\Q_reg[16]_lopt_replica\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => \^debug_out_obuf\(15),
      PRE => \^lc\,
      Q => \Q_reg[16]_lopt_replica_1\
    );
\Q_reg[17]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => \^debug_out_obuf\(16),
      PRE => \^lc\,
      Q => \^debug_out_obuf\(17)
    );
\Q_reg[17]_lopt_replica\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => \^debug_out_obuf\(16),
      PRE => \^lc\,
      Q => \Q_reg[17]_lopt_replica_1\
    );
\Q_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(17),
      Q => \^debug_out_obuf\(18)
    );
\Q_reg[18]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(17),
      Q => \Q_reg[18]_lopt_replica_1\
    );
\Q_reg[19]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => \^debug_out_obuf\(18),
      PRE => \^lc\,
      Q => \^debug_out_obuf\(19)
    );
\Q_reg[19]_lopt_replica\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => \^debug_out_obuf\(18),
      PRE => \^lc\,
      Q => \Q_reg[19]_lopt_replica_1\
    );
\Q_reg[1]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \Q_reg[9]_LDC_i_2_n_0\,
      D => \^debug_out_obuf\(0),
      Q => \Q_reg[1]_C_n_0\
    );
\Q_reg[1]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => \^debug_out_obuf\(0),
      PRE => \Q_reg[9]_LDC_i_1_n_0\,
      Q => \Q_reg[1]_P_n_0\
    );
\Q_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(19),
      Q => \^debug_out_obuf\(20)
    );
\Q_reg[20]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(19),
      Q => \Q_reg[20]_lopt_replica_1\
    );
\Q_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(20),
      Q => \^debug_out_obuf\(21)
    );
\Q_reg[21]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(20),
      Q => \Q_reg[21]_lopt_replica_1\
    );
\Q_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(21),
      Q => \^debug_out_obuf\(22)
    );
\Q_reg[22]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(21),
      Q => \Q_reg[22]_lopt_replica_1\
    );
\Q_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(22),
      Q => \^debug_out_obuf\(23)
    );
\Q_reg[23]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(22),
      Q => \Q_reg[23]_lopt_replica_1\
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(1),
      Q => \^debug_out_obuf\(2)
    );
\Q_reg[2]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(1),
      Q => \Q_reg[2]_lopt_replica_1\
    );
\Q_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => \^debug_out_obuf\(2),
      PRE => \^lc\,
      Q => \^debug_out_obuf\(3)
    );
\Q_reg[3]_lopt_replica\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => \^debug_out_obuf\(2),
      PRE => \^lc\,
      Q => \Q_reg[3]_lopt_replica_1\
    );
\Q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(3),
      Q => \^debug_out_obuf\(4)
    );
\Q_reg[4]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(3),
      Q => \Q_reg[4]_lopt_replica_1\
    );
\Q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(4),
      Q => \^debug_out_obuf\(5)
    );
\Q_reg[5]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(4),
      Q => \Q_reg[5]_lopt_replica_1\
    );
\Q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(5),
      Q => \^debug_out_obuf\(6)
    );
\Q_reg[6]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(5),
      Q => \Q_reg[6]_lopt_replica_1\
    );
\Q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(6),
      Q => \^debug_out_obuf\(7)
    );
\Q_reg[7]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \^lc\,
      D => \^debug_out_obuf\(6),
      Q => \Q_reg[7]_lopt_replica_1\
    );
\Q_reg[8]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \Q_reg[8]_LDC_i_2_n_0\,
      D => \^debug_out_obuf\(7),
      Q => \Q_reg[8]_C_n_0\
    );
\Q_reg[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \Q_reg[8]_LDC_i_2_n_0\,
      D => '1',
      G => \Q_reg[8]_LDC_i_1_n_0\,
      GE => '1',
      Q => \Q_reg[8]_LDC_n_0\
    );
\Q_reg[8]_LDC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => MODE_IBUF(0),
      I1 => MODE_IBUF(3),
      I2 => MODE_IBUF(2),
      I3 => MODE_IBUF(1),
      I4 => \^lc\,
      O => \Q_reg[8]_LDC_i_1_n_0\
    );
\Q_reg[8]_LDC_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => \^lc\,
      I1 => MODE_IBUF(0),
      I2 => MODE_IBUF(3),
      I3 => MODE_IBUF(2),
      I4 => MODE_IBUF(1),
      O => \Q_reg[8]_LDC_i_2_n_0\
    );
\Q_reg[8]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => \^debug_out_obuf\(7),
      PRE => \Q_reg[8]_LDC_i_1_n_0\,
      Q => \Q_reg[8]_P_n_0\
    );
\Q_reg[9]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      CLR => \Q_reg[9]_LDC_i_2_n_0\,
      D => \^debug_out_obuf\(8),
      Q => \Q_reg[9]_C_n_0\
    );
\Q_reg[9]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \Q_reg[9]_LDC_i_2_n_0\,
      D => '1',
      G => \Q_reg[9]_LDC_i_1_n_0\,
      GE => '1',
      Q => \Q_reg[9]_LDC_n_0\
    );
\Q_reg[9]_LDC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF90000"
    )
        port map (
      I0 => MODE_IBUF(0),
      I1 => MODE_IBUF(1),
      I2 => MODE_IBUF(2),
      I3 => MODE_IBUF(3),
      I4 => \^lc\,
      O => \Q_reg[9]_LDC_i_1_n_0\
    );
\Q_reg[9]_LDC_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000028"
    )
        port map (
      I0 => \^lc\,
      I1 => MODE_IBUF(0),
      I2 => MODE_IBUF(1),
      I3 => MODE_IBUF(2),
      I4 => MODE_IBUF(3),
      O => \Q_reg[9]_LDC_i_2_n_0\
    );
\Q_reg[9]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => \^started_obuf\,
      D => \^debug_out_obuf\(8),
      PRE => \Q_reg[9]_LDC_i_1_n_0\,
      Q => \Q_reg[9]_P_n_0\
    );
STARTED_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => \out\(1),
      O => \^started_obuf\
    );
\debug_out_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Q_reg[0]_P_n_0\,
      I1 => \Q_reg[8]_LDC_n_0\,
      I2 => \Q_reg[0]_C_n_0\,
      O => \^debug_out_obuf\(0)
    );
\debug_out_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Q_reg[1]_P_n_0\,
      I1 => \Q_reg[9]_LDC_n_0\,
      I2 => \Q_reg[1]_C_n_0\,
      O => \^debug_out_obuf\(1)
    );
\debug_out_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Q_reg[8]_P_n_0\,
      I1 => \Q_reg[8]_LDC_n_0\,
      I2 => \Q_reg[8]_C_n_0\,
      O => \^debug_out_obuf\(8)
    );
\debug_out_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Q_reg[9]_P_n_0\,
      I1 => \Q_reg[9]_LDC_n_0\,
      I2 => \Q_reg[9]_C_n_0\,
      O => \^debug_out_obuf\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ele112_UpDownCounter is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    START_IBUF : in STD_LOGIC;
    SCLK_OBUF_BUFG : in STD_LOGIC;
    LC : in STD_LOGIC
  );
end ele112_UpDownCounter;

architecture STRUCTURE of ele112_UpDownCounter is
  signal \FSM_sequential_y[0]_i_2_n_0\ : STD_LOGIC;
  signal Q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Q[0]_i_1_n_0\ : STD_LOGIC;
  signal \Q[1]_i_1_n_0\ : STD_LOGIC;
  signal \Q[2]_i_1_n_0\ : STD_LOGIC;
  signal \Q[3]_i_1_n_0\ : STD_LOGIC;
  signal \Q[4]_i_1_n_0\ : STD_LOGIC;
  signal \Q[5]_i_1_n_0\ : STD_LOGIC;
  signal \Q[6]_i_1_n_0\ : STD_LOGIC;
  signal \Q[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \Q[7]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q[7]_i_3\ : label is "soft_lutpair1";
begin
\FSM_sequential_y[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000F0F0F4F4F"
    )
        port map (
      I0 => \Q[7]_i_3_n_0\,
      I1 => \FSM_sequential_y[0]_i_2_n_0\,
      I2 => \out\(1),
      I3 => START_IBUF,
      I4 => \out\(2),
      I5 => \out\(0),
      O => D(0)
    );
\FSM_sequential_y[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(5),
      I3 => Q(7),
      I4 => Q(6),
      O => \FSM_sequential_y[0]_i_2_n_0\
    );
\Q[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => \Q[0]_i_1_n_0\
    );
\Q[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \Q[1]_i_1_n_0\
    );
\Q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      O => \Q[2]_i_1_n_0\
    );
\Q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      O => \Q[3]_i_1_n_0\
    );
\Q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(4),
      O => \Q[4]_i_1_n_0\
    );
\Q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(5),
      O => \Q[5]_i_1_n_0\
    );
\Q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => Q(5),
      I1 => Q(3),
      I2 => \Q[7]_i_3_n_0\,
      I3 => Q(4),
      I4 => Q(6),
      O => \Q[6]_i_1_n_0\
    );
\Q[7]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => Q(6),
      I1 => Q(4),
      I2 => \Q[7]_i_3_n_0\,
      I3 => Q(3),
      I4 => Q(5),
      I5 => Q(7),
      O => \Q[7]_i_1__2_n_0\
    );
\Q[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      O => \Q[7]_i_3_n_0\
    );
\Q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => '1',
      CLR => LC,
      D => \Q[0]_i_1_n_0\,
      Q => Q(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => '1',
      CLR => LC,
      D => \Q[1]_i_1_n_0\,
      Q => Q(1)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => '1',
      CLR => LC,
      D => \Q[2]_i_1_n_0\,
      Q => Q(2)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => '1',
      CLR => LC,
      D => \Q[3]_i_1_n_0\,
      Q => Q(3)
    );
\Q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => '1',
      CLR => LC,
      D => \Q[4]_i_1_n_0\,
      Q => Q(4)
    );
\Q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => '1',
      CLR => LC,
      D => \Q[5]_i_1_n_0\,
      Q => Q(5)
    );
\Q_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => '1',
      CLR => LC,
      D => \Q[6]_i_1_n_0\,
      Q => Q(6)
    );
\Q_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => '1',
      CLR => LC,
      D => \Q[7]_i_1__2_n_0\,
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ele112_regn is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    MODE_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
end ele112_regn;

architecture STRUCTURE of ele112_regn is
  signal LD_X : STD_LOGIC;
begin
\Q[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => MODE_IBUF(0),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      O => LD_X
    );
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_X,
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_X,
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_X,
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_X,
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\Q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_X,
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\Q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_X,
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\Q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_X,
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\Q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_X,
      D => D(7),
      Q => Q(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ele112_regn_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    MODE_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ele112_regn_0 : entity is "ele112_regn";
end ele112_regn_0;

architecture STRUCTURE of ele112_regn_0 is
  signal LD_Y : STD_LOGIC;
begin
\Q[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => MODE_IBUF(0),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      O => LD_Y
    );
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Y,
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Y,
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Y,
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Y,
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\Q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Y,
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\Q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Y,
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\Q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Y,
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\Q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Y,
      D => D(7),
      Q => Q(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ele112_regn_1 is
  port (
    LED_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    MODE_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    debug_out_OBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    LED_sel_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \Q_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ele112_regn_1 : entity is "ele112_regn";
end ele112_regn_1;

architecture STRUCTURE of ele112_regn_1 is
  signal LD_Z : STD_LOGIC;
  signal Z_register : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
\LED_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Z_register(0),
      I1 => LED_sel_IBUF(1),
      I2 => Q(0),
      I3 => LED_sel_IBUF(0),
      I4 => \Q_reg[7]_0\(0),
      O => LED_OBUF(0)
    );
\LED_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Z_register(1),
      I1 => LED_sel_IBUF(1),
      I2 => Q(1),
      I3 => LED_sel_IBUF(0),
      I4 => \Q_reg[7]_0\(1),
      O => LED_OBUF(1)
    );
\LED_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Z_register(2),
      I1 => LED_sel_IBUF(1),
      I2 => Q(2),
      I3 => LED_sel_IBUF(0),
      I4 => \Q_reg[7]_0\(2),
      O => LED_OBUF(2)
    );
\LED_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Z_register(3),
      I1 => LED_sel_IBUF(1),
      I2 => Q(3),
      I3 => LED_sel_IBUF(0),
      I4 => \Q_reg[7]_0\(3),
      O => LED_OBUF(3)
    );
\LED_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Z_register(4),
      I1 => LED_sel_IBUF(1),
      I2 => Q(4),
      I3 => LED_sel_IBUF(0),
      I4 => \Q_reg[7]_0\(4),
      O => LED_OBUF(4)
    );
\LED_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Z_register(5),
      I1 => LED_sel_IBUF(1),
      I2 => Q(5),
      I3 => LED_sel_IBUF(0),
      I4 => \Q_reg[7]_0\(5),
      O => LED_OBUF(5)
    );
\LED_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Z_register(6),
      I1 => LED_sel_IBUF(1),
      I2 => Q(6),
      I3 => LED_sel_IBUF(0),
      I4 => \Q_reg[7]_0\(6),
      O => LED_OBUF(6)
    );
\LED_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Z_register(7),
      I1 => LED_sel_IBUF(1),
      I2 => Q(7),
      I3 => LED_sel_IBUF(0),
      I4 => \Q_reg[7]_0\(7),
      O => LED_OBUF(7)
    );
\Q[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => MODE_IBUF(0),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      O => LD_Z
    );
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Z,
      D => debug_out_OBUF(0),
      Q => Z_register(0),
      R => '0'
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Z,
      D => debug_out_OBUF(1),
      Q => Z_register(1),
      R => '0'
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Z,
      D => debug_out_OBUF(2),
      Q => Z_register(2),
      R => '0'
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Z,
      D => debug_out_OBUF(3),
      Q => Z_register(3),
      R => '0'
    );
\Q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Z,
      D => debug_out_OBUF(4),
      Q => Z_register(4),
      R => '0'
    );
\Q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Z,
      D => debug_out_OBUF(5),
      Q => Z_register(5),
      R => '0'
    );
\Q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Z,
      D => debug_out_OBUF(6),
      Q => Z_register(6),
      R => '0'
    );
\Q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => LD_Z,
      D => debug_out_OBUF(7),
      Q => Z_register(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ELE112_LAB_5 is
  port (
    LED_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    MODE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    START : in STD_LOGIC;
    STARTED : inout STD_LOGIC;
    DONE : inout STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    MOSI : out STD_LOGIC;
    MISO : in STD_LOGIC;
    SS : out STD_LOGIC;
    SCLK : inout STD_LOGIC;
    Reset : in STD_LOGIC;
    CLK : in STD_LOGIC;
    debug_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ELE112_LAB_5 : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of ELE112_LAB_5 : entity is "9c307ae4";
  attribute N : integer;
  attribute N of ELE112_LAB_5 : entity is 8;
  attribute TS : integer;
  attribute TS of ELE112_LAB_5 : entity is 24;
end ELE112_LAB_5;

architecture STRUCTURE of ELE112_LAB_5 is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal Counter_n_n_0 : STD_LOGIC;
  signal DONE_OBUF : STD_LOGIC;
  signal \FSM_sequential_y[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_y[2]_i_1_n_0\ : STD_LOGIC;
  signal LC : STD_LOGIC;
  signal LED_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal LED_sel_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MISO_IBUF : STD_LOGIC;
  signal MISO_int : STD_LOGIC;
  signal MODE_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Reset_IBUF : STD_LOGIC;
  signal SCLK_OBUF : STD_LOGIC;
  signal SCLK_OBUF_BUFG : STD_LOGIC;
  signal SCLK_reg_LDC_i_1_n_0 : STD_LOGIC;
  signal SCLK_reg_LDC_i_2_n_0 : STD_LOGIC;
  signal SCLK_reg_LDC_n_0 : STD_LOGIC;
  signal SCLK_reg_P_n_0 : STD_LOGIC;
  signal SS_OBUF : STD_LOGIC;
  signal STARTED_OBUF : STD_LOGIC;
  signal START_IBUF : STD_LOGIC;
  signal X_register : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Y_register : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal debug_out_OBUF : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal lopt : STD_LOGIC;
  signal lopt_10 : STD_LOGIC;
  signal lopt_11 : STD_LOGIC;
  signal lopt_12 : STD_LOGIC;
  signal lopt_13 : STD_LOGIC;
  signal lopt_14 : STD_LOGIC;
  signal lopt_15 : STD_LOGIC;
  signal lopt_16 : STD_LOGIC;
  signal lopt_17 : STD_LOGIC;
  signal lopt_18 : STD_LOGIC;
  signal lopt_19 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal lopt_20 : STD_LOGIC;
  signal lopt_3 : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal lopt_5 : STD_LOGIC;
  signal lopt_6 : STD_LOGIC;
  signal lopt_7 : STD_LOGIC;
  signal lopt_8 : STD_LOGIC;
  signal lopt_9 : STD_LOGIC;
  signal y : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of y : signal is "yes";
  signal NLW_SPI_SHIFT_REG_lopt_1_UNCONNECTED : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_y_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_y_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_y_reg[2]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of SCLK_reg_LDC : label is "LDC";
begin
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
Counter_n: entity work.ele112_UpDownCounter
     port map (
      D(0) => Counter_n_n_0,
      LC => LC,
      SCLK_OBUF_BUFG => SCLK_OBUF_BUFG,
      START_IBUF => START_IBUF,
      \out\(2 downto 0) => y(2 downto 0)
    );
DONE_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => DONE_OBUF,
      O => DONE
    );
DONE_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => y(1),
      I1 => y(0),
      I2 => y(2),
      O => DONE_OBUF
    );
\FSM_sequential_y[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"044A"
    )
        port map (
      I0 => y(1),
      I1 => START_IBUF,
      I2 => y(2),
      I3 => y(0),
      O => \FSM_sequential_y[1]_i_1_n_0\
    );
\FSM_sequential_y[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => y(2),
      I1 => y(0),
      I2 => y(1),
      O => \FSM_sequential_y[2]_i_1_n_0\
    );
\FSM_sequential_y_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => Reset_IBUF,
      D => Counter_n_n_0,
      Q => y(0)
    );
\FSM_sequential_y_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => Reset_IBUF,
      D => \FSM_sequential_y[1]_i_1_n_0\,
      Q => y(1)
    );
\FSM_sequential_y_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      CLR => Reset_IBUF,
      D => \FSM_sequential_y[2]_i_1_n_0\,
      Q => y(2)
    );
\LED_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(0),
      O => LED(0)
    );
\LED_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(1),
      O => LED(1)
    );
\LED_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(2),
      O => LED(2)
    );
\LED_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(3),
      O => LED(3)
    );
\LED_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(4),
      O => LED(4)
    );
\LED_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(5),
      O => LED(5)
    );
\LED_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(6),
      O => LED(6)
    );
\LED_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(7),
      O => LED(7)
    );
\LED_sel_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => LED_sel(0),
      O => LED_sel_IBUF(0)
    );
\LED_sel_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => LED_sel(1),
      O => LED_sel_IBUF(1)
    );
MISO_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => MISO,
      O => MISO_IBUF
    );
MISO_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCLK_OBUF_BUFG,
      CE => '1',
      D => MISO_IBUF,
      Q => MISO_int,
      R => '0'
    );
\MODE_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => MODE(0),
      O => MODE_IBUF(0)
    );
\MODE_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => MODE(1),
      O => MODE_IBUF(1)
    );
\MODE_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => MODE(2),
      O => MODE_IBUF(2)
    );
\MODE_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => MODE(3),
      O => MODE_IBUF(3)
    );
MOSI_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => lopt,
      O => MOSI
    );
Reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Reset,
      O => Reset_IBUF
    );
SCLK_OBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => SCLK_OBUF,
      O => SCLK_OBUF_BUFG
    );
SCLK_OBUF_BUFG_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SCLK_reg_LDC_n_0,
      I1 => SCLK_reg_P_n_0,
      O => SCLK_OBUF
    );
SCLK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => SCLK_OBUF_BUFG,
      O => SCLK
    );
SCLK_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => SCLK_reg_LDC_i_2_n_0,
      D => '1',
      G => SCLK_reg_LDC_i_1_n_0,
      GE => '1',
      Q => SCLK_reg_LDC_n_0
    );
SCLK_reg_LDC_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => STARTED_OBUF,
      O => SCLK_reg_LDC_i_1_n_0
    );
SCLK_reg_LDC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => STARTED_OBUF,
      O => SCLK_reg_LDC_i_2_n_0
    );
SCLK_reg_P: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => '0',
      PRE => SCLK_reg_LDC_i_1_n_0,
      Q => SCLK_reg_P_n_0
    );
SPI_SHIFT_REG: entity work.ELE112_shiftlne
     port map (
      LC => LC,
      MISO_int => MISO_int,
      MODE_IBUF(3 downto 0) => MODE_IBUF(3 downto 0),
      SCLK_OBUF_BUFG => SCLK_OBUF_BUFG,
      STARTED_OBUF => STARTED_OBUF,
      debug_out_OBUF(23 downto 0) => debug_out_OBUF(23 downto 0),
      lopt => lopt,
      lopt_1 => NLW_SPI_SHIFT_REG_lopt_1_UNCONNECTED,
      lopt_10 => lopt_10,
      lopt_11 => lopt_11,
      lopt_12 => lopt_12,
      lopt_13 => lopt_13,
      lopt_14 => lopt_14,
      lopt_15 => lopt_15,
      lopt_16 => lopt_16,
      lopt_17 => lopt_17,
      lopt_18 => lopt_18,
      lopt_19 => lopt_19,
      lopt_2 => lopt_2,
      lopt_20 => lopt_20,
      lopt_3 => lopt_3,
      lopt_4 => lopt_4,
      lopt_5 => lopt_5,
      lopt_6 => lopt_6,
      lopt_7 => lopt_7,
      lopt_8 => lopt_8,
      lopt_9 => lopt_9,
      \out\(2 downto 0) => y(2 downto 0)
    );
SS_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => SS_OBUF,
      O => SS
    );
SS_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => y(1),
      I1 => y(0),
      I2 => y(2),
      O => SS_OBUF
    );
STARTED_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => STARTED_OBUF,
      O => STARTED
    );
START_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => START,
      O => START_IBUF
    );
X_DATA_REG: entity work.ele112_regn
     port map (
      CLK => CLK_IBUF_BUFG,
      D(7 downto 0) => debug_out_OBUF(7 downto 0),
      MODE_IBUF(0) => MODE_IBUF(0),
      Q(7 downto 0) => X_register(7 downto 0),
      \out\(2 downto 0) => y(2 downto 0)
    );
Y_DATA_REG: entity work.ele112_regn_0
     port map (
      CLK => CLK_IBUF_BUFG,
      D(7 downto 0) => debug_out_OBUF(7 downto 0),
      MODE_IBUF(0) => MODE_IBUF(1),
      Q(7 downto 0) => Y_register(7 downto 0),
      \out\(2 downto 0) => y(2 downto 0)
    );
Z_DATA_REG: entity work.ele112_regn_1
     port map (
      CLK => CLK_IBUF_BUFG,
      LED_OBUF(7 downto 0) => LED_OBUF(7 downto 0),
      LED_sel_IBUF(1 downto 0) => LED_sel_IBUF(1 downto 0),
      MODE_IBUF(0) => MODE_IBUF(2),
      Q(7 downto 0) => Y_register(7 downto 0),
      \Q_reg[7]_0\(7 downto 0) => X_register(7 downto 0),
      debug_out_OBUF(7 downto 0) => debug_out_OBUF(7 downto 0),
      \out\(2 downto 0) => y(2 downto 0)
    );
\debug_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => debug_out_OBUF(0),
      O => debug_out(0)
    );
\debug_out_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_2,
      O => debug_out(10)
    );
\debug_out_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_3,
      O => debug_out(11)
    );
\debug_out_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_4,
      O => debug_out(12)
    );
\debug_out_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_5,
      O => debug_out(13)
    );
\debug_out_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_6,
      O => debug_out(14)
    );
\debug_out_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_7,
      O => debug_out(15)
    );
\debug_out_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_8,
      O => debug_out(16)
    );
\debug_out_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_9,
      O => debug_out(17)
    );
\debug_out_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_10,
      O => debug_out(18)
    );
\debug_out_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_11,
      O => debug_out(19)
    );
\debug_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => debug_out_OBUF(1),
      O => debug_out(1)
    );
\debug_out_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_12,
      O => debug_out(20)
    );
\debug_out_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_13,
      O => debug_out(21)
    );
\debug_out_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_14,
      O => debug_out(22)
    );
\debug_out_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => debug_out_OBUF(23),
      O => debug_out(23)
    );
\debug_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_15,
      O => debug_out(2)
    );
\debug_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_16,
      O => debug_out(3)
    );
\debug_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_17,
      O => debug_out(4)
    );
\debug_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_18,
      O => debug_out(5)
    );
\debug_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_19,
      O => debug_out(6)
    );
\debug_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lopt_20,
      O => debug_out(7)
    );
\debug_out_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => debug_out_OBUF(8),
      O => debug_out(8)
    );
\debug_out_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => debug_out_OBUF(9),
      O => debug_out(9)
    );
end STRUCTURE;
