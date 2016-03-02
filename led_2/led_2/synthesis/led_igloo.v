`timescale 1 ns/100 ps
// Version: v11.6 SP1 11.6.1.6


module led_igloo(
       adc_d0,
       BW,
       dac1_db,
       fl_a,
       fl_dq,
       SENSE_DIN,
       SENSE_DOUT,
       temp_sck,
       temp_csn,
       temp3_so,
       temp2_so,
       temp1_so,
       out1,
       out2,
       adc_clk,
       adc_oen,
       adc_of,
       adc_shdn,
       osc_vcc,
       BW_36,
       dac1_clk,
       dac2_clk,
       dac1_sleep,
       fl_byten,
       fl_cen,
       fl_oen,
       fl_resetn,
       fl_ryby,
       fl_wen,
       fl_wpn,
       sr_cs1n,
       sr_cs2,
       sr_lbn,
       sr_oen,
       sr_ubn,
       sr_wen,
       ANTF_n1,
       clk_out_n1,
       GPS1_I0,
       GPS1_I1,
       GPS1_LD,
       GPS1_Q0,
       GPS1_Q1,
       ANTF_n2,
       clk_out_n2,
       CSN_n1,
       GPS_I0,
       GPS_I1,
       GPS1_IDLE,
       GPS2_LD,
       GPS1_PGM,
       GPS2_Q0,
       GPS2_Q1,
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
       oclk_1,
       dsa_clk,
       dsa_data,
       dsa_le,
       en_modul,
       GPIO20,
       GPIO19,
       GPIO17,
       GPIO16,
       GPIO15,
       GPIO14,
       GPIO12,
       GPIO11,
       GPIO10,
       GPIO9,
       GPIO8,
       GPIO7,
       GPIO6,
       GPIO5,
       GPIO4,
       GPIO3,
       GPIO2,
       GPIO1,
       CTR7,
       CTR6,
       CTR5,
       CTR4,
       CTR3,
       CTR2,
       CTR1
    );
input  [13:0] adc_d0;
output [34:0] BW;
output [13:5] dac1_db;
output [25:0] fl_a;
output [7:0] fl_dq;
input  [1:0] SENSE_DIN;
output [1:0] SENSE_DOUT;
input  temp_sck;
input  temp_csn;
input  temp3_so;
input  temp2_so;
input  temp1_so;
output out1;
output out2;
input  adc_clk;
input  adc_oen;
input  adc_of;
output adc_shdn;
input  osc_vcc;
output BW_36;
output dac1_clk;
output dac2_clk;
output dac1_sleep;
output fl_byten;
output fl_cen;
output fl_oen;
output fl_resetn;
output fl_ryby;
output fl_wen;
output fl_wpn;
output sr_cs1n;
output sr_cs2;
output sr_lbn;
output sr_oen;
output sr_ubn;
output sr_wen;
input  ANTF_n1;
output clk_out_n1;
input  GPS1_I0;
input  GPS1_I1;
input  GPS1_LD;
input  GPS1_Q0;
input  GPS1_Q1;
input  ANTF_n2;
output clk_out_n2;
output CSN_n1;
input  GPS_I0;
input  GPS_I1;
output GPS1_IDLE;
input  GPS2_LD;
output GPS1_PGM;
input  GPS2_Q0;
input  GPS2_Q1;
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
output oclk_1;
output dsa_clk;
output dsa_data;
output dsa_le;
output en_modul;
output GPIO20;
output GPIO19;
output GPIO17;
output GPIO16;
output GPIO15;
output GPIO14;
output GPIO12;
output GPIO11;
output GPIO10;
output GPIO9;
output GPIO8;
output GPIO7;
output GPIO6;
output GPIO5;
output GPIO4;
output GPIO3;
output GPIO2;
output GPIO1;
output CTR7;
output CTR6;
output CTR5;
output CTR4;
output CTR3;
output CTR2;
output CTR1;

    wire VCC_net_1, GND_net_1, temp_sck_c, temp_csn_c, temp3_so_c, 
        temp2_so_c, temp1_so_c, adc_clk_c, \adc_d0_c[0] , 
        \adc_d0_c[1] , \adc_d0_c[2] , \adc_d0_c[3] , \adc_d0_c[4] , 
        \adc_d0_c[5] , \adc_d0_c[6] , \adc_d0_c[7] , \adc_d0_c[8] , 
        \adc_d0_c[9] , \adc_d0_c[10] , \adc_d0_c[11] , \adc_d0_c[12] , 
        \adc_d0_c[13] , adc_oen_c, adc_of_c, osc_vcc_c, ANTF_n1_c, 
        GPS1_I0_c, GPS1_I1_c, GPS1_LD_c, GPS1_Q0_c, GPS1_Q1_c, 
        ANTF_n2_c, GPS_I0_c, GPS_I1_c, GPS2_LD_c, GPS2_Q0_c, GPS2_Q1_c, 
        \SENSE_DIN_c[0] , \SENSE_DIN_c[1] , GPIO6_c, GPIO5_c, GPIO4_c, 
        GPIO3_c, GPIO3_6_net_1, GPIO3_7_net_1, GPIO3_8_net_1, 
        GPIO3_9_net_1, GPIO6_4_net_1, GPIO6_5_net_1, GPIO5_4_net_1, 
        GPIO5_6_net_1, GPIO5_8_net_1;
    
    INBUF GPS1_I1_ibuf (.PAD(GPS1_I1), .Y(GPS1_I1_c));
    INBUF \adc_d0_ibuf[8]  (.PAD(adc_d0[8]), .Y(\adc_d0_c[8] ));
    CFG4 #( .INIT(16'h6996) )  GPIO5_inst_1 (.A(temp2_so_c), .B(
        temp1_so_c), .C(GPIO5_8_net_1), .D(GPIO5_4_net_1), .Y(GPIO5_c));
    TRIBUFF \fl_dq_obuft[1]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_dq[1]));
    OUTBUF GPIO3_obuf (.D(GPIO3_c), .PAD(GPIO3));
    INBUF \adc_d0_ibuf[6]  (.PAD(adc_d0[6]), .Y(\adc_d0_c[6] ));
    TRIBUFF \BW_obuft[23]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[23]));
    TRIBUFF \BW_obuft[22]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[22]));
    INBUF GPS2_Q1_ibuf (.PAD(GPS2_Q1), .Y(GPS2_Q1_c));
    CFG2 #( .INIT(4'h6) )  GPIO5_4 (.A(temp3_so_c), .B(temp_csn_c), .Y(
        GPIO5_4_net_1));
    TRIBUFF \fl_dq_obuft[7]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_dq[7]));
    TRIBUFF \fl_dq_obuft[0]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_dq[0]));
    OUTBUF \SENSE_DOUT_obuf[1]  (.D(GND_net_1), .PAD(SENSE_DOUT[1]));
    TRIBUFF \BW_obuft[3]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[3]));
    TRIBUFF sr_lbn_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(sr_lbn));
    TRIBUFF \fl_a_obuft[21]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[21]));
    INBUF ANTF_n1_ibuf (.PAD(ANTF_n1), .Y(ANTF_n1_c));
    OUTBUF adc_shdn_obuf (.D(VCC_net_1), .PAD(adc_shdn));
    TRIBUFF \BW_obuft[4]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[4]));
    TRIBUFF GPIO1_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO1));
    OUTBUF \dac1_db_obuf[9]  (.D(GND_net_1), .PAD(dac1_db[9]));
    OUTBUF \dac1_db_obuf[11]  (.D(GND_net_1), .PAD(dac1_db[11]));
    TRIBUFF GPIO15_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO15));
    INBUF temp1_so_ibuf (.PAD(temp1_so), .Y(temp1_so_c));
    OUTBUF \dac1_db_obuf[6]  (.D(GND_net_1), .PAD(dac1_db[6]));
    INBUF temp2_so_ibuf (.PAD(temp2_so), .Y(temp2_so_c));
    OUTBUF GPIO11_obuf (.D(GND_net_1), .PAD(GPIO11));
    TRIBUFF \fl_a_obuft[23]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[23]));
    OUTBUF CTR5_obuf (.D(GND_net_1), .PAD(CTR5));
    TRIBUFF \fl_dq_obuft[6]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_dq[6]));
    TRIBUFF fl_cen_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(fl_cen));
    OUTBUF \BW_obuf[34]  (.D(GND_net_1), .PAD(BW[34]));
    OUTBUF \dac1_db_obuf[10]  (.D(GND_net_1), .PAD(dac1_db[10]));
    INBUF \adc_d0_ibuf[13]  (.PAD(adc_d0[13]), .Y(\adc_d0_c[13] ));
    TRIBUFF \BW_obuft[5]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[5]));
    TRIBUFF REF_LE_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(REF_LE));
    OUTBUF out1_obuf (.D(GND_net_1), .PAD(out1));
    CFG4 #( .INIT(16'h6996) )  GPIO3_9 (.A(\adc_d0_c[11] ), .B(
        \adc_d0_c[10] ), .C(\adc_d0_c[9] ), .D(\adc_d0_c[8] ), .Y(
        GPIO3_9_net_1));
    OUTBUF CTR3_obuf (.D(GND_net_1), .PAD(CTR3));
    TRIBUFF GPIO20_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO20));
    INBUF adc_oen_ibuf (.PAD(adc_oen), .Y(adc_oen_c));
    TRIBUFF REF_MXOUT_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        REF_MXOUT));
    TRIBUFF \BW_obuft[33]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[33]));
    TRIBUFF \BW_obuft[32]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[32]));
    INBUF \adc_d0_ibuf[9]  (.PAD(adc_d0[9]), .Y(\adc_d0_c[9] ));
    INBUF GPS1_I0_ibuf (.PAD(GPS1_I0), .Y(GPS1_I0_c));
    TRIBUFF \BW_obuft[15]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[15]));
    TRIBUFF GPIO19_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO19));
    INBUF \adc_d0_ibuf[1]  (.PAD(adc_d0[1]), .Y(\adc_d0_c[1] ));
    CFG4 #( .INIT(16'h6996) )  GPIO5_6 (.A(osc_vcc_c), .B(adc_of_c), 
        .C(adc_oen_c), .D(adc_clk_c), .Y(GPIO5_6_net_1));
    TRIBUFF \fl_a_obuft[10]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[10]));
    OUTBUF CTR1_obuf (.D(GND_net_1), .PAD(CTR1));
    GND GND (.Y(GND_net_1));
    INBUF \SENSE_DIN_ibuf[0]  (.PAD(SENSE_DIN[0]), .Y(\SENSE_DIN_c[0] )
        );
    TRIBUFF \BW_obuft[29]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[29]));
    INBUF GPS2_Q0_ibuf (.PAD(GPS2_Q0), .Y(GPS2_Q0_c));
    CFG3 #( .INIT(8'h96) )  GPIO4_inst_1 (.A(\SENSE_DIN_c[1] ), .B(
        \SENSE_DIN_c[0] ), .C(GPS2_Q1_c), .Y(GPIO4_c));
    TRIBUFF SENSE_CS_1_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        SENSE_CS_1));
    CFG4 #( .INIT(16'h6996) )  GPIO3_7 (.A(\adc_d0_c[3] ), .B(
        \adc_d0_c[2] ), .C(\adc_d0_c[1] ), .D(\adc_d0_c[0] ), .Y(
        GPIO3_7_net_1));
    TRIBUFF \fl_a_obuft[17]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[17]));
    TRIBUFF sr_cs2_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(sr_cs2));
    TRIBUFF GPIO10_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO10));
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
    TRIBUFF GPIO7_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO7));
    TRIBUFF GPS1_SHDN_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        GPS1_SHDN));
    INBUF \adc_d0_ibuf[3]  (.PAD(adc_d0[3]), .Y(\adc_d0_c[3] ));
    TRIBUFF \fl_a_obuft[15]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[15]));
    INBUF GPS1_Q1_ibuf (.PAD(GPS1_Q1), .Y(GPS1_Q1_c));
    TRIBUFF \BW_obuft[2]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[2]));
    OUTBUF \SENSE_DOUT_obuf[0]  (.D(GND_net_1), .PAD(SENSE_DOUT[0]));
    OUTBUF CTR4_obuf (.D(GND_net_1), .PAD(CTR4));
    TRIBUFF \BW_obuft[26]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[26]));
    VCC VCC (.Y(VCC_net_1));
    TRIBUFF GPIO14_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO14));
    TRIBUFF fl_byten_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_byten));
    TRIBUFF \fl_a_obuft[0]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[0]));
    INBUF adc_clk_ibuf (.PAD(adc_clk), .Y(adc_clk_c));
    TRIBUFF \BW_obuft[18]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[18]));
    OUTBUF CTR2_obuf (.D(GND_net_1), .PAD(CTR2));
    CFG4 #( .INIT(16'h6996) )  GPIO3_8 (.A(\adc_d0_c[7] ), .B(
        \adc_d0_c[6] ), .C(\adc_d0_c[5] ), .D(\adc_d0_c[4] ), .Y(
        GPIO3_8_net_1));
    TRIBUFF sr_ubn_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(sr_ubn));
    TRIBUFF dac1_sleep_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        dac1_sleep));
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
    CFG4 #( .INIT(16'h6996) )  GPIO6_inst_1 (.A(GPS_I0_c), .B(
        GPS2_Q0_c), .C(GPIO6_5_net_1), .D(GPIO6_4_net_1), .Y(GPIO6_c));
    TRIBUFF \BW_obuft[24]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[24]));
    TRIBUFF dac1_clk_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        dac1_clk));
    TRIBUFF \BW_obuft[27]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[27]));
    TRIBUFF \BW_obuft[20]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[20]));
    TRIBUFF \BW_obuft[0]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[0]));
    TRIBUFF REF_DATA_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        REF_DATA));
    OUTBUF \dac1_db_obuf[8]  (.D(GND_net_1), .PAD(dac1_db[8]));
    TRIBUFF fl_oen_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(fl_oen));
    INBUF GPS1_LD_ibuf (.PAD(GPS1_LD), .Y(GPS1_LD_c));
    OUTBUF \dac1_db_obuf[5]  (.D(GND_net_1), .PAD(dac1_db[5]));
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
    CFG3 #( .INIT(8'h96) )  GPIO6_4 (.A(GPS_I1_c), .B(GPS1_I1_c), .C(
        ANTF_n2_c), .Y(GPIO6_4_net_1));
    INBUF GPS2_LD_ibuf (.PAD(GPS2_LD), .Y(GPS2_LD_c));
    TRIBUFF fl_resetn_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_resetn));
    TRIBUFF \BW_obuft[21]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[21]));
    OUTBUF GPIO6_obuf (.D(GPIO6_c), .PAD(GPIO6));
    TRIBUFF \fl_a_obuft[5]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[5]));
    INBUF temp_csn_ibuf (.PAD(temp_csn), .Y(temp_csn_c));
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
    TRIBUFF \fl_a_obuft[14]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[14]));
    TRIBUFF sr_wen_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(sr_wen));
    INBUF \adc_d0_ibuf[4]  (.PAD(adc_d0[4]), .Y(\adc_d0_c[4] ));
    TRIBUFF \BW_obuft[19]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[19]));
    TRIBUFF out2_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(out2));
    OUTBUF \dac1_db_obuf[12]  (.D(GND_net_1), .PAD(dac1_db[12]));
    TRIBUFF GPIO16_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO16));
    TRIBUFF REF_CE_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(REF_CE));
    TRIBUFF \BW_obuft[31]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[31]));
    INBUF \adc_d0_ibuf[0]  (.PAD(adc_d0[0]), .Y(\adc_d0_c[0] ));
    TRIBUFF \fl_a_obuft[18]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[18]));
    OUTBUF CTR7_obuf (.D(GND_net_1), .PAD(CTR7));
    TRIBUFF fl_wpn_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(fl_wpn));
    CFG2 #( .INIT(4'h6) )  GPIO3_6 (.A(\adc_d0_c[12] ), .B(
        \adc_d0_c[13] ), .Y(GPIO3_6_net_1));
    TRIBUFF GPIO12_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO12));
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
    TRIBUFF oclk_1_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(oclk_1));
    TRIBUFF \BW_obuft[16]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[16]));
    OUTBUF GPIO5_obuf (.D(GPIO5_c), .PAD(GPIO5));
    TRIBUFF \fl_a_obuft[11]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[11]));
    TRIBUFF \fl_a_obuft[19]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[19]));
    INBUF GPS_I1_ibuf (.PAD(GPS_I1), .Y(GPS_I1_c));
    TRIBUFF GPIO2_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO2));
    CFG4 #( .INIT(16'h6996) )  GPIO5_8 (.A(temp_sck_c), .B(GPS1_I0_c), 
        .C(GPIO5_6_net_1), .D(ANTF_n1_c), .Y(GPIO5_8_net_1));
    INBUF \SENSE_DIN_ibuf[1]  (.PAD(SENSE_DIN[1]), .Y(\SENSE_DIN_c[1] )
        );
    TRIBUFF \BW_obuft[9]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[9]));
    TRIBUFF \fl_a_obuft[6]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[6]));
    TRIBUFF \BW_obuft[14]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[14]));
    INBUF \adc_d0_ibuf[7]  (.PAD(adc_d0[7]), .Y(\adc_d0_c[7] ));
    TRIBUFF fl_ryby_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(fl_ryby));
    TRIBUFF \fl_a_obuft[13]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[13]));
    OUTBUF \dac1_db_obuf[7]  (.D(GND_net_1), .PAD(dac1_db[7]));
    OUTBUF GPIO4_obuf (.D(GPIO4_c), .PAD(GPIO4));
    TRIBUFF \BW_obuft[17]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[17]));
    TRIBUFF \BW_obuft[10]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[10]));
    TRIBUFF \fl_a_obuft[1]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[1]));
    TRIBUFF \fl_a_obuft[3]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[3]));
    OUTBUF \dac1_db_obuf[13]  (.D(GND_net_1), .PAD(dac1_db[13]));
    TRIBUFF dac2_clk_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        dac2_clk));
    TRIBUFF \fl_a_obuft[24]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[24]));
    TRIBUFF clk_out_n1_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(
        clk_out_n1));
    TRIBUFF GPIO9_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO9));
    TRIBUFF \fl_a_obuft[16]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[16]));
    TRIBUFF \fl_dq_obuft[2]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_dq[2]));
    TRIBUFF \fl_a_obuft[7]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[7]));
    TRIBUFF \BW_obuft[28]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[28]));
    TRIBUFF GPIO17_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO17));
    TRIBUFF sr_cs1n_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(sr_cs1n));
    TRIBUFF \fl_a_obuft[2]  (.D(GND_net_1), .E(GND_net_1), .PAD(
        fl_a[2]));
    TRIBUFF \BW_obuft[11]  (.D(GND_net_1), .E(GND_net_1), .PAD(BW[11]));
    CFG4 #( .INIT(16'h6996) )  GPIO3_inst_1 (.A(GPIO3_9_net_1), .B(
        GPIO3_8_net_1), .C(GPIO3_7_net_1), .D(GPIO3_6_net_1), .Y(
        GPIO3_c));
    CFG4 #( .INIT(16'h6996) )  GPIO6_5 (.A(GPS2_LD_c), .B(GPS1_Q1_c), 
        .C(GPS1_Q0_c), .D(GPS1_LD_c), .Y(GPIO6_5_net_1));
    TRIBUFF GPIO8_obuft (.D(GND_net_1), .E(GND_net_1), .PAD(GPIO8));
    INBUF \adc_d0_ibuf[12]  (.PAD(adc_d0[12]), .Y(\adc_d0_c[12] ));
    
endmodule
