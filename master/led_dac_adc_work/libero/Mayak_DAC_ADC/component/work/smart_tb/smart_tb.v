//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Mar 11 19:01:19 2016
// Version: v11.6 SP1 11.6.1.6
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// smart_tb
module smart_tb(
    // Inputs
    ANTF_n1,
    ANTF_n2,
    BW,
    DEVRST_N,
    GPIO10,
    GPIO11,
    GPIO8,
    GPIO9,
    GPS1_I0,
    GPS1_I1,
    GPS1_LD,
    GPS1_Q0,
    GPS1_Q1,
    GPS2_LD,
    GPS2_Q0,
    GPS2_Q1,
    GPS_I0,
    GPS_I1,
    SENSE_DIN,
    adc_clk,
    adc_d0,
    adc_oen,
    adc_of,
    osc_vcc,
    temp_so,
    // Outputs
    AMP_EN,
    BW_36,
    BW_clk,
    BW_out,
    CSN_n1,
    CTR1,
    CTR2,
    CTR3,
    CTR4,
    CTR5,
    CTR6,
    CTR7,
    GPIO1,
    GPIO12,
    GPIO14,
    GPIO15,
    GPIO16,
    GPIO17,
    GPIO19,
    GPIO2,
    GPIO20,
    GPIO3,
    GPIO4,
    GPIO5,
    GPIO6,
    GPIO7,
    GPS1_IDLE,
    GPS1_PGM,
    GPS1_SCLK,
    GPS1_SDATA,
    GPS1_SHDN,
    REF_CE,
    REF_CLK,
    REF_DATA,
    REF_LD,
    REF_LE,
    REF_MXOUT,
    SENSE_CS_1,
    SENSE_DOUT,
    adc_shdn,
    clk_out_n1,
    clk_out_n2,
    dac1_clk,
    dac1_db,
    dac1_sleep,
    dac2_clk,
    dsa_clk,
    dsa_data,
    dsa_le,
    en_modul,
    fl_a,
    fl_byten,
    fl_cen,
    fl_dq,
    fl_oen,
    fl_resetn,
    fl_ryby,
    fl_wen,
    fl_wpn,
    oclk_1,
    out1,
    out2,
    sr_cs1n,
    sr_cs2,
    sr_lbn,
    sr_oen,
    sr_ubn,
    sr_wen,
    temp1_csn,
    temp2_csn,
    temp3_csn,
    temp_sck_0
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         ANTF_n1;
input         ANTF_n2;
input  [14:0] BW;
input         DEVRST_N;
input         GPIO10;
input         GPIO11;
input         GPIO8;
input         GPIO9;
input         GPS1_I0;
input         GPS1_I1;
input         GPS1_LD;
input         GPS1_Q0;
input         GPS1_Q1;
input         GPS2_LD;
input         GPS2_Q0;
input         GPS2_Q1;
input         GPS_I0;
input         GPS_I1;
input  [1:0]  SENSE_DIN;
input         adc_clk;
input  [13:0] adc_d0;
input         adc_oen;
input         adc_of;
input         osc_vcc;
input         temp_so;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        AMP_EN;
output        BW_36;
output        BW_clk;
output [14:0] BW_out;
output        CSN_n1;
output        CTR1;
output        CTR2;
output        CTR3;
output        CTR4;
output        CTR5;
output        CTR6;
output        CTR7;
output        GPIO1;
output        GPIO12;
output        GPIO14;
output        GPIO15;
output        GPIO16;
output        GPIO17;
output        GPIO19;
output        GPIO2;
output        GPIO20;
output        GPIO3;
output        GPIO4;
output        GPIO5;
output        GPIO6;
output        GPIO7;
output        GPS1_IDLE;
output        GPS1_PGM;
output        GPS1_SCLK;
output        GPS1_SDATA;
output        GPS1_SHDN;
output        REF_CE;
output        REF_CLK;
output        REF_DATA;
output        REF_LD;
output        REF_LE;
output        REF_MXOUT;
output        SENSE_CS_1;
output [1:0]  SENSE_DOUT;
output        adc_shdn;
output        clk_out_n1;
output        clk_out_n2;
output        dac1_clk;
output [13:5] dac1_db;
output        dac1_sleep;
output        dac2_clk;
output        dsa_clk;
output        dsa_data;
output        dsa_le;
output        en_modul;
output [25:0] fl_a;
output        fl_byten;
output        fl_cen;
output [7:0]  fl_dq;
output        fl_oen;
output        fl_resetn;
output        fl_ryby;
output        fl_wen;
output        fl_wpn;
output        oclk_1;
output        out1;
output        out2;
output        sr_cs1n;
output        sr_cs2;
output        sr_lbn;
output        sr_oen;
output        sr_ubn;
output        sr_wen;
output        temp1_csn;
output        temp2_csn;
output        temp3_csn;
output        temp_sck_0;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          adc_clk;
wire   [13:0] adc_d0;
wire          adc_oen;
wire          adc_of;
wire          adc_shdn_net_0;
wire          AMP_EN_net_0;
wire          ANTF_n1;
wire          ANTF_n2;
wire   [14:0] BW;
wire          BW_36_net_0;
wire          BW_clk_net_0;
wire   [14:0] BW_out_net_0;
wire          clk_out_n1_net_0;
wire          clk_out_n2_net_0;
wire          CSN_n1_net_0;
wire          CTR1_net_0;
wire          CTR2_net_0;
wire          CTR3_net_0;
wire          CTR4_net_0;
wire          CTR5_net_0;
wire          CTR6_net_0;
wire          CTR7_net_0;
wire          dac1_clk_net_0;
wire   [13:5] dac1_db_net_0;
wire          dac1_sleep_net_0;
wire          dac2_clk_net_0;
wire          DEVRST_N;
wire          dsa_clk_net_0;
wire          dsa_data_net_0;
wire          dsa_le_net_0;
wire          en_modul_net_0;
wire   [25:0] fl_a_net_0;
wire          fl_byten_net_0;
wire          fl_cen_net_0;
wire   [7:0]  fl_dq_net_0;
wire          fl_oen_net_0;
wire          fl_resetn_net_0;
wire          fl_ryby_net_0;
wire          fl_wen_net_0;
wire          fl_wpn_net_0;
wire          GPIO1_net_0;
wire          GPIO2_net_0;
wire          GPIO3_net_0;
wire          GPIO4_net_0;
wire          GPIO5_net_0;
wire          GPIO6_net_0;
wire          GPIO7_net_0;
wire          GPIO8;
wire          GPIO9;
wire          GPIO10;
wire          GPIO11;
wire          GPIO12_net_0;
wire          GPIO14_net_0;
wire          GPIO15_net_0;
wire          GPIO16_net_0;
wire          GPIO17_net_0;
wire          GPIO19_net_0;
wire          GPIO20_net_0;
wire          GPS1_I0;
wire          GPS1_I1;
wire          GPS1_IDLE_net_0;
wire          GPS1_LD;
wire          GPS1_PGM_net_0;
wire          GPS1_Q0;
wire          GPS1_Q1;
wire          GPS1_SCLK_net_0;
wire          GPS1_SDATA_net_0;
wire          GPS1_SHDN_net_0;
wire          GPS2_LD;
wire          GPS2_Q0;
wire          GPS2_Q1;
wire          GPS_I0;
wire          GPS_I1;
wire          oclk_1_net_0;
wire          osc_vcc;
wire          out1_net_0;
wire          out2_net_0;
wire          REF_CE_net_0;
wire          REF_CLK_net_0;
wire          REF_DATA_net_0;
wire          REF_LD_net_0;
wire          REF_LE_net_0;
wire          REF_MXOUT_net_0;
wire          SENSE_CS_1_net_0;
wire   [1:0]  SENSE_DIN;
wire   [1:0]  SENSE_DOUT_net_0;
wire          sr_cs1n_net_0;
wire          sr_cs2_net_0;
wire          sr_lbn_net_0;
wire          sr_oen_net_0;
wire          sr_ubn_net_0;
wire          sr_wen_net_0;
wire          temp1_csn_net_0;
wire          temp2_csn_net_0;
wire          temp3_csn_net_0;
wire          temp_sck_0_net_0;
wire          temp_so;
wire          GPIO16_net_1;
wire          REF_DATA_net_1;
wire          CTR2_net_1;
wire          CTR3_net_1;
wire          GPIO6_net_1;
wire          fl_cen_net_1;
wire          fl_resetn_net_1;
wire          GPIO17_net_1;
wire          out2_net_1;
wire          sr_lbn_net_1;
wire          GPIO15_net_1;
wire          GPIO14_net_1;
wire          dac1_sleep_net_1;
wire          GPIO1_net_1;
wire          out1_net_1;
wire          fl_byten_net_1;
wire          SENSE_CS_1_net_1;
wire          CTR6_net_1;
wire          GPS1_SCLK_net_1;
wire          CSN_n1_net_1;
wire          CTR1_net_1;
wire          sr_cs1n_net_1;
wire          GPS1_IDLE_net_1;
wire          sr_oen_net_1;
wire          fl_wpn_net_1;
wire          fl_wen_net_1;
wire          AMP_EN_net_1;
wire          REF_CE_net_1;
wire          dac1_clk_net_1;
wire          dac2_clk_net_1;
wire          BW_36_net_1;
wire          GPIO20_net_1;
wire          en_modul_net_1;
wire          GPIO4_net_1;
wire          GPS1_SHDN_net_1;
wire          REF_MXOUT_net_1;
wire          dsa_clk_net_1;
wire          dsa_data_net_1;
wire          GPIO3_net_1;
wire          dsa_le_net_1;
wire          oclk_1_net_1;
wire          REF_LE_net_1;
wire          GPIO7_net_1;
wire          CTR5_net_1;
wire          sr_ubn_net_1;
wire          GPIO12_net_1;
wire          GPS1_SDATA_net_1;
wire          sr_wen_net_1;
wire          GPIO5_net_1;
wire          REF_CLK_net_1;
wire          GPIO2_net_1;
wire          REF_LD_net_1;
wire          CTR4_net_1;
wire          fl_oen_net_1;
wire          clk_out_n2_net_1;
wire          sr_cs2_net_1;
wire          CTR7_net_1;
wire          fl_ryby_net_1;
wire          GPIO19_net_1;
wire          GPS1_PGM_net_1;
wire          adc_shdn_net_1;
wire          clk_out_n1_net_1;
wire          temp_sck_0_net_1;
wire          BW_clk_net_1;
wire   [1:0]  SENSE_DOUT_net_1;
wire   [7:0]  fl_dq_net_1;
wire   [25:0] fl_a_net_1;
wire   [13:5] dac1_db_net_1;
wire   [14:0] BW_out_net_1;
wire          temp3_csn_net_1;
wire          temp1_csn_net_1;
wire          temp2_csn_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GPIO16_net_1     = GPIO16_net_0;
assign GPIO16           = GPIO16_net_1;
assign REF_DATA_net_1   = REF_DATA_net_0;
assign REF_DATA         = REF_DATA_net_1;
assign CTR2_net_1       = CTR2_net_0;
assign CTR2             = CTR2_net_1;
assign CTR3_net_1       = CTR3_net_0;
assign CTR3             = CTR3_net_1;
assign GPIO6_net_1      = GPIO6_net_0;
assign GPIO6            = GPIO6_net_1;
assign fl_cen_net_1     = fl_cen_net_0;
assign fl_cen           = fl_cen_net_1;
assign fl_resetn_net_1  = fl_resetn_net_0;
assign fl_resetn        = fl_resetn_net_1;
assign GPIO17_net_1     = GPIO17_net_0;
assign GPIO17           = GPIO17_net_1;
assign out2_net_1       = out2_net_0;
assign out2             = out2_net_1;
assign sr_lbn_net_1     = sr_lbn_net_0;
assign sr_lbn           = sr_lbn_net_1;
assign GPIO15_net_1     = GPIO15_net_0;
assign GPIO15           = GPIO15_net_1;
assign GPIO14_net_1     = GPIO14_net_0;
assign GPIO14           = GPIO14_net_1;
assign dac1_sleep_net_1 = dac1_sleep_net_0;
assign dac1_sleep       = dac1_sleep_net_1;
assign GPIO1_net_1      = GPIO1_net_0;
assign GPIO1            = GPIO1_net_1;
assign out1_net_1       = out1_net_0;
assign out1             = out1_net_1;
assign fl_byten_net_1   = fl_byten_net_0;
assign fl_byten         = fl_byten_net_1;
assign SENSE_CS_1_net_1 = SENSE_CS_1_net_0;
assign SENSE_CS_1       = SENSE_CS_1_net_1;
assign CTR6_net_1       = CTR6_net_0;
assign CTR6             = CTR6_net_1;
assign GPS1_SCLK_net_1  = GPS1_SCLK_net_0;
assign GPS1_SCLK        = GPS1_SCLK_net_1;
assign CSN_n1_net_1     = CSN_n1_net_0;
assign CSN_n1           = CSN_n1_net_1;
assign CTR1_net_1       = CTR1_net_0;
assign CTR1             = CTR1_net_1;
assign sr_cs1n_net_1    = sr_cs1n_net_0;
assign sr_cs1n          = sr_cs1n_net_1;
assign GPS1_IDLE_net_1  = GPS1_IDLE_net_0;
assign GPS1_IDLE        = GPS1_IDLE_net_1;
assign sr_oen_net_1     = sr_oen_net_0;
assign sr_oen           = sr_oen_net_1;
assign fl_wpn_net_1     = fl_wpn_net_0;
assign fl_wpn           = fl_wpn_net_1;
assign fl_wen_net_1     = fl_wen_net_0;
assign fl_wen           = fl_wen_net_1;
assign AMP_EN_net_1     = AMP_EN_net_0;
assign AMP_EN           = AMP_EN_net_1;
assign REF_CE_net_1     = REF_CE_net_0;
assign REF_CE           = REF_CE_net_1;
assign dac1_clk_net_1   = dac1_clk_net_0;
assign dac1_clk         = dac1_clk_net_1;
assign dac2_clk_net_1   = dac2_clk_net_0;
assign dac2_clk         = dac2_clk_net_1;
assign BW_36_net_1      = BW_36_net_0;
assign BW_36            = BW_36_net_1;
assign GPIO20_net_1     = GPIO20_net_0;
assign GPIO20           = GPIO20_net_1;
assign en_modul_net_1   = en_modul_net_0;
assign en_modul         = en_modul_net_1;
assign GPIO4_net_1      = GPIO4_net_0;
assign GPIO4            = GPIO4_net_1;
assign GPS1_SHDN_net_1  = GPS1_SHDN_net_0;
assign GPS1_SHDN        = GPS1_SHDN_net_1;
assign REF_MXOUT_net_1  = REF_MXOUT_net_0;
assign REF_MXOUT        = REF_MXOUT_net_1;
assign dsa_clk_net_1    = dsa_clk_net_0;
assign dsa_clk          = dsa_clk_net_1;
assign dsa_data_net_1   = dsa_data_net_0;
assign dsa_data         = dsa_data_net_1;
assign GPIO3_net_1      = GPIO3_net_0;
assign GPIO3            = GPIO3_net_1;
assign dsa_le_net_1     = dsa_le_net_0;
assign dsa_le           = dsa_le_net_1;
assign oclk_1_net_1     = oclk_1_net_0;
assign oclk_1           = oclk_1_net_1;
assign REF_LE_net_1     = REF_LE_net_0;
assign REF_LE           = REF_LE_net_1;
assign GPIO7_net_1      = GPIO7_net_0;
assign GPIO7            = GPIO7_net_1;
assign CTR5_net_1       = CTR5_net_0;
assign CTR5             = CTR5_net_1;
assign sr_ubn_net_1     = sr_ubn_net_0;
assign sr_ubn           = sr_ubn_net_1;
assign GPIO12_net_1     = GPIO12_net_0;
assign GPIO12           = GPIO12_net_1;
assign GPS1_SDATA_net_1 = GPS1_SDATA_net_0;
assign GPS1_SDATA       = GPS1_SDATA_net_1;
assign sr_wen_net_1     = sr_wen_net_0;
assign sr_wen           = sr_wen_net_1;
assign GPIO5_net_1      = GPIO5_net_0;
assign GPIO5            = GPIO5_net_1;
assign REF_CLK_net_1    = REF_CLK_net_0;
assign REF_CLK          = REF_CLK_net_1;
assign GPIO2_net_1      = GPIO2_net_0;
assign GPIO2            = GPIO2_net_1;
assign REF_LD_net_1     = REF_LD_net_0;
assign REF_LD           = REF_LD_net_1;
assign CTR4_net_1       = CTR4_net_0;
assign CTR4             = CTR4_net_1;
assign fl_oen_net_1     = fl_oen_net_0;
assign fl_oen           = fl_oen_net_1;
assign clk_out_n2_net_1 = clk_out_n2_net_0;
assign clk_out_n2       = clk_out_n2_net_1;
assign sr_cs2_net_1     = sr_cs2_net_0;
assign sr_cs2           = sr_cs2_net_1;
assign CTR7_net_1       = CTR7_net_0;
assign CTR7             = CTR7_net_1;
assign fl_ryby_net_1    = fl_ryby_net_0;
assign fl_ryby          = fl_ryby_net_1;
assign GPIO19_net_1     = GPIO19_net_0;
assign GPIO19           = GPIO19_net_1;
assign GPS1_PGM_net_1   = GPS1_PGM_net_0;
assign GPS1_PGM         = GPS1_PGM_net_1;
assign adc_shdn_net_1   = adc_shdn_net_0;
assign adc_shdn         = adc_shdn_net_1;
assign clk_out_n1_net_1 = clk_out_n1_net_0;
assign clk_out_n1       = clk_out_n1_net_1;
assign temp_sck_0_net_1 = temp_sck_0_net_0;
assign temp_sck_0       = temp_sck_0_net_1;
assign BW_clk_net_1     = BW_clk_net_0;
assign BW_clk           = BW_clk_net_1;
assign SENSE_DOUT_net_1 = SENSE_DOUT_net_0;
assign SENSE_DOUT[1:0]  = SENSE_DOUT_net_1;
assign fl_dq_net_1      = fl_dq_net_0;
assign fl_dq[7:0]       = fl_dq_net_1;
assign fl_a_net_1       = fl_a_net_0;
assign fl_a[25:0]       = fl_a_net_1;
assign dac1_db_net_1    = dac1_db_net_0;
assign dac1_db[13:5]    = dac1_db_net_1;
assign BW_out_net_1     = BW_out_net_0;
assign BW_out[14:0]     = BW_out_net_1;
assign temp3_csn_net_1  = temp3_csn_net_0;
assign temp3_csn        = temp3_csn_net_1;
assign temp1_csn_net_1  = temp1_csn_net_0;
assign temp1_csn        = temp1_csn_net_1;
assign temp2_csn_net_1  = temp2_csn_net_0;
assign temp2_csn        = temp2_csn_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------build
build build_0(
        // Inputs
        .DEVRST_N   ( DEVRST_N ),
        .osc_vcc    ( osc_vcc ),
        .GPS1_Q0    ( GPS1_Q0 ),
        .adc_oen    ( adc_oen ),
        .GPS2_LD    ( GPS2_LD ),
        .GPIO8      ( GPIO8 ),
        .GPS_I1     ( GPS_I1 ),
        .adc_clk    ( adc_clk ),
        .GPIO9      ( GPIO9 ),
        .GPS_I0     ( GPS_I0 ),
        .GPIO11     ( GPIO11 ),
        .GPS1_I0    ( GPS1_I0 ),
        .GPIO10     ( GPIO10 ),
        .GPS2_Q0    ( GPS2_Q0 ),
        .GPS1_LD    ( GPS1_LD ),
        .adc_of     ( adc_of ),
        .GPS1_I1    ( GPS1_I1 ),
        .GPS1_Q1    ( GPS1_Q1 ),
        .ANTF_n2    ( ANTF_n2 ),
        .ANTF_n1    ( ANTF_n1 ),
        .GPS2_Q1    ( GPS2_Q1 ),
        .SENSE_DIN  ( SENSE_DIN ),
        .adc_d0     ( adc_d0 ),
        .BW         ( BW ),
        .temp_so    ( temp_so ),
        // Outputs
        .BW_36      ( BW_36_net_0 ),
        .sr_oen     ( sr_oen_net_0 ),
        .REF_DATA   ( REF_DATA_net_0 ),
        .sr_ubn     ( sr_ubn_net_0 ),
        .GPIO20     ( GPIO20_net_0 ),
        .fl_resetn  ( fl_resetn_net_0 ),
        .GPIO12     ( GPIO12_net_0 ),
        .GPS1_SCLK  ( GPS1_SCLK_net_0 ),
        .dac2_clk   ( dac2_clk_net_0 ),
        .out1       ( out1_net_0 ),
        .fl_oen     ( fl_oen_net_0 ),
        .GPIO15     ( GPIO15_net_0 ),
        .REF_LD     ( REF_LD_net_0 ),
        .CTR1       ( CTR1_net_0 ),
        .GPS1_PGM   ( GPS1_PGM_net_0 ),
        .dac1_clk   ( dac1_clk_net_0 ),
        .oclk_1     ( oclk_1_net_0 ),
        .GPIO6      ( GPIO6_net_0 ),
        .CTR7       ( CTR7_net_0 ),
        .out2       ( out2_net_0 ),
        .CTR5       ( CTR5_net_0 ),
        .GPIO19     ( GPIO19_net_0 ),
        .fl_ryby    ( fl_ryby_net_0 ),
        .CTR3       ( CTR3_net_0 ),
        .fl_wen     ( fl_wen_net_0 ),
        .REF_CLK    ( REF_CLK_net_0 ),
        .clk_out_n1 ( clk_out_n1_net_0 ),
        .GPIO2      ( GPIO2_net_0 ),
        .dsa_le     ( dsa_le_net_0 ),
        .GPS1_IDLE  ( GPS1_IDLE_net_0 ),
        .REF_LE     ( REF_LE_net_0 ),
        .GPS1_SDATA ( GPS1_SDATA_net_0 ),
        .fl_cen     ( fl_cen_net_0 ),
        .GPS1_SHDN  ( GPS1_SHDN_net_0 ),
        .dac1_sleep ( dac1_sleep_net_0 ),
        .GPIO7      ( GPIO7_net_0 ),
        .sr_cs2     ( sr_cs2_net_0 ),
        .CTR6       ( CTR6_net_0 ),
        .REF_CE     ( REF_CE_net_0 ),
        .GPIO14     ( GPIO14_net_0 ),
        .sr_wen     ( sr_wen_net_0 ),
        .GPIO3      ( GPIO3_net_0 ),
        .dsa_clk    ( dsa_clk_net_0 ),
        .fl_byten   ( fl_byten_net_0 ),
        .CSN_n1     ( CSN_n1_net_0 ),
        .fl_wpn     ( fl_wpn_net_0 ),
        .CTR2       ( CTR2_net_0 ),
        .GPIO1      ( GPIO1_net_0 ),
        .dsa_data   ( dsa_data_net_0 ),
        .CTR4       ( CTR4_net_0 ),
        .en_modul   ( en_modul_net_0 ),
        .sr_lbn     ( sr_lbn_net_0 ),
        .GPIO4      ( GPIO4_net_0 ),
        .GPIO16     ( GPIO16_net_0 ),
        .REF_MXOUT  ( REF_MXOUT_net_0 ),
        .clk_out_n2 ( clk_out_n2_net_0 ),
        .AMP_EN     ( AMP_EN_net_0 ),
        .sr_cs1n    ( sr_cs1n_net_0 ),
        .adc_shdn   ( adc_shdn_net_0 ),
        .SENSE_CS_1 ( SENSE_CS_1_net_0 ),
        .GPIO5      ( GPIO5_net_0 ),
        .GPIO17     ( GPIO17_net_0 ),
        .BW_clk     ( BW_clk_net_0 ),
        .temp_sck   ( temp_sck_0_net_0 ),
        .SENSE_DOUT ( SENSE_DOUT_net_0 ),
        .dac1_db    ( dac1_db_net_0 ),
        .fl_dq      ( fl_dq_net_0 ),
        .fl_a       ( fl_a_net_0 ),
        .BW_out     ( BW_out_net_0 ),
        .temp1_csn  ( temp1_csn_net_0 ),
        .temp3_csn  ( temp3_csn_net_0 ),
        .temp2_csn  ( temp2_csn_net_0 ) 
        );


endmodule
