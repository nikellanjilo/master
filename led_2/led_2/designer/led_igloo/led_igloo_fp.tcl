new_project \
         -name {led_igloo} \
         -location {C:\Projects\Verilog\led_IGLOO\led_2\led_2\designer\led_igloo\led_igloo_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2GL050T} \
         -name {M2GL050T}
enable_device \
         -name {M2GL050T} \
         -enable {TRUE}
save_project
close_project
