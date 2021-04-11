############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project spam
set_top SgdLR_sw
add_files spam-filter/src/host/typedefs.h
add_files spam-filter/src/sw/sgd_sw.h
add_files spam-filter/src/sw/sgd_sw.cpp
add_files spam-filter/src/sw/lut.h
add_files -tb spam-filter/src/host/utils.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb spam-filter/src/host/utils.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb spam-filter/src/host/typedefs.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb spam-filter/src/host/spam_filter.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb spam-filter/data/shuffledlabels.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb spam-filter/data/shuffledfeats.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb spam-filter/src/host/check_result.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb spam-filter/src/host/check_result.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./spam/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
