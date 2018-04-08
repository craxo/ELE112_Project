// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Jan 31 08:52:16 2018
// Host        : UIAA208985B running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/geirj/OneDrive - Universitetet i
//               Agder/Documents/ELE112/LAB_5/LAB_5/LAB_5.sim/sim_1/synth/timing/ELE112_LAB_5_tb_time_synth.v}
// Design      : ELE112_LAB_5
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* N = "8" *) (* TS = "24" *) 
(* NotValidForBitStream *)
module ELE112_LAB_5
   (LED_sel,
    MODE,
    START,
    STARTED,
    DONE,
    LED,
    MOSI,
    MISO,
    SS,
    SCLK,
    Reset,
    CLK,
    debug_out);
  input [1:0]LED_sel;
  input [3:0]MODE;
  input START;
  inout STARTED;
  inout DONE;
  output [7:0]LED;
  output MOSI;
  input MISO;
  output SS;
  inout SCLK;
  input Reset;
  input CLK;
  output [23:0]debug_out;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire Counter_n_n_0;
  wire Counter_n_n_1;
  wire Counter_n_n_2;
  wire DONE;
  wire DONE_OBUF;
  wire LC;
  wire [7:0]LED;
  wire [7:0]LED_OBUF;
  wire [1:0]LED_sel;
  wire [1:0]LED_sel_IBUF;
  wire MISO;
  wire MISO_IBUF;
  wire MISO_int;
  wire [3:0]MODE;
  wire [3:0]MODE_IBUF;
  wire MOSI;
  wire [7:0]Q;
  wire Reset;
  wire Reset_IBUF;
  wire SCLK;
  wire SCLK_OBUF;
  wire SCLK_OBUF_BUFG;
  wire SS;
  wire SS_OBUF;
  wire START;
  wire STARTED;
  wire STARTED_OBUF;
  wire START_IBUF;
  wire X_DATA_REG_n_0;
  wire X_DATA_REG_n_1;
  wire X_DATA_REG_n_2;
  wire X_DATA_REG_n_3;
  wire X_DATA_REG_n_4;
  wire X_DATA_REG_n_5;
  wire X_DATA_REG_n_6;
  wire X_DATA_REG_n_7;
  wire [23:0]debug_out;
  wire [23:0]debug_out_OBUF;
  (* RTL_KEEP = "yes" *) wire [2:0]y;

