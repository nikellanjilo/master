open_project -project {C:\Projects\Verilog\led_IGLOO\led_dac_adc_qudr\led_dac_adc_work\libero\Mayak_DAC_ADC\designer\build\build_fp\build.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {M2GL050T} \
    -fpga {C:\Projects\Verilog\led_IGLOO\led_dac_adc_qudr\led_dac_adc_work\libero\Mayak_DAC_ADC\designer\build\build.map} \
    -header {C:\Projects\Verilog\led_IGLOO\led_dac_adc_qudr\led_dac_adc_work\libero\Mayak_DAC_ADC\designer\build\build.hdr } \
    -spm {C:\Projects\Verilog\led_IGLOO\led_dac_adc_qudr\led_dac_adc_work\libero\Mayak_DAC_ADC\designer\build\build.spm} \
    -dca {C:\Projects\Verilog\led_IGLOO\led_dac_adc_qudr\led_dac_adc_work\libero\Mayak_DAC_ADC\designer\build\build.dca}
set_programming_file -name {M2GL050T} -no_file
save_project
close_project
