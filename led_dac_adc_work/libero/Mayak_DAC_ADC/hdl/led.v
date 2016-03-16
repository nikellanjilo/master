// Target Device : IGLOO2 M2G010 484 FBGA
`include "dds.v"
module led_igloo (
      // Clocks and flag of done
      input init_done,
      input fab_clk_100MHz,
      input fab_clk_8MHz,
      input fab_clk_16MHz,
      input fab_clk_1_17MHz,
      // Temperature Sensors
      output temp_sck ,
      output reg temp3_csn,
      output reg temp2_csn,
      output reg temp1_csn,
      input temp_so,

      output reg out1, // Start reactor
      output out2,     // Start engine
      // ADC
      input adc_clk,
      input [13:0] adc_d0,
      input adc_oen,
      input  adc_of,
      output reg adc_shdn = 1,

      // FPGA connection
      input [14:0] BW,
      output BW_clk,
      output reg [14:0] BW_out,
      output BW_36, // Reset neighbour FPGA
      // DAC
      output dac1_clk,
      output dac2_clk,
      output reg [13:5] dac1_db,
      output dac1_sleep,
      // SRAM & FLASH
      output [25:0] fl_a,
      output fl_byten,
      output fl_cen,
      output [7:0] fl_dq,
      output fl_oen,
      output fl_resetn,
      output fl_ryby,
      output fl_wen,
      output fl_wpn,
      output sr_cs1n,
      output sr_cs2,
      output sr_lbn,
      output sr_oen,
      output sr_ubn,
      output sr_wen,
      //GPS
      input ANTF_n1,
      input osc_vcc, // start GPS oscillator
      output clk_out_n1,
      input  GPS1_I0,
      input GPS1_I1,
      input GPS1_LD,
      input GPS1_Q0,
      input GPS1_Q1,

      input ANTF_n2,
      output clk_out_n2,
      output CSN_n1,
      input GPS_I0,
      input GPS_I1,
      output GPS1_IDLE,
      input GPS2_LD,
      output GPS1_PGM,
      input GPS2_Q0,
      input GPS2_Q1,
      output GPS1_SCLK,
      output GPS1_SDATA,
      output GPS1_SHDN,
      // Wideband Synthesizer
      output REF_CE,
      output REF_CLK,
      output REF_DATA,
      output REF_LD,
      output REF_LE,
      output REF_MXOUT,
      // ADC of Telemetry x2
      output reg SENSE_CS_1 = 1,
      input [1:0] SENSE_DIN,
      output reg [1:0] SENSE_DOUT,
      output oclk_1,
      // Attenuator
      output dsa_clk,
      output dsa_data,
      output dsa_le,
      // Kit
      output en_modul,
      output GPIO20,  //Den (RS485)
      output reg GPIO19 = 0,  // R (RS485)
      output GPIO17,  // SB3
      output reg GPIO16 = 1,  // LED3
      output reg GPIO15 = 0,  // D (RS485)
      output reg GPIO14 ,  // LED1
      output reg GPIO12,  // LED2
      input GPIO11,  // SB1
      input GPIO10,  // SB4
      input GPIO9,   // SB2
      input GPIO8,   // SB5
      output wire GPIO7,   // Ren (RS485)
      output wire GPIO6,
      output wire GPIO5,
      output wire GPIO4,
      output wire GPIO3,
      output GPIO2,   // RESETn
      output GPIO1,   // GOLDEN
      // Run heater
      output CTR7,
      output CTR6,
      // *****
      output reg CTR5 = 0, // Enable transmitter 0V
      output reg CTR4 = 0, // Enable receiver 0V
      output reg CTR3 = 0, // Enable transmitter 5V
      output reg CTR2 = 0, // Enable receiver 5V
      output reg CTR1 = 0,  // Enable 1V if receiver OR transmitter switched on
      output reg AMP_EN = 0 // Enable amplifier of receiver
  );
    reg [7:0] fr_adc_count = 1;
    reg [3:0] cnt_frame= 0;
    reg [9:0] cnt = 0;
    reg [31:0] freq = 32'd4_000_000;
    reg [31:0] cnt_freq = 0;
    reg [8:0] dac_count = 0;
    reg dac_state = 1;
    reg sdv_dac_2 = 0;
    reg sdv_dac_1 = 0;
    reg clk_dac2,clk_dac1;
  assign GPIO5 = adc_clk^adc_oen^adc_of^osc_vcc^ANTF_n1^GPS1_I0^GPIO9^GPS1_I1^GPS1_LD^GPS1_Q0^GPS1_Q1^ANTF_n2^GPS_I0^GPS_I1^GPS2_LD^GPS2_Q0^GPS2_Q1^SENSE_DIN[0]^SENSE_DIN[1];
  assign GPIO6 = SENSE_DIN[0];
  assign GPIO4 = SENSE_DIN[1];
  assign GPIO7 = cnt[0];
  assign GPIO3 = adc_d0[13]^adc_d0[12]^adc_d0[11]^adc_d0[10]^adc_d0[9]^adc_d0[8]^adc_d0[7]^adc_d0[6]^adc_d0[5]^adc_d0[4]^adc_d0[3]^adc_d0[2]^adc_d0[1]^adc_d0[0];
  assign GPIO20 = dac_count[0];
  assign oclk_1 = fab_clk_8MHz*(~SENSE_CS_1);
  assign dac2_clk = clk_dac2*GPIO10;
  assign dac1_clk = clk_dac1;
  assign CTR7 = ~GPIO9;
  assign CTR6 = ~GPIO8;
  //assign dac1_sleep = GPIO8;
  //assign BW_36 = GPIO8;

    reg [1:0] state = 2'b00;
    reg [7:0] data_2adc [8:0] /* synthesis syn_ramstyle = "registers"*/;
    reg [11:0] data_from_adc [8:0] /* synthesis syn_ramstyle = "registers"*/;

//--------------------DACs -----------------

    reg [1:0] sdv_count = 0;
    wire [7:0] fr_dac_count;
	wire [7:0] dds_cos, dds_sin ;
    assign fr_dac_count = fr_adc_count;

    always @ (posedge fab_clk_16MHz)
    begin
        sdv_count <= sdv_count + 1;
        case (sdv_count)
    2'b00 : begin
                clk_dac1 <= 0;
                if ( dac_count <= 63 && dac_count >= 191 )
                    dac1_db <= 256 + $unsigned(dds_cos);
                else
                    dac1_db <= $unsigned(dds_cos);

                if ( $unsigned(dac_count) <= (255 - fr_dac_count) )
                    dac_count <= dac_count + fr_dac_count;
                else
                    dac_count <= 0;
            end

    2'b01 : begin
            clk_dac1 <= 1;
            end
    2'b10 : begin
                clk_dac2 <= 0;
                if (dac_count <= 127 )
                    dac1_db <= 256 + $unsigned(dds_sin);
                else
                    dac1_db <= $unsigned(dds_sin);
            end
    2'b11 : clk_dac2 <= 1;

    endcase
    end

    dds dds_w (
      .in_value(dac_count),
      .sin_o(dds_sin),
      .cos_o(dds_cos),
      .clk(fab_clk_16MHz)
      );

//--------------------FPGA connection-----------------
reg [14:0] fpga_count = 0;
reg [14:0] fpga_shift,fpga_shift_2;
reg [14:0] fpga_data_receive = 0;
reg [14:0] fpga_data_receive_pos = 0;
reg fpga_flag = 0;
assign BW_clk=fab_clk_16MHz;

always @ (posedge fab_clk_16MHz)
begin
    fpga_shift <= fpga_count;
    fpga_shift_2 <= fpga_shift;
    fpga_count <= fpga_count + 1;
    BW_out[14:0] <= fpga_count;
    fpga_data_receive_pos <= BW[14:0];
end
always @ (negedge fab_clk_16MHz)
begin
    fpga_data_receive <= BW[14:0];
    if (fpga_data_receive == fpga_shift_2)
        fpga_flag <= 1;
    if (fpga_flag)
        GPIO14 <= 1;
    else
        GPIO14 <= 0;
end
//--------------------Temperature Sensors---
// temp_sck, temp_csn, temp1_so, temp2_so, temp3_so
reg [31:0] temp_count = 0;
reg [4:0] temp_count_data = 0;
reg [15:0] temp1,temp2,temp3;
reg [2:0] temp_state = 3'b011;
reg en_clk_temp = 1;
wire [31:0] time_sens;

assign temp_sck = fab_clk_8MHz; //fab_clk_8MHz*(~en_clk_temp)*(~temp_csn);
assign time_sens = freq;

always @ (posedge fab_clk_8MHz)//fab_clk_8MHz)
begin
    case (temp_state)
    3'b011 : begin
                temp1_csn <= 1;
                temp2_csn <= 1;
                temp3_csn <= 1;
                if (!GPIO11)
                    temp_state <= 3'b010;
            end

    3'b000 : begin
                temp_state <= 3'b001;
                temp1_csn <= 0;
            end
    3'b001 : begin
            if (temp_count_data <= 15)
            begin
                temp_count_data <= temp_count_data + 1;
                temp1[15-temp_count_data] <= temp_so;
            end
            else
            begin
                temp_state <= 3'b110;
                temp_count_data <= 0;
                temp1_csn <= 1;
            end
            end
    3'b110 : begin
                temp2_csn <= 0;
                temp_state <= 3'b100;
             end
    3'b100 : begin
            if (temp_count_data <= 15)
            begin
                temp_count_data <= temp_count_data + 1;
                temp2[15-temp_count_data] <= temp_so;
            end
            else
            begin
                temp_state <= 3'b101;
                temp_count_data <= 0;
                temp2_csn <= 1;
            end
            end
    3'b101 : begin
                temp3_csn <= 0;
                temp_state <= 3'b111;
             end
    3'b111 : begin
            if (temp_count_data <= 15)
            begin
                temp_count_data <= temp_count_data + 1;
                temp3[15-temp_count_data] <= temp_so;
            end
            else
            begin
                temp_state <= 3'b010;
                temp_count_data <= 0;
                temp3_csn <= 1;
            end
            end


    3'b010 : begin
            if (temp_count < time_sens)  //32'd4_560_000 )
                temp_count <= temp_count + 1;
            else
            begin
                temp_count <= 0;
                temp_state <= 3'b000;
            end
            end
     endcase
end

always @ (negedge fab_clk_8MHz)
begin
     if (temp_count_data <= 16 && temp_count_data > 0)
        en_clk_temp <= 0;
    else
        en_clk_temp <= 1;

end
//---------------Flash controller ----------


//--------------------ADCs -----------------
   always @ (posedge fab_clk_8MHz)
    begin
    data_2adc[0] = 8'b00_000_000; // none
    data_2adc[1] = 8'b11_000_111; // IN0
    data_2adc[2] = 8'b11_001_111; // IN1
    data_2adc[3] = 8'b11_010_111; // IN2
    data_2adc[4] = 8'b11_011_111; // IN3
    data_2adc[5] = 8'b11_100_111; // IN4
    data_2adc[6] = 8'b11_101_111; // IN5
    data_2adc[7] = 8'b11_110_111; // IN6
    data_2adc[8] = 8'b11_111_111; // IN7
    end

  always @ (negedge fab_clk_8MHz)
  begin
   case (state)
    2'b00 : begin
              if (!GPIO11)
               begin
                state <= 2'b01;
                cnt_frame <= 0;
               end
            end
    2'b01 : begin
             if (cnt_frame < 8)
                begin
                  cnt_frame <= cnt_frame + 1;
                  state <= 2'b10;
                  cnt <= 0;
                end
             else
                state <= 2'b00;
            end
     2'b10 : begin
            if (cnt <=50)
            begin
                cnt <= cnt + 1;
             if (cnt <= 15 )
                    SENSE_CS_1 <= 0;
             if (cnt >15 && cnt <= 50)
                    SENSE_CS_1 <= 1;
             end
             else
                 begin
                    state <= 2'b01;
                    cnt <= 0;
                  end
              end
     endcase
  end

    always @ (negedge fab_clk_8MHz)
    begin
         if (cnt > 0 && cnt <= 7)
            SENSE_DOUT[1] <= data_2adc[cnt_frame][7-cnt];
    end

    always @ (posedge fab_clk_8MHz)
    begin
        if (cnt >= 5 && cnt <= 16)
            data_from_adc [cnt_frame][16-cnt] <= SENSE_DIN[1];
    end

    always @ (posedge fab_clk_8MHz)
    begin
       if ( $unsigned(data_from_adc[2][11:0]) < 12'd500 )
       begin
            freq <= 32'd4_000_000; // 0.5 s
            fr_adc_count <= 10;
       end
       if ( $unsigned(data_from_adc[2][11:0]) >= 12'd500 && $unsigned(data_from_adc[2][11:0]) < 12'd1500 )
        begin
            freq <= 32'd2_000_000; // 0.25 s
            fr_adc_count <= 20;
        end
       if ( $unsigned(data_from_adc[2][11:0]) >= 12'd1500 && $unsigned(data_from_adc[2][11:0]) < 12'd2500 )
        begin
            freq <= 32'd5_120_000; // 640 ms
            fr_adc_count <= 30;
        end
        if ( $unsigned(data_from_adc[2][11:0]) >= 12'd2500 && $unsigned(data_from_adc[2][11:0]) <= 12'd4095 )
        begin
            freq <= 32'd8_000_000; // 1s
            fr_adc_count <= 40;
        end
    end

    always @ (posedge fab_clk_8MHz)
    begin
        if (cnt_freq < freq)
            cnt_freq <= cnt_freq + 1;
        else
            begin
            cnt_freq <= 0;
            GPIO16 <= ~GPIO16;
            end
        if (!init_done)
            GPIO12 <= 1;
    end



  endmodule
