#!/bin/sh
dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd $dir;
export CARRY_SELECT_ADDER_MAP='pdk/sky130A/libs.tech/openlane/sky130_fd_sc_hd/csa_map.v';
export CLOCK_PERIOD='10.0';
export DESIGN_NAME='invert';
export FULL_ADDER_MAP='pdk/sky130A/libs.tech/openlane/sky130_fd_sc_hd/fa_map.v';
export LIB_SYNTH='./tmp/synthesis/trimmed.lib';
export LIB_SYNTH_COMPLETE_NO_PG='./tmp/synthesis/3-sky130_fd_sc_hd__tt_025C_1v80.no_pg.lib';
export LIB_SYNTH_NO_PG='./tmp/synthesis/3-trimmed.no_pg.lib';
export PACKAGED_SCRIPT_0='openlane/scripts/yosys/synth.tcl';
export PACKAGED_SCRIPT_1='./tmp/synthesis/synthesis.sdc';
export RIPPLE_CARRY_ADDER_MAP='pdk/sky130A/libs.tech/openlane/sky130_fd_sc_hd/rca_map.v';
export SAVE_NETLIST='./results/synthesis/invert.v';
export SYNTH_ADDER_TYPE='YOSYS';
export SYNTH_BUFFERING='1';
export SYNTH_CAP_LOAD='33.442';
export SYNTH_DRIVING_CELL='sky130_fd_sc_hd__inv_2';
export SYNTH_EXTRA_MAPPING_FILE='';
export SYNTH_LATCH_MAP='pdk/sky130A/libs.tech/openlane/sky130_fd_sc_hd/latch_map.v';
export SYNTH_MAX_FANOUT='10';
export SYNTH_MAX_TRAN='0.75';
export SYNTH_MIN_BUF_PORT='sky130_fd_sc_hd__buf_2 A X';
export SYNTH_NO_FLAT='0';
export SYNTH_READ_BLACKBOX_LIB='0';
export SYNTH_SHARE_RESOURCES='1';
export SYNTH_SIZING='0';
export SYNTH_STRATEGY='AREA 0';
export SYNTH_TIEHI_PORT='sky130_fd_sc_hd__conb_1 HI';
export SYNTH_TIELO_PORT='sky130_fd_sc_hd__conb_1 LO';
export TRISTATE_BUFFER_MAP='pdk/sky130A/libs.tech/openlane/sky130_fd_sc_hd/tribuff_map.v';
export VERILOG_FILES='openlane/designs/invert/src/inverter.v';
export synth_report_prefix='./reports/synthesis/3-synthesis';
export synthesis_results='./results/synthesis';
export synthesis_tmpfiles='./tmp/synthesis';
TOOL_BIN=${TOOL_BIN:-yosys}
$TOOL_BIN -c $PACKAGED_SCRIPT_0
