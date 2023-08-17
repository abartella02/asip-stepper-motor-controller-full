transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Shared/3TB4_labs/lab5 {C:/Shared/3TB4_labs/lab5/branch_logic.v}

