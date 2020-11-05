transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {exercise1.vo}

vlog -vlog01compat -work work +incdir+C:/Users/User/github/ca_20/week10 {C:/Users/User/github/ca_20/week10/half_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/User/github/ca_20/week10 {C:/Users/User/github/ca_20/week10/half_adder_testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  half_adder_testbench

add wave *
view structure
view signals
run -all
