transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {exercise2.vo}

vlog -vlog01compat -work work +incdir+C:/Users/User/github/ca_20/week10/exercise2 {C:/Users/User/github/ca_20/week10/exercise2/full_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/User/github/ca_20/week10/exercise2 {C:/Users/User/github/ca_20/week10/exercise2/full_adder_testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/User/github/ca_20/week10/exercise2 {C:/Users/User/github/ca_20/week10/exercise2/half_adder.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  full_adder_testbench

add wave *
view structure
view signals
run -all
