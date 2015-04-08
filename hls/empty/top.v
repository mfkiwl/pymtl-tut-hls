// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="top,hls_ip_2014_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.930687,HLS_SYN_LAT=1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}" *)

module top (
        ap_clk,
        ap_rst,
        cfg_req_V,
        cfg_req_V_ap_vld,
        cfg_req_V_ap_ack,
        cfg_resp_V,
        cfg_resp_V_ap_vld,
        cfg_resp_V_ap_ack,
        g_itu_iface_req_V,
        g_itu_iface_req_V_ap_vld,
        g_itu_iface_req_V_ap_ack,
        g_itu_iface_resp_V,
        g_itu_iface_resp_V_ap_vld,
        g_itu_iface_resp_V_ap_ack
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 2'b00;
parameter    ap_ST_st2_fsm_1 = 2'b1;
parameter    ap_ST_st3_fsm_2 = 2'b10;
parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv5_5 = 5'b101;
parameter    ap_const_lv5_4 = 5'b100;
parameter    ap_const_lv5_3 = 5'b11;
parameter    ap_const_lv5_2 = 5'b10;
parameter    ap_const_lv5_1 = 5'b1;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv33_0 = 33'b000000000000000000000000000000000;
parameter    ap_const_lv33_100000000 = 33'b100000000000000000000000000000000;
parameter    ap_const_lv4_6 = 4'b110;
parameter    ap_const_lv32_45 = 32'b1000101;
parameter    ap_const_lv32_40 = 32'b1000000;
parameter    ap_const_lv32_44 = 32'b1000100;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv32_22 = 32'b100010;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv24_0 = 24'b000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input  [69:0] cfg_req_V;
input   cfg_req_V_ap_vld;
output   cfg_req_V_ap_ack;
output  [32:0] cfg_resp_V;
output   cfg_resp_V_ap_vld;
input   cfg_resp_V_ap_ack;
output  [96:0] g_itu_iface_req_V;
output   g_itu_iface_req_V_ap_vld;
input   g_itu_iface_req_V_ap_ack;
input  [32:0] g_itu_iface_resp_V;
input   g_itu_iface_resp_V_ap_vld;
output   g_itu_iface_resp_V_ap_ack;

reg cfg_req_V_ap_ack;
reg cfg_resp_V_ap_vld;
reg[96:0] g_itu_iface_req_V;
reg g_itu_iface_req_V_ap_vld;
reg g_itu_iface_resp_V_ap_ack;
reg   [15:0] s_first_ds_id_V = 16'b0000000000000000;
reg   [15:0] s_first_index_V = 16'b0000000000000000;
reg   [15:0] s_last_ds_id_V = 16'b0000000000000000;
reg   [15:0] s_last_index_V = 16'b0000000000000000;
reg   [3:0] s_result = 4'b0000;
reg   [2:0] s_pred_V = 3'b000;
wire   [0:0] tmp_2_fu_150_p3;
reg   [0:0] tmp_2_reg_330;
reg   [1:0] ap_CS_fsm = 2'b00;
wire   [0:0] tmp_1_fu_220_p2;
reg    ap_sig_ioackin_g_itu_iface_req_V_ap_ack;
reg   [15:0] s_last_ds_id_V_load_reg_334;
reg   [15:0] s_last_index_V_load_reg_339;
wire   [32:0] resp_V_5_fu_188_p1;
wire   [4:0] raddr_V_fu_174_p4;
wire   [32:0] resp_V_4_fu_192_p1;
wire   [32:0] resp_V_3_fu_196_p1;
wire   [32:0] resp_V_2_fu_200_p1;
wire   [32:0] resp_V_1_fu_204_p1;
wire   [32:0] resp_V_fu_216_p1;
reg   [0:0] tmp_1_reg_377;
reg   [32:0] p_0211_1_phi_fu_128_p16;
reg   [32:0] p_0211_1_reg_124;
reg    ap_sig_bdd_117;
reg    ap_sig_ioackin_cfg_resp_V_ap_ack;
wire   [96:0] r_V_fu_288_p1;
wire   [96:0] req_V_2_fu_321_p3;
reg    ap_reg_ioackin_g_itu_iface_req_V_ap_ack = 1'b0;
reg    ap_reg_ioackin_cfg_resp_V_ap_ack = 1'b0;
wire   [31:0] resp_V_fu_216_p0;
wire   [79:0] tmp_fu_276_p5;
wire   [6:0] tmp_4_fu_299_p1;
wire   [79:0] tmp_5_fu_303_p7;
wire   [95:0] tmp_3_fu_317_p1;
reg   [1:0] ap_NS_fsm;
reg    ap_sig_bdd_275;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_reg_ioackin_cfg_resp_V_ap_ack assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ioackin_cfg_resp_V_ap_ack
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_cfg_resp_V_ap_ack <= ap_const_logic_0;
    end else begin
        if ((ap_ST_st3_fsm_2 == ap_CS_fsm)) begin
            if (~(ap_sig_bdd_117 | (ap_const_logic_0 == ap_sig_ioackin_cfg_resp_V_ap_ack))) begin
                ap_reg_ioackin_cfg_resp_V_ap_ack <= ap_const_logic_0;
            end else if (ap_sig_bdd_275) begin
                ap_reg_ioackin_cfg_resp_V_ap_ack <= ap_const_logic_1;
            end
        end
    end
end

/// ap_reg_ioackin_g_itu_iface_req_V_ap_ack assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ioackin_g_itu_iface_req_V_ap_ack
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_g_itu_iface_req_V_ap_ack <= ap_const_logic_0;
    end else begin
        if ((((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack)))) | ((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~((ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack) | (g_itu_iface_resp_V_ap_vld == ap_const_logic_0))))) begin
            ap_reg_ioackin_g_itu_iface_req_V_ap_ack <= ap_const_logic_0;
        end else if ((((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_1 == g_itu_iface_req_V_ap_ack) & ~(cfg_req_V_ap_vld == ap_const_logic_0)) | ((ap_ST_st2_fsm_1 == ap_CS_fsm) & (ap_const_logic_1 == g_itu_iface_req_V_ap_ack) & ~(g_itu_iface_resp_V_ap_vld == ap_const_logic_0)))) begin
            ap_reg_ioackin_g_itu_iface_req_V_ap_ack <= ap_const_logic_1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st3_fsm_2 == ap_CS_fsm) & ~(tmp_2_reg_330 == ap_const_lv1_0) & ~(ap_sig_bdd_117 | (ap_const_logic_0 == ap_sig_ioackin_cfg_resp_V_ap_ack)))) begin
        p_0211_1_reg_124[0] <= 1'b0;
        p_0211_1_reg_124[1] <= 1'b0;
        p_0211_1_reg_124[2] <= 1'b0;
        p_0211_1_reg_124[3] <= 1'b0;
        p_0211_1_reg_124[4] <= 1'b0;
        p_0211_1_reg_124[5] <= 1'b0;
        p_0211_1_reg_124[6] <= 1'b0;
        p_0211_1_reg_124[7] <= 1'b0;
        p_0211_1_reg_124[8] <= 1'b0;
        p_0211_1_reg_124[9] <= 1'b0;
        p_0211_1_reg_124[10] <= 1'b0;
        p_0211_1_reg_124[11] <= 1'b0;
        p_0211_1_reg_124[12] <= 1'b0;
        p_0211_1_reg_124[13] <= 1'b0;
        p_0211_1_reg_124[14] <= 1'b0;
        p_0211_1_reg_124[15] <= 1'b0;
        p_0211_1_reg_124[32] <= 1'b1;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & (tmp_2_fu_150_p3 == ap_const_lv1_0) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))) & ~(raddr_V_fu_174_p4 == ap_const_lv5_5) & ~(raddr_V_fu_174_p4 == ap_const_lv5_4) & ~(raddr_V_fu_174_p4 == ap_const_lv5_3) & ~(raddr_V_fu_174_p4 == ap_const_lv5_2) & ~(raddr_V_fu_174_p4 == ap_const_lv5_1) & ~(raddr_V_fu_174_p4 == ap_const_lv5_0))) begin
        p_0211_1_reg_124[0] <= 1'b0;
        p_0211_1_reg_124[1] <= 1'b0;
        p_0211_1_reg_124[2] <= 1'b0;
        p_0211_1_reg_124[3] <= 1'b0;
        p_0211_1_reg_124[4] <= 1'b0;
        p_0211_1_reg_124[5] <= 1'b0;
        p_0211_1_reg_124[6] <= 1'b0;
        p_0211_1_reg_124[7] <= 1'b0;
        p_0211_1_reg_124[8] <= 1'b0;
        p_0211_1_reg_124[9] <= 1'b0;
        p_0211_1_reg_124[10] <= 1'b0;
        p_0211_1_reg_124[11] <= 1'b0;
        p_0211_1_reg_124[12] <= 1'b0;
        p_0211_1_reg_124[13] <= 1'b0;
        p_0211_1_reg_124[14] <= 1'b0;
        p_0211_1_reg_124[15] <= 1'b0;
        p_0211_1_reg_124[32] <= 1'b0;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & (tmp_2_fu_150_p3 == ap_const_lv1_0) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))) & (raddr_V_fu_174_p4 == ap_const_lv5_0))) begin
        p_0211_1_reg_124[0] <= resp_V_fu_216_p1[0];
        p_0211_1_reg_124[1] <= resp_V_fu_216_p1[1];
        p_0211_1_reg_124[2] <= resp_V_fu_216_p1[2];
        p_0211_1_reg_124[3] <= resp_V_fu_216_p1[3];
        p_0211_1_reg_124[4] <= resp_V_fu_216_p1[4];
        p_0211_1_reg_124[5] <= resp_V_fu_216_p1[5];
        p_0211_1_reg_124[6] <= resp_V_fu_216_p1[6];
        p_0211_1_reg_124[7] <= resp_V_fu_216_p1[7];
        p_0211_1_reg_124[8] <= resp_V_fu_216_p1[8];
        p_0211_1_reg_124[9] <= resp_V_fu_216_p1[9];
        p_0211_1_reg_124[10] <= resp_V_fu_216_p1[10];
        p_0211_1_reg_124[11] <= resp_V_fu_216_p1[11];
        p_0211_1_reg_124[12] <= resp_V_fu_216_p1[12];
        p_0211_1_reg_124[13] <= resp_V_fu_216_p1[13];
        p_0211_1_reg_124[14] <= resp_V_fu_216_p1[14];
        p_0211_1_reg_124[15] <= resp_V_fu_216_p1[15];
        p_0211_1_reg_124[32] <= resp_V_fu_216_p1[32];
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & (tmp_2_fu_150_p3 == ap_const_lv1_0) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))) & (raddr_V_fu_174_p4 == ap_const_lv5_1))) begin
        p_0211_1_reg_124[0] <= resp_V_1_fu_204_p1[0];
        p_0211_1_reg_124[1] <= resp_V_1_fu_204_p1[1];
        p_0211_1_reg_124[2] <= resp_V_1_fu_204_p1[2];
        p_0211_1_reg_124[3] <= resp_V_1_fu_204_p1[3];
        p_0211_1_reg_124[4] <= resp_V_1_fu_204_p1[4];
        p_0211_1_reg_124[5] <= resp_V_1_fu_204_p1[5];
        p_0211_1_reg_124[6] <= resp_V_1_fu_204_p1[6];
        p_0211_1_reg_124[7] <= resp_V_1_fu_204_p1[7];
        p_0211_1_reg_124[8] <= resp_V_1_fu_204_p1[8];
        p_0211_1_reg_124[9] <= resp_V_1_fu_204_p1[9];
        p_0211_1_reg_124[10] <= resp_V_1_fu_204_p1[10];
        p_0211_1_reg_124[11] <= resp_V_1_fu_204_p1[11];
        p_0211_1_reg_124[12] <= resp_V_1_fu_204_p1[12];
        p_0211_1_reg_124[13] <= resp_V_1_fu_204_p1[13];
        p_0211_1_reg_124[14] <= resp_V_1_fu_204_p1[14];
        p_0211_1_reg_124[15] <= resp_V_1_fu_204_p1[15];
        p_0211_1_reg_124[32] <= resp_V_1_fu_204_p1[32];
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & (tmp_2_fu_150_p3 == ap_const_lv1_0) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))) & (raddr_V_fu_174_p4 == ap_const_lv5_2))) begin
        p_0211_1_reg_124[0] <= resp_V_2_fu_200_p1[0];
        p_0211_1_reg_124[1] <= resp_V_2_fu_200_p1[1];
        p_0211_1_reg_124[2] <= resp_V_2_fu_200_p1[2];
        p_0211_1_reg_124[3] <= resp_V_2_fu_200_p1[3];
        p_0211_1_reg_124[4] <= resp_V_2_fu_200_p1[4];
        p_0211_1_reg_124[5] <= resp_V_2_fu_200_p1[5];
        p_0211_1_reg_124[6] <= resp_V_2_fu_200_p1[6];
        p_0211_1_reg_124[7] <= resp_V_2_fu_200_p1[7];
        p_0211_1_reg_124[8] <= resp_V_2_fu_200_p1[8];
        p_0211_1_reg_124[9] <= resp_V_2_fu_200_p1[9];
        p_0211_1_reg_124[10] <= resp_V_2_fu_200_p1[10];
        p_0211_1_reg_124[11] <= resp_V_2_fu_200_p1[11];
        p_0211_1_reg_124[12] <= resp_V_2_fu_200_p1[12];
        p_0211_1_reg_124[13] <= resp_V_2_fu_200_p1[13];
        p_0211_1_reg_124[14] <= resp_V_2_fu_200_p1[14];
        p_0211_1_reg_124[15] <= resp_V_2_fu_200_p1[15];
        p_0211_1_reg_124[32] <= resp_V_2_fu_200_p1[32];
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & (tmp_2_fu_150_p3 == ap_const_lv1_0) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))) & (raddr_V_fu_174_p4 == ap_const_lv5_3))) begin
        p_0211_1_reg_124[0] <= resp_V_3_fu_196_p1[0];
        p_0211_1_reg_124[1] <= resp_V_3_fu_196_p1[1];
        p_0211_1_reg_124[2] <= resp_V_3_fu_196_p1[2];
        p_0211_1_reg_124[3] <= resp_V_3_fu_196_p1[3];
        p_0211_1_reg_124[4] <= resp_V_3_fu_196_p1[4];
        p_0211_1_reg_124[5] <= resp_V_3_fu_196_p1[5];
        p_0211_1_reg_124[6] <= resp_V_3_fu_196_p1[6];
        p_0211_1_reg_124[7] <= resp_V_3_fu_196_p1[7];
        p_0211_1_reg_124[8] <= resp_V_3_fu_196_p1[8];
        p_0211_1_reg_124[9] <= resp_V_3_fu_196_p1[9];
        p_0211_1_reg_124[10] <= resp_V_3_fu_196_p1[10];
        p_0211_1_reg_124[11] <= resp_V_3_fu_196_p1[11];
        p_0211_1_reg_124[12] <= resp_V_3_fu_196_p1[12];
        p_0211_1_reg_124[13] <= resp_V_3_fu_196_p1[13];
        p_0211_1_reg_124[14] <= resp_V_3_fu_196_p1[14];
        p_0211_1_reg_124[15] <= resp_V_3_fu_196_p1[15];
        p_0211_1_reg_124[32] <= resp_V_3_fu_196_p1[32];
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & (tmp_2_fu_150_p3 == ap_const_lv1_0) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))) & (raddr_V_fu_174_p4 == ap_const_lv5_4))) begin
        p_0211_1_reg_124[0] <= resp_V_4_fu_192_p1[0];
        p_0211_1_reg_124[1] <= resp_V_4_fu_192_p1[1];
        p_0211_1_reg_124[2] <= resp_V_4_fu_192_p1[2];
        p_0211_1_reg_124[3] <= resp_V_4_fu_192_p1[3];
        p_0211_1_reg_124[4] <= resp_V_4_fu_192_p1[4];
        p_0211_1_reg_124[5] <= resp_V_4_fu_192_p1[5];
        p_0211_1_reg_124[6] <= resp_V_4_fu_192_p1[6];
        p_0211_1_reg_124[7] <= resp_V_4_fu_192_p1[7];
        p_0211_1_reg_124[8] <= resp_V_4_fu_192_p1[8];
        p_0211_1_reg_124[9] <= resp_V_4_fu_192_p1[9];
        p_0211_1_reg_124[10] <= resp_V_4_fu_192_p1[10];
        p_0211_1_reg_124[11] <= resp_V_4_fu_192_p1[11];
        p_0211_1_reg_124[12] <= resp_V_4_fu_192_p1[12];
        p_0211_1_reg_124[13] <= resp_V_4_fu_192_p1[13];
        p_0211_1_reg_124[14] <= resp_V_4_fu_192_p1[14];
        p_0211_1_reg_124[15] <= resp_V_4_fu_192_p1[15];
        p_0211_1_reg_124[32] <= resp_V_4_fu_192_p1[32];
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & (tmp_2_fu_150_p3 == ap_const_lv1_0) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))) & (raddr_V_fu_174_p4 == ap_const_lv5_5))) begin
        p_0211_1_reg_124[0] <= resp_V_5_fu_188_p1[0];
        p_0211_1_reg_124[1] <= resp_V_5_fu_188_p1[1];
        p_0211_1_reg_124[2] <= resp_V_5_fu_188_p1[2];
        p_0211_1_reg_124[3] <= resp_V_5_fu_188_p1[3];
        p_0211_1_reg_124[4] <= resp_V_5_fu_188_p1[4];
        p_0211_1_reg_124[5] <= resp_V_5_fu_188_p1[5];
        p_0211_1_reg_124[6] <= resp_V_5_fu_188_p1[6];
        p_0211_1_reg_124[7] <= resp_V_5_fu_188_p1[7];
        p_0211_1_reg_124[8] <= resp_V_5_fu_188_p1[8];
        p_0211_1_reg_124[9] <= resp_V_5_fu_188_p1[9];
        p_0211_1_reg_124[10] <= resp_V_5_fu_188_p1[10];
        p_0211_1_reg_124[11] <= resp_V_5_fu_188_p1[11];
        p_0211_1_reg_124[12] <= resp_V_5_fu_188_p1[12];
        p_0211_1_reg_124[13] <= resp_V_5_fu_188_p1[13];
        p_0211_1_reg_124[14] <= resp_V_5_fu_188_p1[14];
        p_0211_1_reg_124[15] <= resp_V_5_fu_188_p1[15];
        p_0211_1_reg_124[32] <= resp_V_5_fu_188_p1[32];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(tmp_2_fu_150_p3 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_1_fu_220_p2) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))) & (raddr_V_fu_174_p4 == ap_const_lv5_1))) begin
        s_first_ds_id_V <= {{cfg_req_V[ap_const_lv32_2F : ap_const_lv32_20]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(tmp_2_fu_150_p3 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_1_fu_220_p2) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))) & (raddr_V_fu_174_p4 == ap_const_lv5_2))) begin
        s_first_index_V <= {{cfg_req_V[ap_const_lv32_2F : ap_const_lv32_20]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(tmp_2_fu_150_p3 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_1_fu_220_p2) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))) & (raddr_V_fu_174_p4 == ap_const_lv5_3))) begin
        s_last_ds_id_V <= {{cfg_req_V[ap_const_lv32_2F : ap_const_lv32_20]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))))) begin
        s_last_ds_id_V_load_reg_334 <= s_last_ds_id_V;
        s_last_index_V_load_reg_339 <= s_last_index_V;
        tmp_2_reg_330 <= cfg_req_V[ap_const_lv32_45];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(tmp_2_fu_150_p3 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_1_fu_220_p2) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))) & (raddr_V_fu_174_p4 == ap_const_lv5_4))) begin
        s_last_index_V <= {{cfg_req_V[ap_const_lv32_2F : ap_const_lv32_20]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(tmp_2_fu_150_p3 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_1_fu_220_p2) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))) & (raddr_V_fu_174_p4 == ap_const_lv5_5))) begin
        s_pred_V <= {{cfg_req_V[ap_const_lv32_22 : ap_const_lv32_20]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))))) begin
        s_result[1] <= 1'b1;
