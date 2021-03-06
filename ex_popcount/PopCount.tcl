#=========================================================================
# PopCount.tcl
#=========================================================================

open_project PopCount.prj

set_top PopCount

add_files PopCount.cc

open_solution "solution1" -reset

set_part {xc7z020clg484-1}
create_clock -period 5

set_directive_interface -mode ap_ctrl_none PopCount

csynth_design

# concatenate all the verilog files into a single file
set fout [open ./PopCount.v w]
fconfigure $fout -translation binary
set vfiles [glob -nocomplain -type f "PopCount.prj/solution1/syn/verilog/*.v"]
foreach vfile $vfiles {
  set fin [open $vfile r]
  fconfigure $fin -translation binary
  fcopy $fin $fout
  close $fin
}

# add verilator lint off and on pragmas
seek $fout 0
puts -nonewline $fout "/* verilator lint_off WIDTH */\n\n//"
seek $fout -1 end
puts $fout "\n\n/* lint_on */"

close $fout

exit
