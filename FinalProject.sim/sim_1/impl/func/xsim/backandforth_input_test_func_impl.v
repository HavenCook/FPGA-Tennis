// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Apr 22 17:22:41 2023
// Host        : ECE-PHO115-109 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               X:/EC311/FinalProject/FinalProject.sim/sim_1/impl/func/xsim/backandforth_input_test_func_impl.v
// Design      : backandforth_input
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module backandforth
   (outp_OBUF,
    AR,
    CLK);
  output [15:0]outp_OBUF;
  input [0:0]AR;
  input CLK;

  wire [0:0]AR;
  wire CLK;
  wire \Q[0]_i_1_n_0 ;
  wire \Q[1]_i_1_n_0 ;
  wire \Q[2]_i_1_n_0 ;
  wire \Q[3]_i_1_n_0 ;
  wire \Q[3]_i_2_n_0 ;
  wire \Q[3]_i_3_n_0 ;
  wire \Q[3]_i_4_n_0 ;
  wire \Q[3]_i_5_n_0 ;
  wire \Q_reg_n_0_[0] ;
  wire \Q_reg_n_0_[1] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[3] ;
  wire [3:0]Qprev;
  wire Qprev_0;
  wire [15:0]outp_OBUF;

  LUT1 #(
    .INIT(2'h1)) 
    \Q[0]_i_1 
       (.I0(\Q_reg_n_0_[0] ),
        .O(\Q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDB2B24D4DB2B240)) 
    \Q[1]_i_1 
       (.I0(\Q[3]_i_3_n_0 ),
        .I1(Qprev[3]),
        .I2(\Q_reg_n_0_[3] ),
        .I3(\Q_reg_n_0_[0] ),
        .I4(\Q_reg_n_0_[1] ),
        .I5(\Q_reg_n_0_[2] ),
        .O(\Q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFB2B2000040)) 
    \Q[2]_i_1 
       (.I0(\Q[3]_i_3_n_0 ),
        .I1(Qprev[3]),
        .I2(\Q_reg_n_0_[3] ),
        .I3(\Q_reg_n_0_[0] ),
        .I4(\Q_reg_n_0_[1] ),
        .I5(\Q_reg_n_0_[2] ),
        .O(\Q[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBE)) 
    \Q[3]_i_1 
       (.I0(\Q[3]_i_3_n_0 ),
        .I1(Qprev[3]),
        .I2(\Q_reg_n_0_[3] ),
        .I3(\Q[3]_i_4_n_0 ),
        .I4(\Q[3]_i_5_n_0 ),
        .O(\Q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF2F0F0F0F0F0F0B0)) 
    \Q[3]_i_2 
       (.I0(\Q[3]_i_3_n_0 ),
        .I1(Qprev[3]),
        .I2(\Q_reg_n_0_[3] ),
        .I3(\Q_reg_n_0_[0] ),
        .I4(\Q_reg_n_0_[1] ),
        .I5(\Q_reg_n_0_[2] ),
        .O(\Q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    \Q[3]_i_3 
       (.I0(\Q_reg_n_0_[0] ),
        .I1(Qprev[0]),
        .I2(Qprev[1]),
        .I3(\Q_reg_n_0_[1] ),
        .I4(Qprev[2]),
        .I5(\Q_reg_n_0_[2] ),
        .O(\Q[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    \Q[3]_i_4 
       (.I0(Qprev[0]),
        .I1(\Q_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[1] ),
        .I3(Qprev[1]),
        .I4(\Q_reg_n_0_[2] ),
        .I5(Qprev[2]),
        .O(\Q[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8001)) 
    \Q[3]_i_5 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg_n_0_[2] ),
        .I2(\Q_reg_n_0_[1] ),
        .I3(\Q_reg_n_0_[0] ),
        .O(\Q[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(\Q[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\Q[0]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(\Q[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\Q[1]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(\Q[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\Q[2]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(\Q[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\Q[3]_i_2_n_0 ),
        .Q(\Q_reg_n_0_[3] ));
  LUT1 #(
    .INIT(2'h1)) 
    \Qprev[3]_i_1 
       (.I0(AR),
        .O(Qprev_0));
  FDRE #(
    .INIT(1'b0)) 
    \Qprev_reg[0] 
       (.C(CLK),
        .CE(Qprev_0),
        .D(\Q_reg_n_0_[0] ),
        .Q(Qprev[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Qprev_reg[1] 
       (.C(CLK),
        .CE(Qprev_0),
        .D(\Q_reg_n_0_[1] ),
        .Q(Qprev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Qprev_reg[2] 
       (.C(CLK),
        .CE(Qprev_0),
        .D(\Q_reg_n_0_[2] ),
        .Q(Qprev[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Qprev_reg[3] 
       (.C(CLK),
        .CE(Qprev_0),
        .D(\Q_reg_n_0_[3] ),
        .Q(Qprev[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \outp_OBUF[0]_inst_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .O(outp_OBUF[0]));
  LUT4 #(
    .INIT(16'h0020)) 
    \outp_OBUF[10]_inst_i_1 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg_n_0_[2] ),
        .I2(\Q_reg_n_0_[1] ),
        .I3(\Q_reg_n_0_[0] ),
        .O(outp_OBUF[10]));
  LUT4 #(
    .INIT(16'h2000)) 
    \outp_OBUF[11]_inst_i_1 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg_n_0_[2] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .O(outp_OBUF[11]));
  LUT4 #(
    .INIT(16'h0008)) 
    \outp_OBUF[12]_inst_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .O(outp_OBUF[12]));
  LUT4 #(
    .INIT(16'h0080)) 
    \outp_OBUF[13]_inst_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .O(outp_OBUF[13]));
  LUT4 #(
    .INIT(16'h0080)) 
    \outp_OBUF[14]_inst_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[1] ),
        .I3(\Q_reg_n_0_[0] ),
        .O(outp_OBUF[14]));
  LUT4 #(
    .INIT(16'h8000)) 
    \outp_OBUF[15]_inst_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .O(outp_OBUF[15]));
  LUT4 #(
    .INIT(16'h0010)) 
    \outp_OBUF[1]_inst_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .O(outp_OBUF[1]));
  LUT4 #(
    .INIT(16'h0010)) 
    \outp_OBUF[2]_inst_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[1] ),
        .I3(\Q_reg_n_0_[0] ),
        .O(outp_OBUF[2]));
  LUT4 #(
    .INIT(16'h1000)) 
    \outp_OBUF[3]_inst_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .O(outp_OBUF[3]));
  LUT4 #(
    .INIT(16'h0002)) 
    \outp_OBUF[4]_inst_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .O(outp_OBUF[4]));
  LUT4 #(
    .INIT(16'h0020)) 
    \outp_OBUF[5]_inst_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .O(outp_OBUF[5]));
  LUT4 #(
    .INIT(16'h0020)) 
    \outp_OBUF[6]_inst_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[1] ),
        .I3(\Q_reg_n_0_[0] ),
        .O(outp_OBUF[6]));
  LUT4 #(
    .INIT(16'h2000)) 
    \outp_OBUF[7]_inst_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .O(outp_OBUF[7]));
  LUT4 #(
    .INIT(16'h0002)) 
    \outp_OBUF[8]_inst_i_1 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg_n_0_[2] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .O(outp_OBUF[8]));
  LUT4 #(
    .INIT(16'h0020)) 
    \outp_OBUF[9]_inst_i_1 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg_n_0_[2] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .O(outp_OBUF[9]));
endmodule

module backandforth_divided
   (outp_OBUF,
    AR,
    clk_IBUF_BUFG);
  output [15:0]outp_OBUF;
  input [0:0]AR;
  input clk_IBUF_BUFG;

  wire [0:0]AR;
  wire clk_IBUF_BUFG;
  wire [15:0]outp_OBUF;
  wire vcd_n_0;

  backandforth bnf
       (.AR(AR),
        .CLK(vcd_n_0),
        .outp_OBUF(outp_OBUF));
  variable_clock_delay vcd
       (.AR(AR),
        .CLK(vcd_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

(* ECO_CHECKSUM = "f0abdf17" *) 
(* NotValidForBitStream *)
module backandforth_input
   (clk,
    reset,
    pone,
    ptwo,
    winner,
    outp);
  input clk;
  input reset;
  input pone;
  input ptwo;
  output [1:0]winner;
  output [15:0]outp;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]outp;
  wire [15:0]outp_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [1:0]winner;

  backandforth_divided bnf
       (.AR(reset_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .outp_OBUF(outp_OBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \outp_OBUF[0]_inst 
       (.I(outp_OBUF[0]),
        .O(outp[0]));
  OBUF \outp_OBUF[10]_inst 
       (.I(outp_OBUF[10]),
        .O(outp[10]));
  OBUF \outp_OBUF[11]_inst 
       (.I(outp_OBUF[11]),
        .O(outp[11]));
  OBUF \outp_OBUF[12]_inst 
       (.I(outp_OBUF[12]),
        .O(outp[12]));
  OBUF \outp_OBUF[13]_inst 
       (.I(outp_OBUF[13]),
        .O(outp[13]));
  OBUF \outp_OBUF[14]_inst 
       (.I(outp_OBUF[14]),
        .O(outp[14]));
  OBUF \outp_OBUF[15]_inst 
       (.I(outp_OBUF[15]),
        .O(outp[15]));
  OBUF \outp_OBUF[1]_inst 
       (.I(outp_OBUF[1]),
        .O(outp[1]));
  OBUF \outp_OBUF[2]_inst 
       (.I(outp_OBUF[2]),
        .O(outp[2]));
  OBUF \outp_OBUF[3]_inst 
       (.I(outp_OBUF[3]),
        .O(outp[3]));
  OBUF \outp_OBUF[4]_inst 
       (.I(outp_OBUF[4]),
        .O(outp[4]));
  OBUF \outp_OBUF[5]_inst 
       (.I(outp_OBUF[5]),
        .O(outp[5]));
  OBUF \outp_OBUF[6]_inst 
       (.I(outp_OBUF[6]),
        .O(outp[6]));
  OBUF \outp_OBUF[7]_inst 
       (.I(outp_OBUF[7]),
        .O(outp[7]));
  OBUF \outp_OBUF[8]_inst 
       (.I(outp_OBUF[8]),
        .O(outp[8]));
  OBUF \outp_OBUF[9]_inst 
       (.I(outp_OBUF[9]),
        .O(outp[9]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \winner_OBUF[0]_inst 
       (.I(1'b0),
        .O(winner[0]));
  OBUF \winner_OBUF[1]_inst 
       (.I(1'b0),
        .O(winner[1]));
endmodule

module variable_clock_delay
   (CLK,
    clk_IBUF_BUFG,
    AR);
  output CLK;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_IBUF_BUFG;
  wire [24:0]cnt;
  wire [24:1]cnt0;
  wire cnt1_carry__0_i_1_n_0;
  wire cnt1_carry__0_i_2_n_0;
  wire cnt1_carry__0_i_3_n_0;
  wire cnt1_carry__0_i_4_n_0;
  wire cnt1_carry__0_n_0;
  wire cnt1_carry__1_n_3;
  wire cnt1_carry_i_1_n_0;
  wire cnt1_carry_i_2_n_0;
  wire cnt1_carry_i_3_n_0;
  wire cnt1_carry_i_4_n_0;
  wire cnt1_carry_n_0;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt_reg[12]_i_2_n_0 ;
  wire \cnt_reg[16]_i_2_n_0 ;
  wire \cnt_reg[20]_i_2_n_0 ;
  wire \cnt_reg[4]_i_2_n_0 ;
  wire \cnt_reg[8]_i_2_n_0 ;
  wire divided_clk_i_1_n_0;
  wire [24:1]p_0_in;
  wire [2:0]NLW_cnt1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_cnt1_carry_O_UNCONNECTED;
  wire [2:0]NLW_cnt1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_cnt1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_cnt1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_cnt1_carry__1_O_UNCONNECTED;
  wire [2:0]\NLW_cnt_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[20]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_reg[24]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[8]_i_2_CO_UNCONNECTED ;

  CARRY4 cnt1_carry
       (.CI(1'b0),
        .CO({cnt1_carry_n_0,NLW_cnt1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt1_carry_O_UNCONNECTED[3:0]),
        .S({cnt1_carry_i_1_n_0,cnt1_carry_i_2_n_0,cnt1_carry_i_3_n_0,cnt1_carry_i_4_n_0}));
  CARRY4 cnt1_carry__0
       (.CI(cnt1_carry_n_0),
        .CO({cnt1_carry__0_n_0,NLW_cnt1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt1_carry__0_O_UNCONNECTED[3:0]),
        .S({cnt1_carry__0_i_1_n_0,cnt1_carry__0_i_2_n_0,cnt1_carry__0_i_3_n_0,cnt1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    cnt1_carry__0_i_1
       (.I0(cnt[23]),
        .I1(cnt[22]),
        .I2(cnt[21]),
        .O(cnt1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt1_carry__0_i_2
       (.I0(cnt[20]),
        .I1(cnt[19]),
        .I2(cnt[18]),
        .O(cnt1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt1_carry__0_i_3
       (.I0(cnt[17]),
        .I1(cnt[16]),
        .I2(cnt[15]),
        .O(cnt1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt1_carry__0_i_4
       (.I0(cnt[14]),
        .I1(cnt[13]),
        .I2(cnt[12]),
        .O(cnt1_carry__0_i_4_n_0));
  CARRY4 cnt1_carry__1
       (.CI(cnt1_carry__0_n_0),
        .CO({NLW_cnt1_carry__1_CO_UNCONNECTED[3:1],cnt1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,cnt[24]}));
  LUT3 #(
    .INIT(8'h01)) 
    cnt1_carry_i_1
       (.I0(cnt[11]),
        .I1(cnt[10]),
        .I2(cnt[9]),
        .O(cnt1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt1_carry_i_2
       (.I0(cnt[8]),
        .I1(cnt[7]),
        .I2(cnt[6]),
        .O(cnt1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt1_carry_i_3
       (.I0(cnt[5]),
        .I1(cnt[4]),
        .I2(cnt[3]),
        .O(cnt1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    cnt1_carry_i_4
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .O(cnt1_carry_i_4_n_0));
  (* \PinAttr:I0:HOLD_DETOUR  = "177" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .I1(cnt1_carry__1_n_3),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[10]_i_1 
       (.I0(cnt0[10]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[11]_i_1 
       (.I0(cnt0[11]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[12]_i_1 
       (.I0(cnt0[12]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[13]_i_1 
       (.I0(cnt0[13]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[14]_i_1 
       (.I0(cnt0[14]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[15]_i_1 
       (.I0(cnt0[15]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[16]_i_1 
       (.I0(cnt0[16]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[17]_i_1 
       (.I0(cnt0[17]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[18]_i_1 
       (.I0(cnt0[18]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[19]_i_1 
       (.I0(cnt0[19]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[1]_i_1 
       (.I0(cnt0[1]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[20]_i_1 
       (.I0(cnt0[20]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[21]_i_1 
       (.I0(cnt0[21]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[22]_i_1 
       (.I0(cnt0[22]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[23]_i_1 
       (.I0(cnt0[23]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[24]_i_1 
       (.I0(cnt0[24]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[2]_i_1 
       (.I0(cnt0[2]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[3]_i_1 
       (.I0(cnt0[3]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[4]_i_1 
       (.I0(cnt0[4]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[5]_i_1 
       (.I0(cnt0[5]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[6]_i_1 
       (.I0(cnt0[6]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[7]_i_1 
       (.I0(cnt0[7]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[8]_i_1 
       (.I0(cnt0[8]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[9]_i_1 
       (.I0(cnt0[9]),
        .I1(cnt1_carry__1_n_3),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[10]),
        .Q(cnt[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[11]),
        .Q(cnt[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[12]),
        .Q(cnt[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[12]_i_2 
       (.CI(\cnt_reg[8]_i_2_n_0 ),
        .CO({\cnt_reg[12]_i_2_n_0 ,\NLW_cnt_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[12:9]),
        .S(cnt[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[13]),
        .Q(cnt[13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[14]),
        .Q(cnt[14]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[15]),
        .Q(cnt[15]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[16]),
        .Q(cnt[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[16]_i_2 
       (.CI(\cnt_reg[12]_i_2_n_0 ),
        .CO({\cnt_reg[16]_i_2_n_0 ,\NLW_cnt_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[16:13]),
        .S(cnt[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[17]),
        .Q(cnt[17]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[18]),
        .Q(cnt[18]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[19]),
        .Q(cnt[19]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[20]),
        .Q(cnt[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[20]_i_2 
       (.CI(\cnt_reg[16]_i_2_n_0 ),
        .CO({\cnt_reg[20]_i_2_n_0 ,\NLW_cnt_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[20:17]),
        .S(cnt[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[21]),
        .Q(cnt[21]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[22]),
        .Q(cnt[22]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[23]),
        .Q(cnt[23]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[24]),
        .Q(cnt[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[24]_i_2 
       (.CI(\cnt_reg[20]_i_2_n_0 ),
        .CO(\NLW_cnt_reg[24]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[24:21]),
        .S(cnt[24:21]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(cnt[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[4]_i_2_n_0 ,\NLW_cnt_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[4:1]),
        .S(cnt[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[8]),
        .Q(cnt[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[8]_i_2 
       (.CI(\cnt_reg[4]_i_2_n_0 ),
        .CO({\cnt_reg[8]_i_2_n_0 ,\NLW_cnt_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[8:5]),
        .S(cnt[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[9]),
        .Q(cnt[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    divided_clk_i_1
       (.I0(cnt1_carry__1_n_3),
        .I1(CLK),
        .O(divided_clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    divided_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(divided_clk_i_1_n_0),
        .Q(CLK));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
