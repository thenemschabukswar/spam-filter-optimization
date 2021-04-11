set moduleName SgdLR_sw
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {SgdLR_sw}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 16 regular {array 4608000 { 1 3 } 3 1 }  }
	{ label_V int 8 regular {array 4500 { 1 3 } 1 1 }  }
	{ theta_V int 32 regular {array 1024 { 1 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "data.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 4607999,"step" : 1}]}]}]} , 
 	{ "Name" : "label_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "label.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 4499,"step" : 1}]}]}]} , 
 	{ "Name" : "theta_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "theta.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 23 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 16 signal 0 } 
	{ label_V_address0 sc_out sc_lv 13 signal 1 } 
	{ label_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ label_V_q0 sc_in sc_lv 8 signal 1 } 
	{ theta_V_address0 sc_out sc_lv 10 signal 2 } 
	{ theta_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ theta_V_q0 sc_in sc_lv 32 signal 2 } 
	{ theta_V_address1 sc_out sc_lv 10 signal 2 } 
	{ theta_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ theta_V_we1 sc_out sc_logic 1 signal 2 } 
	{ theta_V_d1 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "label_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "label_V", "role": "address0" }} , 
 	{ "name": "label_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "label_V", "role": "ce0" }} , 
 	{ "name": "label_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "label_V", "role": "q0" }} , 
 	{ "name": "theta_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "theta_V", "role": "address0" }} , 
 	{ "name": "theta_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "theta_V", "role": "ce0" }} , 
 	{ "name": "theta_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "theta_V", "role": "q0" }} , 
 	{ "name": "theta_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "theta_V", "role": "address1" }} , 
 	{ "name": "theta_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "theta_V", "role": "ce1" }} , 
 	{ "name": "theta_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "theta_V", "role": "we1" }} , 
 	{ "name": "theta_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "theta_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "SgdLR_sw",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70335001", "EstimateLatencyMax" : "70335001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "label_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "theta_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gradient_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SgdLR_sw_fadd_32nbkb_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SgdLR_sw_fdiv_32ncud_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SgdLR_sw_fpext_32dEe_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SgdLR_sw_fexp_32neOg_U4", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	SgdLR_sw {
		data_V {Type I LastRead 41 FirstWrite -1}
		label_V {Type I LastRead 39 FirstWrite -1}
		theta_V {Type IO LastRead 44 FirstWrite 46}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "70335001", "Max" : "70335001"}
	, {"Name" : "Interval", "Min" : "70335002", "Max" : "70335002"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 23 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 16 } } }
	label_V { ap_memory {  { label_V_address0 mem_address 1 13 }  { label_V_ce0 mem_ce 1 1 }  { label_V_q0 mem_dout 0 8 } } }
	theta_V { ap_memory {  { theta_V_address0 mem_address 1 10 }  { theta_V_ce0 mem_ce 1 1 }  { theta_V_q0 mem_dout 0 32 }  { theta_V_address1 MemPortADDR2 1 10 }  { theta_V_ce1 MemPortCE2 1 1 }  { theta_V_we1 MemPortWE2 1 1 }  { theta_V_d1 MemPortDIN2 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
	{ data_V 3 }
}