s_result[2] <= 1'b1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))))) begin
        tmp_1_reg_377 <= tmp_1_fu_220_p2;
    end
end

/// ap_sig_ioackin_cfg_resp_V_ap_ack assign process. ///
always @ (cfg_resp_V_ap_ack or ap_reg_ioackin_cfg_resp_V_ap_ack)
begin
    if ((ap_const_logic_0 == ap_reg_ioackin_cfg_resp_V_ap_ack)) begin
        ap_sig_ioackin_cfg_resp_V_ap_ack = cfg_resp_V_ap_ack;
    end else begin
        ap_sig_ioackin_cfg_resp_V_ap_ack = ap_const_logic_1;
    end
end

/// ap_sig_ioackin_g_itu_iface_req_V_ap_ack assign process. ///
always @ (g_itu_iface_req_V_ap_ack or ap_reg_ioackin_g_itu_iface_req_V_ap_ack)
begin
    if ((ap_const_logic_0 == ap_reg_ioackin_g_itu_iface_req_V_ap_ack)) begin
        ap_sig_ioackin_g_itu_iface_req_V_ap_ack = g_itu_iface_req_V_ap_ack;
    end else begin
        ap_sig_ioackin_g_itu_iface_req_V_ap_ack = ap_const_logic_1;
    end
