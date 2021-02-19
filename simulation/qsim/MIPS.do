onerror {exit -code 1}
vlib work
vcom -work work MIPS.vho
vcom -work work Lab05A.vwf.vht
vsim -novopt -c -t 1ps -sdfmax ShoreLab05_vhd_vec_tst/i1=MIPS_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ShoreLab05_vhd_vec_tst
vcd file -direction MIPS.msim.vcd
vcd add -internal ShoreLab05_vhd_vec_tst/*
vcd add -internal ShoreLab05_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f