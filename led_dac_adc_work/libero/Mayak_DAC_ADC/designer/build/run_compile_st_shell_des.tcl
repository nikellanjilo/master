set_device \
    -family  IGLOO2 \
    -die     PA4MGL5000 \
    -package fg896 \
    -speed   -1 \
    -tempr   {IND} \
    -voltr   {IND}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def NETLIST_TYPE EDIF
set_name build
set_workdir {C:\Projects\Verilog\led_IGLOO\led_dac_adc_work\libero\Mayak_DAC_ADC\designer\build}
set_log     {C:\Projects\Verilog\led_IGLOO\led_dac_adc_work\libero\Mayak_DAC_ADC\designer\build\build_sdc.log}
set_design_state pre_layout