end

/// cfg_req_V_ap_ack assign process. ///
always @ (cfg_req_V_ap_vld or tmp_2_fu_150_p3 or ap_CS_fsm or tmp_1_fu_220_p2 or ap_sig_ioackin_g_itu_iface_req_V_ap_ack)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))))) begin
        cfg_req_V_ap_ack = ap_const_logic_1;
    end else begin
        cfg_req_V_ap_ack = ap_const_logic_0;
    end
end

/// cfg_resp_V_ap_vld assign process. ///
always @ (ap_CS_fsm or ap_sig_bdd_117 or ap_reg_ioackin_cfg_resp_V_ap_ack)
begin
    if (((ap_ST_st3_fsm_2 == ap_CS_fsm) & ~ap_sig_bdd_117 & (ap_const_logic_0 == ap_reg_ioackin_cfg_resp_V_ap_ack))) begin
        cfg_resp_V_ap_vld = ap_const_logic_1;
    end else begin
        cfg_resp_V_ap_vld = ap_const_logic_0;
    end
end

/// g_itu_iface_req_V assign process. ///
always @ (cfg_req_V_ap_vld or g_itu_iface_resp_V_ap_vld or tmp_2_fu_150_p3 or ap_CS_fsm or tmp_1_fu_220_p2 or ap_sig_ioackin_g_itu_iface_req_V_ap_ack or r_V_fu_288_p1 or req_V_2_fu_321_p3)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~((ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack) | (g_itu_iface_resp_V_ap_vld == ap_const_logic_0)))) begin
        g_itu_iface_req_V = req_V_2_fu_321_p3;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))))) begin
        g_itu_iface_req_V = r_V_fu_288_p1;
    end else begin
        g_itu_iface_req_V = 'bx;
    end