initial begin
 $sdf_annotate("ELE112_LAB_5_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  ele112_UpDownCounter Counter_n
       (.D({Counter_n_n_0,Counter_n_n_1,Counter_n_n_2}),
        .LC(LC),
        .SCLK_OBUF_BUFG(SCLK_OBUF_BUFG),
        .START_IBUF(START_IBUF),
        .out(y));
  OBUF DONE_OBUF_inst
       (.I(DONE_OBUF),
        .O(DONE));
  LUT3 #(
    .INIT(8'h08)) 
    DONE_OBUF_inst_i_1
       (.I0(y[2]),
        .I1(y[0]),
        .I2(y[1]),
        .O(DONE_OBUF));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_y_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(Counter_n_n_2),
        .Q(y[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_y_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(Counter_n_n_1),
        .Q(y[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_y_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(Counter_n_n_0),
        .Q(y[2]));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[5]),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(LED_OBUF[7]),
        .O(LED[7]));
  IBUF \LED_sel_IBUF[0]_inst 
       (.I(LED_sel[0]),
        .O(LED_sel_IBUF[0]));
  IBUF \LED_sel_IBUF[1]_inst 
       (.I(LED_sel[1]),
        .O(LED_sel_IBUF[1]));
  IBUF MISO_IBUF_inst
       (.I(MISO),
        .O(MISO_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    MISO_int_reg
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .D(MISO_IBUF),
        .Q(MISO_int),
        .R(1'b0));
  IBUF \MODE_IBUF[0]_inst 
       (.I(MODE[0]),
        .O(MODE_IBUF[0]));
  IBUF \MODE_IBUF[1]_inst 
       (.I(MODE[1]),
        .O(MODE_IBUF[1]));
  IBUF \MODE_IBUF[2]_inst 
       (.I(MODE[2]),
        .O(MODE_IBUF[2]));
  IBUF \MODE_IBUF[3]_inst 
       (.I(MODE[3]),
        .O(MODE_IBUF[3]));
  OBUF MOSI_OBUF_inst
       (.I(debug_out_OBUF[23]),
        .O(MOSI));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  BUFG SCLK_OBUF_BUFG_inst
       (.I(SCLK_OBUF),
        .O(SCLK_OBUF_BUFG));
  LUT4 #(
    .INIT(16'h4000)) 
    SCLK_OBUF_BUFG_inst_i_1
       (.I0(y[2]),
        .I1(CLK_IBUF),
        .I2(y[1]),
        .I3(y[0]),
        .O(SCLK_OBUF));
  OBUF SCLK_OBUF_inst
       (.I(SCLK_OBUF_BUFG),
        .O(SCLK));
  ELE112_shiftlne SPI_SHIFT_REG
       (.LC(LC),
        .MISO_int(MISO_int),
        .MODE_IBUF(MODE_IBUF),
        .SCLK_OBUF_BUFG(SCLK_OBUF_BUFG),
        .STARTED_OBUF(STARTED_OBUF),
        .debug_out_OBUF(debug_out_OBUF),
        .out(y));
  OBUF SS_OBUF_inst
       (.I(SS_OBUF),
        .O(SS));
  LUT1 #(
    .INIT(2'h1)) 
    SS_OBUF_inst_i_1
       (.I0(y[1]),
        .O(SS_OBUF));
  OBUF STARTED_OBUF_inst
       (.I(STARTED_OBUF),
        .O(STARTED));
  IBUF START_IBUF_inst
       (.I(START),
        .O(START_IBUF));
  ele112_regn X_DATA_REG
       (.CLK(CLK_IBUF_BUFG),
        .D(debug_out_OBUF[7:0]),
        .MODE_IBUF(MODE_IBUF[0]),
        .Q({X_DATA_REG_n_0,X_DATA_REG_n_1,X_DATA_REG_n_2,X_DATA_REG_n_3,X_DATA_REG_n_4,X_DATA_REG_n_5,X_DATA_REG_n_6,X_DATA_REG_n_7}),
        .out(y));
  ele112_regn_0 Y_DATA_REG
       (.CLK(CLK_IBUF_BUFG),
        .D(debug_out_OBUF[7:0]),
        .MODE_IBUF(MODE_IBUF[1]),
        .Q(Q),
        .out(y));
  ele112_regn_1 Z_DATA_REG
       (.CLK(CLK_IBUF_BUFG),
        .LED_OBUF(LED_OBUF),
        .LED_sel_IBUF(LED_sel_IBUF),
        .MODE_IBUF(MODE_IBUF[2]),
        .Q(Q),
        .\Q_reg[7]_0 ({X_DATA_REG_n_0,X_DATA_REG_n_1,X_DATA_REG_n_2,X_DATA_REG_n_3,X_DATA_REG_n_4,X_DATA_REG_n_5,X_DATA_REG_n_6,X_DATA_REG_n_7}),
        .debug_out_OBUF(debug_out_OBUF[7:0]),
        .out(y));
  OBUF \debug_out_OBUF[0]_inst 
       (.I(debug_out_OBUF[0]),
        .O(debug_out[0]));
  OBUF \debug_out_OBUF[10]_inst 
       (.I(debug_out_OBUF[10]),
        .O(debug_out[10]));
  OBUF \debug_out_OBUF[11]_inst 
       (.I(debug_out_OBUF[11]),
        .O(debug_out[11]));
  OBUF \debug_out_OBUF[12]_inst 
       (.I(debug_out_OBUF[12]),
        .O(debug_out[12]));
  OBUF \debug_out_OBUF[13]_inst 
       (.I(debug_out_OBUF[13]),
        .O(debug_out[13]));
  OBUF \debug_out_OBUF[14]_inst 
       (.I(debug_out_OBUF[14]),
        .O(debug_out[14]));
  OBUF \debug_out_OBUF[15]_inst 
       (.I(debug_out_OBUF[15]),
        .O(debug_out[15]));
  OBUF \debug_out_OBUF[16]_inst 
       (.I(debug_out_OBUF[16]),
        .O(debug_out[16]));
  OBUF \debug_out_OBUF[17]_inst 
       (.I(debug_out_OBUF[17]),
        .O(debug_out[17]));
  OBUF \debug_out_OBUF[18]_inst 
       (.I(debug_out_OBUF[18]),
        .O(debug_out[18]));
  OBUF \debug_out_OBUF[19]_inst 
       (.I(debug_out_OBUF[19]),
        .O(debug_out[19]));
  OBUF \debug_out_OBUF[1]_inst 
       (.I(debug_out_OBUF[1]),
        .O(debug_out[1]));
  OBUF \debug_out_OBUF[20]_inst 
       (.I(debug_out_OBUF[20]),
        .O(debug_out[20]));
  OBUF \debug_out_OBUF[21]_inst 
       (.I(debug_out_OBUF[21]),
        .O(debug_out[21]));
  OBUF \debug_out_OBUF[22]_inst 
       (.I(debug_out_OBUF[22]),
        .O(debug_out[22]));
  OBUF \debug_out_OBUF[23]_inst 
       (.I(debug_out_OBUF[23]),
        .O(debug_out[23]));
  OBUF \debug_out_OBUF[2]_inst 
       (.I(debug_out_OBUF[2]),
        .O(debug_out[2]));
  OBUF \debug_out_OBUF[3]_inst 
       (.I(debug_out_OBUF[3]),
        .O(debug_out[3]));
  OBUF \debug_out_OBUF[4]_inst 
       (.I(debug_out_OBUF[4]),
        .O(debug_out[4]));
  OBUF \debug_out_OBUF[5]_inst 
       (.I(debug_out_OBUF[5]),
        .O(debug_out[5]));
  OBUF \debug_out_OBUF[6]_inst 
       (.I(debug_out_OBUF[6]),
        .O(debug_out[6]));
  OBUF \debug_out_OBUF[7]_inst 
       (.I(debug_out_OBUF[7]),
        .O(debug_out[7]));
  OBUF \debug_out_OBUF[8]_inst 
       (.I(debug_out_OBUF[8]),
        .O(debug_out[8]));
  OBUF \debug_out_OBUF[9]_inst 
       (.I(debug_out_OBUF[9]),
        .O(debug_out[9]));
endmodule

module ELE112_shiftlne
   (STARTED_OBUF,
    debug_out_OBUF,
    LC,
    SCLK_OBUF_BUFG,
    MISO_int,
    out,
    MODE_IBUF);
  output STARTED_OBUF;
  output [23:0]debug_out_OBUF;
  output LC;
  input SCLK_OBUF_BUFG;
  input MISO_int;
  input [2:0]out;
  input [3:0]MODE_IBUF;

  wire LC;
  wire MISO_int;
  wire [3:0]MODE_IBUF;
  wire \Q_reg[0]_C_n_0 ;
  wire \Q_reg[0]_P_n_0 ;
  wire \Q_reg[1]_C_n_0 ;
  wire \Q_reg[1]_P_n_0 ;
  wire \Q_reg[8]_C_n_0 ;
  wire \Q_reg[8]_LDC_i_1_n_0 ;
  wire \Q_reg[8]_LDC_i_2_n_0 ;
  wire \Q_reg[8]_LDC_n_0 ;
  wire \Q_reg[8]_P_n_0 ;
  wire \Q_reg[9]_C_n_0 ;
  wire \Q_reg[9]_LDC_i_1_n_0 ;
  wire \Q_reg[9]_LDC_i_2_n_0 ;
  wire \Q_reg[9]_LDC_n_0 ;
  wire \Q_reg[9]_P_n_0 ;
  wire SCLK_OBUF_BUFG;
  wire STARTED_OBUF;
  wire [23:0]debug_out_OBUF;
  wire [2:0]out;

  LUT3 #(
    .INIT(8'h02)) 
    \Q[23]_i_1 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .O(LC));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[0]_C 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(\Q_reg[8]_LDC_i_2_n_0 ),
        .D(MISO_int),
        .Q(\Q_reg[0]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[0]_P 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .D(MISO_int),
        .PRE(\Q_reg[8]_LDC_i_1_n_0 ),
        .Q(\Q_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[10] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[9]),
        .Q(debug_out_OBUF[10]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[11] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .D(debug_out_OBUF[10]),
        .PRE(LC),
        .Q(debug_out_OBUF[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[12] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[11]),
        .Q(debug_out_OBUF[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[13] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[12]),
        .Q(debug_out_OBUF[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[14] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[13]),
        .Q(debug_out_OBUF[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[15] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[14]),
        .Q(debug_out_OBUF[15]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[16] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .D(debug_out_OBUF[15]),
        .PRE(LC),
        .Q(debug_out_OBUF[16]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[17] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .D(debug_out_OBUF[16]),
        .PRE(LC),
        .Q(debug_out_OBUF[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[18] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[17]),
        .Q(debug_out_OBUF[18]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[19] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .D(debug_out_OBUF[18]),
        .PRE(LC),
        .Q(debug_out_OBUF[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[1]_C 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(\Q_reg[9]_LDC_i_2_n_0 ),
        .D(debug_out_OBUF[0]),
        .Q(\Q_reg[1]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[1]_P 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .D(debug_out_OBUF[0]),
        .PRE(\Q_reg[9]_LDC_i_1_n_0 ),
        .Q(\Q_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[20] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[19]),
        .Q(debug_out_OBUF[20]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[21] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[20]),
        .Q(debug_out_OBUF[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[22] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[21]),
        .Q(debug_out_OBUF[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[23] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[22]),
        .Q(debug_out_OBUF[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[2] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[1]),
        .Q(debug_out_OBUF[2]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[3] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .D(debug_out_OBUF[2]),
        .PRE(LC),
        .Q(debug_out_OBUF[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[4] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[3]),
        .Q(debug_out_OBUF[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[5] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[4]),
        .Q(debug_out_OBUF[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[6] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[5]),
        .Q(debug_out_OBUF[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[7] 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(LC),
        .D(debug_out_OBUF[6]),
        .Q(debug_out_OBUF[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[8]_C 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(\Q_reg[8]_LDC_i_2_n_0 ),
        .D(debug_out_OBUF[7]),
        .Q(\Q_reg[8]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[8]_LDC 
       (.CLR(\Q_reg[8]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\Q_reg[8]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\Q_reg[8]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \Q_reg[8]_LDC_i_1 
       (.I0(MODE_IBUF[0]),
        .I1(MODE_IBUF[3]),
        .I2(MODE_IBUF[2]),
        .I3(MODE_IBUF[1]),
        .I4(LC),
        .O(\Q_reg[8]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \Q_reg[8]_LDC_i_2 
       (.I0(LC),
        .I1(MODE_IBUF[0]),
        .I2(MODE_IBUF[3]),
        .I3(MODE_IBUF[2]),
        .I4(MODE_IBUF[1]),
        .O(\Q_reg[8]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[8]_P 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .D(debug_out_OBUF[7]),
        .PRE(\Q_reg[8]_LDC_i_1_n_0 ),
        .Q(\Q_reg[8]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[9]_C 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .CLR(\Q_reg[9]_LDC_i_2_n_0 ),
        .D(debug_out_OBUF[8]),
        .Q(\Q_reg[9]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[9]_LDC 
       (.CLR(\Q_reg[9]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\Q_reg[9]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\Q_reg[9]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'hFFF90000)) 
    \Q_reg[9]_LDC_i_1 
       (.I0(MODE_IBUF[0]),
        .I1(MODE_IBUF[1]),
        .I2(MODE_IBUF[2]),
        .I3(MODE_IBUF[3]),
        .I4(LC),
        .O(\Q_reg[9]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000028)) 
    \Q_reg[9]_LDC_i_2 
       (.I0(LC),
        .I1(MODE_IBUF[0]),
        .I2(MODE_IBUF[1]),
        .I3(MODE_IBUF[2]),
        .I4(MODE_IBUF[3]),
        .O(\Q_reg[9]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \Q_reg[9]_P 
       (.C(SCLK_OBUF_BUFG),
        .CE(STARTED_OBUF),
        .D(debug_out_OBUF[8]),
        .PRE(\Q_reg[9]_LDC_i_1_n_0 ),
        .Q(\Q_reg[9]_P_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    STARTED_OBUF_inst_i_1
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(STARTED_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \debug_out_OBUF[0]_inst_i_1 
       (.I0(\Q_reg[0]_P_n_0 ),
        .I1(\Q_reg[8]_LDC_n_0 ),
        .I2(\Q_reg[0]_C_n_0 ),
        .O(debug_out_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \debug_out_OBUF[1]_inst_i_1 
       (.I0(\Q_reg[1]_P_n_0 ),
        .I1(\Q_reg[9]_LDC_n_0 ),
        .I2(\Q_reg[1]_C_n_0 ),
        .O(debug_out_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \debug_out_OBUF[8]_inst_i_1 
       (.I0(\Q_reg[8]_P_n_0 ),
        .I1(\Q_reg[8]_LDC_n_0 ),
        .I2(\Q_reg[8]_C_n_0 ),
        .O(debug_out_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \debug_out_OBUF[9]_inst_i_1 
       (.I0(\Q_reg[9]_P_n_0 ),
        .I1(\Q_reg[9]_LDC_n_0 ),
        .I2(\Q_reg[9]_C_n_0 ),
        .O(debug_out_OBUF[9]));
endmodule

module ele112_UpDownCounter
   (D,
    START_IBUF,
    out,
    SCLK_OBUF_BUFG,
    LC);
  output [2:0]D;
  input START_IBUF;
  input [2:0]out;
  input SCLK_OBUF_BUFG;
  input LC;

  wire [2:0]D;
  wire \FSM_sequential_y[2]_i_2_n_0 ;
  wire \FSM_sequential_y[2]_i_3_n_0 ;
  wire LC;
  wire \Q[7]_i_2_n_0 ;
  wire [7:0]Q__0;
  wire [7:0]Q_reg__0;
  wire SCLK_OBUF_BUFG;
  wire START_IBUF;
  wire [2:0]out;

  LUT6 #(
    .INIT(64'h0FF70FF70FF703F7)) 
    \FSM_sequential_y[0]_i_1 
       (.I0(START_IBUF),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(\FSM_sequential_y[2]_i_3_n_0 ),
        .I5(\FSM_sequential_y[2]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h5540554055401140)) 
    \FSM_sequential_y[1]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(START_IBUF),
        .I3(out[1]),
        .I4(\FSM_sequential_y[2]_i_2_n_0 ),
        .I5(\FSM_sequential_y[2]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h080C080C080C380C)) 
    \FSM_sequential_y[2]_i_1 
       (.I0(START_IBUF),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(\FSM_sequential_y[2]_i_2_n_0 ),
        .I5(\FSM_sequential_y[2]_i_3_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_y[2]_i_2 
       (.I0(Q_reg__0[2]),
        .I1(Q_reg__0[0]),
        .I2(Q_reg__0[3]),
        .I3(Q_reg__0[4]),
        .O(\FSM_sequential_y[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_y[2]_i_3 
       (.I0(Q_reg__0[7]),
        .I1(Q_reg__0[6]),
        .I2(Q_reg__0[1]),
        .I3(Q_reg__0[5]),
        .O(\FSM_sequential_y[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Q[0]_i_1 
       (.I0(Q_reg__0[0]),
        .O(Q__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Q[1]_i_1 
       (.I0(Q_reg__0[0]),
        .I1(Q_reg__0[1]),
        .O(Q__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Q[2]_i_1 
       (.I0(Q_reg__0[0]),
        .I1(Q_reg__0[1]),
        .I2(Q_reg__0[2]),
        .O(Q__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Q[3]_i_1 
       (.I0(Q_reg__0[1]),
        .I1(Q_reg__0[0]),
        .I2(Q_reg__0[2]),
        .I3(Q_reg__0[3]),
        .O(Q__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Q[4]_i_1 
       (.I0(Q_reg__0[2]),
        .I1(Q_reg__0[0]),
        .I2(Q_reg__0[1]),
        .I3(Q_reg__0[3]),
        .I4(Q_reg__0[4]),
        .O(Q__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Q[5]_i_1 
       (.I0(Q_reg__0[3]),
        .I1(Q_reg__0[1]),
        .I2(Q_reg__0[0]),
        .I3(Q_reg__0[2]),
        .I4(Q_reg__0[4]),
        .I5(Q_reg__0[5]),
        .O(Q__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[6]_i_1 
       (.I0(\Q[7]_i_2_n_0 ),
        .I1(Q_reg__0[6]),
        .O(Q__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Q[7]_i_1__2 
       (.I0(\Q[7]_i_2_n_0 ),
        .I1(Q_reg__0[6]),
        .I2(Q_reg__0[7]),
        .O(Q__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Q[7]_i_2 
       (.I0(Q_reg__0[5]),
        .I1(Q_reg__0[3]),
        .I2(Q_reg__0[1]),
        .I3(Q_reg__0[0]),
        .I4(Q_reg__0[2]),
        .I5(Q_reg__0[4]),
        .O(\Q[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .CLR(LC),
        .D(Q__0[0]),
        .Q(Q_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .CLR(LC),
        .D(Q__0[1]),
        .Q(Q_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .CLR(LC),
        .D(Q__0[2]),
        .Q(Q_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .CLR(LC),
        .D(Q__0[3]),
        .Q(Q_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .CLR(LC),
        .D(Q__0[4]),
        .Q(Q_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .CLR(LC),
        .D(Q__0[5]),
        .Q(Q_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .CLR(LC),
        .D(Q__0[6]),
        .Q(Q_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(SCLK_OBUF_BUFG),
        .CE(1'b1),
        .CLR(LC),
        .D(Q__0[7]),
        .Q(Q_reg__0[7]));
endmodule

module ele112_regn
   (Q,
    out,
    MODE_IBUF,
    D,
    CLK);
  output [7:0]Q;
  input [2:0]out;
  input [0:0]MODE_IBUF;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire LD_X;
  wire [0:0]MODE_IBUF;
  wire [7:0]Q;
  wire [2:0]out;

  LUT4 #(
    .INIT(16'h1000)) 
    \Q[7]_i_1__1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(MODE_IBUF),
        .I3(out[2]),
        .O(LD_X));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(LD_X),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(LD_X),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(LD_X),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(LD_X),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(LD_X),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(LD_X),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(LD_X),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(LD_X),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ele112_regn" *) 
module ele112_regn_0
   (Q,
    out,
    MODE_IBUF,
    D,
    CLK);
  output [7:0]Q;
  input [2:0]out;
  input [0:0]MODE_IBUF;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire LD_Y;
  wire [0:0]MODE_IBUF;
  wire [7:0]Q;
  wire [2:0]out;

  LUT4 #(
    .INIT(16'h1000)) 
    \Q[7]_i_1__0 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(MODE_IBUF),
        .I3(out[2]),
        .O(LD_Y));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(LD_Y),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(LD_Y),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(LD_Y),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(LD_Y),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(LD_Y),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(LD_Y),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(LD_Y),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(LD_Y),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ele112_regn" *) 
module ele112_regn_1
   (LED_OBUF,
    out,
    MODE_IBUF,
    debug_out_OBUF,
    CLK,
    LED_sel_IBUF,
    Q,
    \Q_reg[7]_0 );
  output [7:0]LED_OBUF;
  input [2:0]out;
  input [0:0]MODE_IBUF;
  input [7:0]debug_out_OBUF;
  input CLK;
  input [1:0]LED_sel_IBUF;
  input [7:0]Q;
  input [7:0]\Q_reg[7]_0 ;

  wire CLK;
  wire LD_Z;
  wire [7:0]LED_OBUF;
  wire [1:0]LED_sel_IBUF;
  wire [0:0]MODE_IBUF;
  wire [7:0]Q;
  wire [7:0]\Q_reg[7]_0 ;
  wire \Q_reg_n_0_[0] ;
  wire \Q_reg_n_0_[1] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire [7:0]debug_out_OBUF;
  wire [2:0]out;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \LED_OBUF[0]_inst_i_1 
       (.I0(\Q_reg_n_0_[0] ),
        .I1(LED_sel_IBUF[1]),
        .I2(Q[0]),
        .I3(LED_sel_IBUF[0]),
        .I4(\Q_reg[7]_0 [0]),
        .O(LED_OBUF[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \LED_OBUF[1]_inst_i_1 
       (.I0(\Q_reg_n_0_[1] ),
        .I1(LED_sel_IBUF[1]),
        .I2(Q[1]),
        .I3(LED_sel_IBUF[0]),
        .I4(\Q_reg[7]_0 [1]),
        .O(LED_OBUF[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \LED_OBUF[2]_inst_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(LED_sel_IBUF[1]),
        .I2(Q[2]),
        .I3(LED_sel_IBUF[0]),
        .I4(\Q_reg[7]_0 [2]),
        .O(LED_OBUF[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \LED_OBUF[3]_inst_i_1 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(LED_sel_IBUF[1]),
        .I2(Q[3]),
        .I3(LED_sel_IBUF[0]),
        .I4(\Q_reg[7]_0 [3]),
        .O(LED_OBUF[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \LED_OBUF[4]_inst_i_1 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(LED_sel_IBUF[1]),
        .I2(Q[4]),
        .I3(LED_sel_IBUF[0]),
        .I4(\Q_reg[7]_0 [4]),
        .O(LED_OBUF[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \LED_OBUF[5]_inst_i_1 
       (.I0(\Q_reg_n_0_[5] ),
        .I1(LED_sel_IBUF[1]),
        .I2(Q[5]),
        .I3(LED_sel_IBUF[0]),
        .I4(\Q_reg[7]_0 [5]),
        .O(LED_OBUF[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \LED_OBUF[6]_inst_i_1 
       (.I0(\Q_reg_n_0_[6] ),
        .I1(LED_sel_IBUF[1]),
        .I2(Q[6]),
        .I3(LED_sel_IBUF[0]),
        .I4(\Q_reg[7]_0 [6]),
        .O(LED_OBUF[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \LED_OBUF[7]_inst_i_1 
       (.I0(\Q_reg_n_0_[7] ),
        .I1(LED_sel_IBUF[1]),
        .I2(Q[7]),
        .I3(LED_sel_IBUF[0]),
        .I4(\Q_reg[7]_0 [7]),
        .O(LED_OBUF[7]));
  LUT4 #(
    .INIT(16'h1000)) 
    \Q[7]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(MODE_IBUF),
        .I3(out[2]),
        .O(LD_Z));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(LD_Z),
        .D(debug_out_OBUF[0]),
        .Q(\Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(LD_Z),
        .D(debug_out_OBUF[1]),
        .Q(\Q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(LD_Z),
        .D(debug_out_OBUF[2]),
        .Q(\Q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(LD_Z),
        .D(debug_out_OBUF[3]),
        .Q(\Q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(LD_Z),
        .D(debug_out_OBUF[4]),
        .Q(\Q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(LD_Z),
        .D(debug_out_OBUF[5]),
        .Q(\Q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(LD_Z),
        .D(debug_out_OBUF[6]),
        .Q(\Q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(LD_Z),
        .D(debug_out_OBUF[7]),
        .Q(\Q_reg_n_0_[7] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
