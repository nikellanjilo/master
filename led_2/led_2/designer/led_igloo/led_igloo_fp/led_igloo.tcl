open_project -project {C:\Projects\Verilog\led_IGLOO\led_2\led_2\designer\led_igloo\led_igloo_fp\led_igloo.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {M2GL050T} \
    -fpga {C:\Projects\Verilog\led_IGLOO\led_2\led_2\designer\led_igloo\led_igloo.map} \
    -header {C:\Projects\Verilog\led_IGLOO\led_2\led_2\designer\led_igloo\led_igloo.hdr } \
    -spm {C:\Projects\Verilog\led_IGLOO\led_2\led_2\designer\led_igloo\led_igloo.spm} \
    -dca {C:\Projects\Verilog\led_IGLOO\led_2\led_2\designer\led_igloo\led_igloo.dca}
set_programming_file -name {M2GL050T} -no_file
save_project
close_project