end

/// g_itu_iface_req_V_ap_vld assign process. ///
always @ (cfg_req_V_ap_vld or g_itu_iface_resp_V_ap_vld or tmp_2_fu_150_p3 or ap_CS_fsm or tmp_1_fu_220_p2 or ap_reg_ioackin_g_itu_iface_req_V_ap_ack)
begin
    if ((((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & ~(cfg_req_V_ap_vld == ap_const_logic_0) & (ap_const_logic_0 == ap_reg_ioackin_g_itu_iface_req_V_ap_ack)) | ((ap_ST_st2_fsm_1 == ap_CS_fsm) & (ap_const_logic_0 == ap_reg_ioackin_g_itu_iface_req_V_ap_ack) & ~(g_itu_iface_resp_V_ap_vld == ap_const_logic_0)))) begin
        g_itu_iface_req_V_ap_vld = ap_const_logic_1;
    end else begin
        g_itu_iface_req_V_ap_vld = ap_const_logic_0;
    end
end

/// g_itu_iface_resp_V_ap_ack assign process. ///
always @ (g_itu_iface_resp_V_ap_vld or tmp_2_reg_330 or ap_CS_fsm or ap_sig_ioackin_g_itu_iface_req_V_ap_ack or tmp_1_reg_377 or ap_sig_bdd_117 or ap_sig_ioackin_cfg_resp_V_ap_ack)
begin
    if ((((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~((ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack) | (g_itu_iface_resp_V_ap_vld == ap_const_logic_0))) | ((ap_ST_st3_fsm_2 == ap_CS_fsm) & ~(tmp_2_reg_330 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_reg_377) & ~(ap_sig_bdd_117 | (ap_const_logic_0 == ap_sig_ioackin_cfg_resp_V_ap_ack))))) begin
        g_itu_iface_resp_V_ap_ack = ap_const_logic_1;
    end else begin
        g_itu_iface_resp_V_ap_ack = ap_const_logic_0;
    end
end

/// p_0211_1_phi_fu_128_p16 assign process. ///
always @ (tmp_2_reg_330 or ap_CS_fsm or p_0211_1_reg_124)
begin
    if (((ap_ST_st3_fsm_2 == ap_CS_fsm) & ~(tmp_2_reg_330 == ap_const_lv1_0))) begin
        p_0211_1_phi_fu_128_p16 = ap_const_lv33_100000000;
    end else begin
        p_0211_1_phi_fu_128_p16 = p_0211_1_reg_124;
    end
end
always @ (cfg_req_V_ap_vld or g_itu_iface_resp_V_ap_vld or tmp_2_fu_150_p3 or ap_CS_fsm or tmp_1_fu_220_p2 or ap_sig_ioackin_g_itu_iface_req_V_ap_ack or ap_sig_bdd_117 or ap_sig_ioackin_cfg_resp_V_ap_ack)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
            if ((~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & ~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))))) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else if ((~((cfg_req_V_ap_vld == ap_const_logic_0) | (~(tmp_2_fu_150_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_fu_220_p2) & (ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack))) & ((tmp_2_fu_150_p3 == ap_const_lv1_0) | (ap_const_lv1_0 == tmp_1_fu_220_p2)))) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        ap_ST_st2_fsm_1 : 
            if (~((ap_const_logic_0 == ap_sig_ioackin_g_itu_iface_req_V_ap_ack) | (g_itu_iface_resp_V_ap_vld == ap_const_logic_0))) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        ap_ST_st3_fsm_2 : 
            if (~(ap_sig_bdd_117 | (ap_const_logic_0 == ap_sig_ioackin_cfg_resp_V_ap_ack))) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        default : 
            ap_NS_fsm = 'bx;
    endcase
