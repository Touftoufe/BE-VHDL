transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {DFBF_6_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/SofianeAOUCI/Desktop/BE_VHDL_AOUCI_BONHOURE/BE/Functions_dev/../Simulation_files/tb_anemo.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=DFBF_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  TB_ANEMO 

add wave *
view structure
view signals
run 10 sec
