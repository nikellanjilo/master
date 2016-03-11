`timescale 1 ns/100 ps
// Version: v11.6 SP1 11.6.1.6


module RCOSC_25_50MHZ(
       CLKOUT
    );
output CLKOUT;

    parameter FREQUENCY = 50.0 ;
    
endmodule


module led_igloo(
       dac1_db_c,
       SENSE_DOUT_c,
       adc_d0_c,
       dac1_clk_c,
       dac1_clk_c_i_0,
       build_sb_0_FAB_CCC_GL2,
       GPIO20_c,
       build_sb_0_FAB_CCC_GL1_i_0,
       build_sb_0_FAB_CCC_GL1,
       GPIO4_c,
       SENSE_CS_1_c,
       GPIO16_c,
       GPIO7_c,
       oclk_1_c,
       GPIO6_c,
       ANTF_n2_c,
       ANTF_n1_c,
       GPS1_LD_c,
       GPS1_I1_c,
       GPS1_I0_c,
       GPIO9_c,
       GPS2_Q0_c,
       GPS2_LD_c,
       GPS1_Q1_c,
       GPS1_Q0_c,
       adc_clk_c,
       GPS_I1_c,
       GPS_I0_c,
       GPS2_Q1_c,
       temp1_so_c,
       osc_vcc_c,
       adc_of_c,
       adc_oen_c,
       temp_sck_c,
       temp_csn_c,
       temp3_so_c,
       temp2_so_c,
       GPIO11_c,
       GPIO3_c,
       GPIO5_c
    );
output [13:5] dac1_db_c;
output [1:1] SENSE_DOUT_c;
input  [13:0] adc_d0_c;
output dac1_clk_c;
output dac1_clk_c_i_0;
input  build_sb_0_FAB_CCC_GL2;
output GPIO20_c;
input  build_sb_0_FAB_CCC_GL1_i_0;
input  build_sb_0_FAB_CCC_GL1;
input  GPIO4_c;
output SENSE_CS_1_c;
output GPIO16_c;
output GPIO7_c;
output oclk_1_c;
input  GPIO6_c;
input  ANTF_n2_c;
input  ANTF_n1_c;
input  GPS1_LD_c;
input  GPS1_I1_c;
input  GPS1_I0_c;
input  GPIO9_c;
input  GPS2_Q0_c;
input  GPS2_LD_c;
input  GPS1_Q1_c;
input  GPS1_Q0_c;
input  adc_clk_c;
input  GPS_I1_c;
input  GPS_I0_c;
input  GPS2_Q1_c;
input  temp1_so_c;
input  osc_vcc_c;
input  adc_of_c;
input  adc_oen_c;
input  temp_sck_c;
input  temp_csn_c;
input  temp3_so_c;
input  temp2_so_c;
input  GPIO11_c;
output GPIO3_c;
output GPIO5_c;

    wire \cnt_freq[0]_net_1 , \cnt_freq_s[0] , \dac_count_3[0] , 
        \dac_count_3_i_0[0] , \data_from_adc[2]_RNIAMJKD[11]_net_1 , 
        N_146_i, VCC_net_1, N_21_i_0, GND_net_1, N_20_i_0, N_19_i_0, 
        N_18_i_0, \dac_count[1]_net_1 , \dac_count_3[1] , 
        \dac_count[2]_net_1 , \dac_count_3[2] , \dac_count[3]_net_1 , 
        \dac_count_3[3] , \dac_count[4]_net_1 , \dac_count_3[4] , 
        \dac_count[5]_net_1 , \dac_count_3[5] , \dac_count[6]_net_1 , 
        \dac_count_3[6] , \dac_count[7]_net_1 , \dac_count_3[7] , 
        \dac_count[8]_net_1 , \dac_count_3[8] , N_25_i_0, N_24_i_0, 
        N_23_i_0, N_22_i_0, \cnt_frame[0]_net_1 , N_48_i_0, 
        \cnt_frame[1]_net_1 , N_47_i_0, \cnt_frame[2]_net_1 , N_46_i_0, 
        \cnt_frame[3]_net_1 , \cnt_frame_0_0[3]_net_1 , 
        \freq[16]_net_1 , freq16, N_42_mux_i_0, \freq[18]_net_1 , 
        \freq_RNO[18]_net_1 , \freq[19]_net_1 , freq4_i_0, 
        \freq[11]_net_1 , \un1_data_from_adc[2]_2_i_0_i_0 , \freq[17] , 
        N_181_i_0, \freq[13]_net_1 , freq10, \state[0]_net_1 , 
        N_185_i_0, N_70_i_0, \state[1]_net_1 , N_45_i_0, 
        \freq[21]_net_1 , \un1_data_from_adc[2]_i_0 , \freq[22]_net_1 , 
        \un1_data_from_adc[2]_2_i_0 , \data_from_adc[2][0]_net_1 , 
        \data_from_adc[2]_1 , \data_from_adc[2][1]_net_1 , 
        \data_from_adc[2]_2 , \data_from_adc[2][2]_net_1 , 
        \data_from_adc[2]_3 , \data_from_adc[2][3]_net_1 , 
        \data_from_adc[2]_4 , \data_from_adc[2][4]_net_1 , 
        \data_from_adc[2]_5 , \data_from_adc[2][5]_net_1 , 
        \data_from_adc[2]_6 , \data_from_adc[2][6]_net_1 , 
        \data_from_adc[2]_7 , \data_from_adc[2][7]_net_1 , 
        \data_from_adc[2]_8 , \data_from_adc[2][8]_net_1 , 
        \data_from_adc[2]_9 , \data_from_adc[2][9]_net_1 , 
        \data_from_adc[2]_10 , \data_from_adc[2][10]_net_1 , 
        \data_from_adc[2]_11 , \data_from_adc[2][11]_net_1 , 
        \data_from_adc[2]_12 , N_43_i_0, N_14_i_0, N_44, state17, 
        N_17_i_0, cnt_freq6, \cnt_freq[1]_net_1 , \cnt_freq_s[1] , 
        \cnt_freq[2]_net_1 , \cnt_freq_s[2] , \cnt_freq[3]_net_1 , 
        \cnt_freq_s[3] , \cnt_freq[4]_net_1 , \cnt_freq_s[4] , 
        \cnt_freq[5]_net_1 , \cnt_freq_s[5] , \cnt_freq[6]_net_1 , 
        \cnt_freq_s[6] , \cnt_freq[7]_net_1 , \cnt_freq_s[7] , 
        \cnt_freq[8]_net_1 , \cnt_freq_s[8] , \cnt_freq[9]_net_1 , 
        \cnt_freq_s[9] , \cnt_freq[10]_net_1 , \cnt_freq_s[10] , 
        \cnt_freq[11]_net_1 , \cnt_freq_s[11] , \cnt_freq[12]_net_1 , 
        \cnt_freq_s[12] , \cnt_freq[13]_net_1 , \cnt_freq_s[13] , 
        \cnt_freq[14]_net_1 , \cnt_freq_s[14] , \cnt_freq[15]_net_1 , 
        \cnt_freq_s[15] , \cnt_freq[16]_net_1 , \cnt_freq_s[16] , 
        \cnt_freq[17]_net_1 , \cnt_freq_s[17] , \cnt_freq[18]_net_1 , 
        \cnt_freq_s[18] , \cnt_freq[19]_net_1 , \cnt_freq_s[19] , 
        \cnt_freq[20]_net_1 , \cnt_freq_s[20] , \cnt_freq[21]_net_1 , 
        \cnt_freq_s[21] , \cnt_freq[22]_net_1 , \cnt_freq_s[22] , 
        \cnt_freq[23]_net_1 , \cnt_freq_s[23] , \cnt_freq[24]_net_1 , 
        \cnt_freq_s[24] , \cnt_freq[25]_net_1 , \cnt_freq_s[25] , 
        \cnt_freq[26]_net_1 , \cnt_freq_s[26] , \cnt_freq[27]_net_1 , 
        \cnt_freq_s[27] , \cnt_freq[28]_net_1 , \cnt_freq_s[28] , 
        \cnt_freq[29]_net_1 , \cnt_freq_s[29] , \cnt_freq[30]_net_1 , 
        \cnt_freq_s[30] , \cnt_freq[31]_net_1 , \cnt_freq_s[31]_net_1 , 
        \cnt_s[0] , cnte, \cnt[1]_net_1 , \cnt_s[1] , \cnt[2]_net_1 , 
        \cnt_s[2] , \cnt[3]_net_1 , \cnt_s[3] , \cnt[4]_net_1 , 
        \cnt_s[4] , \cnt[5]_net_1 , \cnt_s[5]_net_1 , \freq[8]_net_1 , 
        \data_from_adc[2]_RNI6JK4H[11]_net_1 , \freq[9]_net_1 , 
        \freq_RNO[9]_net_1 , \freq[7]_net_1 , freq4, cnt_cry_cy, 
        N_49_i_0, \cnt_cry[0]_net_1 , \cnt_cry[1]_net_1 , 
        \cnt_cry[2]_net_1 , \cnt_cry[3]_net_1 , \cnt_cry[4]_net_1 , 
        cnt_freq6_cry_7_net_1, cnt_freq6_cry_8_net_1, 
        cnt_freq6_cry_9_net_1, cnt_freq6_cry_10_net_1, 
        cnt_freq6_cry_11_net_1, cnt_freq6_cry_12_net_1, 
        cnt_freq6_cry_13_net_1, cnt_freq6_cry_14_net_1, 
        cnt_freq6_cry_15_net_1, cnt_freq6_cry_16_net_1, 
        cnt_freq6_cry_17_net_1, cnt_freq6_cry_18_net_1, 
        cnt_freq6_cry_19_net_1, cnt_freq6_cry_20_net_1, 
        cnt_freq6_cry_21_net_1, cnt_freq6_cry_22_net_1, 
        cnt_freq6_cry_23_net_1, cnt_freq6_cry_24_net_1, 
        cnt_freq6_cry_25_net_1, cnt_freq6_cry_26_net_1, 
        cnt_freq6_cry_27_net_1, cnt_freq6_cry_28_net_1, 
        cnt_freq6_cry_29_net_1, cnt_freq6_cry_30_net_1, 
        cnt_freq_s_26_FCO, \cnt_freq_cry[1]_net_1 , 
        \cnt_freq_cry[2]_net_1 , \cnt_freq_cry[3]_net_1 , 
        \cnt_freq_cry[4]_net_1 , \cnt_freq_cry[5]_net_1 , 
        \cnt_freq_cry[6]_net_1 , \cnt_freq_cry[7]_net_1 , 
        \cnt_freq_cry[8]_net_1 , \cnt_freq_cry[9]_net_1 , 
        \cnt_freq_cry[10]_net_1 , \cnt_freq_cry[11]_net_1 , 
        \cnt_freq_cry[12]_net_1 , \cnt_freq_cry[13]_net_1 , 
        \cnt_freq_cry[14]_net_1 , \cnt_freq_cry[15]_net_1 , 
        \cnt_freq_cry[16]_net_1 , \cnt_freq_cry[17]_net_1 , 
        \cnt_freq_cry[18]_net_1 , \cnt_freq_cry[19]_net_1 , 
        \cnt_freq_cry[20]_net_1 , \cnt_freq_cry[21]_net_1 , 
        \cnt_freq_cry[22]_net_1 , \cnt_freq_cry[23]_net_1 , 
        \cnt_freq_cry[24]_net_1 , \cnt_freq_cry[25]_net_1 , 
        \cnt_freq_cry[26]_net_1 , \cnt_freq_cry[27]_net_1 , 
        \cnt_freq_cry[28]_net_1 , \cnt_freq_cry[29]_net_1 , 
        \cnt_freq_cry[30]_net_1 , dac_count_3_s_0_27_FCO, 
        dac_count_3_cry_0_net_1, dac_count_3_cry_1_net_1, 
        dac_count_3_cry_2_net_1, dac_count_3_cry_3_net_1, 
        dac_count_3_cry_4_net_1, dac_count_3_cry_5_net_1, 
        dac_count_3_cry_6_net_1, dac_count_3_cry_7_net_1, 
        \data_from_adc[2]_RNILGS37[10]_net_1 , 
        \data_from_adc[2]_RNIIADE6_0[10]_net_1 , 
        \data_from_adc[2]_RNISE5M3[9]_net_1 , N_8_0, N_40_mux, N_27, 
        \data_from_adc[2]_8_0_0_a2_0 , \data_from_adc[2]_12_0_0_a2_0 , 
        \data_from_adc[2]_10_0_0_a2_0 , \data_from_adc[2]_11_0_0_a2_0 , 
        SENSE_DOUT61_i_0_net_1, GPIO3_6_net_1, N_60, N_118, N_50, 
        N_108, N_104, N_37, m12_2, \data_from_adc[2]_1_0_0_a2_1 , 
        \data_from_adc[2]_2_0_0_a2_0_1 , 
        \data_from_adc[2]_2_0_0_a2_1_0 , \SENSE_DOUT_2_1_u_i_a2_1[1] , 
        \cnt_frame_0_0_a2_0_2_1[3]_net_1 , GPIO5_17_net_1, 
        GPIO5_16_net_1, GPIO5_15_net_1, GPIO5_14_net_1, GPIO5_13_net_1, 
        GPIO5_12_net_1, GPIO3_9_net_1, GPIO3_8_net_1, GPIO3_7_net_1, 
        N_99, N_57, N_35_mux, N_52, cnt_frame_0_sqmuxa, N_81, N_86, 
        N_351_tz, \SENSE_DOUT_2_1_u_i_0[1]_net_1 , GPIO5_21_net_1, 
        N_36_mux, un1_cnt_frame_0_sqmuxa_i_o4_net_1, N_16;
    
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[11]  (.A(VCC_net_1), .B(
        \cnt_freq[11]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[10]_net_1 ), .S(\cnt_freq_s[11] ), .Y(), .FCO(
        \cnt_freq_cry[11]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[25]  (.A(VCC_net_1), .B(
        \cnt_freq[25]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[24]_net_1 ), .S(\cnt_freq_s[25] ), .Y(), .FCO(
        \cnt_freq_cry[25]_net_1 ));
    SLE \state[0]  (.D(N_185_i_0), .CLK(build_sb_0_FAB_CCC_GL1_i_0), 
        .EN(N_70_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \state[0]_net_1 ));
    CFG2 #( .INIT(4'h1) )  \data_from_adc[2]_RNO_0[7]  (.A(
        \cnt[2]_net_1 ), .B(\cnt[1]_net_1 ), .Y(
        \data_from_adc[2]_8_0_0_a2_0 ));
    SLE \data_from_adc[2][6]  (.D(GPIO4_c), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(\data_from_adc[2]_7 ), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\data_from_adc[2][6]_net_1 ));
    CFG3 #( .INIT(8'h96) )  GPIO5 (.A(GPIO5_21_net_1), .B(
        GPIO5_17_net_1), .C(GPIO5_16_net_1), .Y(GPIO5_c));
    SLE \cnt_freq[26]  (.D(\cnt_freq_s[26] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[26]_net_1 ));
    SLE \dac1_db[13]  (.D(N_18_i_0), .CLK(build_sb_0_FAB_CCC_GL2), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(dac1_db_c[13]));
    ARI1 #( .INIT(20'h4AA00) )  dac_count_3_cry_7 (.A(VCC_net_1), .B(
        \dac_count[7]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        dac_count_3_cry_6_net_1), .S(\dac_count_3[7] ), .Y(), .FCO(
        dac_count_3_cry_7_net_1));
    SLE \cnt[0]  (.D(\cnt_s[0] ), .CLK(build_sb_0_FAB_CCC_GL1_i_0), 
        .EN(cnte), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(GPIO7_c));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_14 (.A(\freq[13]_net_1 ), 
        .B(\cnt_freq[14]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_13_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_14_net_1));
    ARI1 #( .INIT(20'h45500) )  \cnt_cry_cy[0]  (.A(VCC_net_1), .B(
        N_49_i_0), .C(GND_net_1), .D(GND_net_1), .FCI(VCC_net_1), .S(), 
        .Y(), .FCO(cnt_cry_cy));
    CFG4 #( .INIT(16'h0200) )  \cnt_RNINDI21[3]  (.A(
        \cnt_frame[1]_net_1 ), .B(\cnt[5]_net_1 ), .C(\cnt[4]_net_1 ), 
        .D(\cnt[3]_net_1 ), .Y(\data_from_adc[2]_2_0_0_a2_0_1 ));
    SLE \dac_count[8]  (.D(\dac_count_3[8] ), .CLK(
        build_sb_0_FAB_CCC_GL2), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\dac_count[8]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[12]  (.A(VCC_net_1), .B(
        \cnt_freq[12]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[11]_net_1 ), .S(\cnt_freq_s[12] ), .Y(), .FCO(
        \cnt_freq_cry[12]_net_1 ));
    CFG3 #( .INIT(8'hB1) )  \data_from_adc[2]_RNIIADE6_0[10]  (.A(
        \data_from_adc[2][10]_net_1 ), .B(N_40_mux), .C(N_8_0), .Y(
        \data_from_adc[2]_RNIIADE6_0[10]_net_1 ));
    SLE dac_state (.D(dac1_clk_c_i_0), .CLK(build_sb_0_FAB_CCC_GL2), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(dac1_clk_c));
    SLE \freq[9]  (.D(\freq_RNO[9]_net_1 ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(
        \data_from_adc[2]_RNI6JK4H[11]_net_1 ), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(N_146_i), .SD(VCC_net_1), .LAT(GND_net_1), .Q(
        \freq[9]_net_1 ));
    CFG4 #( .INIT(16'h2000) )  \data_from_adc[2]_RNO[8]  (.A(N_99), .B(
        \cnt[1]_net_1 ), .C(\data_from_adc[2]_2_0_0_a2_0_1 ), .D(N_104)
        , .Y(\data_from_adc[2]_9 ));
    CFG4 #( .INIT(16'h8000) )  \data_from_adc[2]_RNO[6]  (.A(N_99), .B(
        \cnt[1]_net_1 ), .C(\data_from_adc[2]_2_0_0_a2_0_1 ), .D(N_104)
        , .Y(\data_from_adc[2]_7 ));
    ARI1 #( .INIT(20'h4AA00) )  dac_count_3_s_0_27 (.A(VCC_net_1), .B(
        dac1_clk_c), .C(GND_net_1), .D(GND_net_1), .FCI(VCC_net_1), .S(
        ), .Y(), .FCO(dac_count_3_s_0_27_FCO));
    SLE \cnt_freq[7]  (.D(\cnt_freq_s[7] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[7]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[17]  (.A(VCC_net_1), .B(
        \cnt_freq[17]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[16]_net_1 ), .S(\cnt_freq_s[17] ), .Y(), .FCO(
        \cnt_freq_cry[17]_net_1 ));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_16 (.A(\freq[16]_net_1 ), 
        .B(\cnt_freq[16]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_15_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_16_net_1));
    CFG4 #( .INIT(16'h0123) )  \data_from_adc[2]_RNISE5M3[5]  (.A(
        \data_from_adc[2][5]_net_1 ), .B(\data_from_adc[2][9]_net_1 ), 
        .C(N_36_mux), .D(N_35_mux), .Y(N_8_0));
    SLE \data_from_adc[2][3]  (.D(GPIO4_c), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(\data_from_adc[2]_4 ), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\data_from_adc[2][3]_net_1 ));
    SLE \cnt[3]  (.D(\cnt_s[3] ), .CLK(build_sb_0_FAB_CCC_GL1_i_0), 
        .EN(cnte), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\cnt[3]_net_1 ));
    ARI1 #( .INIT(20'h45500) )  cnt_freq6_cry_25 (.A(VCC_net_1), .B(
        \cnt_freq[25]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_24_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_25_net_1));
    CFG4 #( .INIT(16'h4000) )  \data_from_adc[2]_RNO[1]  (.A(N_50), .B(
        \data_from_adc[2]_2_0_0_a2_0_1 ), .C(\cnt[2]_net_1 ), .D(N_99), 
        .Y(\data_from_adc[2]_2 ));
    CFG3 #( .INIT(8'hB8) )  \data_from_adc[2]_RNIAMJKD[11]  (.A(
        \data_from_adc[2]_RNILGS37[10]_net_1 ), .B(
        \data_from_adc[2][11]_net_1 ), .C(
        \data_from_adc[2]_RNIIADE6_0[10]_net_1 ), .Y(
        \data_from_adc[2]_RNIAMJKD[11]_net_1 ));
    SLE \data_from_adc[2][10]  (.D(GPIO4_c), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(\data_from_adc[2]_11 ), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\data_from_adc[2][10]_net_1 ));
    CFG3 #( .INIT(8'h26) )  \SENSE_DOUT_1_RNO_1[1]  (.A(
        \cnt_frame[1]_net_1 ), .B(\cnt_frame[2]_net_1 ), .C(
        \cnt_frame[0]_net_1 ), .Y(N_351_tz));
    ARI1 #( .INIT(20'h45500) )  cnt_freq6_cry_29 (.A(VCC_net_1), .B(
        \cnt_freq[29]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_28_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_29_net_1));
    CFG4 #( .INIT(16'h00C6) )  \cnt_frame_RNO[1]  (.A(
        \cnt_frame[0]_net_1 ), .B(\cnt_frame[1]_net_1 ), .C(N_52), .D(
        cnt_frame_0_sqmuxa), .Y(N_47_i_0));
    SLE \cnt[4]  (.D(\cnt_s[4] ), .CLK(build_sb_0_FAB_CCC_GL1_i_0), 
        .EN(cnte), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\cnt[4]_net_1 ));
    SLE \freq[22]  (.D(\un1_data_from_adc[2]_2_i_0 ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(N_42_mux_i_0), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\freq[22]_net_1 ));
    SLE \cnt_freq[11]  (.D(\cnt_freq_s[11] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[11]_net_1 ));
    CFG4 #( .INIT(16'h6996) )  GPIO3_9 (.A(adc_d0_c[9]), .B(
        adc_d0_c[8]), .C(adc_d0_c[7]), .D(adc_d0_c[6]), .Y(
        GPIO3_9_net_1));
    SLE \dac1_db[12]  (.D(N_19_i_0), .CLK(build_sb_0_FAB_CCC_GL2), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(dac1_db_c[12]));
    SLE \cnt_freq[13]  (.D(\cnt_freq_s[13] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[13]_net_1 ));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_20 (.A(\freq[19]_net_1 ), 
        .B(\cnt_freq[20]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_19_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_20_net_1));
    CFG4 #( .INIT(16'h8000) )  \data_from_adc[2]_RNI4EE02[2]  (.A(
        \data_from_adc[2][4]_net_1 ), .B(N_35_mux), .C(
        \data_from_adc[2][3]_net_1 ), .D(\data_from_adc[2][2]_net_1 ), 
        .Y(N_36_mux));
    CFG4 #( .INIT(16'h6996) )  GPIO5_13 (.A(temp1_so_c), .B(osc_vcc_c), 
        .C(adc_of_c), .D(adc_oen_c), .Y(GPIO5_13_net_1));
    CFG2 #( .INIT(4'h2) )  \freq_RNO[13]  (.A(N_27), .B(
        \data_from_adc[2][11]_net_1 ), .Y(freq10));
    SLE \cnt_freq[28]  (.D(\cnt_freq_s[28] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[28]_net_1 ));
    SLE \data_from_adc[2][5]  (.D(GPIO4_c), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(\data_from_adc[2]_6 ), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\data_from_adc[2][5]_net_1 ));
    SLE \dac1_db[6]  (.D(N_25_i_0), .CLK(build_sb_0_FAB_CCC_GL2), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(dac1_db_c[6]));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_12 (.A(\freq[17] ), .B(
        \cnt_freq[12]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_11_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_12_net_1));
    SLE \cnt_freq[24]  (.D(\cnt_freq_s[24] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[24]_net_1 ));
    GND GND (.Y(GND_net_1));
    ARI1 #( .INIT(20'h4AA00) )  dac_count_3_cry_1 (.A(VCC_net_1), .B(
        \dac_count[1]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        dac_count_3_cry_0_net_1), .S(\dac_count_3[1] ), .Y(), .FCO(
        dac_count_3_cry_1_net_1));
    SLE \cnt_freq[22]  (.D(\cnt_freq_s[22] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[22]_net_1 ));
    CFG4 #( .INIT(16'h6996) )  GPIO5_16 (.A(GPS1_LD_c), .B(GPS1_I1_c), 
        .C(GPS1_I0_c), .D(GPIO9_c), .Y(GPIO5_16_net_1));
    ARI1 #( .INIT(20'h44400) )  \cnt_cry[2]  (.A(VCC_net_1), .B(
        N_49_i_0), .C(\cnt[2]_net_1 ), .D(GND_net_1), .FCI(
        \cnt_cry[1]_net_1 ), .S(\cnt_s[2] ), .Y(), .FCO(
        \cnt_cry[2]_net_1 ));
    SLE \cnt[5]  (.D(\cnt_s[5]_net_1 ), .CLK(
        build_sb_0_FAB_CCC_GL1_i_0), .EN(cnte), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt[5]_net_1 ));
    ARI1 #( .INIT(20'h45500) )  cnt_freq6_cry_28 (.A(VCC_net_1), .B(
        \cnt_freq[28]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_27_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_28_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[24]  (.A(VCC_net_1), .B(
        \cnt_freq[24]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[23]_net_1 ), .S(\cnt_freq_s[24] ), .Y(), .FCO(
        \cnt_freq_cry[24]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[10]  (.A(VCC_net_1), .B(
        \cnt_freq[10]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[9]_net_1 ), .S(\cnt_freq_s[10] ), .Y(), .FCO(
        \cnt_freq_cry[10]_net_1 ));
    CFG3 #( .INIT(8'h7F) )  un1_cnt_frame_0_sqmuxa_i_o4 (.A(
        \cnt[5]_net_1 ), .B(\cnt[4]_net_1 ), .C(N_57), .Y(
        un1_cnt_frame_0_sqmuxa_i_o4_net_1));
    CFG3 #( .INIT(8'h01) )  \SENSE_DOUT_2_1_u_i_a2_4[1]  (.A(
        \cnt_frame[3]_net_1 ), .B(\cnt_frame[0]_net_1 ), .C(
        \cnt_frame[2]_net_1 ), .Y(N_99));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[19]  (.A(VCC_net_1), .B(
        \cnt_freq[19]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[18]_net_1 ), .S(\cnt_freq_s[19] ), .Y(), .FCO(
        \cnt_freq_cry[19]_net_1 ));
    SLE \cnt[1]  (.D(\cnt_s[1] ), .CLK(build_sb_0_FAB_CCC_GL1_i_0), 
        .EN(cnte), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\cnt[1]_net_1 ));
    CFG4 #( .INIT(16'h0111) )  \SENSE_DOUT_1_RNO[1]  (.A(N_81), .B(
        \SENSE_DOUT_2_1_u_i_0[1]_net_1 ), .C(N_351_tz), .D(N_104), .Y(
        N_43_i_0));
    ARI1 #( .INIT(20'h4AA00) )  dac_count_3_cry_0 (.A(VCC_net_1), .B(
        GPIO20_c), .C(GND_net_1), .D(GND_net_1), .FCI(
        dac_count_3_s_0_27_FCO), .S(\dac_count_3[0] ), .Y(), .FCO(
        dac_count_3_cry_0_net_1));
    CFG4 #( .INIT(16'h6996) )  GPIO3_7 (.A(adc_d0_c[3]), .B(
        adc_d0_c[2]), .C(adc_d0_c[1]), .D(adc_d0_c[0]), .Y(
        GPIO3_7_net_1));
    CFG4 #( .INIT(16'h0400) )  \data_from_adc[2]_RNO[5]  (.A(N_50), .B(
        \data_from_adc[2]_2_0_0_a2_0_1 ), .C(\cnt[2]_net_1 ), .D(N_99), 
        .Y(\data_from_adc[2]_6 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[7]  (.A(VCC_net_1), .B(
        \cnt_freq[7]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[6]_net_1 ), .S(\cnt_freq_s[7] ), .Y(), .FCO(
        \cnt_freq_cry[7]_net_1 ));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_17 (.A(\freq[17] ), .B(
        \cnt_freq[17]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_16_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_17_net_1));
    ARI1 #( .INIT(20'h4AA00) )  cnt_freq_s_26 (.A(VCC_net_1), .B(
        \cnt_freq[0]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        VCC_net_1), .S(), .Y(), .FCO(cnt_freq_s_26_FCO));
    SLE \cnt_freq[5]  (.D(\cnt_freq_s[5] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[5]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[8]  (.A(VCC_net_1), .B(
        \cnt_freq[8]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[7]_net_1 ), .S(\cnt_freq_s[8] ), .Y(), .FCO(
        \cnt_freq_cry[8]_net_1 ));
    CFG3 #( .INIT(8'h1F) )  \data_from_adc[2]_RNIFNML1[2]  (.A(
        \data_from_adc[2][3]_net_1 ), .B(\data_from_adc[2][2]_net_1 ), 
        .C(N_35_mux), .Y(N_16));
    SLE \data_from_adc[2][8]  (.D(GPIO4_c), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(\data_from_adc[2]_9 ), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\data_from_adc[2][8]_net_1 ));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_9 (.A(\freq[9]_net_1 ), 
        .B(\cnt_freq[9]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_8_net_1), .S(), .Y(), .FCO(cnt_freq6_cry_9_net_1)
        );
    SLE \cnt_freq[31]  (.D(\cnt_freq_s[31]_net_1 ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[31]_net_1 ));
    CFG4 #( .INIT(16'h6996) )  GPIO5_12 (.A(temp_sck_c), .B(temp_csn_c)
        , .C(temp3_so_c), .D(temp2_so_c), .Y(GPIO5_12_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[3]  (.A(VCC_net_1), .B(
        \cnt_freq[3]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[2]_net_1 ), .S(\cnt_freq_s[3] ), .Y(), .FCO(
        \cnt_freq_cry[3]_net_1 ));
    CFG4 #( .INIT(16'h030A) )  \state_RNO[1]  (.A(\state[1]_net_1 ), 
        .B(\cnt_frame[3]_net_1 ), .C(N_86), .D(\state[0]_net_1 ), .Y(
        N_45_i_0));
    SLE \freq[11]  (.D(\un1_data_from_adc[2]_2_i_0_i_0 ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(N_42_mux_i_0), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\freq[11]_net_1 ));
    CFG4 #( .INIT(16'h7FFF) )  \data_from_adc[2]_RNISS0G3[10]  (.A(
        m12_2), .B(N_36_mux), .C(\data_from_adc[2][11]_net_1 ), .D(
        \data_from_adc[2][10]_net_1 ), .Y(N_42_mux_i_0));
    ARI1 #( .INIT(20'h45500) )  cnt_freq6_cry_23 (.A(VCC_net_1), .B(
        \cnt_freq[23]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_22_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_23_net_1));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_21 (.A(\freq[21]_net_1 ), 
        .B(\cnt_freq[21]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_20_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_21_net_1));
    CFG4 #( .INIT(16'h6996) )  GPIO5_17 (.A(GPIO6_c), .B(GPIO4_c), .C(
        ANTF_n2_c), .D(ANTF_n1_c), .Y(GPIO5_17_net_1));
    SLE \cnt_freq[19]  (.D(\cnt_freq_s[19] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[19]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \data_from_adc[2]_RNO_0[11]  (.A(GPIO7_c), 
        .B(\cnt[3]_net_1 ), .Y(\data_from_adc[2]_12_0_0_a2_0 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[23]  (.A(VCC_net_1), .B(
        \cnt_freq[23]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[22]_net_1 ), .S(\cnt_freq_s[23] ), .Y(), .FCO(
        \cnt_freq_cry[23]_net_1 ));
    VCC VCC (.Y(VCC_net_1));
    SLE \dac1_db[5]  (.D(\dac_count_3_i_0[0] ), .CLK(
        build_sb_0_FAB_CCC_GL2), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(dac1_db_c[5]));
    CFG4 #( .INIT(16'h7350) )  \SENSE_DOUT_2_1_u_i_0[1]  (.A(N_118), 
        .B(\cnt_frame[1]_net_1 ), .C(\SENSE_DOUT_2_1_u_i_a2_1[1] ), .D(
        N_99), .Y(\SENSE_DOUT_2_1_u_i_0[1]_net_1 ));
    CFG2 #( .INIT(4'h7) )  \state_RNI9IAG[1]  (.A(\state[0]_net_1 ), 
        .B(\state[1]_net_1 ), .Y(N_70_i_0));
    CFG4 #( .INIT(16'h6996) )  GPIO3_8 (.A(adc_d0_c[13]), .B(
        adc_d0_c[12]), .C(adc_d0_c[11]), .D(adc_d0_c[10]), .Y(
        GPIO3_8_net_1));
    SLE \cnt_freq[4]  (.D(\cnt_freq_s[4] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[4]_net_1 ));
    CFG4 #( .INIT(16'h47CF) )  \data_from_adc[2]_RNILGS37[10]  (.A(
        m12_2), .B(\data_from_adc[2][10]_net_1 ), .C(
        \data_from_adc[2]_RNISE5M3[9]_net_1 ), .D(N_36_mux), .Y(
        \data_from_adc[2]_RNILGS37[10]_net_1 ));
    ARI1 #( .INIT(20'h45500) )  cnt_freq6_cry_24 (.A(VCC_net_1), .B(
        \cnt_freq[24]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_23_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_24_net_1));
    CFG4 #( .INIT(16'h00BA) )  \cnt_frame_0_0[3]  (.A(
        \cnt_frame[3]_net_1 ), .B(N_60), .C(
        \cnt_frame_0_0_a2_0_2_1[3]_net_1 ), .D(cnt_frame_0_sqmuxa), .Y(
        \cnt_frame_0_0[3]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[4]  (.A(VCC_net_1), .B(
        \cnt_freq[4]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[3]_net_1 ), .S(\cnt_freq_s[4] ), .Y(), .FCO(
        \cnt_freq_cry[4]_net_1 ));
    CFG4 #( .INIT(16'h0006) )  \SENSE_DOUT_2_1_u_i_a2_0[1]  (.A(
        \cnt_frame[1]_net_1 ), .B(\cnt_frame[0]_net_1 ), .C(N_50), .D(
        \cnt[2]_net_1 ), .Y(N_81));
    SLE \cnt_freq[3]  (.D(\cnt_freq_s[3] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[3]_net_1 ));
    CFG3 #( .INIT(8'h75) )  \freq_RNO[11]  (.A(
        \data_from_adc[2][11]_net_1 ), .B(\data_from_adc[2][10]_net_1 )
        , .C(\data_from_adc[2]_RNISE5M3[9]_net_1 ), .Y(
        \un1_data_from_adc[2]_2_i_0_i_0 ));
    CFG2 #( .INIT(4'h4) )  SENSE_CS_1_RNIM4KA (.A(SENSE_CS_1_c), .B(
        build_sb_0_FAB_CCC_GL1), .Y(oclk_1_c));
    CFG3 #( .INIT(8'h8A) )  \freq_RNO[22]  (.A(
        \data_from_adc[2][11]_net_1 ), .B(\data_from_adc[2][10]_net_1 )
        , .C(\data_from_adc[2]_RNISE5M3[9]_net_1 ), .Y(
        \un1_data_from_adc[2]_2_i_0 ));
    CFG4 #( .INIT(16'hF1FA) )  \cnt_frame_RNI0N272[3]  (.A(
        \state[1]_net_1 ), .B(\cnt_frame[3]_net_1 ), .C(N_49_i_0), .D(
        \state[0]_net_1 ), .Y(cnte));
    CFG2 #( .INIT(4'h7) )  \cnt_RNIHSEE[1]  (.A(GPIO7_c), .B(
        \cnt[1]_net_1 ), .Y(N_50));
    CFG2 #( .INIT(4'h9) )  \dac1_db_RNO[13]  (.A(dac1_clk_c), .B(
        \dac_count[8]_net_1 ), .Y(N_18_i_0));
    ARI1 #( .INIT(20'h45500) )  cnt_freq6_cry_30 (.A(VCC_net_1), .B(
        \cnt_freq[30]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_29_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_30_net_1));
    ARI1 #( .INIT(20'h44400) )  \cnt_cry[3]  (.A(VCC_net_1), .B(
        N_49_i_0), .C(\cnt[3]_net_1 ), .D(GND_net_1), .FCI(
        \cnt_cry[2]_net_1 ), .S(\cnt_s[3] ), .Y(), .FCO(
        \cnt_cry[3]_net_1 ));
    CFG4 #( .INIT(16'h4000) )  \data_from_adc[2]_RNO[0]  (.A(
        \cnt[1]_net_1 ), .B(\data_from_adc[2]_1_0_0_a2_1 ), .C(N_99), 
        .D(N_104), .Y(\data_from_adc[2]_1 ));
    SLE \cnt_frame[2]  (.D(N_46_i_0), .CLK(build_sb_0_FAB_CCC_GL1_i_0), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \cnt_frame[2]_net_1 ));
    ARI1 #( .INIT(20'h42200) )  \cnt_cry[0]  (.A(VCC_net_1), .B(
        GPIO7_c), .C(N_49_i_0), .D(GND_net_1), .FCI(cnt_cry_cy), .S(
        \cnt_s[0] ), .Y(), .FCO(\cnt_cry[0]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_s[31]  (.A(VCC_net_1), .B(
        \cnt_freq[31]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[30]_net_1 ), .S(\cnt_freq_s[31]_net_1 ), .Y(), 
        .FCO());
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[15]  (.A(VCC_net_1), .B(
        \cnt_freq[15]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[14]_net_1 ), .S(\cnt_freq_s[15] ), .Y(), .FCO(
        \cnt_freq_cry[15]_net_1 ));
    CFG3 #( .INIT(8'hFD) )  \cnt_frame_0_i_o4[0]  (.A(\state[0]_net_1 )
        , .B(\cnt_frame[3]_net_1 ), .C(\state[1]_net_1 ), .Y(N_52));
    SLE GPIO16 (.D(N_17_i_0), .CLK(build_sb_0_FAB_CCC_GL1), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(GPIO16_c));
    CFG4 #( .INIT(16'h8000) )  \data_from_adc[2]_RNO[11]  (.A(
        \data_from_adc[2]_12_0_0_a2_0 ), .B(N_108), .C(N_99), .D(
        \data_from_adc[2]_2_0_0_a2_1_0 ), .Y(\data_from_adc[2]_12 ));
    CFG4 #( .INIT(16'h4501) )  \data_from_adc[2]_RNISE5M3[9]  (.A(
        \data_from_adc[2][9]_net_1 ), .B(N_37), .C(N_35_mux), .D(N_16), 
        .Y(\data_from_adc[2]_RNISE5M3[9]_net_1 ));
    ARI1 #( .INIT(20'h45500) )  cnt_freq6_cry_26 (.A(VCC_net_1), .B(
        \cnt_freq[26]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_25_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_26_net_1));
    ARI1 #( .INIT(20'h4AA00) )  dac_count_3_cry_5 (.A(VCC_net_1), .B(
        \dac_count[5]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        dac_count_3_cry_4_net_1), .S(\dac_count_3[5] ), .Y(), .FCO(
        dac_count_3_cry_5_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[30]  (.A(VCC_net_1), .B(
        \cnt_freq[30]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[29]_net_1 ), .S(\cnt_freq_s[30] ), .Y(), .FCO(
        \cnt_freq_cry[30]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[9]  (.A(VCC_net_1), .B(
        \cnt_freq[9]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[8]_net_1 ), .S(\cnt_freq_s[9] ), .Y(), .FCO(
        \cnt_freq_cry[9]_net_1 ));
    CFG4 #( .INIT(16'h98BA) )  \freq_RNO[12]  (.A(
        \data_from_adc[2][11]_net_1 ), .B(\data_from_adc[2][10]_net_1 )
        , .C(N_40_mux), .D(\data_from_adc[2]_RNISE5M3[9]_net_1 ), .Y(
        N_181_i_0));
    CFG2 #( .INIT(4'h9) )  \dac1_db_RNO[8]  (.A(dac1_clk_c), .B(
        \dac_count[3]_net_1 ), .Y(N_23_i_0));
    SLE \dac_count[7]  (.D(\dac_count_3[7] ), .CLK(
        build_sb_0_FAB_CCC_GL2), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\dac_count[7]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  dac_count_3_cry_6 (.A(VCC_net_1), .B(
        \dac_count[6]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        dac_count_3_cry_5_net_1), .S(\dac_count_3[6] ), .Y(), .FCO(
        dac_count_3_cry_6_net_1));
    SLE \cnt_freq[9]  (.D(\cnt_freq_s[9] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[9]_net_1 ));
    SLE \freq[7]  (.D(freq4), .CLK(build_sb_0_FAB_CCC_GL1), .EN(
        \data_from_adc[2]_RNI6JK4H[11]_net_1 ), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(N_146_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \freq[7]_net_1 ));
    SLE \data_from_adc[2][9]  (.D(GPIO4_c), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(\data_from_adc[2]_10 ), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\data_from_adc[2][9]_net_1 ));
    SLE \SENSE_DOUT_1[1]  (.D(N_43_i_0), .CLK(
        build_sb_0_FAB_CCC_GL1_i_0), .EN(N_14_i_0), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(SENSE_DOUT_c[1]));
    CFG4 #( .INIT(16'h110A) )  un1_cnt_frame_0_sqmuxa_i_o4_RNIIAS91 (
        .A(\state[1]_net_1 ), .B(\cnt_frame[3]_net_1 ), .C(
        un1_cnt_frame_0_sqmuxa_i_o4_net_1), .D(\state[0]_net_1 ), .Y(
        N_49_i_0));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[28]  (.A(VCC_net_1), .B(
        \cnt_freq[28]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[27]_net_1 ), .S(\cnt_freq_s[28] ), .Y(), .FCO(
        \cnt_freq_cry[28]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[26]  (.A(VCC_net_1), .B(
        \cnt_freq[26]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[25]_net_1 ), .S(\cnt_freq_s[26] ), .Y(), .FCO(
        \cnt_freq_cry[26]_net_1 ));
    SLE \freq[12]  (.D(N_181_i_0), .CLK(build_sb_0_FAB_CCC_GL1), .EN(
        N_42_mux_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(\freq[17] ));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_22 (.A(\freq[22]_net_1 ), 
        .B(\cnt_freq[22]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_21_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_22_net_1));
    CFG4 #( .INIT(16'h4062) )  \freq_RNO[16]  (.A(
        \data_from_adc[2][10]_net_1 ), .B(\data_from_adc[2][11]_net_1 )
        , .C(\data_from_adc[2]_RNISE5M3[9]_net_1 ), .D(N_8_0), .Y(
        freq16));
    CFG3 #( .INIT(8'hB1) )  \data_from_adc[2]_RNIIADE6[10]  (.A(
        \data_from_adc[2][10]_net_1 ), .B(N_40_mux), .C(N_8_0), .Y(
        N_27));
    ARI1 #( .INIT(20'h4AA00) )  dac_count_3_cry_3 (.A(VCC_net_1), .B(
        \dac_count[3]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        dac_count_3_cry_2_net_1), .S(\dac_count_3[3] ), .Y(), .FCO(
        dac_count_3_cry_3_net_1));
    SLE \cnt_freq[15]  (.D(\cnt_freq_s[15] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[15]_net_1 ));
    SLE \cnt_freq[21]  (.D(\cnt_freq_s[21] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[21]_net_1 ));
    SLE \cnt_freq[23]  (.D(\cnt_freq_s[23] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[23]_net_1 ));
    CFG2 #( .INIT(4'h9) )  \dac1_db_RNO[11]  (.A(dac1_clk_c), .B(
        \dac_count[6]_net_1 ), .Y(N_20_i_0));
    CFG3 #( .INIT(8'h02) )  \cnt_RNISSAR[4]  (.A(\cnt_frame[1]_net_1 ), 
        .B(\cnt[5]_net_1 ), .C(\cnt[4]_net_1 ), .Y(
        \data_from_adc[2]_2_0_0_a2_1_0 ));
    SLE \cnt_frame[0]  (.D(N_48_i_0), .CLK(build_sb_0_FAB_CCC_GL1_i_0), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \cnt_frame[0]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  dac_count_3_s_8 (.A(VCC_net_1), .B(
        \dac_count[8]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        dac_count_3_cry_7_net_1), .S(\dac_count_3[8] ), .Y(), .FCO());
    SLE \dac1_db[7]  (.D(N_24_i_0), .CLK(build_sb_0_FAB_CCC_GL2), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(dac1_db_c[7]));
    SLE \cnt_freq[10]  (.D(\cnt_freq_s[10] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[10]_net_1 ));
    CFG4 #( .INIT(16'h6996) )  GPIO5_15 (.A(GPS2_Q0_c), .B(GPS2_LD_c), 
        .C(GPS1_Q1_c), .D(GPS1_Q0_c), .Y(GPIO5_15_net_1));
    CFG1 #( .INIT(2'h1) )  dac_state_RNIJ3KA (.A(dac1_clk_c), .Y(
        dac1_clk_c_i_0));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[21]  (.A(VCC_net_1), .B(
        \cnt_freq[21]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[20]_net_1 ), .S(\cnt_freq_s[21] ), .Y(), .FCO(
        \cnt_freq_cry[21]_net_1 ));
    SLE \dac_count[1]  (.D(\dac_count_3[1] ), .CLK(
        build_sb_0_FAB_CCC_GL2), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\dac_count[1]_net_1 ));
    CFG1 #( .INIT(2'h1) )  \cnt_freq_RNO[0]  (.A(\cnt_freq[0]_net_1 ), 
        .Y(\cnt_freq_s[0] ));
    SLE \dac1_db[10]  (.D(N_21_i_0), .CLK(build_sb_0_FAB_CCC_GL2), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(dac1_db_c[10]));
    ARI1 #( .INIT(20'h45500) )  cnt_freq6_cry_31 (.A(VCC_net_1), .B(
        \cnt_freq[31]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_30_net_1), .S(), .Y(), .FCO(cnt_freq6));
    SLE \cnt_freq[17]  (.D(\cnt_freq_s[17] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[17]_net_1 ));
    CFG3 #( .INIT(8'h08) )  \cnt_frame_0_0_a2_0_2_1[3]  (.A(
        \state[0]_net_1 ), .B(\cnt_frame[2]_net_1 ), .C(
        \state[1]_net_1 ), .Y(\cnt_frame_0_0_a2_0_2_1[3]_net_1 ));
    CFG1 #( .INIT(2'h1) )  \data_from_adc[2]_RNIAMJKD_0[11]  (.A(
        \data_from_adc[2]_RNIAMJKD[11]_net_1 ), .Y(N_146_i));
    SLE \freq[18]  (.D(\freq_RNO[18]_net_1 ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(N_42_mux_i_0), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\freq[18]_net_1 ));
    CFG2 #( .INIT(4'h9) )  \dac1_db_RNO[6]  (.A(dac1_clk_c), .B(
        \dac_count[1]_net_1 ), .Y(N_25_i_0));
    ARI1 #( .INIT(20'h44400) )  \cnt_cry[4]  (.A(VCC_net_1), .B(
        N_49_i_0), .C(\cnt[4]_net_1 ), .D(GND_net_1), .FCI(
        \cnt_cry[3]_net_1 ), .S(\cnt_s[4] ), .Y(), .FCO(
        \cnt_cry[4]_net_1 ));
    SLE \data_from_adc[2][4]  (.D(GPIO4_c), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(\data_from_adc[2]_5 ), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\data_from_adc[2][4]_net_1 ));
    SLE \dac_count[0]  (.D(\dac_count_3[0] ), .CLK(
        build_sb_0_FAB_CCC_GL2), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(GPIO20_c));
    ARI1 #( .INIT(20'h45500) )  cnt_freq6_cry_27 (.A(VCC_net_1), .B(
        \cnt_freq[27]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_26_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_27_net_1));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_7 (.A(\freq[7]_net_1 ), 
        .B(\cnt_freq[7]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        GND_net_1), .S(), .Y(), .FCO(cnt_freq6_cry_7_net_1));
    CFG4 #( .INIT(16'h8000) )  \data_from_adc[2]_RNO[7]  (.A(N_99), .B(
        \data_from_adc[2]_2_0_0_a2_0_1 ), .C(GPIO7_c), .D(
        \data_from_adc[2]_8_0_0_a2_0 ), .Y(\data_from_adc[2]_8 ));
    ARI1 #( .INIT(20'h44400) )  \cnt_s[5]  (.A(VCC_net_1), .B(N_49_i_0)
        , .C(\cnt[5]_net_1 ), .D(GND_net_1), .FCI(\cnt_cry[4]_net_1 ), 
        .S(\cnt_s[5]_net_1 ), .Y(), .FCO());
    ARI1 #( .INIT(20'h44400) )  \cnt_cry[1]  (.A(VCC_net_1), .B(
        N_49_i_0), .C(\cnt[1]_net_1 ), .D(GND_net_1), .FCI(
        \cnt_cry[0]_net_1 ), .S(\cnt_s[1] ), .Y(), .FCO(
        \cnt_cry[1]_net_1 ));
    SLE \cnt_freq[2]  (.D(\cnt_freq_s[2] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[2]_net_1 ));
    CFG4 #( .INIT(16'h6996) )  GPIO5_14 (.A(adc_clk_c), .B(GPS_I1_c), 
        .C(GPS_I0_c), .D(GPS2_Q1_c), .Y(GPIO5_14_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[22]  (.A(VCC_net_1), .B(
        \cnt_freq[22]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[21]_net_1 ), .S(\cnt_freq_s[22] ), .Y(), .FCO(
        \cnt_freq_cry[22]_net_1 ));
    CFG2 #( .INIT(4'h1) )  SENSE_DOUT61_i_a2 (.A(GPIO7_c), .B(
        \cnt[2]_net_1 ), .Y(N_104));
    SLE \dac_count[3]  (.D(\dac_count_3[3] ), .CLK(
        build_sb_0_FAB_CCC_GL2), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\dac_count[3]_net_1 ));
    SLE \cnt_freq[16]  (.D(\cnt_freq_s[16] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[16]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[6]  (.A(VCC_net_1), .B(
        \cnt_freq[6]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[5]_net_1 ), .S(\cnt_freq_s[6] ), .Y(), .FCO(
        \cnt_freq_cry[6]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[2]  (.A(VCC_net_1), .B(
        \cnt_freq[2]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[1]_net_1 ), .S(\cnt_freq_s[2] ), .Y(), .FCO(
        \cnt_freq_cry[2]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \cnt_RNIJUEE_0[1]  (.A(\cnt[2]_net_1 ), .B(
        \cnt[1]_net_1 ), .Y(N_108));
    ARI1 #( .INIT(20'h4AA00) )  dac_count_3_cry_2 (.A(VCC_net_1), .B(
        \dac_count[2]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        dac_count_3_cry_1_net_1), .S(\dac_count_3[2] ), .Y(), .FCO(
        dac_count_3_cry_2_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[14]  (.A(VCC_net_1), .B(
        \cnt_freq[14]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[13]_net_1 ), .S(\cnt_freq_s[14] ), .Y(), .FCO(
        \cnt_freq_cry[14]_net_1 ));
    SLE \dac_count[4]  (.D(\dac_count_3[4] ), .CLK(
        build_sb_0_FAB_CCC_GL2), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\dac_count[4]_net_1 ));
    CFG3 #( .INIT(8'h01) )  cnt_frame_0_sqmuxa_0_a2 (.A(
        \state[0]_net_1 ), .B(GPIO11_c), .C(\state[1]_net_1 ), .Y(
        cnt_frame_0_sqmuxa));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[27]  (.A(VCC_net_1), .B(
        \cnt_freq[27]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[26]_net_1 ), .S(\cnt_freq_s[27] ), .Y(), .FCO(
        \cnt_freq_cry[27]_net_1 ));
    CFG4 #( .INIT(16'h0020) )  \data_from_adc[2]_RNO_0[0]  (.A(
        \cnt_frame[1]_net_1 ), .B(\cnt[5]_net_1 ), .C(\cnt[4]_net_1 ), 
        .D(\cnt[3]_net_1 ), .Y(\data_from_adc[2]_1_0_0_a2_1 ));
    CFG1 #( .INIT(2'h1) )  \dac1_db_RNO[5]  (.A(\dac_count_3[0] ), .Y(
        \dac_count_3_i_0[0] ));
    SLE \cnt_frame[3]  (.D(\cnt_frame_0_0[3]_net_1 ), .CLK(
        build_sb_0_FAB_CCC_GL1_i_0), .EN(VCC_net_1), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\cnt_frame[3]_net_1 ));
    CFG2 #( .INIT(4'hE) )  \data_from_adc[2]_RNI6JK4H[11]  (.A(
        \data_from_adc[2]_RNIAMJKD[11]_net_1 ), .B(N_42_mux_i_0), .Y(
        \data_from_adc[2]_RNI6JK4H[11]_net_1 ));
    CFG2 #( .INIT(4'h8) )  \cnt_RNIJUEE[1]  (.A(\cnt[2]_net_1 ), .B(
        \cnt[1]_net_1 ), .Y(N_118));
    CFG4 #( .INIT(16'hE6EE) )  SENSE_CS_1_4_iv_i_0 (.A(\cnt[5]_net_1 ), 
        .B(\cnt[4]_net_1 ), .C(SENSE_CS_1_c), .D(N_57), .Y(N_44));
    ARI1 #( .INIT(20'h4AA00) )  dac_count_3_cry_4 (.A(VCC_net_1), .B(
        \dac_count[4]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        dac_count_3_cry_3_net_1), .S(\dac_count_3[4] ), .Y(), .FCO(
        dac_count_3_cry_4_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[1]  (.A(VCC_net_1), .B(
        \cnt_freq[1]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq_s_26_FCO), .S(\cnt_freq_s[1] ), .Y(), .FCO(
        \cnt_freq_cry[1]_net_1 ));
    SLE \cnt_freq[6]  (.D(\cnt_freq_s[6] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[6]_net_1 ));
    CFG2 #( .INIT(4'h6) )  GPIO3_6 (.A(adc_d0_c[4]), .B(adc_d0_c[5]), 
        .Y(GPIO3_6_net_1));
    CFG4 #( .INIT(16'h8000) )  \data_from_adc[2]_RNO[10]  (.A(
        \data_from_adc[2]_11_0_0_a2_0 ), .B(N_118), .C(N_99), .D(
        \data_from_adc[2]_2_0_0_a2_1_0 ), .Y(\data_from_adc[2]_11 ));
    CFG4 #( .INIT(16'h4000) )  \state_5_0_i_a2[1]  (.A(
        \state[0]_net_1 ), .B(N_57), .C(\cnt[5]_net_1 ), .D(
        \cnt[4]_net_1 ), .Y(N_86));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_8 (.A(\freq[8]_net_1 ), 
        .B(\cnt_freq[8]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_7_net_1), .S(), .Y(), .FCO(cnt_freq6_cry_8_net_1)
        );
    SLE \freq[13]  (.D(freq10), .CLK(build_sb_0_FAB_CCC_GL1), .EN(
        N_42_mux_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \freq[13]_net_1 ));
    SLE \dac_count[2]  (.D(\dac_count_3[2] ), .CLK(
        build_sb_0_FAB_CCC_GL2), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\dac_count[2]_net_1 ));
    SLE \cnt_freq[30]  (.D(\cnt_freq_s[30] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[30]_net_1 ));
    SLE \cnt_freq[29]  (.D(\cnt_freq_s[29] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[29]_net_1 ));
    CFG2 #( .INIT(4'h4) )  state17_0_a2 (.A(\state[0]_net_1 ), .B(
        \state[1]_net_1 ), .Y(state17));
    CFG2 #( .INIT(4'h2) )  \data_from_adc[2]_RNO_0[9]  (.A(
        \cnt[2]_net_1 ), .B(\cnt[3]_net_1 ), .Y(
        \data_from_adc[2]_10_0_0_a2_0 ));
    CFG2 #( .INIT(4'hE) )  SENSE_DOUT61_i_0 (.A(\cnt[3]_net_1 ), .B(
        \cnt[5]_net_1 ), .Y(SENSE_DOUT61_i_0_net_1));
    SLE \cnt_freq[0]  (.D(\cnt_freq_s[0] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[0]_net_1 ));
    CFG2 #( .INIT(4'h9) )  \dac1_db_RNO[7]  (.A(dac1_clk_c), .B(
        \dac_count[2]_net_1 ), .Y(N_24_i_0));
    CFG4 #( .INIT(16'h6996) )  GPIO5_21 (.A(GPIO5_15_net_1), .B(
        GPIO5_14_net_1), .C(GPIO5_13_net_1), .D(GPIO5_12_net_1), .Y(
        GPIO5_21_net_1));
    CFG3 #( .INIT(8'hEF) )  \state_5_0_i_o4[1]  (.A(\cnt[3]_net_1 ), 
        .B(\cnt[2]_net_1 ), .C(N_50), .Y(N_57));
    SLE \dac1_db[8]  (.D(N_23_i_0), .CLK(build_sb_0_FAB_CCC_GL2), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(dac1_db_c[8]));
    SLE \state[1]  (.D(N_45_i_0), .CLK(build_sb_0_FAB_CCC_GL1_i_0), 
        .EN(N_70_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \state[1]_net_1 ));
    ARI1 #( .INIT(20'h45500) )  cnt_freq6_cry_15 (.A(VCC_net_1), .B(
        \cnt_freq[15]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_14_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_15_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[13]  (.A(VCC_net_1), .B(
        \cnt_freq[13]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[12]_net_1 ), .S(\cnt_freq_s[13] ), .Y(), .FCO(
        \cnt_freq_cry[13]_net_1 ));
    CFG4 #( .INIT(16'h0080) )  \data_from_adc[2]_RNO[9]  (.A(
        \data_from_adc[2]_10_0_0_a2_0 ), .B(
        \data_from_adc[2]_2_0_0_a2_1_0 ), .C(N_99), .D(N_50), .Y(
        \data_from_adc[2]_10 ));
    CFG4 #( .INIT(16'h0C09) )  \cnt_frame_RNO[2]  (.A(N_60), .B(
        \cnt_frame[2]_net_1 ), .C(cnt_frame_0_sqmuxa), .D(N_52), .Y(
        N_46_i_0));
    SLE \cnt_freq[18]  (.D(\cnt_freq_s[18] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[18]_net_1 ));
    SLE \cnt[2]  (.D(\cnt_s[2] ), .CLK(build_sb_0_FAB_CCC_GL1_i_0), 
        .EN(cnte), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\cnt[2]_net_1 ));
    SLE \data_from_adc[2][1]  (.D(GPIO4_c), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(\data_from_adc[2]_2 ), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\data_from_adc[2][1]_net_1 ));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_19 (.A(\freq[19]_net_1 ), 
        .B(\cnt_freq[19]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_18_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_19_net_1));
    CFG2 #( .INIT(4'h9) )  \dac1_db_RNO[9]  (.A(dac1_clk_c), .B(
        \dac_count[4]_net_1 ), .Y(N_22_i_0));
    SLE \cnt_freq[14]  (.D(\cnt_freq_s[14] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[14]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[20]  (.A(VCC_net_1), .B(
        \cnt_freq[20]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[19]_net_1 ), .S(\cnt_freq_s[20] ), .Y(), .FCO(
        \cnt_freq_cry[20]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[29]  (.A(VCC_net_1), .B(
        \cnt_freq[29]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[28]_net_1 ), .S(\cnt_freq_s[29] ), .Y(), .FCO(
        \cnt_freq_cry[29]_net_1 ));
    SLE \cnt_freq[12]  (.D(\cnt_freq_s[12] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[12]_net_1 ));
    SLE \freq[16]  (.D(freq16), .CLK(build_sb_0_FAB_CCC_GL1), .EN(
        N_42_mux_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \freq[16]_net_1 ));
    SLE \dac_count[5]  (.D(\dac_count_3[5] ), .CLK(
        build_sb_0_FAB_CCC_GL2), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\dac_count[5]_net_1 ));
    CFG4 #( .INIT(16'h1105) )  \state_RNO[0]  (.A(\state[0]_net_1 ), 
        .B(un1_cnt_frame_0_sqmuxa_i_o4_net_1), .C(GPIO11_c), .D(
        \state[1]_net_1 ), .Y(N_185_i_0));
    CFG4 #( .INIT(16'h00C4) )  \SENSE_DOUT_2_1_u_i_a2_1_0[1]  (.A(
        \cnt_frame[2]_net_1 ), .B(\cnt_frame[0]_net_1 ), .C(
        \cnt[2]_net_1 ), .D(GPIO7_c), .Y(\SENSE_DOUT_2_1_u_i_a2_1[1] ));
    ARI1 #( .INIT(20'h45500) )  cnt_freq6_cry_10 (.A(VCC_net_1), .B(
        \cnt_freq[10]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_9_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_10_net_1));
    CFG2 #( .INIT(4'h9) )  \dac1_db_RNO[12]  (.A(dac1_clk_c), .B(
        \dac_count[7]_net_1 ), .Y(N_19_i_0));
    SLE \cnt_freq[8]  (.D(\cnt_freq_s[8] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[8]_net_1 ));
    SLE \freq[8]  (.D(\un1_data_from_adc[2]_i_0 ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(
        \data_from_adc[2]_RNI6JK4H[11]_net_1 ), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(N_146_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \freq[8]_net_1 ));
    CFG2 #( .INIT(4'h9) )  \dac1_db_RNO[10]  (.A(dac1_clk_c), .B(
        \dac_count[5]_net_1 ), .Y(N_21_i_0));
    SLE \dac1_db[9]  (.D(N_22_i_0), .CLK(build_sb_0_FAB_CCC_GL2), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(dac1_db_c[9]));
    CFG4 #( .INIT(16'h0405) )  \SENSE_DOUT_1_RNO_0[1]  (.A(
        \cnt[4]_net_1 ), .B(\cnt[1]_net_1 ), .C(SENSE_DOUT61_i_0_net_1)
        , .D(N_104), .Y(N_14_i_0));
    SLE \freq[19]  (.D(freq4_i_0), .CLK(build_sb_0_FAB_CCC_GL1), .EN(
        N_42_mux_i_0), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \freq[19]_net_1 ));
    CFG3 #( .INIT(8'h80) )  \data_from_adc[2]_RNI8D701[6]  (.A(
        \data_from_adc[2][8]_net_1 ), .B(\data_from_adc[2][7]_net_1 ), 
        .C(\data_from_adc[2][6]_net_1 ), .Y(N_35_mux));
    CFG3 #( .INIT(8'h51) )  \freq_RNO[9]  (.A(
        \data_from_adc[2][11]_net_1 ), .B(\data_from_adc[2][10]_net_1 )
        , .C(N_8_0), .Y(\freq_RNO[9]_net_1 ));
    CFG4 #( .INIT(16'h4000) )  \data_from_adc[2]_RNO[2]  (.A(GPIO7_c), 
        .B(N_118), .C(N_99), .D(\data_from_adc[2]_2_0_0_a2_0_1 ), .Y(
        \data_from_adc[2]_3 ));
    SLE \data_from_adc[2][0]  (.D(GPIO4_c), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(\data_from_adc[2]_1 ), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\data_from_adc[2][0]_net_1 ));
    CFG3 #( .INIT(8'h0D) )  \freq_RNO[18]  (.A(
        \data_from_adc[2][11]_net_1 ), .B(
        \data_from_adc[2]_RNISE5M3[9]_net_1 ), .C(N_27), .Y(
        \freq_RNO[18]_net_1 ));
    SLE \data_from_adc[2][11]  (.D(GPIO4_c), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(\data_from_adc[2]_12 ), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\data_from_adc[2][11]_net_1 ));
    CFG2 #( .INIT(4'h9) )  GPIO16_RNO (.A(cnt_freq6), .B(GPIO16_c), .Y(
        N_17_i_0));
    SLE \cnt_frame[1]  (.D(N_47_i_0), .CLK(build_sb_0_FAB_CCC_GL1_i_0), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \cnt_frame[1]_net_1 ));
    CFG3 #( .INIT(8'h10) )  \freq_RNO[7]  (.A(
        \data_from_adc[2][11]_net_1 ), .B(\data_from_adc[2][10]_net_1 )
        , .C(N_40_mux), .Y(freq4));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_18 (.A(\freq[18]_net_1 ), 
        .B(\cnt_freq[18]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_17_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_18_net_1));
    SLE \dac1_db[11]  (.D(N_20_i_0), .CLK(build_sb_0_FAB_CCC_GL2), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(dac1_db_c[11]));
    CFG4 #( .INIT(16'h4000) )  \data_from_adc[2]_RNO[4]  (.A(GPIO7_c), 
        .B(N_108), .C(N_99), .D(\data_from_adc[2]_2_0_0_a2_0_1 ), .Y(
        \data_from_adc[2]_5 ));
    CFG2 #( .INIT(4'h7) )  \cnt_frame_0_0_o2[3]  (.A(
        \cnt_frame[1]_net_1 ), .B(\cnt_frame[0]_net_1 ), .Y(N_60));
    CFG4 #( .INIT(16'h8000) )  \data_from_adc[2]_RNO[3]  (.A(GPIO7_c), 
        .B(N_108), .C(N_99), .D(\data_from_adc[2]_2_0_0_a2_0_1 ), .Y(
        \data_from_adc[2]_4 ));
    SLE \data_from_adc[2][7]  (.D(GPIO4_c), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(\data_from_adc[2]_8 ), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\data_from_adc[2][7]_net_1 ));
    SLE \data_from_adc[2][2]  (.D(GPIO4_c), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(\data_from_adc[2]_3 ), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\data_from_adc[2][2]_net_1 ));
    SLE \dac_count[6]  (.D(\dac_count_3[6] ), .CLK(
        build_sb_0_FAB_CCC_GL2), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\dac_count[6]_net_1 ));
    SLE \cnt_freq[25]  (.D(\cnt_freq_s[25] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[25]_net_1 ));
    CFG4 #( .INIT(16'h5155) )  \data_from_adc[2]_RNIK1UL2[4]  (.A(
        \data_from_adc[2][9]_net_1 ), .B(\data_from_adc[2][4]_net_1 ), 
        .C(N_16), .D(\data_from_adc[2][5]_net_1 ), .Y(N_40_mux));
    CFG4 #( .INIT(16'h8000) )  \data_from_adc[2]_RNIJPUA1[0]  (.A(
        \data_from_adc[2][1]_net_1 ), .B(\data_from_adc[2][0]_net_1 ), 
        .C(\data_from_adc[2][9]_net_1 ), .D(
        \data_from_adc[2][5]_net_1 ), .Y(m12_2));
    SLE \freq[21]  (.D(\un1_data_from_adc[2]_i_0 ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(N_42_mux_i_0), .ALn(VCC_net_1), 
        .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(\freq[21]_net_1 ));
    CFG3 #( .INIT(8'hEF) )  \freq_RNO[19]  (.A(
        \data_from_adc[2][11]_net_1 ), .B(\data_from_adc[2][10]_net_1 )
        , .C(N_40_mux), .Y(freq4_i_0));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[18]  (.A(VCC_net_1), .B(
        \cnt_freq[18]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[17]_net_1 ), .S(\cnt_freq_s[18] ), .Y(), .FCO(
        \cnt_freq_cry[18]_net_1 ));
    SLE \cnt_freq[20]  (.D(\cnt_freq_s[20] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[20]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[16]  (.A(VCC_net_1), .B(
        \cnt_freq[16]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[15]_net_1 ), .S(\cnt_freq_s[16] ), .Y(), .FCO(
        \cnt_freq_cry[16]_net_1 ));
    CFG2 #( .INIT(4'h1) )  \data_from_adc[2]_RNIBEFL[4]  (.A(
        \data_from_adc[2][5]_net_1 ), .B(\data_from_adc[2][4]_net_1 ), 
        .Y(N_37));
    CFG3 #( .INIT(8'hAE) )  \data_from_adc[2]_RNI14PQ3[10]  (.A(
        \data_from_adc[2][11]_net_1 ), .B(\data_from_adc[2][10]_net_1 )
        , .C(N_8_0), .Y(\un1_data_from_adc[2]_i_0 ));
    ARI1 #( .INIT(20'h4AA00) )  \cnt_freq_cry[5]  (.A(VCC_net_1), .B(
        \cnt_freq[5]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        \cnt_freq_cry[4]_net_1 ), .S(\cnt_freq_s[5] ), .Y(), .FCO(
        \cnt_freq_cry[5]_net_1 ));
    SLE \cnt_freq[27]  (.D(\cnt_freq_s[27] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[27]_net_1 ));
    CFG4 #( .INIT(16'h6996) )  GPIO3 (.A(GPIO3_9_net_1), .B(
        GPIO3_8_net_1), .C(GPIO3_7_net_1), .D(GPIO3_6_net_1), .Y(
        GPIO3_c));
    SLE SENSE_CS_1 (.D(N_44), .CLK(build_sb_0_FAB_CCC_GL1_i_0), .EN(
        state17), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(SENSE_CS_1_c));
    CFG2 #( .INIT(4'h1) )  \data_from_adc[2]_RNO_0[10]  (.A(GPIO7_c), 
        .B(\cnt[3]_net_1 ), .Y(\data_from_adc[2]_11_0_0_a2_0 ));
    SLE \cnt_freq[1]  (.D(\cnt_freq_s[1] ), .CLK(
        build_sb_0_FAB_CCC_GL1), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(
        VCC_net_1), .SLn(cnt_freq6), .SD(GND_net_1), .LAT(GND_net_1), 
        .Q(\cnt_freq[1]_net_1 ));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_13 (.A(\freq[13]_net_1 ), 
        .B(\cnt_freq[13]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_12_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_13_net_1));
    ARI1 #( .INIT(20'h5AA55) )  cnt_freq6_cry_11 (.A(\freq[11]_net_1 ), 
        .B(\cnt_freq[11]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        cnt_freq6_cry_10_net_1), .S(), .Y(), .FCO(
        cnt_freq6_cry_11_net_1));
    CFG3 #( .INIT(8'h41) )  \cnt_frame_RNO[0]  (.A(cnt_frame_0_sqmuxa), 
        .B(\cnt_frame[0]_net_1 ), .C(N_52), .Y(N_48_i_0));
    
endmodule


module build_sb_FABOSC_0_OSC(
       FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC
    );
output FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC;

    wire GND_net_1, VCC_net_1;
    
    RCOSC_25_50MHZ #( .FREQUENCY(50.0) )  I_RCOSC_25_50MHZ (.CLKOUT(
        FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC));
    VCC VCC (.Y(VCC_net_1));
    GND GND (.Y(GND_net_1));
    
endmodule


module build_sb_CCC_0_FCCC(
       build_sb_0_FAB_CCC_GL1,
       build_sb_0_FAB_CCC_GL1_i_0,
       build_sb_0_FAB_CCC_GL2,
       FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC
    );
output build_sb_0_FAB_CCC_GL1;
output build_sb_0_FAB_CCC_GL1_i_0;
output build_sb_0_FAB_CCC_GL2;
input  FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC;

    wire GL2_net, GL1_net, VCC_net_1, GND_net_1;
    
    CLKINT GL1_INST (.A(GL1_net), .Y(build_sb_0_FAB_CCC_GL1));
    VCC VCC (.Y(VCC_net_1));
    CFG1 #( .INIT(2'h1) )  GL1_INST_RNI8343 (.A(build_sb_0_FAB_CCC_GL1)
        , .Y(build_sb_0_FAB_CCC_GL1_i_0));
    GND GND (.Y(GND_net_1));
    CLKINT GL2_INST (.A(GL2_net), .Y(build_sb_0_FAB_CCC_GL2));
    CCC #( .INIT(210'h0000007FB8000044564003F0BC2B09C20E739DEFFC4C980C00B01)
        , .VCOFREQUENCY(600.0) )  CCC_INST (.Y0(), .Y1(), .Y2(), .Y3(), 
        .PRDATA({nc0, nc1, nc2, nc3, nc4, nc5, nc6, nc7}), .LOCK(), 
        .BUSY(), .CLK0(VCC_net_1), .CLK1(VCC_net_1), .CLK2(VCC_net_1), 
        .CLK3(VCC_net_1), .NGMUX0_SEL(GND_net_1), .NGMUX1_SEL(
        GND_net_1), .NGMUX2_SEL(GND_net_1), .NGMUX3_SEL(GND_net_1), 
        .NGMUX0_HOLD_N(VCC_net_1), .NGMUX1_HOLD_N(VCC_net_1), 
        .NGMUX2_HOLD_N(VCC_net_1), .NGMUX3_HOLD_N(VCC_net_1), 
        .NGMUX0_ARST_N(VCC_net_1), .NGMUX1_ARST_N(VCC_net_1), 
        .NGMUX2_ARST_N(VCC_net_1), .NGMUX3_ARST_N(VCC_net_1), 
        .PLL_BYPASS_N(VCC_net_1), .PLL_ARST_N(VCC_net_1), 
        .PLL_POWERDOWN_N(VCC_net_1), .GPD0_ARST_N(VCC_net_1), 
        .GPD1_ARST_N(VCC_net_1), .GPD2_ARST_N(VCC_net_1), .GPD3_ARST_N(
        VCC_net_1), .PRESET_N(GND_net_1), .PCLK(VCC_net_1), .PSEL(
        VCC_net_1), .PENABLE(VCC_net_1), .PWRITE(VCC_net_1), .PADDR({
        VCC_net_1, VCC_net_1, VCC_net_1, VCC_net_1, VCC_net_1, 
        VCC_net_1}), .PWDATA({VCC_net_1, VCC_net_1, VCC_net_1, 
        VCC_net_1, VCC_net_1, VCC_net_1, VCC_net_1, VCC_net_1}), 
        .CLK0_PAD(GND_net_1), .CLK1_PAD(GND_net_1), .CLK2_PAD(
        GND_net_1), .CLK3_PAD(GND_net_1), .GL0(), .GL1(GL1_net), .GL2(
        GL2_net), .GL3(), .RCOSC_25_50MHZ(
        FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC), 
        .RCOSC_1MHZ(GND_net_1), .XTLOSC(GND_net_1));
    
endmodule


module build_sb(
       build_sb_0_FAB_CCC_GL1,
       build_sb_0_FAB_CCC_GL1_i_0,
       build_sb_0_FAB_CCC_GL2
    );
output build_sb_0_FAB_CCC_GL1;
output build_sb_0_FAB_CCC_GL1_i_0;
output build_sb_0_FAB_CCC_GL2;

    wire FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC, GND_net_1, 
        VCC_net_1;
    
    build_sb_FABOSC_0_OSC FABOSC_0 (
        .FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC(
        FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC));
    VCC VCC (.Y(VCC_net_1));
    build_sb_CCC_0_FCCC CCC_0 (.build_sb_0_FAB_CCC_GL1(
        build_sb_0_FAB_CCC_GL1), .build_sb_0_FAB_CCC_GL1_i_0(
        build_sb_0_FAB_CCC_GL1_i_0), .build_sb_0_FAB_CCC_GL2(
        build_sb_0_FAB_CCC_GL2), 
        .FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC(
        FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC));
    GND GND (.Y(GND_net_1));
    
endmodule


module build(
       SENSE_DIN,
       adc_d0,
       BW,
       SENSE_DOUT,
       dac1_db,
       fl_a,
       fl_dq,
       ANTF_n1,
       ANTF_n2,
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
       adc_clk,
       adc_oen,
       adc_of,
       osc_vcc,
       temp1_so,
       temp2_so,
       temp3_so,
       temp_csn,
       temp_sck,
       AMP_EN,
       BW_36,
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
       adc_shdn,
       clk_out_n1,
       clk_out_n2,
       dac1_clk,
       dac1_sleep,
       dac2_clk,
       dsa_clk,
       dsa_data,
       dsa_le,
       en_modul,
       fl_byten,
       fl_cen,
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
       sr_wen
    );
input  [1:0] SENSE_DIN;
input  [13:0] adc_d0;
output [34:0] BW;
output [1:0] SENSE_DOUT;
output [13:5] dac1_db;
output [25:0] fl_a;
output [7:0] fl_dq;
input  ANTF_n1;
input  ANTF_n2;
input  DEVRST_N;
input  GPIO10;
input  GPIO11;
input  GPIO8;
input  GPIO9;
input  GPS1_I0;
input  GPS1_I1;
input  GPS1_LD;
input  GPS1_Q0;
input  GPS1_Q1;
input  GPS2_LD;
input  GPS2_Q0;
input  GPS2_Q1;
input  GPS_I0;
input  GPS_I1;
input  adc_clk;
input  adc_oen;
input  adc_of;
input  osc_vcc;
input  temp1_so;
input  temp2_so;
input  temp3_so;
input  temp_csn;
input  temp_sck;
output AMP_EN;
output BW_36;
output CSN_n1;
output CTR1;
output CTR2;
output CTR3;
output CTR4;
output CTR5;
output CTR6;
output CTR7;
output GPIO1;
output GPIO12;
output GPIO14;
output GPIO15;
output GPIO16;
output GPIO17;
output GPIO19;
output GPIO2;
output GPIO20;
output GPIO3;
output GPIO4;
output GPIO5;
output GPIO6;
output GPIO7;
output GPS1_IDLE;
output GPS1_PGM;
output GPS1_SCLK;
output GPS1_SDATA;
output GPS1_SHDN;
output REF_CE;
output REF_CLK;
output REF_DATA;
output REF_LD;
output REF_LE;
output REF_MXOUT;
output SENSE_CS_1;
output adc_shdn;
output clk_out_n1;
output clk_out_n2;
output dac1_clk;
output dac1_sleep;
output dac2_clk;
output dsa_clk;
output dsa_data;
output dsa_le;
output en_modul;
output fl_byten;
output fl_cen;
output fl_oen;
output fl_resetn;
output fl_ryby;
output fl_wen;
output fl_wpn;
output oclk_1;
output out1;
output out2;
output sr_cs1n;
output sr_cs2;
output sr_lbn;
output sr_oen;
output sr_ubn;
output sr_wen;

    wire build_sb_0_FAB_CCC_GL1, build_sb_0_FAB_CCC_GL2, VCC_net_1, 
        GND_net_1, ANTF_n1_c, ANTF_n2_c, GPIO11_c, GPIO8_c, GPIO9_c, 
        GPS1_I0_c, GPS1_I1_c, GPS1_LD_c, GPS1_Q0_c, GPS1_Q1_c, 
        GPS2_LD_c, GPS2_Q0_c, GPS2_Q1_c, GPS_I0_c, GPS_I1_c, GPIO6_c, 
        GPIO4_c, adc_clk_c, \adc_d0_c[0] , \adc_d0_c[1] , 
        \adc_d0_c[2] , \adc_d0_c[3] , \adc_d0_c[4] , \adc_d0_c[5] , 
        \adc_d0_c[6] , \adc_d0_c[7] , \adc_d0_c[8] , \adc_d0_c[9] , 
        \adc_d0_c[10] , \adc_d0_c[11] , \adc_d0_c[12] , \adc_d0_c[13] , 
        adc_oen_c, adc_of_c, osc_vcc_c, temp1_so_c, temp2_so_c, 
        temp3_so_c, temp_csn_c, temp_sck_c, GPIO16_c, GPIO3_c, GPIO5_c, 
        GPIO7_c, SENSE_CS_1_c, \SENSE_DOUT_c[1] , dac1_clk_c, 
        \dac1_db_c[5] , \dac1_db_c[6] , \dac1_db_c[7] , \dac1_db_c[8] , 
        \dac1_db_c[9] , \dac1_db_c[10] , \dac1_db_c[11] , 
        \dac1_db_c[12] , \dac1_db_c[13] , oclk_1_c, GPIO20_c, 
        build_sb_0_FAB_CCC_GL1_i_0, dac1_clk_c_i_0;
    
    INBUF GPS1_I1_ibuf (.PAD(GPS1_I1), .Y(GPS1_I1_c));
    INBUF \adc_d0_ibuf[8]  (.PAD(adc_d0[8]), .Y(\adc_d0_c[8] ));
    TRIBUFF \fl_dq_obuft[1]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_dq[1]));
    OUTBUF GPIO3_obuf (.D(GPIO3_c), .PAD(GPIO3));
    INBUF \adc_d0_ibuf[6]  (.PAD(adc_d0[6]), .Y(\adc_d0_c[6] ));
    TRIBUFF \BW_obuft[23]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[23]));
    TRIBUFF \BW_obuft[22]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[22]));
    INBUF GPS2_Q1_ibuf (.PAD(GPS2_Q1), .Y(GPS2_Q1_c));
    led_igloo led_igloo_0 (.dac1_db_c({\dac1_db_c[13] , 
        \dac1_db_c[12] , \dac1_db_c[11] , \dac1_db_c[10] , 
        \dac1_db_c[9] , \dac1_db_c[8] , \dac1_db_c[7] , \dac1_db_c[6] , 
        \dac1_db_c[5] }), .SENSE_DOUT_c({\SENSE_DOUT_c[1] }), 
        .adc_d0_c({\adc_d0_c[13] , \adc_d0_c[12] , \adc_d0_c[11] , 
        \adc_d0_c[10] , \adc_d0_c[9] , \adc_d0_c[8] , \adc_d0_c[7] , 
        \adc_d0_c[6] , \adc_d0_c[5] , \adc_d0_c[4] , \adc_d0_c[3] , 
        \adc_d0_c[2] , \adc_d0_c[1] , \adc_d0_c[0] }), .dac1_clk_c(
        dac1_clk_c), .dac1_clk_c_i_0(dac1_clk_c_i_0), 
        .build_sb_0_FAB_CCC_GL2(build_sb_0_FAB_CCC_GL2), .GPIO20_c(
        GPIO20_c), .build_sb_0_FAB_CCC_GL1_i_0(
        build_sb_0_FAB_CCC_GL1_i_0), .build_sb_0_FAB_CCC_GL1(
        build_sb_0_FAB_CCC_GL1), .GPIO4_c(GPIO4_c), .SENSE_CS_1_c(
        SENSE_CS_1_c), .GPIO16_c(GPIO16_c), .GPIO7_c(GPIO7_c), 
        .oclk_1_c(oclk_1_c), .GPIO6_c(GPIO6_c), .ANTF_n2_c(ANTF_n2_c), 
        .ANTF_n1_c(ANTF_n1_c), .GPS1_LD_c(GPS1_LD_c), .GPS1_I1_c(
        GPS1_I1_c), .GPS1_I0_c(GPS1_I0_c), .GPIO9_c(GPIO9_c), 
        .GPS2_Q0_c(GPS2_Q0_c), .GPS2_LD_c(GPS2_LD_c), .GPS1_Q1_c(
        GPS1_Q1_c), .GPS1_Q0_c(GPS1_Q0_c), .adc_clk_c(adc_clk_c), 
        .GPS_I1_c(GPS_I1_c), .GPS_I0_c(GPS_I0_c), .GPS2_Q1_c(GPS2_Q1_c)
        , .temp1_so_c(temp1_so_c), .osc_vcc_c(osc_vcc_c), .adc_of_c(
        adc_of_c), .adc_oen_c(adc_oen_c), .temp_sck_c(temp_sck_c), 
        .temp_csn_c(temp_csn_c), .temp3_so_c(temp3_so_c), .temp2_so_c(
        temp2_so_c), .GPIO11_c(GPIO11_c), .GPIO3_c(GPIO3_c), .GPIO5_c(
        GPIO5_c));
    TRIBUFF \fl_dq_obuft[7]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_dq[7]));
    TRIBUFF \fl_dq_obuft[0]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_dq[0]));
    OUTBUF \SENSE_DOUT_obuf[1]  (.D(\SENSE_DOUT_c[1] ), .PAD(
        SENSE_DOUT[1]));
    TRIBUFF \BW_obuft[3]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[3]));
    TRIBUFF sr_lbn_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(sr_lbn));
    TRIBUFF \fl_a_obuft[21]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[21]));
    INBUF ANTF_n1_ibuf (.PAD(ANTF_n1), .Y(ANTF_n1_c));
    OUTBUF adc_shdn_obuf (.D(VCC_net_1), .PAD(adc_shdn));
    TRIBUFF \BW_obuft[4]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[4]));
    TRIBUFF GPIO1_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO1));
    OUTBUF \dac1_db_obuf[9]  (.D(\dac1_db_c[9] ), .PAD(dac1_db[9]));
    OUTBUF \dac1_db_obuf[11]  (.D(\dac1_db_c[11] ), .PAD(dac1_db[11]));
    INBUF temp1_so_ibuf (.PAD(temp1_so), .Y(temp1_so_c));
    OUTBUF \dac1_db_obuf[6]  (.D(\dac1_db_c[6] ), .PAD(dac1_db[6]));
    INBUF temp2_so_ibuf (.PAD(temp2_so), .Y(temp2_so_c));
    TRIBUFF \fl_a_obuft[23]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[23]));
    OUTBUF CTR5_obuf (.D(GND_net_1), .PAD(CTR5));
    TRIBUFF \fl_dq_obuft[6]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_dq[6]));
    TRIBUFF fl_cen_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(fl_cen));
    OUTBUF \BW_obuf[34]  (.D(GND_net_1), .PAD(BW[34]));
    OUTBUF \dac1_db_obuf[10]  (.D(\dac1_db_c[10] ), .PAD(dac1_db[10]));
    INBUF \adc_d0_ibuf[13]  (.PAD(adc_d0[13]), .Y(\adc_d0_c[13] ));
    TRIBUFF \BW_obuft[5]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[5]));
    TRIBUFF REF_LE_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(REF_LE));
    OUTBUF out1_obuf (.D(GND_net_1), .PAD(out1));
    OUTBUF CTR3_obuf (.D(GND_net_1), .PAD(CTR3));
    INBUF adc_oen_ibuf (.PAD(adc_oen), .Y(adc_oen_c));
    TRIBUFF REF_MXOUT_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        REF_MXOUT));
    TRIBUFF \BW_obuft[33]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[33]));
    TRIBUFF \BW_obuft[32]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[32]));
    INBUF \adc_d0_ibuf[9]  (.PAD(adc_d0[9]), .Y(\adc_d0_c[9] ));
    INBUF GPS1_I0_ibuf (.PAD(GPS1_I0), .Y(GPS1_I0_c));
    TRIBUFF \BW_obuft[15]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[15]));
    INBUF \adc_d0_ibuf[1]  (.PAD(adc_d0[1]), .Y(\adc_d0_c[1] ));
    TRIBUFF \fl_a_obuft[10]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[10]));
    OUTBUF CTR1_obuf (.D(GND_net_1), .PAD(CTR1));
    GND GND (.Y(GND_net_1));
    INBUF \SENSE_DIN_ibuf[0]  (.PAD(SENSE_DIN[0]), .Y(GPIO6_c));
    TRIBUFF \BW_obuft[29]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[29]));
    INBUF GPS2_Q0_ibuf (.PAD(GPS2_Q0), .Y(GPS2_Q0_c));
    OUTBUF GPIO12_obuf (.D(VCC_net_1), .PAD(GPIO12));
    OUTBUF GPIO15_obuf (.D(GND_net_1), .PAD(GPIO15));
    TRIBUFF \fl_a_obuft[17]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[17]));
    OUTBUF GPIO19_obuf (.D(GND_net_1), .PAD(GPIO19));
    TRIBUFF sr_cs2_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(sr_cs2));
    INBUF osc_vcc_ibuf (.PAD(osc_vcc), .Y(osc_vcc_c));
    TRIBUFF dsa_le_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(dsa_le));
    TRIBUFF GPS1_SCLK_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        GPS1_SCLK));
    INBUF temp_sck_ibuf (.PAD(temp_sck), .Y(temp_sck_c));
    TRIBUFF GPS1_PGM_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        GPS1_PGM));
    TRIBUFF \fl_dq_obuft[3]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_dq[3]));
    TRIBUFF \fl_a_obuft[12]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[12]));
    INBUF temp3_so_ibuf (.PAD(temp3_so), .Y(temp3_so_c));
    TRIBUFF GPS1_SHDN_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        GPS1_SHDN));
    OUTBUF GPIO14_obuf (.D(VCC_net_1), .PAD(GPIO14));
    OUTBUF AMP_EN_obuf (.D(GND_net_1), .PAD(AMP_EN));
    INBUF \adc_d0_ibuf[3]  (.PAD(adc_d0[3]), .Y(\adc_d0_c[3] ));
    TRIBUFF \fl_a_obuft[15]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[15]));
    INBUF GPS1_Q1_ibuf (.PAD(GPS1_Q1), .Y(GPS1_Q1_c));
    TRIBUFF \BW_obuft[2]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[2]));
    TRIBUFF \SENSE_DOUT_obuft[0]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        SENSE_DOUT[0]));
    OUTBUF CTR4_obuf (.D(GND_net_1), .PAD(CTR4));
    TRIBUFF \BW_obuft[26]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[26]));
    VCC VCC (.Y(VCC_net_1));
    TRIBUFF fl_byten_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_byten));
    TRIBUFF \fl_a_obuft[0]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[0]));
    INBUF adc_clk_ibuf (.PAD(adc_clk), .Y(adc_clk_c));
    TRIBUFF \BW_obuft[18]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[18]));
    OUTBUF CTR2_obuf (.D(GND_net_1), .PAD(CTR2));
    TRIBUFF sr_ubn_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(sr_ubn));
    OUTBUF BW_36_obuf (.D(GND_net_1), .PAD(BW_36));
    TRIBUFF \fl_a_obuft[8]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[8]));
    TRIBUFF \BW_obuft[7]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[7]));
    TRIBUFF REF_CLK_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(REF_CLK));
    TRIBUFF GPS1_IDLE_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        GPS1_IDLE));
    TRIBUFF dsa_data_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        dsa_data));
    TRIBUFF en_modul_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        en_modul));
    INBUF \adc_d0_ibuf[11]  (.PAD(adc_d0[11]), .Y(\adc_d0_c[11] ));
    TRIBUFF \BW_obuft[24]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[24]));
    TRIBUFF \BW_obuft[27]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[27]));
    TRIBUFF \BW_obuft[20]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[20]));
    TRIBUFF \BW_obuft[0]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[0]));
    TRIBUFF REF_DATA_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        REF_DATA));
    OUTBUF \dac1_db_obuf[8]  (.D(\dac1_db_c[8] ), .PAD(dac1_db[8]));
    TRIBUFF fl_oen_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(fl_oen));
    INBUF GPS1_LD_ibuf (.PAD(GPS1_LD), .Y(GPS1_LD_c));
    OUTBUF \dac1_db_obuf[5]  (.D(\dac1_db_c[5] ), .PAD(dac1_db[5]));
    TRIBUFF \BW_obuft[13]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[13]));
    TRIBUFF \BW_obuft[1]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[1]));
    TRIBUFF \BW_obuft[12]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[12]));
    INBUF \adc_d0_ibuf[10]  (.PAD(adc_d0[10]), .Y(\adc_d0_c[10] ));
    TRIBUFF \fl_a_obuft[20]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[20]));
    TRIBUFF CSN_n1_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(CSN_n1));
    INBUF GPS_I0_ibuf (.PAD(GPS_I0), .Y(GPS_I0_c));
    TRIBUFF \fl_a_obuft[4]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[4]));
    INBUF \adc_d0_ibuf[2]  (.PAD(adc_d0[2]), .Y(\adc_d0_c[2] ));
    OUTBUF CTR6_obuf (.D(GND_net_1), .PAD(CTR6));
    INBUF GPS1_Q0_ibuf (.PAD(GPS1_Q0), .Y(GPS1_Q0_c));
    TRIBUFF \fl_dq_obuft[5]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_dq[5]));
    TRIBUFF \BW_obuft[6]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[6]));
    INBUF GPS2_LD_ibuf (.PAD(GPS2_LD), .Y(GPS2_LD_c));
    TRIBUFF fl_resetn_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_resetn));
    TRIBUFF \BW_obuft[21]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[21]));
    OUTBUF GPIO6_obuf (.D(GPIO6_c), .PAD(GPIO6));
    TRIBUFF \fl_a_obuft[5]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[5]));
    INBUF temp_csn_ibuf (.PAD(temp_csn), .Y(temp_csn_c));
    OUTBUF dac1_sleep_obuf (.D(GPIO8_c), .PAD(dac1_sleep));
    TRIBUFF \fl_a_obuft[9]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[9]));
    TRIBUFF \BW_obuft[30]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[30]));
    TRIBUFF fl_wen_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(fl_wen));
    TRIBUFF \fl_a_obuft[22]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[22]));
    TRIBUFF \fl_a_obuft[25]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[25]));
    TRIBUFF sr_oen_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(sr_oen));
    INBUF adc_of_ibuf (.PAD(adc_of), .Y(adc_of_c));
    INBUF GPIO9_ibuf (.PAD(GPIO9), .Y(GPIO9_c));
    INBUF GPIO8_ibuf (.PAD(GPIO8), .Y(GPIO8_c));
    TRIBUFF \fl_a_obuft[14]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[14]));
    TRIBUFF sr_wen_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(sr_wen));
    INBUF \adc_d0_ibuf[4]  (.PAD(adc_d0[4]), .Y(\adc_d0_c[4] ));
    OUTBUF GPIO20_obuf (.D(GPIO20_c), .PAD(GPIO20));
    TRIBUFF \BW_obuft[19]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[19]));
    TRIBUFF out2_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(out2));
    OUTBUF \dac1_db_obuf[12]  (.D(\dac1_db_c[12] ), .PAD(dac1_db[12]));
    OUTBUF GPIO7_obuf (.D(GPIO7_c), .PAD(GPIO7));
    TRIBUFF REF_CE_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(REF_CE));
    TRIBUFF \BW_obuft[31]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[31]));
    INBUF \adc_d0_ibuf[0]  (.PAD(adc_d0[0]), .Y(\adc_d0_c[0] ));
    TRIBUFF \fl_a_obuft[18]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[18]));
    OUTBUF CTR7_obuf (.D(GND_net_1), .PAD(CTR7));
    TRIBUFF fl_wpn_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(fl_wpn));
    INBUF \adc_d0_ibuf[5]  (.PAD(adc_d0[5]), .Y(\adc_d0_c[5] ));
    TRIBUFF dsa_clk_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(dsa_clk));
    TRIBUFF \BW_obuft[8]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[8]));
    TRIBUFF GPS1_SDATA_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        GPS1_SDATA));
    TRIBUFF \fl_dq_obuft[4]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_dq[4]));
    TRIBUFF REF_LD_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(REF_LD));
    TRIBUFF clk_out_n2_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        clk_out_n2));
    INBUF ANTF_n2_ibuf (.PAD(ANTF_n2), .Y(ANTF_n2_c));
    TRIBUFF \BW_obuft[25]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[25]));
    OUTBUF GPIO16_obuf (.D(GPIO16_c), .PAD(GPIO16));
    TRIBUFF \BW_obuft[16]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[16]));
    OUTBUF GPIO5_obuf (.D(GPIO5_c), .PAD(GPIO5));
    TRIBUFF \fl_a_obuft[11]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[11]));
    TRIBUFF \fl_a_obuft[19]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[19]));
    INBUF GPS_I1_ibuf (.PAD(GPS_I1), .Y(GPS_I1_c));
    TRIBUFF GPIO2_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO2));
    INBUF \SENSE_DIN_ibuf[1]  (.PAD(SENSE_DIN[1]), .Y(GPIO4_c));
    TRIBUFF \BW_obuft[9]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[9]));
    build_sb build_sb_0 (.build_sb_0_FAB_CCC_GL1(
        build_sb_0_FAB_CCC_GL1), .build_sb_0_FAB_CCC_GL1_i_0(
        build_sb_0_FAB_CCC_GL1_i_0), .build_sb_0_FAB_CCC_GL2(
        build_sb_0_FAB_CCC_GL2));
    TRIBUFF \fl_a_obuft[6]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[6]));
    TRIBUFF \BW_obuft[14]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[14]));
    INBUF \adc_d0_ibuf[7]  (.PAD(adc_d0[7]), .Y(\adc_d0_c[7] ));
    TRIBUFF fl_ryby_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(fl_ryby));
    TRIBUFF \fl_a_obuft[13]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[13]));
    OUTBUF \dac1_db_obuf[7]  (.D(\dac1_db_c[7] ), .PAD(dac1_db[7]));
    OUTBUF GPIO4_obuf (.D(GPIO4_c), .PAD(GPIO4));
    TRIBUFF \BW_obuft[17]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[17]));
    TRIBUFF \BW_obuft[10]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[10]));
    TRIBUFF \fl_a_obuft[1]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[1]));
    TRIBUFF \fl_a_obuft[3]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[3]));
    OUTBUF \dac1_db_obuf[13]  (.D(\dac1_db_c[13] ), .PAD(dac1_db[13]));
    TRIBUFF \fl_a_obuft[24]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[24]));
    TRIBUFF clk_out_n1_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        clk_out_n1));
    TRIBUFF \fl_a_obuft[16]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[16]));
    TRIBUFF \fl_dq_obuft[2]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_dq[2]));
    TRIBUFF \fl_a_obuft[7]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[7]));
    OUTBUF oclk_1_obuf (.D(oclk_1_c), .PAD(oclk_1));
    OUTBUF dac1_clk_obuf (.D(dac1_clk_c), .PAD(dac1_clk));
    TRIBUFF \BW_obuft[28]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[28]));
    TRIBUFF GPIO17_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO17));
    TRIBUFF sr_cs1n_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(sr_cs1n));
    TRIBUFF \fl_a_obuft[2]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[2]));
    TRIBUFF \BW_obuft[11]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[11]));
    OUTBUF dac2_clk_obuf (.D(dac1_clk_c_i_0), .PAD(dac2_clk));
    OUTBUF SENSE_CS_1_obuf (.D(SENSE_CS_1_c), .PAD(SENSE_CS_1));
    INBUF GPIO11_ibuf (.PAD(GPIO11), .Y(GPIO11_c));
    INBUF \adc_d0_ibuf[12]  (.PAD(adc_d0[12]), .Y(\adc_d0_c[12] ));
    
endmodule