end

/// ap_sig_bdd_117 assign process. ///
always @ (g_itu_iface_resp_V_ap_vld or tmp_2_reg_330 or tmp_1_reg_377)
begin
    ap_sig_bdd_117 = ((g_itu_iface_resp_V_ap_vld == ap_const_logic_0) & ~(tmp_2_reg_330 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_1_reg_377));
end

/// ap_sig_bdd_275 assign process. ///
always @ (cfg_resp_V_ap_ack or ap_sig_bdd_117)
begin
    ap_sig_bdd_275 = ((ap_const_logic_1 == cfg_resp_V_ap_ack) & ~ap_sig_bdd_117);
end
assign cfg_resp_V = p_0211_1_phi_fu_128_p16;
assign r_V_fu_288_p1 = $unsigned(tmp_fu_276_p5);
assign raddr_V_fu_174_p4 = {{cfg_req_V[ap_const_lv32_44 : ap_const_lv32_40]}};
assign req_V_2_fu_321_p3 = {{ap_const_lv1_1}, {tmp_3_fu_317_p1}};
assign resp_V_1_fu_204_p1 = $unsigned(s_first_ds_id_V);
assign resp_V_2_fu_200_p1 = $unsigned(s_first_index_V);
assign resp_V_3_fu_196_p1 = $unsigned(s_last_ds_id_V);
assign resp_V_4_fu_192_p1 = $unsigned(s_last_index_V);
assign resp_V_5_fu_188_p1 = $unsigned(s_pred_V);
assign resp_V_fu_216_p0 = $signed(s_result);
assign resp_V_fu_216_p1 = $unsigned(resp_V_fu_216_p0);
assign tmp_1_fu_220_p2 = (raddr_V_fu_174_p4 == ap_const_lv5_0? 1'b1: 1'b0);
assign tmp_2_fu_150_p3 = cfg_req_V[ap_const_lv32_45];
assign tmp_3_fu_317_p1 = $unsigned(tmp_5_fu_303_p7);
assign tmp_4_fu_299_p1 = g_itu_iface_resp_V[6:0];
assign tmp_5_fu_303_p7 = {{{{{{s_last_ds_id_V_load_reg_334}, {ap_const_lv16_0}}, {s_last_index_V_load_reg_339}}, {ap_const_lv24_0}}, {tmp_4_fu_299_p1}}, {ap_const_lv1_1}};
assign tmp_fu_276_p5 = {{{{s_first_ds_id_V}, {ap_const_lv16_0}}, {s_first_index_V}}, {ap_const_lv32_0}};
always @ (posedge ap_clk)
begin
    s_result[0] <= 1'b0;
    s_result[3] <= 1'b0;
    p_0211_1_reg_124[31:16] <= 16'b0000000000000000;
end



endmodule //top
