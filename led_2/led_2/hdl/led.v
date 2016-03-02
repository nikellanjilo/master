// Target Device : IGLOO2 M2G010 484 FBGA
// Author : Malyshev
module led_igloo (
      input temp_sck , // цифровой датчик температуры
      input temp_csn,  // цифровой датчик температуры
      input temp3_so,  // цифровой датчик температуры
      input temp2_so,  // цифровой датчик температуры
      input temp1_so,  // цифровой датчик температуры
      output reg out1,     // запуск реактора
      output out2,     // запуск двигателя
      // АЦП приемного тракта
      input adc_clk,
      input [13:0] adc_d0,
      input adc_oen,
      input  adc_of,
      output reg adc_shdn = 1,

      input osc_vcc, // включение осцилляторов для GPS
      output reg [34:0] BW = 34'bz,   // Соединения между ПЛИС
      output reg BW_36 = 0, // Reset neighbour FPGA
      // ЦАП выходного тракта
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
      // Управление GPS
      input ANTF_n1,
      output clk_out_n1,
      input GPS1_I0,
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
      // Управление синтезатором частот
      output REF_CE,
      output REF_CLK,
      output REF_DATA,
      output REF_LD,
      output REF_LE,
      output REF_MXOUT,
      // Два АЦП для телеметрии
      output SENSE_CS_1,
      input [1:0] SENSE_DIN,
      output reg [1:0] SENSE_DOUT,
      output oclk_1,
      // Управление аттенюатором приемного тракта
      output dsa_clk,
      output dsa_data,
      output dsa_le,
      // Включение модулятора
      output en_modul,
      output GPIO20,  //Den (RS485)
      output GPIO19,  // R (RS485)
      output GPIO17,  // SB3
      output GPIO16,  // LED3
      output GPIO15,  // D (RS485)
      output GPIO14,  // LED1
      output GPIO12,  // LED2
      output reg GPIO11,  // SB1
      output GPIO10,  // SB4
      output GPIO9,   // SB2
      output GPIO8,   // SB5
      output GPIO7,   // Ren (RS485)
      output wire GPIO6,
      output wire GPIO5,
      output wire GPIO4,
      output wire GPIO3,
      output GPIO2,   // RESETn
      output GPIO1,   // GOLDEN
      // Включение нагревателей по 0.25 Вт
      output reg CTR7 = 0,
      output reg CTR6 = 0,
      // *****
      output reg CTR5 = 0, // Включение 0В для передатчика
      output reg CTR4 = 0, // Включение 0В для приемника
      output reg CTR3 = 0, // Включение 5В для передатчика
      output reg CTR2 = 0, // Включение 5В для приемника
      output reg CTR1 = 0  // Включение 1В при включении передатчика или приемника
  );

  reg x = 0;

  assign GPIO5 = temp_sck^temp_csn^temp3_so^temp2_so^temp1_so^adc_clk^adc_oen^adc_of^osc_vcc^ANTF_n1^GPS1_I0;
  assign GPIO6 = GPS1_I1^GPS1_LD^GPS1_Q0^GPS1_Q1^ANTF_n2^GPS_I0^GPS_I1^GPS2_LD^GPS2_Q0;
  assign GPIO4 = GPS2_Q1^SENSE_DIN[0]^SENSE_DIN[1];
  assign GPIO3 = adc_d0[13]^adc_d0[12]^adc_d0[11]^adc_d0[10]^adc_d0[9]^adc_d0[8]^adc_d0[7]^adc_d0[6]^adc_d0[5]^adc_d0[4]^adc_d0[3]^adc_d0[2]^adc_d0[1]^adc_d0[0];

  endmodule
