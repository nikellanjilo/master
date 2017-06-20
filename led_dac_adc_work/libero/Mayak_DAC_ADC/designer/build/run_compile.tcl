set_defvar -name {SPEED}   -value {-1}
set_defvar -name {VOLTAGE} -value {1.2}
set_defvar -name {TEMPR}   -value {IND}
set_defvar -name {PART_RANGE}   -value {IND}
set_defvar -name {IO_DEFT_STD} -value {LVCMOS25}
set_defvar -name {PACOMP_PARPT_MAX_NET} -value {10}
set_defvar -name {PA4_GB_MAX_RCLKINT_INSERTION} -value {16}
set_defvar -name {PA4_GB_MIN_GB_FANOUT_TO_USE_RCLKINT} -value {300}
set_defvar -name {PA4_GB_MAX_FANOUT_DATA_MOVE} -value {5000}
set_defvar -name {PA4_GB_HIGH_FANOUT_THRESHOLD} -value {5000}
set_defvar -name {PA4_GB_COUNT} -value {16}
set_defvar -name {RESTRICTPROBEPINS} -value {1}
set_defvar -name {RESTRICTSPIPINS} -value {0}
set_defvar -name {PDC_IMPORT_HARDERROR} -value {1}
set_defvar -name {PA4_IDDQ_FF_FIX} -value {1}
set_defvar -name {BLOCK_PLACEMENT_CONFLICTS} -value {ERROR}
set_defvar -name {BLOCK_ROUTING_CONFLICTS} -value {LOCK}
set_defvar -name {RTG4_MITIGATION_ON} -value {0}

set_compile_info \
    -category {"Device Selection"} \
    -name {"Family"} \
    -value {"IGLOO2"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Device"} \
    -value {"M2GL050T"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Package"} \
    -value {"896 FBGA"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Speed Grade"} \
    -value {"-1"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Temp"} \
    -value {"-40:25:100"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Voltage"} \
    -value {"1.26:1.20:1.14"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Core Voltage"} \
    -value {"1.2V"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Ramp Rate"} \
    -value {"100ms Minimum"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"System Controller Suspend Mode"} \
    -value {"No"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"PLL Supply Voltage"} \
    -value {"2.5V"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Default I/O technology"} \
    -value {"LVCMOS 2.5V"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Restrict Probe Pins"} \
    -value {"Yes"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Restrict SPI Pins"} \
    -value {"No"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Topcell"} \
    -value {"build"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Format"} \
    -value {"EDIF"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Source"} \
    -value {"C:\Projects\Verilog\led_IGLOO\led_dac_adc_work\libero\Mayak_DAC_ADC\synthesis\synthesis_1\build.edn"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Source"} \
    -value {"C:\Projects\Verilog\led_IGLOO\led_dac_adc_work\libero\Mayak_DAC_ADC\constraint\io\build.io.pdc"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Source"} \
    -value {"C:\Projects\Verilog\led_IGLOO\led_dac_adc_work\libero\Mayak_DAC_ADC\constraint\fp\build.fp.pdc"}
set_compile_info \
    -category {"Options"} \
    -name {"Merge User SDC file(s) with Existing Timing Constraints"} \
    -value {"true"}
set_compile_info \
    -category {"Options"} \
    -name {"Abort Compile if errors are found in PDC file(s)"} \
    -value {"true"}
set_compile_info \
    -category {"Options"} \
    -name {"Enable Single Event Transient mitigation"} \
    -value {"false"}
set_compile_info \
    -category {"Options"} \
    -name {"Enable Design Separation Methodology"} \
    -value {"false"}
set_compile_info \
    -category {"Options"} \
    -name {"Limit the number of high fanout nets to display to"} \
    -value {"10"}
compile \
    -desdir {C:\Projects\Verilog\led_IGLOO\led_dac_adc_work\libero\Mayak_DAC_ADC\designer\build} \
    -design build \
    -fam IGLOO2 \
    -die PA4MGL5000 \
    -pkg fg896 \
    -pdc_file {C:\Projects\Verilog\led_IGLOO\led_dac_adc_work\libero\Mayak_DAC_ADC\constraint\io\build.io.pdc} \
    -pdc_file {C:\Projects\Verilog\led_IGLOO\led_dac_adc_work\libero\Mayak_DAC_ADC\constraint\fp\build.fp.pdc} \
    -merge_pdc 0
