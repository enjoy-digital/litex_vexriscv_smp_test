// Generator : SpinalHDL v1.4.2    git head : fa4753301b3b0434e5e1d5bf1217b37f3d7a0437
// Component : VexRiscvLitexSmpMpCluster_1c
// Git hash  : 760d2f74d0f2431827b29cacdb7bd440d6dfc48f


`define BranchCtrlEnum_defaultEncoding_type [1:0]
`define BranchCtrlEnum_defaultEncoding_INC 2'b00
`define BranchCtrlEnum_defaultEncoding_B 2'b01
`define BranchCtrlEnum_defaultEncoding_JAL 2'b10
`define BranchCtrlEnum_defaultEncoding_JALR 2'b11

`define EnvCtrlEnum_defaultEncoding_type [1:0]
`define EnvCtrlEnum_defaultEncoding_NONE 2'b00
`define EnvCtrlEnum_defaultEncoding_XRET 2'b01
`define EnvCtrlEnum_defaultEncoding_WFI 2'b10
`define EnvCtrlEnum_defaultEncoding_ECALL 2'b11

`define ShiftCtrlEnum_defaultEncoding_type [1:0]
`define ShiftCtrlEnum_defaultEncoding_DISABLE_1 2'b00
`define ShiftCtrlEnum_defaultEncoding_SLL_1 2'b01
`define ShiftCtrlEnum_defaultEncoding_SRL_1 2'b10
`define ShiftCtrlEnum_defaultEncoding_SRA_1 2'b11

`define AluBitwiseCtrlEnum_defaultEncoding_type [1:0]
`define AluBitwiseCtrlEnum_defaultEncoding_XOR_1 2'b00
`define AluBitwiseCtrlEnum_defaultEncoding_OR_1 2'b01
`define AluBitwiseCtrlEnum_defaultEncoding_AND_1 2'b10

`define AluCtrlEnum_defaultEncoding_type [1:0]
`define AluCtrlEnum_defaultEncoding_ADD_SUB 2'b00
`define AluCtrlEnum_defaultEncoding_SLT_SLTU 2'b01
`define AluCtrlEnum_defaultEncoding_BITWISE 2'b10

`define Src2CtrlEnum_defaultEncoding_type [1:0]
`define Src2CtrlEnum_defaultEncoding_RS 2'b00
`define Src2CtrlEnum_defaultEncoding_IMI 2'b01
`define Src2CtrlEnum_defaultEncoding_IMS 2'b10
`define Src2CtrlEnum_defaultEncoding_PC 2'b11

`define Src1CtrlEnum_defaultEncoding_type [1:0]
`define Src1CtrlEnum_defaultEncoding_RS 2'b00
`define Src1CtrlEnum_defaultEncoding_IMU 2'b01
`define Src1CtrlEnum_defaultEncoding_PC_INCREMENT 2'b10
`define Src1CtrlEnum_defaultEncoding_URS1 2'b11

`define MmuPlugin_shared_State_defaultEncoding_type [2:0]
`define MmuPlugin_shared_State_defaultEncoding_IDLE 3'b000
`define MmuPlugin_shared_State_defaultEncoding_L1_CMD 3'b001
`define MmuPlugin_shared_State_defaultEncoding_L1_RSP 3'b010
`define MmuPlugin_shared_State_defaultEncoding_L0_CMD 3'b011
`define MmuPlugin_shared_State_defaultEncoding_L0_RSP 3'b100

`define DataCacheExternalAmoStates_defaultEncoding_type [1:0]
`define DataCacheExternalAmoStates_defaultEncoding_LR_CMD 2'b00
`define DataCacheExternalAmoStates_defaultEncoding_LR_RSP 2'b01
`define DataCacheExternalAmoStates_defaultEncoding_SC_CMD 2'b10
`define DataCacheExternalAmoStates_defaultEncoding_SC_RSP 2'b11

`define BmbExclusiveMonitorState_defaultEncoding_type [1:0]
`define BmbExclusiveMonitorState_defaultEncoding_IDLE 2'b00
`define BmbExclusiveMonitorState_defaultEncoding_FENCE_START 2'b01
`define BmbExclusiveMonitorState_defaultEncoding_FENCE_BUSY 2'b10
`define BmbExclusiveMonitorState_defaultEncoding_EMIT 2'b11


module VexRiscvLitexSmpMpCluster_1c (
  output              io_dMem_0_cmd_valid,
  input               io_dMem_0_cmd_ready,
  output              io_dMem_0_cmd_payload_we,
  output     [31:0]   io_dMem_0_cmd_payload_addr,
  output              io_dMem_0_wdata_valid,
  input               io_dMem_0_wdata_ready,
  output     [127:0]  io_dMem_0_wdata_payload_data,
  output     [15:0]   io_dMem_0_wdata_payload_we,
  input               io_dMem_0_rdata_valid,
  output              io_dMem_0_rdata_ready,
  input      [127:0]  io_dMem_0_rdata_payload_data,
  output              io_iMem_0_cmd_valid,
  input               io_iMem_0_cmd_ready,
  output              io_iMem_0_cmd_payload_we,
  output     [31:0]   io_iMem_0_cmd_payload_addr,
  output              io_iMem_0_wdata_valid,
  input               io_iMem_0_wdata_ready,
  output     [127:0]  io_iMem_0_wdata_payload_data,
  output     [15:0]   io_iMem_0_wdata_payload_we,
  input               io_iMem_0_rdata_valid,
  output              io_iMem_0_rdata_ready,
  input      [127:0]  io_iMem_0_rdata_payload_data,
  output              io_peripheral_CYC,
  output              io_peripheral_STB,
  input               io_peripheral_ACK,
  output              io_peripheral_WE,
  output     [29:0]   io_peripheral_ADR,
  input      [31:0]   io_peripheral_DAT_MISO,
  output     [31:0]   io_peripheral_DAT_MOSI,
  output     [3:0]    io_peripheral_SEL,
  input               io_peripheral_ERR,
  output     [2:0]    io_peripheral_CTI,
  output     [1:0]    io_peripheral_BTE,
  input               io_clint_CYC,
  input               io_clint_STB,
  output              io_clint_ACK,
  input               io_clint_WE,
  input      [13:0]   io_clint_ADR,
  output reg [31:0]   io_clint_DAT_MISO,
  input      [31:0]   io_clint_DAT_MOSI,
  input      [0:0]    io_externalInterrupts,
  input      [0:0]    io_externalSupervisorInterrupts,
  input               io_jtagInstruction_tdi,
  input               io_jtagInstruction_enable,
  input               io_jtagInstruction_capture,
  input               io_jtagInstruction_shift,
  input               io_jtagInstruction_update,
  input               io_jtagInstruction_reset,
  output              io_jtagInstruction_tdo,
  output              io_debugReset,
  input               clk,
  input               reset,
  input               debugResetIn,
  input               jtag_clk
);
  wire                _zz_21;
  wire                _zz_22;
  wire       [0:0]    _zz_23;
  wire       [19:0]   _zz_24;
  wire       [3:0]    _zz_25;
  wire                _zz_26;
  wire                _zz_27;
  wire       [31:0]   _zz_28;
  wire       [3:0]    _zz_29;
  wire       [1:0]    _zz_30;
  wire                _zz_31;
  wire                cluster_io_dMem_cmd_valid;
  wire                cluster_io_dMem_cmd_payload_last;
  wire       [0:0]    cluster_io_dMem_cmd_payload_fragment_opcode;
  wire       [31:0]   cluster_io_dMem_cmd_payload_fragment_address;
  wire       [5:0]    cluster_io_dMem_cmd_payload_fragment_length;
  wire       [63:0]   cluster_io_dMem_cmd_payload_fragment_data;
  wire       [7:0]    cluster_io_dMem_cmd_payload_fragment_mask;
  wire       [42:0]   cluster_io_dMem_cmd_payload_fragment_context;
  wire                cluster_io_dMem_rsp_ready;
  wire                cluster_io_iMems_0_cmd_valid;
  wire                cluster_io_iMems_0_cmd_payload_last;
  wire       [0:0]    cluster_io_iMems_0_cmd_payload_fragment_opcode;
  wire       [31:0]   cluster_io_iMems_0_cmd_payload_fragment_address;
  wire       [5:0]    cluster_io_iMems_0_cmd_payload_fragment_length;
  wire                cluster_io_iMems_0_rsp_ready;
  wire                cluster_io_debugBus_cmd_ready;
  wire                cluster_io_debugBus_rsp_valid;
  wire                cluster_io_debugBus_rsp_payload_last;
  wire       [0:0]    cluster_io_debugBus_rsp_payload_fragment_opcode;
  wire       [31:0]   cluster_io_debugBus_rsp_payload_fragment_data;
  wire                cluster_io_debugReset;
  wire                debug_jtagBridge_io_ctrl_tdo;
  wire                debug_jtagBridge_io_remote_cmd_valid;
  wire                debug_jtagBridge_io_remote_cmd_payload_last;
  wire       [0:0]    debug_jtagBridge_io_remote_cmd_payload_fragment;
  wire                debug_jtagBridge_io_remote_rsp_ready;
  wire                debug_debugger_io_remote_cmd_ready;
  wire                debug_debugger_io_remote_rsp_valid;
  wire                debug_debugger_io_remote_rsp_payload_error;
  wire       [31:0]   debug_debugger_io_remote_rsp_payload_data;
  wire                debug_debugger_io_mem_cmd_valid;
  wire       [31:0]   debug_debugger_io_mem_cmd_payload_address;
  wire       [31:0]   debug_debugger_io_mem_cmd_payload_data;
  wire                debug_debugger_io_mem_cmd_payload_wr;
  wire       [1:0]    debug_debugger_io_mem_cmd_payload_size;
  wire                dBusDecoder_io_input_cmd_ready;
  wire                dBusDecoder_io_input_rsp_valid;
  wire                dBusDecoder_io_input_rsp_payload_last;
  wire       [0:0]    dBusDecoder_io_input_rsp_payload_fragment_opcode;
  wire       [63:0]   dBusDecoder_io_input_rsp_payload_fragment_data;
  wire       [42:0]   dBusDecoder_io_input_rsp_payload_fragment_context;
  wire                dBusDecoder_io_outputs_0_cmd_valid;
  wire                dBusDecoder_io_outputs_0_cmd_payload_last;
  wire       [0:0]    dBusDecoder_io_outputs_0_cmd_payload_fragment_opcode;
  wire       [31:0]   dBusDecoder_io_outputs_0_cmd_payload_fragment_address;
  wire       [5:0]    dBusDecoder_io_outputs_0_cmd_payload_fragment_length;
  wire       [63:0]   dBusDecoder_io_outputs_0_cmd_payload_fragment_data;
  wire       [7:0]    dBusDecoder_io_outputs_0_cmd_payload_fragment_mask;
  wire                dBusDecoder_io_outputs_0_rsp_ready;
  wire                dBusDecoder_io_outputs_1_cmd_valid;
  wire                dBusDecoder_io_outputs_1_cmd_payload_last;
  wire       [0:0]    dBusDecoder_io_outputs_1_cmd_payload_fragment_opcode;
  wire       [31:0]   dBusDecoder_io_outputs_1_cmd_payload_fragment_address;
  wire       [5:0]    dBusDecoder_io_outputs_1_cmd_payload_fragment_length;
  wire       [63:0]   dBusDecoder_io_outputs_1_cmd_payload_fragment_data;
  wire       [7:0]    dBusDecoder_io_outputs_1_cmd_payload_fragment_mask;
  wire                dBusDecoder_io_outputs_1_rsp_ready;
  wire                perIBus_0_decoder_io_input_cmd_ready;
  wire                perIBus_0_decoder_io_input_rsp_valid;
  wire                perIBus_0_decoder_io_input_rsp_payload_last;
  wire       [0:0]    perIBus_0_decoder_io_input_rsp_payload_fragment_opcode;
  wire       [127:0]  perIBus_0_decoder_io_input_rsp_payload_fragment_data;
  wire                perIBus_0_decoder_io_outputs_0_cmd_valid;
  wire                perIBus_0_decoder_io_outputs_0_cmd_payload_last;
  wire       [0:0]    perIBus_0_decoder_io_outputs_0_cmd_payload_fragment_opcode;
  wire       [31:0]   perIBus_0_decoder_io_outputs_0_cmd_payload_fragment_address;
  wire       [5:0]    perIBus_0_decoder_io_outputs_0_cmd_payload_fragment_length;
  wire                perIBus_0_decoder_io_outputs_0_rsp_ready;
  wire                perIBus_0_decoder_io_outputs_1_cmd_valid;
  wire                perIBus_0_decoder_io_outputs_1_cmd_payload_last;
  wire       [0:0]    perIBus_0_decoder_io_outputs_1_cmd_payload_fragment_opcode;
  wire       [31:0]   perIBus_0_decoder_io_outputs_1_cmd_payload_fragment_address;
  wire       [5:0]    perIBus_0_decoder_io_outputs_1_cmd_payload_fragment_length;
  wire                perIBus_0_decoder_io_outputs_1_rsp_ready;
  wire                bmbToLiteDram_2_io_input_cmd_ready;
  wire                bmbToLiteDram_2_io_input_rsp_valid;
  wire                bmbToLiteDram_2_io_input_rsp_payload_last;
  wire       [0:0]    bmbToLiteDram_2_io_input_rsp_payload_fragment_opcode;
  wire       [127:0]  bmbToLiteDram_2_io_input_rsp_payload_fragment_data;
  wire                bmbToLiteDram_2_io_output_cmd_valid;
  wire                bmbToLiteDram_2_io_output_cmd_payload_we;
  wire       [31:0]   bmbToLiteDram_2_io_output_cmd_payload_addr;
  wire                bmbToLiteDram_2_io_output_wdata_valid;
  wire       [127:0]  bmbToLiteDram_2_io_output_wdata_payload_data;
  wire       [15:0]   bmbToLiteDram_2_io_output_wdata_payload_we;
  wire                bmbToLiteDram_2_io_output_rdata_ready;
  wire                perIBus_0_decoder_io_outputs_0_downSizer_io_input_cmd_ready;
  wire                perIBus_0_decoder_io_outputs_0_downSizer_io_input_rsp_valid;
  wire                perIBus_0_decoder_io_outputs_0_downSizer_io_input_rsp_payload_last;
  wire       [0:0]    perIBus_0_decoder_io_outputs_0_downSizer_io_input_rsp_payload_fragment_opcode;
  wire       [127:0]  perIBus_0_decoder_io_outputs_0_downSizer_io_input_rsp_payload_fragment_data;
  wire                perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_valid;
  wire                perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_last;
  wire       [0:0]    perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_address;
  wire       [5:0]    perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_length;
  wire       [1:0]    perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_context;
  wire                perIBus_0_decoder_io_outputs_0_downSizer_io_output_rsp_ready;
  wire                dBusDecoder_io_outputs_0_downSizer_io_input_cmd_ready;
  wire                dBusDecoder_io_outputs_0_downSizer_io_input_rsp_valid;
  wire                dBusDecoder_io_outputs_0_downSizer_io_input_rsp_payload_last;
  wire       [0:0]    dBusDecoder_io_outputs_0_downSizer_io_input_rsp_payload_fragment_opcode;
  wire       [63:0]   dBusDecoder_io_outputs_0_downSizer_io_input_rsp_payload_fragment_data;
  wire                dBusDecoder_io_outputs_0_downSizer_io_output_cmd_valid;
  wire                dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_last;
  wire       [0:0]    dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_address;
  wire       [5:0]    dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_length;
  wire       [31:0]   dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_data;
  wire       [3:0]    dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_mask;
  wire       [0:0]    dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_context;
  wire                dBusDecoder_io_outputs_0_downSizer_io_output_rsp_ready;
  wire                peripheralArbiter_io_inputs_0_cmd_ready;
  wire                peripheralArbiter_io_inputs_0_rsp_valid;
  wire                peripheralArbiter_io_inputs_0_rsp_payload_last;
  wire       [0:0]    peripheralArbiter_io_inputs_0_rsp_payload_fragment_opcode;
  wire       [31:0]   peripheralArbiter_io_inputs_0_rsp_payload_fragment_data;
  wire       [1:0]    peripheralArbiter_io_inputs_0_rsp_payload_fragment_context;
  wire                peripheralArbiter_io_inputs_1_cmd_ready;
  wire                peripheralArbiter_io_inputs_1_rsp_valid;
  wire                peripheralArbiter_io_inputs_1_rsp_payload_last;
  wire       [0:0]    peripheralArbiter_io_inputs_1_rsp_payload_fragment_opcode;
  wire       [31:0]   peripheralArbiter_io_inputs_1_rsp_payload_fragment_data;
  wire       [1:0]    peripheralArbiter_io_inputs_1_rsp_payload_fragment_context;
  wire                peripheralArbiter_io_output_cmd_valid;
  wire                peripheralArbiter_io_output_cmd_payload_last;
  wire       [0:0]    peripheralArbiter_io_output_cmd_payload_fragment_source;
  wire       [0:0]    peripheralArbiter_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   peripheralArbiter_io_output_cmd_payload_fragment_address;
  wire       [5:0]    peripheralArbiter_io_output_cmd_payload_fragment_length;
  wire       [31:0]   peripheralArbiter_io_output_cmd_payload_fragment_data;
  wire       [3:0]    peripheralArbiter_io_output_cmd_payload_fragment_mask;
  wire       [1:0]    peripheralArbiter_io_output_cmd_payload_fragment_context;
  wire                peripheralArbiter_io_output_rsp_ready;
  wire                bmbToWishbone_1_io_input_cmd_ready;
  wire                bmbToWishbone_1_io_input_rsp_valid;
  wire                bmbToWishbone_1_io_input_rsp_payload_last;
  wire       [0:0]    bmbToWishbone_1_io_input_rsp_payload_fragment_source;
  wire       [0:0]    bmbToWishbone_1_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   bmbToWishbone_1_io_input_rsp_payload_fragment_data;
  wire       [1:0]    bmbToWishbone_1_io_input_rsp_payload_fragment_context;
  wire       [31:0]   bmbToWishbone_1_io_output_DAT_MOSI;
  wire       [29:0]   bmbToWishbone_1_io_output_ADR;
  wire                bmbToWishbone_1_io_output_CYC;
  wire       [3:0]    bmbToWishbone_1_io_output_SEL;
  wire                bmbToWishbone_1_io_output_STB;
  wire                bmbToWishbone_1_io_output_WE;
  wire       [2:0]    bmbToWishbone_1_io_output_CTI;
  wire       [1:0]    bmbToWishbone_1_io_output_BTE;
  wire                dBusDemux_io_input_cmd_ready;
  wire                dBusDemux_io_input_rsp_valid;
  wire                dBusDemux_io_input_rsp_payload_last;
  wire       [0:0]    dBusDemux_io_input_rsp_payload_fragment_opcode;
  wire       [63:0]   dBusDemux_io_input_rsp_payload_fragment_data;
  wire                dBusDemux_io_outputs_0_cmd_valid;
  wire                dBusDemux_io_outputs_0_cmd_payload_last;
  wire       [0:0]    dBusDemux_io_outputs_0_cmd_payload_fragment_opcode;
  wire       [31:0]   dBusDemux_io_outputs_0_cmd_payload_fragment_address;
  wire       [5:0]    dBusDemux_io_outputs_0_cmd_payload_fragment_length;
  wire       [63:0]   dBusDemux_io_outputs_0_cmd_payload_fragment_data;
  wire       [7:0]    dBusDemux_io_outputs_0_cmd_payload_fragment_mask;
  wire                dBusDemux_io_outputs_0_rsp_ready;
  wire                dMemBridge_0_io_input_cmd_ready;
  wire                dMemBridge_0_io_input_rsp_valid;
  wire                dMemBridge_0_io_input_rsp_payload_last;
  wire       [0:0]    dMemBridge_0_io_input_rsp_payload_fragment_opcode;
  wire       [63:0]   dMemBridge_0_io_input_rsp_payload_fragment_data;
  wire                dMemBridge_0_io_output_cmd_valid;
  wire                dMemBridge_0_io_output_cmd_payload_we;
  wire       [31:0]   dMemBridge_0_io_output_cmd_payload_addr;
  wire                dMemBridge_0_io_output_wdata_valid;
  wire       [127:0]  dMemBridge_0_io_output_wdata_payload_data;
  wire       [15:0]   dMemBridge_0_io_output_wdata_payload_we;
  wire                dMemBridge_0_io_output_rdata_ready;
  wire       [15:0]   _zz_32;
  wire                _zz_33;
  wire                _zz_34;
  wire                _zz_35;
  wire                _zz_36;
  wire                _zz_37;
  wire       [63:0]   _zz_38;
  wire       [31:0]   _zz_39;
  wire       [29:0]   _zz_40;
  wire       [6:0]    _zz_41;
  wire       [31:0]   _zz_42;
  wire       [31:0]   _zz_43;
  wire       [31:0]   _zz_44;
  wire       [31:0]   _zz_45;
  wire       [0:0]    _zz_46;
  reg        [63:0]   clint_time;
  reg        [63:0]   clint_harts_0_cmp;
  reg                 clint_harts_0_timerInterrupt;
  reg                 clint_harts_0_softwareInterrupt;
  wire                _zz_1;
  reg                 _zz_2;
  wire       [63:0]   _zz_3;
  wire       [0:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [1:0]    _zz_6;
  reg        [3:0]    _zz_7;
  wire                _zz_8;
  wire                cluster_io_dMem_cmd_s2mPipe_valid;
  wire                cluster_io_dMem_cmd_s2mPipe_ready;
  wire                cluster_io_dMem_cmd_s2mPipe_payload_last;
  wire       [0:0]    cluster_io_dMem_cmd_s2mPipe_payload_fragment_opcode;
  wire       [31:0]   cluster_io_dMem_cmd_s2mPipe_payload_fragment_address;
  wire       [5:0]    cluster_io_dMem_cmd_s2mPipe_payload_fragment_length;
  wire       [63:0]   cluster_io_dMem_cmd_s2mPipe_payload_fragment_data;
  wire       [7:0]    cluster_io_dMem_cmd_s2mPipe_payload_fragment_mask;
  wire       [42:0]   cluster_io_dMem_cmd_s2mPipe_payload_fragment_context;
  reg                 cluster_io_dMem_cmd_s2mPipe_rValid;
  reg                 cluster_io_dMem_cmd_s2mPipe_rData_last;
  reg        [0:0]    cluster_io_dMem_cmd_s2mPipe_rData_fragment_opcode;
  reg        [31:0]   cluster_io_dMem_cmd_s2mPipe_rData_fragment_address;
  reg        [5:0]    cluster_io_dMem_cmd_s2mPipe_rData_fragment_length;
  reg        [63:0]   cluster_io_dMem_cmd_s2mPipe_rData_fragment_data;
  reg        [7:0]    cluster_io_dMem_cmd_s2mPipe_rData_fragment_mask;
  reg        [42:0]   cluster_io_dMem_cmd_s2mPipe_rData_fragment_context;
  wire                cluster_io_dMem_cmd_s2mPipe_m2sPipe_valid;
  wire                cluster_io_dMem_cmd_s2mPipe_m2sPipe_ready;
  wire                cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_last;
  wire       [0:0]    cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_opcode;
  wire       [31:0]   cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_address;
  wire       [5:0]    cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_length;
  wire       [63:0]   cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_data;
  wire       [7:0]    cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_mask;
  wire       [42:0]   cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_context;
  reg                 cluster_io_dMem_cmd_s2mPipe_m2sPipe_rValid;
  reg                 cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_last;
  reg        [0:0]    cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_opcode;
  reg        [31:0]   cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_address;
  reg        [5:0]    cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_length;
  reg        [63:0]   cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_data;
  reg        [7:0]    cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_mask;
  reg        [42:0]   cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_context;
  wire                _zz_9;
  reg                 _zz_10;
  reg                 _zz_11;
  reg        [0:0]    _zz_12;
  reg        [63:0]   _zz_13;
  reg        [42:0]   _zz_14;
  wire                perIBus_0_decoder_io_outputs_1_cmd_halfPipe_valid;
  wire                perIBus_0_decoder_io_outputs_1_cmd_halfPipe_ready;
  wire                perIBus_0_decoder_io_outputs_1_cmd_halfPipe_payload_last;
  wire       [0:0]    perIBus_0_decoder_io_outputs_1_cmd_halfPipe_payload_fragment_opcode;
  wire       [31:0]   perIBus_0_decoder_io_outputs_1_cmd_halfPipe_payload_fragment_address;
  wire       [5:0]    perIBus_0_decoder_io_outputs_1_cmd_halfPipe_payload_fragment_length;
  reg                 perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_valid;
  reg                 perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_ready;
  reg                 perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_payload_last;
  reg        [0:0]    perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_payload_fragment_opcode;
  reg        [31:0]   perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_payload_fragment_address;
  reg        [5:0]    perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_payload_fragment_length;
  wire                perIBus_0_toPeripheral_cmd_valid;
  wire                perIBus_0_toPeripheral_cmd_ready;
  wire                perIBus_0_toPeripheral_cmd_payload_last;
  wire       [0:0]    perIBus_0_toPeripheral_cmd_payload_fragment_opcode;
  wire       [31:0]   perIBus_0_toPeripheral_cmd_payload_fragment_address;
  wire       [5:0]    perIBus_0_toPeripheral_cmd_payload_fragment_length;
  wire       [1:0]    perIBus_0_toPeripheral_cmd_payload_fragment_context;
  wire                perIBus_0_toPeripheral_rsp_valid;
  wire                perIBus_0_toPeripheral_rsp_ready;
  wire                perIBus_0_toPeripheral_rsp_payload_last;
  wire       [0:0]    perIBus_0_toPeripheral_rsp_payload_fragment_opcode;
  wire       [31:0]   perIBus_0_toPeripheral_rsp_payload_fragment_data;
  wire       [1:0]    perIBus_0_toPeripheral_rsp_payload_fragment_context;
  wire                perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_valid;
  wire                perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_ready;
  wire                perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_last;
  wire       [0:0]    perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_opcode;
  wire       [31:0]   perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_address;
  wire       [5:0]    perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_length;
  wire       [1:0]    perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_context;
  reg                 perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_valid;
  reg                 perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_ready;
  reg                 perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_last;
  reg        [0:0]    perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_opcode;
  reg        [31:0]   perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_address;
  reg        [5:0]    perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_length;
  reg        [1:0]    perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_context;
  wire                perIBus_0_toPeripheral_rsp_m2sPipe_valid;
  wire                perIBus_0_toPeripheral_rsp_m2sPipe_ready;
  wire                perIBus_0_toPeripheral_rsp_m2sPipe_payload_last;
  wire       [0:0]    perIBus_0_toPeripheral_rsp_m2sPipe_payload_fragment_opcode;
  wire       [31:0]   perIBus_0_toPeripheral_rsp_m2sPipe_payload_fragment_data;
  wire       [1:0]    perIBus_0_toPeripheral_rsp_m2sPipe_payload_fragment_context;
  reg                 perIBus_0_toPeripheral_rsp_m2sPipe_rValid;
  reg                 perIBus_0_toPeripheral_rsp_m2sPipe_rData_last;
  reg        [0:0]    perIBus_0_toPeripheral_rsp_m2sPipe_rData_fragment_opcode;
  reg        [31:0]   perIBus_0_toPeripheral_rsp_m2sPipe_rData_fragment_data;
  reg        [1:0]    perIBus_0_toPeripheral_rsp_m2sPipe_rData_fragment_context;
  wire                dBusDecoderToPeripheral_cmd_valid;
  wire                dBusDecoderToPeripheral_cmd_ready;
  wire                dBusDecoderToPeripheral_cmd_payload_last;
  wire       [0:0]    dBusDecoderToPeripheral_cmd_payload_fragment_opcode;
  wire       [31:0]   dBusDecoderToPeripheral_cmd_payload_fragment_address;
  wire       [5:0]    dBusDecoderToPeripheral_cmd_payload_fragment_length;
  wire       [31:0]   dBusDecoderToPeripheral_cmd_payload_fragment_data;
  wire       [3:0]    dBusDecoderToPeripheral_cmd_payload_fragment_mask;
  wire       [0:0]    dBusDecoderToPeripheral_cmd_payload_fragment_context;
  wire                dBusDecoderToPeripheral_rsp_valid;
  wire                dBusDecoderToPeripheral_rsp_ready;
  wire                dBusDecoderToPeripheral_rsp_payload_last;
  wire       [0:0]    dBusDecoderToPeripheral_rsp_payload_fragment_opcode;
  wire       [31:0]   dBusDecoderToPeripheral_rsp_payload_fragment_data;
  wire       [0:0]    dBusDecoderToPeripheral_rsp_payload_fragment_context;
  wire                dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_valid;
  wire                dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_ready;
  wire                dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_last;
  wire       [0:0]    dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_opcode;
  wire       [31:0]   dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_address;
  wire       [5:0]    dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_length;
  wire       [31:0]   dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_data;
  wire       [3:0]    dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_mask;
  wire       [0:0]    dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_context;
  reg                 dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_valid;
  reg                 dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_ready;
  reg                 dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_last;
  reg        [0:0]    dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_opcode;
  reg        [31:0]   dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_address;
  reg        [5:0]    dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_length;
  reg        [31:0]   dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_data;
  reg        [3:0]    dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_mask;
  reg        [0:0]    dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_context;
  wire                dBusDecoderToPeripheral_rsp_m2sPipe_valid;
  wire                dBusDecoderToPeripheral_rsp_m2sPipe_ready;
  wire                dBusDecoderToPeripheral_rsp_m2sPipe_payload_last;
  wire       [0:0]    dBusDecoderToPeripheral_rsp_m2sPipe_payload_fragment_opcode;
  wire       [31:0]   dBusDecoderToPeripheral_rsp_m2sPipe_payload_fragment_data;
  wire       [0:0]    dBusDecoderToPeripheral_rsp_m2sPipe_payload_fragment_context;
  reg                 dBusDecoderToPeripheral_rsp_m2sPipe_rValid;
  reg                 dBusDecoderToPeripheral_rsp_m2sPipe_rData_last;
  reg        [0:0]    dBusDecoderToPeripheral_rsp_m2sPipe_rData_fragment_opcode;
  reg        [31:0]   dBusDecoderToPeripheral_rsp_m2sPipe_rData_fragment_data;
  reg        [0:0]    dBusDecoderToPeripheral_rsp_m2sPipe_rData_fragment_context;
  wire                peripheralArbiter_io_output_cmd_m2sPipe_valid;
  wire                peripheralArbiter_io_output_cmd_m2sPipe_ready;
  wire                peripheralArbiter_io_output_cmd_m2sPipe_payload_last;
  wire       [0:0]    peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_source;
  wire       [0:0]    peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_opcode;
  wire       [31:0]   peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_address;
  wire       [5:0]    peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_length;
  wire       [31:0]   peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_data;
  wire       [3:0]    peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_mask;
  wire       [1:0]    peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_context;
  reg                 peripheralArbiter_io_output_cmd_m2sPipe_rValid;
  reg                 peripheralArbiter_io_output_cmd_m2sPipe_rData_last;
  reg        [0:0]    peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_source;
  reg        [0:0]    peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_opcode;
  reg        [31:0]   peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_address;
  reg        [5:0]    peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_length;
  reg        [31:0]   peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_data;
  reg        [3:0]    peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_mask;
  reg        [1:0]    peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_context;
  wire                _zz_15;
  wire                dBusDecoder_io_outputs_1_cmd_s2mPipe_valid;
  wire                dBusDecoder_io_outputs_1_cmd_s2mPipe_ready;
  wire                dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_last;
  wire       [0:0]    dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_opcode;
  wire       [31:0]   dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_address;
  wire       [5:0]    dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_length;
  wire       [63:0]   dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_data;
  wire       [7:0]    dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_mask;
  reg                 dBusDecoder_io_outputs_1_cmd_s2mPipe_rValid;
  reg                 dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_last;
  reg        [0:0]    dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_opcode;
  reg        [31:0]   dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_address;
  reg        [5:0]    dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_length;
  reg        [63:0]   dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_data;
  reg        [7:0]    dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_mask;
  wire                dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_valid;
  wire                dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_ready;
  wire                dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_last;
  wire       [0:0]    dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_opcode;
  wire       [31:0]   dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_address;
  wire       [5:0]    dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_length;
  wire       [63:0]   dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_data;
  wire       [7:0]    dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_mask;
  reg                 dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rValid;
  reg                 dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_last;
  reg        [0:0]    dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_opcode;
  reg        [31:0]   dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_address;
  reg        [5:0]    dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_length;
  reg        [63:0]   dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_data;
  reg        [7:0]    dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_mask;
  wire                _zz_16;
  reg                 _zz_17;
  reg                 _zz_18;
  reg        [0:0]    _zz_19;
  reg        [63:0]   _zz_20;

  assign _zz_32 = ({2'd0,io_clint_ADR} <<< 2);
  assign _zz_33 = (_zz_21 && (! cluster_io_dMem_cmd_s2mPipe_ready));
  assign _zz_34 = (! perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_valid);
  assign _zz_35 = (! perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_valid);
  assign _zz_36 = (! dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_valid);
  assign _zz_37 = (_zz_27 && (! dBusDecoder_io_outputs_1_cmd_s2mPipe_ready));
  assign _zz_38 = (clint_time - clint_harts_0_cmp);
  assign _zz_39 = {_zz_40,2'b00};
  assign _zz_40 = (debug_debugger_io_mem_cmd_payload_address >>> 2);
  assign _zz_41 = ({3'd0,_zz_7} <<< debug_debugger_io_mem_cmd_payload_address[1 : 0]);
  assign _zz_42 = io_clint_DAT_MOSI[31 : 0];
  assign _zz_43 = _zz_42;
  assign _zz_44 = io_clint_DAT_MOSI[31 : 0];
  assign _zz_45 = _zz_44;
  assign _zz_46 = io_clint_DAT_MOSI[0 : 0];
  VexRiscvSmpCluster cluster (
    .io_dMem_cmd_valid                           (cluster_io_dMem_cmd_valid                                    ), //o
    .io_dMem_cmd_ready                           (_zz_21                                                       ), //i
    .io_dMem_cmd_payload_last                    (cluster_io_dMem_cmd_payload_last                             ), //o
    .io_dMem_cmd_payload_fragment_opcode         (cluster_io_dMem_cmd_payload_fragment_opcode                  ), //o
    .io_dMem_cmd_payload_fragment_address        (cluster_io_dMem_cmd_payload_fragment_address[31:0]           ), //o
    .io_dMem_cmd_payload_fragment_length         (cluster_io_dMem_cmd_payload_fragment_length[5:0]             ), //o
    .io_dMem_cmd_payload_fragment_data           (cluster_io_dMem_cmd_payload_fragment_data[63:0]              ), //o
    .io_dMem_cmd_payload_fragment_mask           (cluster_io_dMem_cmd_payload_fragment_mask[7:0]               ), //o
    .io_dMem_cmd_payload_fragment_context        (cluster_io_dMem_cmd_payload_fragment_context[42:0]           ), //o
    .io_dMem_rsp_valid                           (_zz_9                                                        ), //i
    .io_dMem_rsp_ready                           (cluster_io_dMem_rsp_ready                                    ), //o
    .io_dMem_rsp_payload_last                    (_zz_11                                                       ), //i
    .io_dMem_rsp_payload_fragment_opcode         (_zz_12                                                       ), //i
    .io_dMem_rsp_payload_fragment_data           (_zz_13[63:0]                                                 ), //i
    .io_dMem_rsp_payload_fragment_context        (_zz_14[42:0]                                                 ), //i
    .io_iMems_0_cmd_valid                        (cluster_io_iMems_0_cmd_valid                                 ), //o
    .io_iMems_0_cmd_ready                        (perIBus_0_decoder_io_input_cmd_ready                         ), //i
    .io_iMems_0_cmd_payload_last                 (cluster_io_iMems_0_cmd_payload_last                          ), //o
    .io_iMems_0_cmd_payload_fragment_opcode      (cluster_io_iMems_0_cmd_payload_fragment_opcode               ), //o
    .io_iMems_0_cmd_payload_fragment_address     (cluster_io_iMems_0_cmd_payload_fragment_address[31:0]        ), //o
    .io_iMems_0_cmd_payload_fragment_length      (cluster_io_iMems_0_cmd_payload_fragment_length[5:0]          ), //o
    .io_iMems_0_rsp_valid                        (perIBus_0_decoder_io_input_rsp_valid                         ), //i
    .io_iMems_0_rsp_ready                        (cluster_io_iMems_0_rsp_ready                                 ), //o
    .io_iMems_0_rsp_payload_last                 (perIBus_0_decoder_io_input_rsp_payload_last                  ), //i
    .io_iMems_0_rsp_payload_fragment_opcode      (perIBus_0_decoder_io_input_rsp_payload_fragment_opcode       ), //i
    .io_iMems_0_rsp_payload_fragment_data        (perIBus_0_decoder_io_input_rsp_payload_fragment_data[127:0]  ), //i
    .io_timerInterrupts                          (_zz_4                                                        ), //i
    .io_externalInterrupts                       (io_externalInterrupts                                        ), //i
    .io_softwareInterrupts                       (_zz_5                                                        ), //i
    .io_externalSupervisorInterrupts             (io_externalSupervisorInterrupts                              ), //i
    .io_debugBus_cmd_valid                       (debug_debugger_io_mem_cmd_valid                              ), //i
    .io_debugBus_cmd_ready                       (cluster_io_debugBus_cmd_ready                                ), //o
    .io_debugBus_cmd_payload_last                (_zz_22                                                       ), //i
    .io_debugBus_cmd_payload_fragment_opcode     (_zz_23                                                       ), //i
    .io_debugBus_cmd_payload_fragment_address    (_zz_24[19:0]                                                 ), //i
    .io_debugBus_cmd_payload_fragment_length     (_zz_6[1:0]                                                   ), //i
    .io_debugBus_cmd_payload_fragment_data       (debug_debugger_io_mem_cmd_payload_data[31:0]                 ), //i
    .io_debugBus_cmd_payload_fragment_mask       (_zz_25[3:0]                                                  ), //i
    .io_debugBus_rsp_valid                       (cluster_io_debugBus_rsp_valid                                ), //o
    .io_debugBus_rsp_ready                       (_zz_26                                                       ), //i
    .io_debugBus_rsp_payload_last                (cluster_io_debugBus_rsp_payload_last                         ), //o
    .io_debugBus_rsp_payload_fragment_opcode     (cluster_io_debugBus_rsp_payload_fragment_opcode              ), //o
    .io_debugBus_rsp_payload_fragment_data       (cluster_io_debugBus_rsp_payload_fragment_data[31:0]          ), //o
    .io_debugReset                               (cluster_io_debugReset                                        ), //o
    .io_time                                     (clint_time[63:0]                                             ), //i
    .clk                                         (clk                                                          ), //i
    .reset                                       (reset                                                        ), //i
    .debugResetIn                                (debugResetIn                                                 )  //i
  );
  JtagBridgeNoTap debug_jtagBridge (
    .io_ctrl_tdi                       (io_jtagInstruction_tdi                           ), //i
    .io_ctrl_enable                    (io_jtagInstruction_enable                        ), //i
    .io_ctrl_capture                   (io_jtagInstruction_capture                       ), //i
    .io_ctrl_shift                     (io_jtagInstruction_shift                         ), //i
    .io_ctrl_update                    (io_jtagInstruction_update                        ), //i
    .io_ctrl_reset                     (io_jtagInstruction_reset                         ), //i
    .io_ctrl_tdo                       (debug_jtagBridge_io_ctrl_tdo                     ), //o
    .io_remote_cmd_valid               (debug_jtagBridge_io_remote_cmd_valid             ), //o
    .io_remote_cmd_ready               (debug_debugger_io_remote_cmd_ready               ), //i
    .io_remote_cmd_payload_last        (debug_jtagBridge_io_remote_cmd_payload_last      ), //o
    .io_remote_cmd_payload_fragment    (debug_jtagBridge_io_remote_cmd_payload_fragment  ), //o
    .io_remote_rsp_valid               (debug_debugger_io_remote_rsp_valid               ), //i
    .io_remote_rsp_ready               (debug_jtagBridge_io_remote_rsp_ready             ), //o
    .io_remote_rsp_payload_error       (debug_debugger_io_remote_rsp_payload_error       ), //i
    .io_remote_rsp_payload_data        (debug_debugger_io_remote_rsp_payload_data[31:0]  ), //i
    .clk                               (clk                                              ), //i
    .debugResetIn                      (debugResetIn                                     ), //i
    .jtag_clk                          (jtag_clk                                         )  //i
  );
  SystemDebugger debug_debugger (
    .io_remote_cmd_valid               (debug_jtagBridge_io_remote_cmd_valid                 ), //i
    .io_remote_cmd_ready               (debug_debugger_io_remote_cmd_ready                   ), //o
    .io_remote_cmd_payload_last        (debug_jtagBridge_io_remote_cmd_payload_last          ), //i
    .io_remote_cmd_payload_fragment    (debug_jtagBridge_io_remote_cmd_payload_fragment      ), //i
    .io_remote_rsp_valid               (debug_debugger_io_remote_rsp_valid                   ), //o
    .io_remote_rsp_ready               (debug_jtagBridge_io_remote_rsp_ready                 ), //i
    .io_remote_rsp_payload_error       (debug_debugger_io_remote_rsp_payload_error           ), //o
    .io_remote_rsp_payload_data        (debug_debugger_io_remote_rsp_payload_data[31:0]      ), //o
    .io_mem_cmd_valid                  (debug_debugger_io_mem_cmd_valid                      ), //o
    .io_mem_cmd_ready                  (cluster_io_debugBus_cmd_ready                        ), //i
    .io_mem_cmd_payload_address        (debug_debugger_io_mem_cmd_payload_address[31:0]      ), //o
    .io_mem_cmd_payload_data           (debug_debugger_io_mem_cmd_payload_data[31:0]         ), //o
    .io_mem_cmd_payload_wr             (debug_debugger_io_mem_cmd_payload_wr                 ), //o
    .io_mem_cmd_payload_size           (debug_debugger_io_mem_cmd_payload_size[1:0]          ), //o
    .io_mem_rsp_valid                  (cluster_io_debugBus_rsp_valid                        ), //i
    .io_mem_rsp_payload                (cluster_io_debugBus_rsp_payload_fragment_data[31:0]  ), //i
    .clk                               (clk                                                  ), //i
    .debugResetIn                      (debugResetIn                                         )  //i
  );
  BmbDecoderOutOfOrder dBusDecoder (
    .io_input_cmd_valid                           (cluster_io_dMem_cmd_s2mPipe_m2sPipe_valid                                    ), //i
    .io_input_cmd_ready                           (dBusDecoder_io_input_cmd_ready                                               ), //o
    .io_input_cmd_payload_last                    (cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_last                             ), //i
    .io_input_cmd_payload_fragment_opcode         (cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_opcode                  ), //i
    .io_input_cmd_payload_fragment_address        (cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_address[31:0]           ), //i
    .io_input_cmd_payload_fragment_length         (cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_length[5:0]             ), //i
    .io_input_cmd_payload_fragment_data           (cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_data[63:0]              ), //i
    .io_input_cmd_payload_fragment_mask           (cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_mask[7:0]               ), //i
    .io_input_cmd_payload_fragment_context        (cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_context[42:0]           ), //i
    .io_input_rsp_valid                           (dBusDecoder_io_input_rsp_valid                                               ), //o
    .io_input_rsp_ready                           (_zz_8                                                                        ), //i
    .io_input_rsp_payload_last                    (dBusDecoder_io_input_rsp_payload_last                                        ), //o
    .io_input_rsp_payload_fragment_opcode         (dBusDecoder_io_input_rsp_payload_fragment_opcode                             ), //o
    .io_input_rsp_payload_fragment_data           (dBusDecoder_io_input_rsp_payload_fragment_data[63:0]                         ), //o
    .io_input_rsp_payload_fragment_context        (dBusDecoder_io_input_rsp_payload_fragment_context[42:0]                      ), //o
    .io_outputs_0_cmd_valid                       (dBusDecoder_io_outputs_0_cmd_valid                                           ), //o
    .io_outputs_0_cmd_ready                       (dBusDecoder_io_outputs_0_downSizer_io_input_cmd_ready                        ), //i
    .io_outputs_0_cmd_payload_last                (dBusDecoder_io_outputs_0_cmd_payload_last                                    ), //o
    .io_outputs_0_cmd_payload_fragment_opcode     (dBusDecoder_io_outputs_0_cmd_payload_fragment_opcode                         ), //o
    .io_outputs_0_cmd_payload_fragment_address    (dBusDecoder_io_outputs_0_cmd_payload_fragment_address[31:0]                  ), //o
    .io_outputs_0_cmd_payload_fragment_length     (dBusDecoder_io_outputs_0_cmd_payload_fragment_length[5:0]                    ), //o
    .io_outputs_0_cmd_payload_fragment_data       (dBusDecoder_io_outputs_0_cmd_payload_fragment_data[63:0]                     ), //o
    .io_outputs_0_cmd_payload_fragment_mask       (dBusDecoder_io_outputs_0_cmd_payload_fragment_mask[7:0]                      ), //o
    .io_outputs_0_rsp_valid                       (dBusDecoder_io_outputs_0_downSizer_io_input_rsp_valid                        ), //i
    .io_outputs_0_rsp_ready                       (dBusDecoder_io_outputs_0_rsp_ready                                           ), //o
    .io_outputs_0_rsp_payload_last                (dBusDecoder_io_outputs_0_downSizer_io_input_rsp_payload_last                 ), //i
    .io_outputs_0_rsp_payload_fragment_opcode     (dBusDecoder_io_outputs_0_downSizer_io_input_rsp_payload_fragment_opcode      ), //i
    .io_outputs_0_rsp_payload_fragment_data       (dBusDecoder_io_outputs_0_downSizer_io_input_rsp_payload_fragment_data[63:0]  ), //i
    .io_outputs_1_cmd_valid                       (dBusDecoder_io_outputs_1_cmd_valid                                           ), //o
    .io_outputs_1_cmd_ready                       (_zz_27                                                                       ), //i
    .io_outputs_1_cmd_payload_last                (dBusDecoder_io_outputs_1_cmd_payload_last                                    ), //o
    .io_outputs_1_cmd_payload_fragment_opcode     (dBusDecoder_io_outputs_1_cmd_payload_fragment_opcode                         ), //o
    .io_outputs_1_cmd_payload_fragment_address    (dBusDecoder_io_outputs_1_cmd_payload_fragment_address[31:0]                  ), //o
    .io_outputs_1_cmd_payload_fragment_length     (dBusDecoder_io_outputs_1_cmd_payload_fragment_length[5:0]                    ), //o
    .io_outputs_1_cmd_payload_fragment_data       (dBusDecoder_io_outputs_1_cmd_payload_fragment_data[63:0]                     ), //o
    .io_outputs_1_cmd_payload_fragment_mask       (dBusDecoder_io_outputs_1_cmd_payload_fragment_mask[7:0]                      ), //o
    .io_outputs_1_rsp_valid                       (_zz_16                                                                       ), //i
    .io_outputs_1_rsp_ready                       (dBusDecoder_io_outputs_1_rsp_ready                                           ), //o
    .io_outputs_1_rsp_payload_last                (_zz_18                                                                       ), //i
    .io_outputs_1_rsp_payload_fragment_opcode     (_zz_19                                                                       ), //i
    .io_outputs_1_rsp_payload_fragment_data       (_zz_20[63:0]                                                                 ), //i
    .clk                                          (clk                                                                          ), //i
    .reset                                        (reset                                                                        )  //i
  );
  BmbDecoder_1 perIBus_0_decoder (
    .io_input_cmd_valid                           (cluster_io_iMems_0_cmd_valid                                                        ), //i
    .io_input_cmd_ready                           (perIBus_0_decoder_io_input_cmd_ready                                                ), //o
    .io_input_cmd_payload_last                    (cluster_io_iMems_0_cmd_payload_last                                                 ), //i
    .io_input_cmd_payload_fragment_opcode         (cluster_io_iMems_0_cmd_payload_fragment_opcode                                      ), //i
    .io_input_cmd_payload_fragment_address        (cluster_io_iMems_0_cmd_payload_fragment_address[31:0]                               ), //i
    .io_input_cmd_payload_fragment_length         (cluster_io_iMems_0_cmd_payload_fragment_length[5:0]                                 ), //i
    .io_input_rsp_valid                           (perIBus_0_decoder_io_input_rsp_valid                                                ), //o
    .io_input_rsp_ready                           (cluster_io_iMems_0_rsp_ready                                                        ), //i
    .io_input_rsp_payload_last                    (perIBus_0_decoder_io_input_rsp_payload_last                                         ), //o
    .io_input_rsp_payload_fragment_opcode         (perIBus_0_decoder_io_input_rsp_payload_fragment_opcode                              ), //o
    .io_input_rsp_payload_fragment_data           (perIBus_0_decoder_io_input_rsp_payload_fragment_data[127:0]                         ), //o
    .io_outputs_0_cmd_valid                       (perIBus_0_decoder_io_outputs_0_cmd_valid                                            ), //o
    .io_outputs_0_cmd_ready                       (perIBus_0_decoder_io_outputs_0_downSizer_io_input_cmd_ready                         ), //i
    .io_outputs_0_cmd_payload_last                (perIBus_0_decoder_io_outputs_0_cmd_payload_last                                     ), //o
    .io_outputs_0_cmd_payload_fragment_opcode     (perIBus_0_decoder_io_outputs_0_cmd_payload_fragment_opcode                          ), //o
    .io_outputs_0_cmd_payload_fragment_address    (perIBus_0_decoder_io_outputs_0_cmd_payload_fragment_address[31:0]                   ), //o
    .io_outputs_0_cmd_payload_fragment_length     (perIBus_0_decoder_io_outputs_0_cmd_payload_fragment_length[5:0]                     ), //o
    .io_outputs_0_rsp_valid                       (perIBus_0_decoder_io_outputs_0_downSizer_io_input_rsp_valid                         ), //i
    .io_outputs_0_rsp_ready                       (perIBus_0_decoder_io_outputs_0_rsp_ready                                            ), //o
    .io_outputs_0_rsp_payload_last                (perIBus_0_decoder_io_outputs_0_downSizer_io_input_rsp_payload_last                  ), //i
    .io_outputs_0_rsp_payload_fragment_opcode     (perIBus_0_decoder_io_outputs_0_downSizer_io_input_rsp_payload_fragment_opcode       ), //i
    .io_outputs_0_rsp_payload_fragment_data       (perIBus_0_decoder_io_outputs_0_downSizer_io_input_rsp_payload_fragment_data[127:0]  ), //i
    .io_outputs_1_cmd_valid                       (perIBus_0_decoder_io_outputs_1_cmd_valid                                            ), //o
    .io_outputs_1_cmd_ready                       (perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_ready                              ), //i
    .io_outputs_1_cmd_payload_last                (perIBus_0_decoder_io_outputs_1_cmd_payload_last                                     ), //o
    .io_outputs_1_cmd_payload_fragment_opcode     (perIBus_0_decoder_io_outputs_1_cmd_payload_fragment_opcode                          ), //o
    .io_outputs_1_cmd_payload_fragment_address    (perIBus_0_decoder_io_outputs_1_cmd_payload_fragment_address[31:0]                   ), //o
    .io_outputs_1_cmd_payload_fragment_length     (perIBus_0_decoder_io_outputs_1_cmd_payload_fragment_length[5:0]                     ), //o
    .io_outputs_1_rsp_valid                       (bmbToLiteDram_2_io_input_rsp_valid                                                  ), //i
    .io_outputs_1_rsp_ready                       (perIBus_0_decoder_io_outputs_1_rsp_ready                                            ), //o
    .io_outputs_1_rsp_payload_last                (bmbToLiteDram_2_io_input_rsp_payload_last                                           ), //i
    .io_outputs_1_rsp_payload_fragment_opcode     (bmbToLiteDram_2_io_input_rsp_payload_fragment_opcode                                ), //i
    .io_outputs_1_rsp_payload_fragment_data       (bmbToLiteDram_2_io_input_rsp_payload_fragment_data[127:0]                           ), //i
    .clk                                          (clk                                                                                 ), //i
    .reset                                        (reset                                                                               )  //i
  );
  BmbToLiteDram bmbToLiteDram_2 (
    .io_input_cmd_valid                       (perIBus_0_decoder_io_outputs_1_cmd_halfPipe_valid                           ), //i
    .io_input_cmd_ready                       (bmbToLiteDram_2_io_input_cmd_ready                                          ), //o
    .io_input_cmd_payload_last                (perIBus_0_decoder_io_outputs_1_cmd_halfPipe_payload_last                    ), //i
    .io_input_cmd_payload_fragment_opcode     (perIBus_0_decoder_io_outputs_1_cmd_halfPipe_payload_fragment_opcode         ), //i
    .io_input_cmd_payload_fragment_address    (perIBus_0_decoder_io_outputs_1_cmd_halfPipe_payload_fragment_address[31:0]  ), //i
    .io_input_cmd_payload_fragment_length     (perIBus_0_decoder_io_outputs_1_cmd_halfPipe_payload_fragment_length[5:0]    ), //i
    .io_input_rsp_valid                       (bmbToLiteDram_2_io_input_rsp_valid                                          ), //o
    .io_input_rsp_ready                       (perIBus_0_decoder_io_outputs_1_rsp_ready                                    ), //i
    .io_input_rsp_payload_last                (bmbToLiteDram_2_io_input_rsp_payload_last                                   ), //o
    .io_input_rsp_payload_fragment_opcode     (bmbToLiteDram_2_io_input_rsp_payload_fragment_opcode                        ), //o
    .io_input_rsp_payload_fragment_data       (bmbToLiteDram_2_io_input_rsp_payload_fragment_data[127:0]                   ), //o
    .io_output_cmd_valid                      (bmbToLiteDram_2_io_output_cmd_valid                                         ), //o
    .io_output_cmd_ready                      (io_iMem_0_cmd_ready                                                         ), //i
    .io_output_cmd_payload_we                 (bmbToLiteDram_2_io_output_cmd_payload_we                                    ), //o
    .io_output_cmd_payload_addr               (bmbToLiteDram_2_io_output_cmd_payload_addr[31:0]                            ), //o
    .io_output_wdata_valid                    (bmbToLiteDram_2_io_output_wdata_valid                                       ), //o
    .io_output_wdata_ready                    (io_iMem_0_wdata_ready                                                       ), //i
    .io_output_wdata_payload_data             (bmbToLiteDram_2_io_output_wdata_payload_data[127:0]                         ), //o
    .io_output_wdata_payload_we               (bmbToLiteDram_2_io_output_wdata_payload_we[15:0]                            ), //o
    .io_output_rdata_valid                    (io_iMem_0_rdata_valid                                                       ), //i
    .io_output_rdata_ready                    (bmbToLiteDram_2_io_output_rdata_ready                                       ), //o
    .io_output_rdata_payload_data             (io_iMem_0_rdata_payload_data[127:0]                                         ), //i
    .clk                                      (clk                                                                         ), //i
    .reset                                    (reset                                                                       )  //i
  );
  BmbDownSizerBridge perIBus_0_decoder_io_outputs_0_downSizer (
    .io_input_cmd_valid                        (perIBus_0_decoder_io_outputs_0_cmd_valid                                               ), //i
    .io_input_cmd_ready                        (perIBus_0_decoder_io_outputs_0_downSizer_io_input_cmd_ready                            ), //o
    .io_input_cmd_payload_last                 (perIBus_0_decoder_io_outputs_0_cmd_payload_last                                        ), //i
    .io_input_cmd_payload_fragment_opcode      (perIBus_0_decoder_io_outputs_0_cmd_payload_fragment_opcode                             ), //i
    .io_input_cmd_payload_fragment_address     (perIBus_0_decoder_io_outputs_0_cmd_payload_fragment_address[31:0]                      ), //i
    .io_input_cmd_payload_fragment_length      (perIBus_0_decoder_io_outputs_0_cmd_payload_fragment_length[5:0]                        ), //i
    .io_input_rsp_valid                        (perIBus_0_decoder_io_outputs_0_downSizer_io_input_rsp_valid                            ), //o
    .io_input_rsp_ready                        (perIBus_0_decoder_io_outputs_0_rsp_ready                                               ), //i
    .io_input_rsp_payload_last                 (perIBus_0_decoder_io_outputs_0_downSizer_io_input_rsp_payload_last                     ), //o
    .io_input_rsp_payload_fragment_opcode      (perIBus_0_decoder_io_outputs_0_downSizer_io_input_rsp_payload_fragment_opcode          ), //o
    .io_input_rsp_payload_fragment_data        (perIBus_0_decoder_io_outputs_0_downSizer_io_input_rsp_payload_fragment_data[127:0]     ), //o
    .io_output_cmd_valid                       (perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_valid                           ), //o
    .io_output_cmd_ready                       (perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_ready             ), //i
    .io_output_cmd_payload_last                (perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_last                    ), //o
    .io_output_cmd_payload_fragment_opcode     (perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_opcode         ), //o
    .io_output_cmd_payload_fragment_address    (perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_address[31:0]  ), //o
    .io_output_cmd_payload_fragment_length     (perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_length[5:0]    ), //o
    .io_output_cmd_payload_fragment_context    (perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_context[1:0]   ), //o
    .io_output_rsp_valid                       (perIBus_0_toPeripheral_rsp_m2sPipe_valid                                               ), //i
    .io_output_rsp_ready                       (perIBus_0_decoder_io_outputs_0_downSizer_io_output_rsp_ready                           ), //o
    .io_output_rsp_payload_last                (perIBus_0_toPeripheral_rsp_m2sPipe_payload_last                                        ), //i
    .io_output_rsp_payload_fragment_opcode     (perIBus_0_toPeripheral_rsp_m2sPipe_payload_fragment_opcode                             ), //i
    .io_output_rsp_payload_fragment_data       (perIBus_0_toPeripheral_rsp_m2sPipe_payload_fragment_data[31:0]                         ), //i
    .io_output_rsp_payload_fragment_context    (perIBus_0_toPeripheral_rsp_m2sPipe_payload_fragment_context[1:0]                       ), //i
    .clk                                       (clk                                                                                    ), //i
    .reset                                     (reset                                                                                  )  //i
  );
  BmbDownSizerBridge_1 dBusDecoder_io_outputs_0_downSizer (
    .io_input_cmd_valid                        (dBusDecoder_io_outputs_0_cmd_valid                                               ), //i
    .io_input_cmd_ready                        (dBusDecoder_io_outputs_0_downSizer_io_input_cmd_ready                            ), //o
    .io_input_cmd_payload_last                 (dBusDecoder_io_outputs_0_cmd_payload_last                                        ), //i
    .io_input_cmd_payload_fragment_opcode      (dBusDecoder_io_outputs_0_cmd_payload_fragment_opcode                             ), //i
    .io_input_cmd_payload_fragment_address     (dBusDecoder_io_outputs_0_cmd_payload_fragment_address[31:0]                      ), //i
    .io_input_cmd_payload_fragment_length      (dBusDecoder_io_outputs_0_cmd_payload_fragment_length[5:0]                        ), //i
    .io_input_cmd_payload_fragment_data        (dBusDecoder_io_outputs_0_cmd_payload_fragment_data[63:0]                         ), //i
    .io_input_cmd_payload_fragment_mask        (dBusDecoder_io_outputs_0_cmd_payload_fragment_mask[7:0]                          ), //i
    .io_input_rsp_valid                        (dBusDecoder_io_outputs_0_downSizer_io_input_rsp_valid                            ), //o
    .io_input_rsp_ready                        (dBusDecoder_io_outputs_0_rsp_ready                                               ), //i
    .io_input_rsp_payload_last                 (dBusDecoder_io_outputs_0_downSizer_io_input_rsp_payload_last                     ), //o
    .io_input_rsp_payload_fragment_opcode      (dBusDecoder_io_outputs_0_downSizer_io_input_rsp_payload_fragment_opcode          ), //o
    .io_input_rsp_payload_fragment_data        (dBusDecoder_io_outputs_0_downSizer_io_input_rsp_payload_fragment_data[63:0]      ), //o
    .io_output_cmd_valid                       (dBusDecoder_io_outputs_0_downSizer_io_output_cmd_valid                           ), //o
    .io_output_cmd_ready                       (dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_ready             ), //i
    .io_output_cmd_payload_last                (dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_last                    ), //o
    .io_output_cmd_payload_fragment_opcode     (dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_opcode         ), //o
    .io_output_cmd_payload_fragment_address    (dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_address[31:0]  ), //o
    .io_output_cmd_payload_fragment_length     (dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_length[5:0]    ), //o
    .io_output_cmd_payload_fragment_data       (dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_data[31:0]     ), //o
    .io_output_cmd_payload_fragment_mask       (dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_mask[3:0]      ), //o
    .io_output_cmd_payload_fragment_context    (dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_context        ), //o
    .io_output_rsp_valid                       (dBusDecoderToPeripheral_rsp_m2sPipe_valid                                        ), //i
    .io_output_rsp_ready                       (dBusDecoder_io_outputs_0_downSizer_io_output_rsp_ready                           ), //o
    .io_output_rsp_payload_last                (dBusDecoderToPeripheral_rsp_m2sPipe_payload_last                                 ), //i
    .io_output_rsp_payload_fragment_opcode     (dBusDecoderToPeripheral_rsp_m2sPipe_payload_fragment_opcode                      ), //i
    .io_output_rsp_payload_fragment_data       (dBusDecoderToPeripheral_rsp_m2sPipe_payload_fragment_data[31:0]                  ), //i
    .io_output_rsp_payload_fragment_context    (dBusDecoderToPeripheral_rsp_m2sPipe_payload_fragment_context                     ), //i
    .clk                                       (clk                                                                              ), //i
    .reset                                     (reset                                                                            )  //i
  );
  BmbArbiter_1 peripheralArbiter (
    .io_inputs_0_cmd_valid                       (perIBus_0_toPeripheral_cmd_valid                                 ), //i
    .io_inputs_0_cmd_ready                       (peripheralArbiter_io_inputs_0_cmd_ready                          ), //o
    .io_inputs_0_cmd_payload_last                (perIBus_0_toPeripheral_cmd_payload_last                          ), //i
    .io_inputs_0_cmd_payload_fragment_opcode     (perIBus_0_toPeripheral_cmd_payload_fragment_opcode               ), //i
    .io_inputs_0_cmd_payload_fragment_address    (perIBus_0_toPeripheral_cmd_payload_fragment_address[31:0]        ), //i
    .io_inputs_0_cmd_payload_fragment_length     (perIBus_0_toPeripheral_cmd_payload_fragment_length[5:0]          ), //i
    .io_inputs_0_cmd_payload_fragment_data       (_zz_28[31:0]                                                     ), //i
    .io_inputs_0_cmd_payload_fragment_mask       (_zz_29[3:0]                                                      ), //i
    .io_inputs_0_cmd_payload_fragment_context    (perIBus_0_toPeripheral_cmd_payload_fragment_context[1:0]         ), //i
    .io_inputs_0_rsp_valid                       (peripheralArbiter_io_inputs_0_rsp_valid                          ), //o
    .io_inputs_0_rsp_ready                       (perIBus_0_toPeripheral_rsp_ready                                 ), //i
    .io_inputs_0_rsp_payload_last                (peripheralArbiter_io_inputs_0_rsp_payload_last                   ), //o
    .io_inputs_0_rsp_payload_fragment_opcode     (peripheralArbiter_io_inputs_0_rsp_payload_fragment_opcode        ), //o
    .io_inputs_0_rsp_payload_fragment_data       (peripheralArbiter_io_inputs_0_rsp_payload_fragment_data[31:0]    ), //o
    .io_inputs_0_rsp_payload_fragment_context    (peripheralArbiter_io_inputs_0_rsp_payload_fragment_context[1:0]  ), //o
    .io_inputs_1_cmd_valid                       (dBusDecoderToPeripheral_cmd_valid                                ), //i
    .io_inputs_1_cmd_ready                       (peripheralArbiter_io_inputs_1_cmd_ready                          ), //o
    .io_inputs_1_cmd_payload_last                (dBusDecoderToPeripheral_cmd_payload_last                         ), //i
    .io_inputs_1_cmd_payload_fragment_opcode     (dBusDecoderToPeripheral_cmd_payload_fragment_opcode              ), //i
    .io_inputs_1_cmd_payload_fragment_address    (dBusDecoderToPeripheral_cmd_payload_fragment_address[31:0]       ), //i
    .io_inputs_1_cmd_payload_fragment_length     (dBusDecoderToPeripheral_cmd_payload_fragment_length[5:0]         ), //i
    .io_inputs_1_cmd_payload_fragment_data       (dBusDecoderToPeripheral_cmd_payload_fragment_data[31:0]          ), //i
    .io_inputs_1_cmd_payload_fragment_mask       (dBusDecoderToPeripheral_cmd_payload_fragment_mask[3:0]           ), //i
    .io_inputs_1_cmd_payload_fragment_context    (_zz_30[1:0]                                                      ), //i
    .io_inputs_1_rsp_valid                       (peripheralArbiter_io_inputs_1_rsp_valid                          ), //o
    .io_inputs_1_rsp_ready                       (dBusDecoderToPeripheral_rsp_ready                                ), //i
    .io_inputs_1_rsp_payload_last                (peripheralArbiter_io_inputs_1_rsp_payload_last                   ), //o
    .io_inputs_1_rsp_payload_fragment_opcode     (peripheralArbiter_io_inputs_1_rsp_payload_fragment_opcode        ), //o
    .io_inputs_1_rsp_payload_fragment_data       (peripheralArbiter_io_inputs_1_rsp_payload_fragment_data[31:0]    ), //o
    .io_inputs_1_rsp_payload_fragment_context    (peripheralArbiter_io_inputs_1_rsp_payload_fragment_context[1:0]  ), //o
    .io_output_cmd_valid                         (peripheralArbiter_io_output_cmd_valid                            ), //o
    .io_output_cmd_ready                         (_zz_31                                                           ), //i
    .io_output_cmd_payload_last                  (peripheralArbiter_io_output_cmd_payload_last                     ), //o
    .io_output_cmd_payload_fragment_source       (peripheralArbiter_io_output_cmd_payload_fragment_source          ), //o
    .io_output_cmd_payload_fragment_opcode       (peripheralArbiter_io_output_cmd_payload_fragment_opcode          ), //o
    .io_output_cmd_payload_fragment_address      (peripheralArbiter_io_output_cmd_payload_fragment_address[31:0]   ), //o
    .io_output_cmd_payload_fragment_length       (peripheralArbiter_io_output_cmd_payload_fragment_length[5:0]     ), //o
    .io_output_cmd_payload_fragment_data         (peripheralArbiter_io_output_cmd_payload_fragment_data[31:0]      ), //o
    .io_output_cmd_payload_fragment_mask         (peripheralArbiter_io_output_cmd_payload_fragment_mask[3:0]       ), //o
    .io_output_cmd_payload_fragment_context      (peripheralArbiter_io_output_cmd_payload_fragment_context[1:0]    ), //o
    .io_output_rsp_valid                         (bmbToWishbone_1_io_input_rsp_valid                               ), //i
    .io_output_rsp_ready                         (peripheralArbiter_io_output_rsp_ready                            ), //o
    .io_output_rsp_payload_last                  (bmbToWishbone_1_io_input_rsp_payload_last                        ), //i
    .io_output_rsp_payload_fragment_source       (bmbToWishbone_1_io_input_rsp_payload_fragment_source             ), //i
    .io_output_rsp_payload_fragment_opcode       (bmbToWishbone_1_io_input_rsp_payload_fragment_opcode             ), //i
    .io_output_rsp_payload_fragment_data         (bmbToWishbone_1_io_input_rsp_payload_fragment_data[31:0]         ), //i
    .io_output_rsp_payload_fragment_context      (bmbToWishbone_1_io_input_rsp_payload_fragment_context[1:0]       ), //i
    .clk                                         (clk                                                              ), //i
    .reset                                       (reset                                                            )  //i
  );
  BmbToWishbone bmbToWishbone_1 (
    .io_input_cmd_valid                       (peripheralArbiter_io_output_cmd_m2sPipe_valid                           ), //i
    .io_input_cmd_ready                       (bmbToWishbone_1_io_input_cmd_ready                                      ), //o
    .io_input_cmd_payload_last                (peripheralArbiter_io_output_cmd_m2sPipe_payload_last                    ), //i
    .io_input_cmd_payload_fragment_source     (peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_source         ), //i
    .io_input_cmd_payload_fragment_opcode     (peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_opcode         ), //i
    .io_input_cmd_payload_fragment_address    (peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_address[31:0]  ), //i
    .io_input_cmd_payload_fragment_length     (peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_length[5:0]    ), //i
    .io_input_cmd_payload_fragment_data       (peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_data[31:0]     ), //i
    .io_input_cmd_payload_fragment_mask       (peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_mask[3:0]      ), //i
    .io_input_cmd_payload_fragment_context    (peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_context[1:0]   ), //i
    .io_input_rsp_valid                       (bmbToWishbone_1_io_input_rsp_valid                                      ), //o
    .io_input_rsp_ready                       (peripheralArbiter_io_output_rsp_ready                                   ), //i
    .io_input_rsp_payload_last                (bmbToWishbone_1_io_input_rsp_payload_last                               ), //o
    .io_input_rsp_payload_fragment_source     (bmbToWishbone_1_io_input_rsp_payload_fragment_source                    ), //o
    .io_input_rsp_payload_fragment_opcode     (bmbToWishbone_1_io_input_rsp_payload_fragment_opcode                    ), //o
    .io_input_rsp_payload_fragment_data       (bmbToWishbone_1_io_input_rsp_payload_fragment_data[31:0]                ), //o
    .io_input_rsp_payload_fragment_context    (bmbToWishbone_1_io_input_rsp_payload_fragment_context[1:0]              ), //o
    .io_output_CYC                            (bmbToWishbone_1_io_output_CYC                                           ), //o
    .io_output_STB                            (bmbToWishbone_1_io_output_STB                                           ), //o
    .io_output_ACK                            (io_peripheral_ACK                                                       ), //i
    .io_output_WE                             (bmbToWishbone_1_io_output_WE                                            ), //o
    .io_output_ADR                            (bmbToWishbone_1_io_output_ADR[29:0]                                     ), //o
    .io_output_DAT_MISO                       (io_peripheral_DAT_MISO[31:0]                                            ), //i
    .io_output_DAT_MOSI                       (bmbToWishbone_1_io_output_DAT_MOSI[31:0]                                ), //o
    .io_output_SEL                            (bmbToWishbone_1_io_output_SEL[3:0]                                      ), //o
    .io_output_ERR                            (io_peripheral_ERR                                                       ), //i
    .io_output_CTI                            (bmbToWishbone_1_io_output_CTI[2:0]                                      ), //o
    .io_output_BTE                            (bmbToWishbone_1_io_output_BTE[1:0]                                      ), //o
    .clk                                      (clk                                                                     ), //i
    .reset                                    (reset                                                                   )  //i
  );
  BmbSourceDecoder dBusDemux (
    .io_input_cmd_valid                           (dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_valid                           ), //i
    .io_input_cmd_ready                           (dBusDemux_io_input_cmd_ready                                                 ), //o
    .io_input_cmd_payload_last                    (dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_last                    ), //i
    .io_input_cmd_payload_fragment_opcode         (dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_opcode         ), //i
    .io_input_cmd_payload_fragment_address        (dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_address[31:0]  ), //i
    .io_input_cmd_payload_fragment_length         (dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_length[5:0]    ), //i
    .io_input_cmd_payload_fragment_data           (dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_data[63:0]     ), //i
    .io_input_cmd_payload_fragment_mask           (dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_mask[7:0]      ), //i
    .io_input_rsp_valid                           (dBusDemux_io_input_rsp_valid                                                 ), //o
    .io_input_rsp_ready                           (_zz_15                                                                       ), //i
    .io_input_rsp_payload_last                    (dBusDemux_io_input_rsp_payload_last                                          ), //o
    .io_input_rsp_payload_fragment_opcode         (dBusDemux_io_input_rsp_payload_fragment_opcode                               ), //o
    .io_input_rsp_payload_fragment_data           (dBusDemux_io_input_rsp_payload_fragment_data[63:0]                           ), //o
    .io_outputs_0_cmd_valid                       (dBusDemux_io_outputs_0_cmd_valid                                             ), //o
    .io_outputs_0_cmd_ready                       (dMemBridge_0_io_input_cmd_ready                                              ), //i
    .io_outputs_0_cmd_payload_last                (dBusDemux_io_outputs_0_cmd_payload_last                                      ), //o
    .io_outputs_0_cmd_payload_fragment_opcode     (dBusDemux_io_outputs_0_cmd_payload_fragment_opcode                           ), //o
    .io_outputs_0_cmd_payload_fragment_address    (dBusDemux_io_outputs_0_cmd_payload_fragment_address[31:0]                    ), //o
    .io_outputs_0_cmd_payload_fragment_length     (dBusDemux_io_outputs_0_cmd_payload_fragment_length[5:0]                      ), //o
    .io_outputs_0_cmd_payload_fragment_data       (dBusDemux_io_outputs_0_cmd_payload_fragment_data[63:0]                       ), //o
    .io_outputs_0_cmd_payload_fragment_mask       (dBusDemux_io_outputs_0_cmd_payload_fragment_mask[7:0]                        ), //o
    .io_outputs_0_rsp_valid                       (dMemBridge_0_io_input_rsp_valid                                              ), //i
    .io_outputs_0_rsp_ready                       (dBusDemux_io_outputs_0_rsp_ready                                             ), //o
    .io_outputs_0_rsp_payload_last                (dMemBridge_0_io_input_rsp_payload_last                                       ), //i
    .io_outputs_0_rsp_payload_fragment_opcode     (dMemBridge_0_io_input_rsp_payload_fragment_opcode                            ), //i
    .io_outputs_0_rsp_payload_fragment_data       (dMemBridge_0_io_input_rsp_payload_fragment_data[63:0]                        ), //i
    .clk                                          (clk                                                                          ), //i
    .reset                                        (reset                                                                        )  //i
  );
  BmbToLiteDram_1 dMemBridge_0 (
    .io_input_cmd_valid                       (dBusDemux_io_outputs_0_cmd_valid                           ), //i
    .io_input_cmd_ready                       (dMemBridge_0_io_input_cmd_ready                            ), //o
    .io_input_cmd_payload_last                (dBusDemux_io_outputs_0_cmd_payload_last                    ), //i
    .io_input_cmd_payload_fragment_opcode     (dBusDemux_io_outputs_0_cmd_payload_fragment_opcode         ), //i
    .io_input_cmd_payload_fragment_address    (dBusDemux_io_outputs_0_cmd_payload_fragment_address[31:0]  ), //i
    .io_input_cmd_payload_fragment_length     (dBusDemux_io_outputs_0_cmd_payload_fragment_length[5:0]    ), //i
    .io_input_cmd_payload_fragment_data       (dBusDemux_io_outputs_0_cmd_payload_fragment_data[63:0]     ), //i
    .io_input_cmd_payload_fragment_mask       (dBusDemux_io_outputs_0_cmd_payload_fragment_mask[7:0]      ), //i
    .io_input_rsp_valid                       (dMemBridge_0_io_input_rsp_valid                            ), //o
    .io_input_rsp_ready                       (dBusDemux_io_outputs_0_rsp_ready                           ), //i
    .io_input_rsp_payload_last                (dMemBridge_0_io_input_rsp_payload_last                     ), //o
    .io_input_rsp_payload_fragment_opcode     (dMemBridge_0_io_input_rsp_payload_fragment_opcode          ), //o
    .io_input_rsp_payload_fragment_data       (dMemBridge_0_io_input_rsp_payload_fragment_data[63:0]      ), //o
    .io_output_cmd_valid                      (dMemBridge_0_io_output_cmd_valid                           ), //o
    .io_output_cmd_ready                      (io_dMem_0_cmd_ready                                        ), //i
    .io_output_cmd_payload_we                 (dMemBridge_0_io_output_cmd_payload_we                      ), //o
    .io_output_cmd_payload_addr               (dMemBridge_0_io_output_cmd_payload_addr[31:0]              ), //o
    .io_output_wdata_valid                    (dMemBridge_0_io_output_wdata_valid                         ), //o
    .io_output_wdata_ready                    (io_dMem_0_wdata_ready                                      ), //i
    .io_output_wdata_payload_data             (dMemBridge_0_io_output_wdata_payload_data[127:0]           ), //o
    .io_output_wdata_payload_we               (dMemBridge_0_io_output_wdata_payload_we[15:0]              ), //o
    .io_output_rdata_valid                    (io_dMem_0_rdata_valid                                      ), //i
    .io_output_rdata_ready                    (dMemBridge_0_io_output_rdata_ready                         ), //o
    .io_output_rdata_payload_data             (io_dMem_0_rdata_payload_data[127:0]                        ), //i
    .clk                                      (clk                                                        ), //i
    .reset                                    (reset                                                      )  //i
  );
  always @ (*) begin
    io_clint_DAT_MISO = 32'h0;
    case(_zz_32)
      16'hbff8 : begin
        io_clint_DAT_MISO[31 : 0] = _zz_3[31 : 0];
      end
      16'hbffc : begin
        io_clint_DAT_MISO[31 : 0] = _zz_3[63 : 32];
      end
      16'h4000 : begin
      end
      16'h4004 : begin
      end
      16'h0 : begin
        io_clint_DAT_MISO[0 : 0] = clint_harts_0_softwareInterrupt;
      end
      default : begin
      end
    endcase
  end

  assign _zz_1 = (((io_clint_CYC && io_clint_STB) && ((io_clint_CYC && io_clint_ACK) && io_clint_STB)) && io_clint_WE);
  assign io_clint_ACK = (_zz_2 && io_clint_STB);
  assign _zz_3 = clint_time;
  assign io_debugReset = cluster_io_debugReset;
  assign _zz_4[0] = clint_harts_0_timerInterrupt;
  assign _zz_5[0] = clint_harts_0_softwareInterrupt;
  assign io_jtagInstruction_tdo = debug_jtagBridge_io_ctrl_tdo;
  always @ (*) begin
    case(debug_debugger_io_mem_cmd_payload_size)
      2'b00 : begin
        _zz_7 = 4'b0001;
      end
      2'b01 : begin
        _zz_7 = 4'b0011;
      end
      default : begin
        _zz_7 = 4'b1111;
      end
    endcase
  end

  assign _zz_26 = 1'b1;
  assign _zz_22 = 1'b1;
  assign _zz_23 = (debug_debugger_io_mem_cmd_payload_wr ? 1'b1 : 1'b0);
  assign _zz_24 = _zz_39[19:0];
  assign _zz_25 = _zz_41[3:0];
  assign cluster_io_dMem_cmd_s2mPipe_valid = (cluster_io_dMem_cmd_valid || cluster_io_dMem_cmd_s2mPipe_rValid);
  assign _zz_21 = (! cluster_io_dMem_cmd_s2mPipe_rValid);
  assign cluster_io_dMem_cmd_s2mPipe_payload_last = (cluster_io_dMem_cmd_s2mPipe_rValid ? cluster_io_dMem_cmd_s2mPipe_rData_last : cluster_io_dMem_cmd_payload_last);
  assign cluster_io_dMem_cmd_s2mPipe_payload_fragment_opcode = (cluster_io_dMem_cmd_s2mPipe_rValid ? cluster_io_dMem_cmd_s2mPipe_rData_fragment_opcode : cluster_io_dMem_cmd_payload_fragment_opcode);
  assign cluster_io_dMem_cmd_s2mPipe_payload_fragment_address = (cluster_io_dMem_cmd_s2mPipe_rValid ? cluster_io_dMem_cmd_s2mPipe_rData_fragment_address : cluster_io_dMem_cmd_payload_fragment_address);
  assign cluster_io_dMem_cmd_s2mPipe_payload_fragment_length = (cluster_io_dMem_cmd_s2mPipe_rValid ? cluster_io_dMem_cmd_s2mPipe_rData_fragment_length : cluster_io_dMem_cmd_payload_fragment_length);
  assign cluster_io_dMem_cmd_s2mPipe_payload_fragment_data = (cluster_io_dMem_cmd_s2mPipe_rValid ? cluster_io_dMem_cmd_s2mPipe_rData_fragment_data : cluster_io_dMem_cmd_payload_fragment_data);
  assign cluster_io_dMem_cmd_s2mPipe_payload_fragment_mask = (cluster_io_dMem_cmd_s2mPipe_rValid ? cluster_io_dMem_cmd_s2mPipe_rData_fragment_mask : cluster_io_dMem_cmd_payload_fragment_mask);
  assign cluster_io_dMem_cmd_s2mPipe_payload_fragment_context = (cluster_io_dMem_cmd_s2mPipe_rValid ? cluster_io_dMem_cmd_s2mPipe_rData_fragment_context : cluster_io_dMem_cmd_payload_fragment_context);
  assign cluster_io_dMem_cmd_s2mPipe_ready = ((1'b1 && (! cluster_io_dMem_cmd_s2mPipe_m2sPipe_valid)) || cluster_io_dMem_cmd_s2mPipe_m2sPipe_ready);
  assign cluster_io_dMem_cmd_s2mPipe_m2sPipe_valid = cluster_io_dMem_cmd_s2mPipe_m2sPipe_rValid;
  assign cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_last = cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_last;
  assign cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_opcode = cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_opcode;
  assign cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_address = cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_address;
  assign cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_length = cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_length;
  assign cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_data = cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_data;
  assign cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_mask = cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_mask;
  assign cluster_io_dMem_cmd_s2mPipe_m2sPipe_payload_fragment_context = cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_context;
  assign cluster_io_dMem_cmd_s2mPipe_m2sPipe_ready = dBusDecoder_io_input_cmd_ready;
  assign _zz_8 = ((1'b1 && (! _zz_9)) || cluster_io_dMem_rsp_ready);
  assign _zz_9 = _zz_10;
  assign perIBus_0_decoder_io_outputs_1_cmd_halfPipe_valid = perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_valid;
  assign perIBus_0_decoder_io_outputs_1_cmd_halfPipe_payload_last = perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_payload_last;
  assign perIBus_0_decoder_io_outputs_1_cmd_halfPipe_payload_fragment_opcode = perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_payload_fragment_opcode;
  assign perIBus_0_decoder_io_outputs_1_cmd_halfPipe_payload_fragment_address = perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_payload_fragment_address;
  assign perIBus_0_decoder_io_outputs_1_cmd_halfPipe_payload_fragment_length = perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_payload_fragment_length;
  assign perIBus_0_decoder_io_outputs_1_cmd_halfPipe_ready = bmbToLiteDram_2_io_input_cmd_ready;
  assign io_iMem_0_cmd_valid = bmbToLiteDram_2_io_output_cmd_valid;
  assign io_iMem_0_cmd_payload_we = bmbToLiteDram_2_io_output_cmd_payload_we;
  assign io_iMem_0_cmd_payload_addr = bmbToLiteDram_2_io_output_cmd_payload_addr;
  assign io_iMem_0_wdata_valid = bmbToLiteDram_2_io_output_wdata_valid;
  assign io_iMem_0_wdata_payload_data = bmbToLiteDram_2_io_output_wdata_payload_data;
  assign io_iMem_0_wdata_payload_we = bmbToLiteDram_2_io_output_wdata_payload_we;
  assign io_iMem_0_rdata_ready = bmbToLiteDram_2_io_output_rdata_ready;
  assign perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_valid = perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_valid;
  assign perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_last = perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_last;
  assign perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_opcode = perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_opcode;
  assign perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_address = perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_address;
  assign perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_length = perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_length;
  assign perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_context = perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_context;
  assign perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_ready = perIBus_0_toPeripheral_cmd_ready;
  assign perIBus_0_toPeripheral_cmd_valid = perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_valid;
  assign perIBus_0_toPeripheral_cmd_payload_last = perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_last;
  assign perIBus_0_toPeripheral_cmd_payload_fragment_opcode = perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_opcode;
  assign perIBus_0_toPeripheral_cmd_payload_fragment_address = perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_address;
  assign perIBus_0_toPeripheral_cmd_payload_fragment_length = perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_length;
  assign perIBus_0_toPeripheral_cmd_payload_fragment_context = perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_context;
  assign perIBus_0_toPeripheral_rsp_ready = ((1'b1 && (! perIBus_0_toPeripheral_rsp_m2sPipe_valid)) || perIBus_0_toPeripheral_rsp_m2sPipe_ready);
  assign perIBus_0_toPeripheral_rsp_m2sPipe_valid = perIBus_0_toPeripheral_rsp_m2sPipe_rValid;
  assign perIBus_0_toPeripheral_rsp_m2sPipe_payload_last = perIBus_0_toPeripheral_rsp_m2sPipe_rData_last;
  assign perIBus_0_toPeripheral_rsp_m2sPipe_payload_fragment_opcode = perIBus_0_toPeripheral_rsp_m2sPipe_rData_fragment_opcode;
  assign perIBus_0_toPeripheral_rsp_m2sPipe_payload_fragment_data = perIBus_0_toPeripheral_rsp_m2sPipe_rData_fragment_data;
  assign perIBus_0_toPeripheral_rsp_m2sPipe_payload_fragment_context = perIBus_0_toPeripheral_rsp_m2sPipe_rData_fragment_context;
  assign perIBus_0_toPeripheral_rsp_m2sPipe_ready = perIBus_0_decoder_io_outputs_0_downSizer_io_output_rsp_ready;
  assign dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_valid = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_valid;
  assign dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_last = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_last;
  assign dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_opcode = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_opcode;
  assign dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_address = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_address;
  assign dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_length = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_length;
  assign dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_data = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_data;
  assign dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_mask = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_mask;
  assign dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_context = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_context;
  assign dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_ready = dBusDecoderToPeripheral_cmd_ready;
  assign dBusDecoderToPeripheral_cmd_valid = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_valid;
  assign dBusDecoderToPeripheral_cmd_payload_last = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_last;
  assign dBusDecoderToPeripheral_cmd_payload_fragment_opcode = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_opcode;
  assign dBusDecoderToPeripheral_cmd_payload_fragment_address = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_address;
  assign dBusDecoderToPeripheral_cmd_payload_fragment_length = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_length;
  assign dBusDecoderToPeripheral_cmd_payload_fragment_data = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_data;
  assign dBusDecoderToPeripheral_cmd_payload_fragment_mask = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_mask;
  assign dBusDecoderToPeripheral_cmd_payload_fragment_context = dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_payload_fragment_context;
  assign dBusDecoderToPeripheral_rsp_ready = ((1'b1 && (! dBusDecoderToPeripheral_rsp_m2sPipe_valid)) || dBusDecoderToPeripheral_rsp_m2sPipe_ready);
  assign dBusDecoderToPeripheral_rsp_m2sPipe_valid = dBusDecoderToPeripheral_rsp_m2sPipe_rValid;
  assign dBusDecoderToPeripheral_rsp_m2sPipe_payload_last = dBusDecoderToPeripheral_rsp_m2sPipe_rData_last;
  assign dBusDecoderToPeripheral_rsp_m2sPipe_payload_fragment_opcode = dBusDecoderToPeripheral_rsp_m2sPipe_rData_fragment_opcode;
  assign dBusDecoderToPeripheral_rsp_m2sPipe_payload_fragment_data = dBusDecoderToPeripheral_rsp_m2sPipe_rData_fragment_data;
  assign dBusDecoderToPeripheral_rsp_m2sPipe_payload_fragment_context = dBusDecoderToPeripheral_rsp_m2sPipe_rData_fragment_context;
  assign dBusDecoderToPeripheral_rsp_m2sPipe_ready = dBusDecoder_io_outputs_0_downSizer_io_output_rsp_ready;
  assign perIBus_0_toPeripheral_cmd_ready = peripheralArbiter_io_inputs_0_cmd_ready;
  assign perIBus_0_toPeripheral_rsp_valid = peripheralArbiter_io_inputs_0_rsp_valid;
  assign perIBus_0_toPeripheral_rsp_payload_last = peripheralArbiter_io_inputs_0_rsp_payload_last;
  assign _zz_28 = 32'h0;
  assign _zz_29 = 4'bxxxx;
  assign perIBus_0_toPeripheral_rsp_payload_fragment_opcode = peripheralArbiter_io_inputs_0_rsp_payload_fragment_opcode;
  assign perIBus_0_toPeripheral_rsp_payload_fragment_data = peripheralArbiter_io_inputs_0_rsp_payload_fragment_data;
  assign perIBus_0_toPeripheral_rsp_payload_fragment_context = peripheralArbiter_io_inputs_0_rsp_payload_fragment_context;
  assign dBusDecoderToPeripheral_cmd_ready = peripheralArbiter_io_inputs_1_cmd_ready;
  assign dBusDecoderToPeripheral_rsp_valid = peripheralArbiter_io_inputs_1_rsp_valid;
  assign dBusDecoderToPeripheral_rsp_payload_last = peripheralArbiter_io_inputs_1_rsp_payload_last;
  assign _zz_30 = {1'd0, dBusDecoderToPeripheral_cmd_payload_fragment_context};
  assign dBusDecoderToPeripheral_rsp_payload_fragment_opcode = peripheralArbiter_io_inputs_1_rsp_payload_fragment_opcode;
  assign dBusDecoderToPeripheral_rsp_payload_fragment_data = peripheralArbiter_io_inputs_1_rsp_payload_fragment_data;
  assign dBusDecoderToPeripheral_rsp_payload_fragment_context = peripheralArbiter_io_inputs_1_rsp_payload_fragment_context[0:0];
  assign _zz_31 = ((1'b1 && (! peripheralArbiter_io_output_cmd_m2sPipe_valid)) || peripheralArbiter_io_output_cmd_m2sPipe_ready);
  assign peripheralArbiter_io_output_cmd_m2sPipe_valid = peripheralArbiter_io_output_cmd_m2sPipe_rValid;
  assign peripheralArbiter_io_output_cmd_m2sPipe_payload_last = peripheralArbiter_io_output_cmd_m2sPipe_rData_last;
  assign peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_source = peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_source;
  assign peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_opcode = peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_opcode;
  assign peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_address = peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_address;
  assign peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_length = peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_length;
  assign peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_data = peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_data;
  assign peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_mask = peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_mask;
  assign peripheralArbiter_io_output_cmd_m2sPipe_payload_fragment_context = peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_context;
  assign peripheralArbiter_io_output_cmd_m2sPipe_ready = bmbToWishbone_1_io_input_cmd_ready;
  assign io_peripheral_CYC = bmbToWishbone_1_io_output_CYC;
  assign io_peripheral_ADR = bmbToWishbone_1_io_output_ADR;
  assign io_peripheral_DAT_MOSI = bmbToWishbone_1_io_output_DAT_MOSI;
  assign io_peripheral_STB = bmbToWishbone_1_io_output_STB;
  assign io_peripheral_WE = bmbToWishbone_1_io_output_WE;
  assign io_peripheral_SEL = bmbToWishbone_1_io_output_SEL;
  assign io_peripheral_CTI = bmbToWishbone_1_io_output_CTI;
  assign io_peripheral_BTE = bmbToWishbone_1_io_output_BTE;
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_valid = (dBusDecoder_io_outputs_1_cmd_valid || dBusDecoder_io_outputs_1_cmd_s2mPipe_rValid);
  assign _zz_27 = (! dBusDecoder_io_outputs_1_cmd_s2mPipe_rValid);
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_last = (dBusDecoder_io_outputs_1_cmd_s2mPipe_rValid ? dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_last : dBusDecoder_io_outputs_1_cmd_payload_last);
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_opcode = (dBusDecoder_io_outputs_1_cmd_s2mPipe_rValid ? dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_opcode : dBusDecoder_io_outputs_1_cmd_payload_fragment_opcode);
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_address = (dBusDecoder_io_outputs_1_cmd_s2mPipe_rValid ? dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_address : dBusDecoder_io_outputs_1_cmd_payload_fragment_address);
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_length = (dBusDecoder_io_outputs_1_cmd_s2mPipe_rValid ? dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_length : dBusDecoder_io_outputs_1_cmd_payload_fragment_length);
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_data = (dBusDecoder_io_outputs_1_cmd_s2mPipe_rValid ? dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_data : dBusDecoder_io_outputs_1_cmd_payload_fragment_data);
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_mask = (dBusDecoder_io_outputs_1_cmd_s2mPipe_rValid ? dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_mask : dBusDecoder_io_outputs_1_cmd_payload_fragment_mask);
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_ready = ((1'b1 && (! dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_valid)) || dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_ready);
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_valid = dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rValid;
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_last = dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_last;
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_opcode = dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_opcode;
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_address = dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_address;
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_length = dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_length;
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_data = dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_data;
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_payload_fragment_mask = dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_mask;
  assign dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_ready = dBusDemux_io_input_cmd_ready;
  assign _zz_15 = ((1'b1 && (! _zz_16)) || dBusDecoder_io_outputs_1_rsp_ready);
  assign _zz_16 = _zz_17;
  assign io_dMem_0_cmd_valid = dMemBridge_0_io_output_cmd_valid;
  assign io_dMem_0_cmd_payload_we = dMemBridge_0_io_output_cmd_payload_we;
  assign io_dMem_0_cmd_payload_addr = dMemBridge_0_io_output_cmd_payload_addr;
  assign io_dMem_0_wdata_valid = dMemBridge_0_io_output_wdata_valid;
  assign io_dMem_0_wdata_payload_data = dMemBridge_0_io_output_wdata_payload_data;
  assign io_dMem_0_wdata_payload_we = dMemBridge_0_io_output_wdata_payload_we;
  assign io_dMem_0_rdata_ready = dMemBridge_0_io_output_rdata_ready;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      clint_time <= 64'h0;
      clint_harts_0_softwareInterrupt <= 1'b0;
      _zz_2 <= 1'b0;
      cluster_io_dMem_cmd_s2mPipe_rValid <= 1'b0;
      cluster_io_dMem_cmd_s2mPipe_m2sPipe_rValid <= 1'b0;
      _zz_10 <= 1'b0;
      perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_valid <= 1'b0;
      perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_ready <= 1'b1;
      perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_valid <= 1'b0;
      perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_ready <= 1'b1;
      perIBus_0_toPeripheral_rsp_m2sPipe_rValid <= 1'b0;
      dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_valid <= 1'b0;
      dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_ready <= 1'b1;
      dBusDecoderToPeripheral_rsp_m2sPipe_rValid <= 1'b0;
      peripheralArbiter_io_output_cmd_m2sPipe_rValid <= 1'b0;
      dBusDecoder_io_outputs_1_cmd_s2mPipe_rValid <= 1'b0;
      dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rValid <= 1'b0;
      _zz_17 <= 1'b0;
    end else begin
      clint_time <= (clint_time + 64'h0000000000000001);
      _zz_2 <= (io_clint_STB && io_clint_CYC);
      if(cluster_io_dMem_cmd_s2mPipe_ready)begin
        cluster_io_dMem_cmd_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_33)begin
        cluster_io_dMem_cmd_s2mPipe_rValid <= cluster_io_dMem_cmd_valid;
      end
      if(cluster_io_dMem_cmd_s2mPipe_ready)begin
        cluster_io_dMem_cmd_s2mPipe_m2sPipe_rValid <= cluster_io_dMem_cmd_s2mPipe_valid;
      end
      if(_zz_8)begin
        _zz_10 <= dBusDecoder_io_input_rsp_valid;
      end
      if(_zz_34)begin
        perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_valid <= perIBus_0_decoder_io_outputs_1_cmd_valid;
        perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_ready <= (! perIBus_0_decoder_io_outputs_1_cmd_valid);
      end else begin
        perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_valid <= (! perIBus_0_decoder_io_outputs_1_cmd_halfPipe_ready);
        perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_ready <= perIBus_0_decoder_io_outputs_1_cmd_halfPipe_ready;
      end
      if(_zz_35)begin
        perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_valid <= perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_valid;
        perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_ready <= (! perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_valid);
      end else begin
        perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_valid <= (! perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_ready);
        perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_ready <= perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_ready;
      end
      if(perIBus_0_toPeripheral_rsp_ready)begin
        perIBus_0_toPeripheral_rsp_m2sPipe_rValid <= perIBus_0_toPeripheral_rsp_valid;
      end
      if(_zz_36)begin
        dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_valid <= dBusDecoder_io_outputs_0_downSizer_io_output_cmd_valid;
        dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_ready <= (! dBusDecoder_io_outputs_0_downSizer_io_output_cmd_valid);
      end else begin
        dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_valid <= (! dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_ready);
        dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_ready <= dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_ready;
      end
      if(dBusDecoderToPeripheral_rsp_ready)begin
        dBusDecoderToPeripheral_rsp_m2sPipe_rValid <= dBusDecoderToPeripheral_rsp_valid;
      end
      if(_zz_31)begin
        peripheralArbiter_io_output_cmd_m2sPipe_rValid <= peripheralArbiter_io_output_cmd_valid;
      end
      if(dBusDecoder_io_outputs_1_cmd_s2mPipe_ready)begin
        dBusDecoder_io_outputs_1_cmd_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_37)begin
        dBusDecoder_io_outputs_1_cmd_s2mPipe_rValid <= dBusDecoder_io_outputs_1_cmd_valid;
      end
      if(dBusDecoder_io_outputs_1_cmd_s2mPipe_ready)begin
        dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rValid <= dBusDecoder_io_outputs_1_cmd_s2mPipe_valid;
      end
      if(_zz_15)begin
        _zz_17 <= dBusDemux_io_input_rsp_valid;
      end
      case(_zz_32)
        16'hbff8 : begin
        end
        16'hbffc : begin
        end
        16'h4000 : begin
        end
        16'h4004 : begin
        end
        16'h0 : begin
          if(_zz_1)begin
            clint_harts_0_softwareInterrupt <= _zz_46[0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (posedge clk) begin
    clint_harts_0_timerInterrupt <= (! _zz_38[63]);
    if(_zz_33)begin
      cluster_io_dMem_cmd_s2mPipe_rData_last <= cluster_io_dMem_cmd_payload_last;
      cluster_io_dMem_cmd_s2mPipe_rData_fragment_opcode <= cluster_io_dMem_cmd_payload_fragment_opcode;
      cluster_io_dMem_cmd_s2mPipe_rData_fragment_address <= cluster_io_dMem_cmd_payload_fragment_address;
      cluster_io_dMem_cmd_s2mPipe_rData_fragment_length <= cluster_io_dMem_cmd_payload_fragment_length;
      cluster_io_dMem_cmd_s2mPipe_rData_fragment_data <= cluster_io_dMem_cmd_payload_fragment_data;
      cluster_io_dMem_cmd_s2mPipe_rData_fragment_mask <= cluster_io_dMem_cmd_payload_fragment_mask;
      cluster_io_dMem_cmd_s2mPipe_rData_fragment_context <= cluster_io_dMem_cmd_payload_fragment_context;
    end
    if(cluster_io_dMem_cmd_s2mPipe_ready)begin
      cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_last <= cluster_io_dMem_cmd_s2mPipe_payload_last;
      cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_opcode <= cluster_io_dMem_cmd_s2mPipe_payload_fragment_opcode;
      cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_address <= cluster_io_dMem_cmd_s2mPipe_payload_fragment_address;
      cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_length <= cluster_io_dMem_cmd_s2mPipe_payload_fragment_length;
      cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_data <= cluster_io_dMem_cmd_s2mPipe_payload_fragment_data;
      cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_mask <= cluster_io_dMem_cmd_s2mPipe_payload_fragment_mask;
      cluster_io_dMem_cmd_s2mPipe_m2sPipe_rData_fragment_context <= cluster_io_dMem_cmd_s2mPipe_payload_fragment_context;
    end
    if(_zz_8)begin
      _zz_11 <= dBusDecoder_io_input_rsp_payload_last;
      _zz_12 <= dBusDecoder_io_input_rsp_payload_fragment_opcode;
      _zz_13 <= dBusDecoder_io_input_rsp_payload_fragment_data;
      _zz_14 <= dBusDecoder_io_input_rsp_payload_fragment_context;
    end
    if(_zz_34)begin
      perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_payload_last <= perIBus_0_decoder_io_outputs_1_cmd_payload_last;
      perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_payload_fragment_opcode <= perIBus_0_decoder_io_outputs_1_cmd_payload_fragment_opcode;
      perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_payload_fragment_address <= perIBus_0_decoder_io_outputs_1_cmd_payload_fragment_address;
      perIBus_0_decoder_io_outputs_1_cmd_halfPipe_regs_payload_fragment_length <= perIBus_0_decoder_io_outputs_1_cmd_payload_fragment_length;
    end
    if(_zz_35)begin
      perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_last <= perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_last;
      perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_opcode <= perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_opcode;
      perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_address <= perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_address;
      perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_length <= perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_length;
      perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_context <= perIBus_0_decoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_context;
    end
    if(perIBus_0_toPeripheral_rsp_ready)begin
      perIBus_0_toPeripheral_rsp_m2sPipe_rData_last <= perIBus_0_toPeripheral_rsp_payload_last;
      perIBus_0_toPeripheral_rsp_m2sPipe_rData_fragment_opcode <= perIBus_0_toPeripheral_rsp_payload_fragment_opcode;
      perIBus_0_toPeripheral_rsp_m2sPipe_rData_fragment_data <= perIBus_0_toPeripheral_rsp_payload_fragment_data;
      perIBus_0_toPeripheral_rsp_m2sPipe_rData_fragment_context <= perIBus_0_toPeripheral_rsp_payload_fragment_context;
    end
    if(_zz_36)begin
      dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_last <= dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_last;
      dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_opcode <= dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_opcode;
      dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_address <= dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_address;
      dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_length <= dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_length;
      dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_data <= dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_data;
      dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_mask <= dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_mask;
      dBusDecoder_io_outputs_0_downSizer_io_output_cmd_halfPipe_regs_payload_fragment_context <= dBusDecoder_io_outputs_0_downSizer_io_output_cmd_payload_fragment_context;
    end
    if(dBusDecoderToPeripheral_rsp_ready)begin
      dBusDecoderToPeripheral_rsp_m2sPipe_rData_last <= dBusDecoderToPeripheral_rsp_payload_last;
      dBusDecoderToPeripheral_rsp_m2sPipe_rData_fragment_opcode <= dBusDecoderToPeripheral_rsp_payload_fragment_opcode;
      dBusDecoderToPeripheral_rsp_m2sPipe_rData_fragment_data <= dBusDecoderToPeripheral_rsp_payload_fragment_data;
      dBusDecoderToPeripheral_rsp_m2sPipe_rData_fragment_context <= dBusDecoderToPeripheral_rsp_payload_fragment_context;
    end
    if(_zz_31)begin
      peripheralArbiter_io_output_cmd_m2sPipe_rData_last <= peripheralArbiter_io_output_cmd_payload_last;
      peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_source <= peripheralArbiter_io_output_cmd_payload_fragment_source;
      peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_opcode <= peripheralArbiter_io_output_cmd_payload_fragment_opcode;
      peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_address <= peripheralArbiter_io_output_cmd_payload_fragment_address;
      peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_length <= peripheralArbiter_io_output_cmd_payload_fragment_length;
      peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_data <= peripheralArbiter_io_output_cmd_payload_fragment_data;
      peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_mask <= peripheralArbiter_io_output_cmd_payload_fragment_mask;
      peripheralArbiter_io_output_cmd_m2sPipe_rData_fragment_context <= peripheralArbiter_io_output_cmd_payload_fragment_context;
    end
    if(_zz_37)begin
      dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_last <= dBusDecoder_io_outputs_1_cmd_payload_last;
      dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_opcode <= dBusDecoder_io_outputs_1_cmd_payload_fragment_opcode;
      dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_address <= dBusDecoder_io_outputs_1_cmd_payload_fragment_address;
      dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_length <= dBusDecoder_io_outputs_1_cmd_payload_fragment_length;
      dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_data <= dBusDecoder_io_outputs_1_cmd_payload_fragment_data;
      dBusDecoder_io_outputs_1_cmd_s2mPipe_rData_fragment_mask <= dBusDecoder_io_outputs_1_cmd_payload_fragment_mask;
    end
    if(dBusDecoder_io_outputs_1_cmd_s2mPipe_ready)begin
      dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_last <= dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_last;
      dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_opcode <= dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_opcode;
      dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_address <= dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_address;
      dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_length <= dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_length;
      dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_data <= dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_data;
      dBusDecoder_io_outputs_1_cmd_s2mPipe_m2sPipe_rData_fragment_mask <= dBusDecoder_io_outputs_1_cmd_s2mPipe_payload_fragment_mask;
    end
    if(_zz_15)begin
      _zz_18 <= dBusDemux_io_input_rsp_payload_last;
      _zz_19 <= dBusDemux_io_input_rsp_payload_fragment_opcode;
      _zz_20 <= dBusDemux_io_input_rsp_payload_fragment_data;
    end
    case(_zz_32)
      16'hbff8 : begin
      end
      16'hbffc : begin
      end
      16'h4000 : begin
        if(_zz_1)begin
          clint_harts_0_cmp[31 : 0] <= _zz_43;
        end
      end
      16'h4004 : begin
        if(_zz_1)begin
          clint_harts_0_cmp[63 : 32] <= _zz_45;
        end
      end
      16'h0 : begin
      end
      default : begin
      end
    endcase
  end


endmodule

module BmbToLiteDram_1 (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  input      [63:0]   io_input_cmd_payload_fragment_data,
  input      [7:0]    io_input_cmd_payload_fragment_mask,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [63:0]   io_input_rsp_payload_fragment_data,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_we,
  output     [31:0]   io_output_cmd_payload_addr,
  output              io_output_wdata_valid,
  input               io_output_wdata_ready,
  output     [127:0]  io_output_wdata_payload_data,
  output     [15:0]   io_output_wdata_payload_we,
  input               io_output_rdata_valid,
  output              io_output_rdata_ready,
  input      [127:0]  io_output_rdata_payload_data,
  input               clk,
  input               reset
);
  wire                _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  wire       [0:0]    _zz_6;
  wire                _zz_7;
  wire                _zz_8;
  reg                 _zz_9;
  wire                _zz_10;
  wire                _zz_11;
  wire                _zz_12;
  wire                _zz_13;
  wire                _zz_14;
  wire                io_input_upSizer_io_input_cmd_ready;
  wire                io_input_upSizer_io_input_rsp_valid;
  wire                io_input_upSizer_io_input_rsp_payload_last;
  wire       [0:0]    io_input_upSizer_io_input_rsp_payload_fragment_opcode;
  wire       [63:0]   io_input_upSizer_io_input_rsp_payload_fragment_data;
  wire                io_input_upSizer_io_output_cmd_valid;
  wire                io_input_upSizer_io_output_cmd_payload_last;
  wire       [0:0]    io_input_upSizer_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   io_input_upSizer_io_output_cmd_payload_fragment_address;
  wire       [5:0]    io_input_upSizer_io_output_cmd_payload_fragment_length;
  wire       [127:0]  io_input_upSizer_io_output_cmd_payload_fragment_data;
  wire       [15:0]   io_input_upSizer_io_output_cmd_payload_fragment_mask;
  wire       [1:0]    io_input_upSizer_io_output_cmd_payload_fragment_context;
  wire                io_input_upSizer_io_output_rsp_ready;
  wire                io_input_upSizer_io_output_unburstify_io_input_cmd_ready;
  wire                io_input_upSizer_io_output_unburstify_io_input_rsp_valid;
  wire                io_input_upSizer_io_output_unburstify_io_input_rsp_payload_last;
  wire       [0:0]    io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_opcode;
  wire       [127:0]  io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_data;
  wire       [1:0]    io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_context;
  wire                io_input_upSizer_io_output_unburstify_io_output_cmd_valid;
  wire                io_input_upSizer_io_output_unburstify_io_output_cmd_payload_last;
  wire       [0:0]    io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_address;
  wire       [3:0]    io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_length;
  wire       [127:0]  io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_data;
  wire       [15:0]   io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_mask;
  wire       [3:0]    io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_context;
  wire                io_input_upSizer_io_output_unburstify_io_output_rsp_ready;
  wire                streamFork_4_io_input_ready;
  wire                streamFork_4_io_outputs_0_valid;
  wire                streamFork_4_io_outputs_0_payload_last;
  wire       [0:0]    streamFork_4_io_outputs_0_payload_fragment_opcode;
  wire       [31:0]   streamFork_4_io_outputs_0_payload_fragment_address;
  wire       [3:0]    streamFork_4_io_outputs_0_payload_fragment_length;
  wire       [127:0]  streamFork_4_io_outputs_0_payload_fragment_data;
  wire       [15:0]   streamFork_4_io_outputs_0_payload_fragment_mask;
  wire       [3:0]    streamFork_4_io_outputs_0_payload_fragment_context;
  wire                streamFork_4_io_outputs_1_valid;
  wire                streamFork_4_io_outputs_1_payload_last;
  wire       [0:0]    streamFork_4_io_outputs_1_payload_fragment_opcode;
  wire       [31:0]   streamFork_4_io_outputs_1_payload_fragment_address;
  wire       [3:0]    streamFork_4_io_outputs_1_payload_fragment_length;
  wire       [127:0]  streamFork_4_io_outputs_1_payload_fragment_data;
  wire       [15:0]   streamFork_4_io_outputs_1_payload_fragment_mask;
  wire       [3:0]    streamFork_4_io_outputs_1_payload_fragment_context;
  wire                streamFifoLowLatency_4_io_push_ready;
  wire                streamFifoLowLatency_4_io_pop_valid;
  wire       [127:0]  streamFifoLowLatency_4_io_pop_payload_data;
  wire       [15:0]   streamFifoLowLatency_4_io_pop_payload_we;
  wire       [5:0]    streamFifoLowLatency_4_io_occupancy;
  wire                cmdContext_fifo_io_push_ready;
  wire                cmdContext_fifo_io_pop_valid;
  wire       [3:0]    cmdContext_fifo_io_pop_payload_context;
  wire                cmdContext_fifo_io_pop_payload_isWrite;
  wire       [5:0]    cmdContext_fifo_io_occupancy;
  wire       [5:0]    cmdContext_fifo_io_availability;
  wire                io_output_rdata_fifo_io_push_ready;
  wire                io_output_rdata_fifo_io_pop_valid;
  wire       [127:0]  io_output_rdata_fifo_io_pop_payload_data;
  wire       [5:0]    io_output_rdata_fifo_io_occupancy;
  wire                _zz_15;
  wire       [27:0]   _zz_16;
  wire       [5:0]    _zz_17;
  wire       [0:0]    _zz_18;
  wire       [5:0]    _zz_19;
  wire       [0:0]    _zz_20;
  wire       [5:0]    _zz_21;
  reg        [5:0]    pendingRead;
  wire                halt;
  wire                _zz_1;
  wire                outputCmd_valid;
  wire                outputCmd_ready;
  wire                outputCmd_payload_we;
  wire       [31:0]   outputCmd_payload_addr;
  wire                _zz_2;
  wire                outputCmd_m2sPipe_valid;
  wire                outputCmd_m2sPipe_ready;
  wire                outputCmd_m2sPipe_payload_we;
  wire       [31:0]   outputCmd_m2sPipe_payload_addr;
  reg                 outputCmd_m2sPipe_rValid;
  reg                 outputCmd_m2sPipe_rData_we;
  reg        [31:0]   outputCmd_m2sPipe_rData_addr;
  reg                 streamFork_4_io_outputs_1_thrown_valid;
  wire                streamFork_4_io_outputs_1_thrown_ready;
  wire                streamFork_4_io_outputs_1_thrown_payload_last;
  wire       [0:0]    streamFork_4_io_outputs_1_thrown_payload_fragment_opcode;
  wire       [31:0]   streamFork_4_io_outputs_1_thrown_payload_fragment_address;
  wire       [3:0]    streamFork_4_io_outputs_1_thrown_payload_fragment_length;
  wire       [127:0]  streamFork_4_io_outputs_1_thrown_payload_fragment_data;
  wire       [15:0]   streamFork_4_io_outputs_1_thrown_payload_fragment_mask;
  wire       [3:0]    streamFork_4_io_outputs_1_thrown_payload_fragment_context;
  wire                cmdContext_valid;
  wire                cmdContext_ready;
  wire       [3:0]    cmdContext_payload_context;
  wire                cmdContext_payload_isWrite;
  reg                 writeTocken_incrementIt;
  reg                 writeTocken_decrementIt;
  wire       [5:0]    writeTocken_valueNext;
  reg        [5:0]    writeTocken_value;
  wire                writeTocken_willOverflowIfInc;
  wire                writeTocken_willOverflow;
  reg        [5:0]    writeTocken_finalIncrement;
  wire                canRspWrite;
  wire                canRspRead;

  assign _zz_15 = (streamFork_4_io_outputs_1_payload_fragment_opcode == 1'b0);
  assign _zz_16 = (streamFork_4_io_outputs_0_payload_fragment_address >>> 4);
  assign _zz_17 = (pendingRead + _zz_19);
  assign _zz_18 = ((outputCmd_valid && outputCmd_ready) && (! outputCmd_payload_we));
  assign _zz_19 = {5'd0, _zz_18};
  assign _zz_20 = (io_output_rdata_fifo_io_pop_valid && _zz_13);
  assign _zz_21 = {5'd0, _zz_20};
  BmbUpSizerBridge io_input_upSizer (
    .io_input_cmd_valid                        (io_input_cmd_valid                                                                ), //i
    .io_input_cmd_ready                        (io_input_upSizer_io_input_cmd_ready                                               ), //o
    .io_input_cmd_payload_last                 (io_input_cmd_payload_last                                                         ), //i
    .io_input_cmd_payload_fragment_opcode      (io_input_cmd_payload_fragment_opcode                                              ), //i
    .io_input_cmd_payload_fragment_address     (io_input_cmd_payload_fragment_address[31:0]                                       ), //i
    .io_input_cmd_payload_fragment_length      (io_input_cmd_payload_fragment_length[5:0]                                         ), //i
    .io_input_cmd_payload_fragment_data        (io_input_cmd_payload_fragment_data[63:0]                                          ), //i
    .io_input_cmd_payload_fragment_mask        (io_input_cmd_payload_fragment_mask[7:0]                                           ), //i
    .io_input_rsp_valid                        (io_input_upSizer_io_input_rsp_valid                                               ), //o
    .io_input_rsp_ready                        (io_input_rsp_ready                                                                ), //i
    .io_input_rsp_payload_last                 (io_input_upSizer_io_input_rsp_payload_last                                        ), //o
    .io_input_rsp_payload_fragment_opcode      (io_input_upSizer_io_input_rsp_payload_fragment_opcode                             ), //o
    .io_input_rsp_payload_fragment_data        (io_input_upSizer_io_input_rsp_payload_fragment_data[63:0]                         ), //o
    .io_output_cmd_valid                       (io_input_upSizer_io_output_cmd_valid                                              ), //o
    .io_output_cmd_ready                       (io_input_upSizer_io_output_unburstify_io_input_cmd_ready                          ), //i
    .io_output_cmd_payload_last                (io_input_upSizer_io_output_cmd_payload_last                                       ), //o
    .io_output_cmd_payload_fragment_opcode     (io_input_upSizer_io_output_cmd_payload_fragment_opcode                            ), //o
    .io_output_cmd_payload_fragment_address    (io_input_upSizer_io_output_cmd_payload_fragment_address[31:0]                     ), //o
    .io_output_cmd_payload_fragment_length     (io_input_upSizer_io_output_cmd_payload_fragment_length[5:0]                       ), //o
    .io_output_cmd_payload_fragment_data       (io_input_upSizer_io_output_cmd_payload_fragment_data[127:0]                       ), //o
    .io_output_cmd_payload_fragment_mask       (io_input_upSizer_io_output_cmd_payload_fragment_mask[15:0]                        ), //o
    .io_output_cmd_payload_fragment_context    (io_input_upSizer_io_output_cmd_payload_fragment_context[1:0]                      ), //o
    .io_output_rsp_valid                       (io_input_upSizer_io_output_unburstify_io_input_rsp_valid                          ), //i
    .io_output_rsp_ready                       (io_input_upSizer_io_output_rsp_ready                                              ), //o
    .io_output_rsp_payload_last                (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_last                   ), //i
    .io_output_rsp_payload_fragment_opcode     (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_opcode        ), //i
    .io_output_rsp_payload_fragment_data       (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_data[127:0]   ), //i
    .io_output_rsp_payload_fragment_context    (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_context[1:0]  ), //i
    .clk                                       (clk                                                                               ), //i
    .reset                                     (reset                                                                             )  //i
  );
  BmbUnburstify_1 io_input_upSizer_io_output_unburstify (
    .io_input_cmd_valid                        (io_input_upSizer_io_output_cmd_valid                                                ), //i
    .io_input_cmd_ready                        (io_input_upSizer_io_output_unburstify_io_input_cmd_ready                            ), //o
    .io_input_cmd_payload_last                 (io_input_upSizer_io_output_cmd_payload_last                                         ), //i
    .io_input_cmd_payload_fragment_opcode      (io_input_upSizer_io_output_cmd_payload_fragment_opcode                              ), //i
    .io_input_cmd_payload_fragment_address     (io_input_upSizer_io_output_cmd_payload_fragment_address[31:0]                       ), //i
    .io_input_cmd_payload_fragment_length      (io_input_upSizer_io_output_cmd_payload_fragment_length[5:0]                         ), //i
    .io_input_cmd_payload_fragment_data        (io_input_upSizer_io_output_cmd_payload_fragment_data[127:0]                         ), //i
    .io_input_cmd_payload_fragment_mask        (io_input_upSizer_io_output_cmd_payload_fragment_mask[15:0]                          ), //i
    .io_input_cmd_payload_fragment_context     (io_input_upSizer_io_output_cmd_payload_fragment_context[1:0]                        ), //i
    .io_input_rsp_valid                        (io_input_upSizer_io_output_unburstify_io_input_rsp_valid                            ), //o
    .io_input_rsp_ready                        (io_input_upSizer_io_output_rsp_ready                                                ), //i
    .io_input_rsp_payload_last                 (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_last                     ), //o
    .io_input_rsp_payload_fragment_opcode      (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_opcode          ), //o
    .io_input_rsp_payload_fragment_data        (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_data[127:0]     ), //o
    .io_input_rsp_payload_fragment_context     (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_context[1:0]    ), //o
    .io_output_cmd_valid                       (io_input_upSizer_io_output_unburstify_io_output_cmd_valid                           ), //o
    .io_output_cmd_ready                       (_zz_3                                                                               ), //i
    .io_output_cmd_payload_last                (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_last                    ), //o
    .io_output_cmd_payload_fragment_opcode     (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_opcode         ), //o
    .io_output_cmd_payload_fragment_address    (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_address[31:0]  ), //o
    .io_output_cmd_payload_fragment_length     (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_length[3:0]    ), //o
    .io_output_cmd_payload_fragment_data       (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_data[127:0]    ), //o
    .io_output_cmd_payload_fragment_mask       (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_mask[15:0]     ), //o
    .io_output_cmd_payload_fragment_context    (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_context[3:0]   ), //o
    .io_output_rsp_valid                       (_zz_4                                                                               ), //i
    .io_output_rsp_ready                       (io_input_upSizer_io_output_unburstify_io_output_rsp_ready                           ), //o
    .io_output_rsp_payload_last                (_zz_5                                                                               ), //i
    .io_output_rsp_payload_fragment_opcode     (_zz_6                                                                               ), //i
    .io_output_rsp_payload_fragment_data       (io_output_rdata_fifo_io_pop_payload_data[127:0]                                     ), //i
    .io_output_rsp_payload_fragment_context    (cmdContext_fifo_io_pop_payload_context[3:0]                                         ), //i
    .clk                                       (clk                                                                                 ), //i
    .reset                                     (reset                                                                               )  //i
  );
  StreamFork_3 streamFork_4 (
    .io_input_valid                           (_zz_7                                                                               ), //i
    .io_input_ready                           (streamFork_4_io_input_ready                                                         ), //o
    .io_input_payload_last                    (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_last                    ), //i
    .io_input_payload_fragment_opcode         (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_opcode         ), //i
    .io_input_payload_fragment_address        (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_address[31:0]  ), //i
    .io_input_payload_fragment_length         (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_length[3:0]    ), //i
    .io_input_payload_fragment_data           (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_data[127:0]    ), //i
    .io_input_payload_fragment_mask           (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_mask[15:0]     ), //i
    .io_input_payload_fragment_context        (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_context[3:0]   ), //i
    .io_outputs_0_valid                       (streamFork_4_io_outputs_0_valid                                                     ), //o
    .io_outputs_0_ready                       (_zz_8                                                                               ), //i
    .io_outputs_0_payload_last                (streamFork_4_io_outputs_0_payload_last                                              ), //o
    .io_outputs_0_payload_fragment_opcode     (streamFork_4_io_outputs_0_payload_fragment_opcode                                   ), //o
    .io_outputs_0_payload_fragment_address    (streamFork_4_io_outputs_0_payload_fragment_address[31:0]                            ), //o
    .io_outputs_0_payload_fragment_length     (streamFork_4_io_outputs_0_payload_fragment_length[3:0]                              ), //o
    .io_outputs_0_payload_fragment_data       (streamFork_4_io_outputs_0_payload_fragment_data[127:0]                              ), //o
    .io_outputs_0_payload_fragment_mask       (streamFork_4_io_outputs_0_payload_fragment_mask[15:0]                               ), //o
    .io_outputs_0_payload_fragment_context    (streamFork_4_io_outputs_0_payload_fragment_context[3:0]                             ), //o
    .io_outputs_1_valid                       (streamFork_4_io_outputs_1_valid                                                     ), //o
    .io_outputs_1_ready                       (_zz_9                                                                               ), //i
    .io_outputs_1_payload_last                (streamFork_4_io_outputs_1_payload_last                                              ), //o
    .io_outputs_1_payload_fragment_opcode     (streamFork_4_io_outputs_1_payload_fragment_opcode                                   ), //o
    .io_outputs_1_payload_fragment_address    (streamFork_4_io_outputs_1_payload_fragment_address[31:0]                            ), //o
    .io_outputs_1_payload_fragment_length     (streamFork_4_io_outputs_1_payload_fragment_length[3:0]                              ), //o
    .io_outputs_1_payload_fragment_data       (streamFork_4_io_outputs_1_payload_fragment_data[127:0]                              ), //o
    .io_outputs_1_payload_fragment_mask       (streamFork_4_io_outputs_1_payload_fragment_mask[15:0]                               ), //o
    .io_outputs_1_payload_fragment_context    (streamFork_4_io_outputs_1_payload_fragment_context[3:0]                             ), //o
    .clk                                      (clk                                                                                 ), //i
    .reset                                    (reset                                                                               )  //i
  );
  StreamFifoLowLatency_2 streamFifoLowLatency_4 (
    .io_push_valid           (streamFork_4_io_outputs_1_thrown_valid                  ), //i
    .io_push_ready           (streamFifoLowLatency_4_io_push_ready                    ), //o
    .io_push_payload_data    (streamFork_4_io_outputs_1_payload_fragment_data[127:0]  ), //i
    .io_push_payload_we      (streamFork_4_io_outputs_1_payload_fragment_mask[15:0]   ), //i
    .io_pop_valid            (streamFifoLowLatency_4_io_pop_valid                     ), //o
    .io_pop_ready            (io_output_wdata_ready                                   ), //i
    .io_pop_payload_data     (streamFifoLowLatency_4_io_pop_payload_data[127:0]       ), //o
    .io_pop_payload_we       (streamFifoLowLatency_4_io_pop_payload_we[15:0]          ), //o
    .io_flush                (_zz_10                                                  ), //i
    .io_occupancy            (streamFifoLowLatency_4_io_occupancy[5:0]                ), //o
    .clk                     (clk                                                     ), //i
    .reset                   (reset                                                   )  //i
  );
  StreamFifo_2 cmdContext_fifo (
    .io_push_valid              (cmdContext_valid                             ), //i
    .io_push_ready              (cmdContext_fifo_io_push_ready                ), //o
    .io_push_payload_context    (cmdContext_payload_context[3:0]              ), //i
    .io_push_payload_isWrite    (cmdContext_payload_isWrite                   ), //i
    .io_pop_valid               (cmdContext_fifo_io_pop_valid                 ), //o
    .io_pop_ready               (_zz_11                                       ), //i
    .io_pop_payload_context     (cmdContext_fifo_io_pop_payload_context[3:0]  ), //o
    .io_pop_payload_isWrite     (cmdContext_fifo_io_pop_payload_isWrite       ), //o
    .io_flush                   (_zz_12                                       ), //i
    .io_occupancy               (cmdContext_fifo_io_occupancy[5:0]            ), //o
    .io_availability            (cmdContext_fifo_io_availability[5:0]         ), //o
    .clk                        (clk                                          ), //i
    .reset                      (reset                                        )  //i
  );
  StreamFifoLowLatency_1 io_output_rdata_fifo (
    .io_push_valid           (io_output_rdata_valid                            ), //i
    .io_push_ready           (io_output_rdata_fifo_io_push_ready               ), //o
    .io_push_payload_data    (io_output_rdata_payload_data[127:0]              ), //i
    .io_pop_valid            (io_output_rdata_fifo_io_pop_valid                ), //o
    .io_pop_ready            (_zz_13                                           ), //i
    .io_pop_payload_data     (io_output_rdata_fifo_io_pop_payload_data[127:0]  ), //o
    .io_flush                (_zz_14                                           ), //i
    .io_occupancy            (io_output_rdata_fifo_io_occupancy[5:0]           ), //o
    .clk                     (clk                                              ), //i
    .reset                   (reset                                            )  //i
  );
  assign io_input_cmd_ready = io_input_upSizer_io_input_cmd_ready;
  assign io_input_rsp_valid = io_input_upSizer_io_input_rsp_valid;
  assign io_input_rsp_payload_last = io_input_upSizer_io_input_rsp_payload_last;
  assign io_input_rsp_payload_fragment_opcode = io_input_upSizer_io_input_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_input_upSizer_io_input_rsp_payload_fragment_data;
  assign _zz_1 = (! halt);
  assign _zz_3 = (streamFork_4_io_input_ready && _zz_1);
  assign _zz_7 = (io_input_upSizer_io_output_unburstify_io_output_cmd_valid && _zz_1);
  assign _zz_2 = (! pendingRead[5]);
  assign _zz_8 = (outputCmd_ready && _zz_2);
  assign outputCmd_valid = (streamFork_4_io_outputs_0_valid && _zz_2);
  assign outputCmd_payload_addr = {4'd0, _zz_16};
  assign outputCmd_payload_we = (streamFork_4_io_outputs_0_payload_fragment_opcode == 1'b1);
  assign outputCmd_ready = ((1'b1 && (! outputCmd_m2sPipe_valid)) || outputCmd_m2sPipe_ready);
  assign outputCmd_m2sPipe_valid = outputCmd_m2sPipe_rValid;
  assign outputCmd_m2sPipe_payload_we = outputCmd_m2sPipe_rData_we;
  assign outputCmd_m2sPipe_payload_addr = outputCmd_m2sPipe_rData_addr;
  assign io_output_cmd_valid = outputCmd_m2sPipe_valid;
  assign outputCmd_m2sPipe_ready = io_output_cmd_ready;
  assign io_output_cmd_payload_we = outputCmd_m2sPipe_payload_we;
  assign io_output_cmd_payload_addr = outputCmd_m2sPipe_payload_addr;
  always @ (*) begin
    streamFork_4_io_outputs_1_thrown_valid = streamFork_4_io_outputs_1_valid;
    if(_zz_15)begin
      streamFork_4_io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_9 = streamFork_4_io_outputs_1_thrown_ready;
    if(_zz_15)begin
      _zz_9 = 1'b1;
    end
  end

  assign streamFork_4_io_outputs_1_thrown_payload_last = streamFork_4_io_outputs_1_payload_last;
  assign streamFork_4_io_outputs_1_thrown_payload_fragment_opcode = streamFork_4_io_outputs_1_payload_fragment_opcode;
  assign streamFork_4_io_outputs_1_thrown_payload_fragment_address = streamFork_4_io_outputs_1_payload_fragment_address;
  assign streamFork_4_io_outputs_1_thrown_payload_fragment_length = streamFork_4_io_outputs_1_payload_fragment_length;
  assign streamFork_4_io_outputs_1_thrown_payload_fragment_data = streamFork_4_io_outputs_1_payload_fragment_data;
  assign streamFork_4_io_outputs_1_thrown_payload_fragment_mask = streamFork_4_io_outputs_1_payload_fragment_mask;
  assign streamFork_4_io_outputs_1_thrown_payload_fragment_context = streamFork_4_io_outputs_1_payload_fragment_context;
  assign streamFork_4_io_outputs_1_thrown_ready = streamFifoLowLatency_4_io_push_ready;
  assign io_output_wdata_valid = streamFifoLowLatency_4_io_pop_valid;
  assign io_output_wdata_payload_data = streamFifoLowLatency_4_io_pop_payload_data;
  assign io_output_wdata_payload_we = streamFifoLowLatency_4_io_pop_payload_we;
  assign cmdContext_valid = (io_input_upSizer_io_output_unburstify_io_output_cmd_valid && _zz_3);
  assign cmdContext_payload_context = io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_context;
  assign cmdContext_payload_isWrite = (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_opcode == 1'b1);
  assign halt = (! cmdContext_ready);
  assign cmdContext_ready = cmdContext_fifo_io_push_ready;
  assign io_output_rdata_ready = io_output_rdata_fifo_io_push_ready;
  always @ (*) begin
    writeTocken_incrementIt = 1'b0;
    if((io_output_wdata_valid && io_output_wdata_ready))begin
      writeTocken_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    writeTocken_decrementIt = 1'b0;
    if(((cmdContext_fifo_io_pop_valid && _zz_11) && cmdContext_fifo_io_pop_payload_isWrite))begin
      writeTocken_decrementIt = 1'b1;
    end
  end

  assign writeTocken_willOverflowIfInc = ((writeTocken_value == 6'h3f) && (! writeTocken_decrementIt));
  assign writeTocken_willOverflow = (writeTocken_willOverflowIfInc && writeTocken_incrementIt);
  always @ (*) begin
    if((writeTocken_incrementIt && (! writeTocken_decrementIt)))begin
      writeTocken_finalIncrement = 6'h01;
    end else begin
      if(((! writeTocken_incrementIt) && writeTocken_decrementIt))begin
        writeTocken_finalIncrement = 6'h3f;
      end else begin
        writeTocken_finalIncrement = 6'h0;
      end
    end
  end

  assign writeTocken_valueNext = (writeTocken_value + writeTocken_finalIncrement);
  assign canRspWrite = (writeTocken_value != 6'h0);
  assign canRspRead = io_output_rdata_fifo_io_pop_valid;
  assign _zz_13 = ((_zz_4 && io_input_upSizer_io_output_unburstify_io_output_rsp_ready) && (! cmdContext_fifo_io_pop_payload_isWrite));
  assign _zz_11 = (_zz_4 && io_input_upSizer_io_output_unburstify_io_output_rsp_ready);
  assign _zz_4 = (cmdContext_fifo_io_pop_valid && (cmdContext_fifo_io_pop_payload_isWrite ? canRspWrite : canRspRead));
  assign _zz_6 = 1'b0;
  assign _zz_5 = 1'b1;
  assign _zz_10 = 1'b0;
  assign _zz_12 = 1'b0;
  assign _zz_14 = 1'b0;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pendingRead <= 6'h0;
      outputCmd_m2sPipe_rValid <= 1'b0;
      writeTocken_value <= 6'h0;
    end else begin
      if(outputCmd_ready)begin
        outputCmd_m2sPipe_rValid <= outputCmd_valid;
      end
      writeTocken_value <= writeTocken_valueNext;
      pendingRead <= (_zz_17 - _zz_21);
    end
  end

  always @ (posedge clk) begin
    if(outputCmd_ready)begin
      outputCmd_m2sPipe_rData_we <= outputCmd_payload_we;
      outputCmd_m2sPipe_rData_addr <= outputCmd_payload_addr;
    end
  end


endmodule

module BmbSourceDecoder (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  input      [63:0]   io_input_cmd_payload_fragment_data,
  input      [7:0]    io_input_cmd_payload_fragment_mask,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [63:0]   io_input_rsp_payload_fragment_data,
  output              io_outputs_0_cmd_valid,
  input               io_outputs_0_cmd_ready,
  output              io_outputs_0_cmd_payload_last,
  output     [0:0]    io_outputs_0_cmd_payload_fragment_opcode,
  output     [31:0]   io_outputs_0_cmd_payload_fragment_address,
  output     [5:0]    io_outputs_0_cmd_payload_fragment_length,
  output     [63:0]   io_outputs_0_cmd_payload_fragment_data,
  output     [7:0]    io_outputs_0_cmd_payload_fragment_mask,
  input               io_outputs_0_rsp_valid,
  output              io_outputs_0_rsp_ready,
  input               io_outputs_0_rsp_payload_last,
  input      [0:0]    io_outputs_0_rsp_payload_fragment_opcode,
  input      [63:0]   io_outputs_0_rsp_payload_fragment_data,
  input               clk,
  input               reset
);
  wire                streamDemux_1_io_input_ready;
  wire                streamDemux_1_io_outputs_0_valid;
  wire                streamDemux_1_io_outputs_0_payload_last;
  wire       [0:0]    streamDemux_1_io_outputs_0_payload_fragment_opcode;
  wire       [31:0]   streamDemux_1_io_outputs_0_payload_fragment_address;
  wire       [5:0]    streamDemux_1_io_outputs_0_payload_fragment_length;
  wire       [63:0]   streamDemux_1_io_outputs_0_payload_fragment_data;
  wire       [7:0]    streamDemux_1_io_outputs_0_payload_fragment_mask;
  wire                arbiter_io_inputs_0_ready;
  wire                arbiter_io_output_valid;
  wire                arbiter_io_output_payload_last;
  wire       [0:0]    arbiter_io_output_payload_fragment_opcode;
  wire       [63:0]   arbiter_io_output_payload_fragment_data;
  wire       [0:0]    arbiter_io_chosenOH;

  StreamDemux streamDemux_1 (
    .io_input_valid                           (io_input_cmd_valid                                         ), //i
    .io_input_ready                           (streamDemux_1_io_input_ready                               ), //o
    .io_input_payload_last                    (io_input_cmd_payload_last                                  ), //i
    .io_input_payload_fragment_opcode         (io_input_cmd_payload_fragment_opcode                       ), //i
    .io_input_payload_fragment_address        (io_input_cmd_payload_fragment_address[31:0]                ), //i
    .io_input_payload_fragment_length         (io_input_cmd_payload_fragment_length[5:0]                  ), //i
    .io_input_payload_fragment_data           (io_input_cmd_payload_fragment_data[63:0]                   ), //i
    .io_input_payload_fragment_mask           (io_input_cmd_payload_fragment_mask[7:0]                    ), //i
    .io_outputs_0_valid                       (streamDemux_1_io_outputs_0_valid                           ), //o
    .io_outputs_0_ready                       (io_outputs_0_cmd_ready                                     ), //i
    .io_outputs_0_payload_last                (streamDemux_1_io_outputs_0_payload_last                    ), //o
    .io_outputs_0_payload_fragment_opcode     (streamDemux_1_io_outputs_0_payload_fragment_opcode         ), //o
    .io_outputs_0_payload_fragment_address    (streamDemux_1_io_outputs_0_payload_fragment_address[31:0]  ), //o
    .io_outputs_0_payload_fragment_length     (streamDemux_1_io_outputs_0_payload_fragment_length[5:0]    ), //o
    .io_outputs_0_payload_fragment_data       (streamDemux_1_io_outputs_0_payload_fragment_data[63:0]     ), //o
    .io_outputs_0_payload_fragment_mask       (streamDemux_1_io_outputs_0_payload_fragment_mask[7:0]      )  //o
  );
  StreamArbiter_3 arbiter (
    .io_inputs_0_valid                      (io_outputs_0_rsp_valid                         ), //i
    .io_inputs_0_ready                      (arbiter_io_inputs_0_ready                      ), //o
    .io_inputs_0_payload_last               (io_outputs_0_rsp_payload_last                  ), //i
    .io_inputs_0_payload_fragment_opcode    (io_outputs_0_rsp_payload_fragment_opcode       ), //i
    .io_inputs_0_payload_fragment_data      (io_outputs_0_rsp_payload_fragment_data[63:0]   ), //i
    .io_output_valid                        (arbiter_io_output_valid                        ), //o
    .io_output_ready                        (io_input_rsp_ready                             ), //i
    .io_output_payload_last                 (arbiter_io_output_payload_last                 ), //o
    .io_output_payload_fragment_opcode      (arbiter_io_output_payload_fragment_opcode      ), //o
    .io_output_payload_fragment_data        (arbiter_io_output_payload_fragment_data[63:0]  ), //o
    .io_chosenOH                            (arbiter_io_chosenOH                            ), //o
    .clk                                    (clk                                            ), //i
    .reset                                  (reset                                          )  //i
  );
  assign io_input_cmd_ready = streamDemux_1_io_input_ready;
  assign io_outputs_0_cmd_valid = streamDemux_1_io_outputs_0_valid;
  assign io_outputs_0_cmd_payload_last = streamDemux_1_io_outputs_0_payload_last;
  assign io_outputs_0_cmd_payload_fragment_opcode = streamDemux_1_io_outputs_0_payload_fragment_opcode;
  assign io_outputs_0_cmd_payload_fragment_address = streamDemux_1_io_outputs_0_payload_fragment_address;
  assign io_outputs_0_cmd_payload_fragment_length = streamDemux_1_io_outputs_0_payload_fragment_length;
  assign io_outputs_0_cmd_payload_fragment_data = streamDemux_1_io_outputs_0_payload_fragment_data;
  assign io_outputs_0_cmd_payload_fragment_mask = streamDemux_1_io_outputs_0_payload_fragment_mask;
  assign io_outputs_0_rsp_ready = arbiter_io_inputs_0_ready;
  assign io_input_rsp_valid = arbiter_io_output_valid;
  assign io_input_rsp_payload_last = arbiter_io_output_payload_last;
  assign io_input_rsp_payload_fragment_opcode = arbiter_io_output_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = arbiter_io_output_payload_fragment_data;

endmodule

module BmbToWishbone (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_source,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  input      [31:0]   io_input_cmd_payload_fragment_data,
  input      [3:0]    io_input_cmd_payload_fragment_mask,
  input      [1:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_source,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output     [1:0]    io_input_rsp_payload_fragment_context,
  output              io_output_CYC,
  output              io_output_STB,
  input               io_output_ACK,
  output              io_output_WE,
  output     [29:0]   io_output_ADR,
  input      [31:0]   io_output_DAT_MISO,
  output     [31:0]   io_output_DAT_MOSI,
  output     [3:0]    io_output_SEL,
  input               io_output_ERR,
  output     [2:0]    io_output_CTI,
  output     [1:0]    io_output_BTE,
  input               clk,
  input               reset
);
  wire       [11:0]   _zz_2;
  wire       [11:0]   _zz_3;
  wire       [11:0]   _zz_4;
  wire       [5:0]    _zz_5;
  wire       [11:0]   _zz_6;
  reg        [3:0]    beatCounter;
  wire                beatLast;
  reg                 io_input_cmd_payload_first;
  reg                 _zz_1;
  reg        [31:0]   io_output_DAT_MISO_regNext;
  reg        [0:0]    io_input_cmd_payload_fragment_source_regNext;
  reg        [1:0]    io_input_cmd_payload_fragment_context_regNext;
  reg                 beatLast_regNext;

  assign _zz_2 = (_zz_4 + _zz_6);
  assign _zz_3 = io_input_cmd_payload_fragment_address[11 : 0];
  assign _zz_4 = _zz_3;
  assign _zz_5 = ({2'd0,beatCounter} <<< 2);
  assign _zz_6 = {6'd0, _zz_5};
  assign beatLast = (beatCounter == io_input_cmd_payload_fragment_length[5 : 2]);
  assign io_output_ADR = ({io_input_cmd_payload_fragment_address[31 : 12],_zz_2} >>> 2);
  assign io_output_CTI = (io_input_cmd_payload_last ? (io_input_cmd_payload_first ? 3'b000 : 3'b111) : 3'b010);
  assign io_output_BTE = 2'b00;
  assign io_output_SEL = ((io_input_cmd_payload_fragment_opcode == 1'b1) ? io_input_cmd_payload_fragment_mask : 4'b1111);
  assign io_output_WE = (io_input_cmd_payload_fragment_opcode == 1'b1);
  assign io_output_DAT_MOSI = io_input_cmd_payload_fragment_data;
  assign io_input_cmd_ready = (io_output_ACK && ((io_input_cmd_payload_fragment_opcode == 1'b1) || beatLast));
  assign io_output_CYC = io_input_cmd_valid;
  assign io_output_STB = io_input_cmd_valid;
  assign io_input_rsp_valid = _zz_1;
  assign io_input_rsp_payload_fragment_data = io_output_DAT_MISO_regNext;
  assign io_input_rsp_payload_fragment_source = io_input_cmd_payload_fragment_source_regNext;
  assign io_input_rsp_payload_fragment_context = io_input_cmd_payload_fragment_context_regNext;
  assign io_input_rsp_payload_last = beatLast_regNext;
  assign io_input_rsp_payload_fragment_opcode = 1'b0;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      beatCounter <= 4'b0000;
      io_input_cmd_payload_first <= 1'b1;
      _zz_1 <= 1'b0;
    end else begin
      if((io_input_cmd_valid && io_output_ACK))begin
        beatCounter <= (beatCounter + 4'b0001);
        if((io_input_cmd_ready && io_input_cmd_payload_last))begin
          beatCounter <= 4'b0000;
        end
      end
      if((io_input_cmd_valid && io_input_cmd_ready))begin
        io_input_cmd_payload_first <= io_input_cmd_payload_last;
      end
      _zz_1 <= ((io_input_cmd_valid && io_output_ACK) && ((io_input_cmd_payload_fragment_opcode == 1'b0) || beatLast));
    end
  end

  always @ (posedge clk) begin
    io_output_DAT_MISO_regNext <= io_output_DAT_MISO;
    io_input_cmd_payload_fragment_source_regNext <= io_input_cmd_payload_fragment_source;
    io_input_cmd_payload_fragment_context_regNext <= io_input_cmd_payload_fragment_context;
    beatLast_regNext <= beatLast;
  end


endmodule

module BmbArbiter_1 (
  input               io_inputs_0_cmd_valid,
  output              io_inputs_0_cmd_ready,
  input               io_inputs_0_cmd_payload_last,
  input      [0:0]    io_inputs_0_cmd_payload_fragment_opcode,
  input      [31:0]   io_inputs_0_cmd_payload_fragment_address,
  input      [5:0]    io_inputs_0_cmd_payload_fragment_length,
  input      [31:0]   io_inputs_0_cmd_payload_fragment_data,
  input      [3:0]    io_inputs_0_cmd_payload_fragment_mask,
  input      [1:0]    io_inputs_0_cmd_payload_fragment_context,
  output              io_inputs_0_rsp_valid,
  input               io_inputs_0_rsp_ready,
  output              io_inputs_0_rsp_payload_last,
  output     [0:0]    io_inputs_0_rsp_payload_fragment_opcode,
  output     [31:0]   io_inputs_0_rsp_payload_fragment_data,
  output     [1:0]    io_inputs_0_rsp_payload_fragment_context,
  input               io_inputs_1_cmd_valid,
  output              io_inputs_1_cmd_ready,
  input               io_inputs_1_cmd_payload_last,
  input      [0:0]    io_inputs_1_cmd_payload_fragment_opcode,
  input      [31:0]   io_inputs_1_cmd_payload_fragment_address,
  input      [5:0]    io_inputs_1_cmd_payload_fragment_length,
  input      [31:0]   io_inputs_1_cmd_payload_fragment_data,
  input      [3:0]    io_inputs_1_cmd_payload_fragment_mask,
  input      [1:0]    io_inputs_1_cmd_payload_fragment_context,
  output              io_inputs_1_rsp_valid,
  input               io_inputs_1_rsp_ready,
  output              io_inputs_1_rsp_payload_last,
  output     [0:0]    io_inputs_1_rsp_payload_fragment_opcode,
  output     [31:0]   io_inputs_1_rsp_payload_fragment_data,
  output     [1:0]    io_inputs_1_rsp_payload_fragment_context,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_source,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [31:0]   io_output_cmd_payload_fragment_address,
  output     [5:0]    io_output_cmd_payload_fragment_length,
  output     [31:0]   io_output_cmd_payload_fragment_data,
  output     [3:0]    io_output_cmd_payload_fragment_mask,
  output     [1:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_source,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [1:0]    io_output_rsp_payload_fragment_context,
  input               clk,
  input               reset
);
  wire       [0:0]    _zz_1;
  wire       [0:0]    _zz_2;
  reg                 _zz_3;
  wire                memory_arbiter_io_inputs_0_ready;
  wire                memory_arbiter_io_inputs_1_ready;
  wire                memory_arbiter_io_output_valid;
  wire                memory_arbiter_io_output_payload_last;
  wire       [0:0]    memory_arbiter_io_output_payload_fragment_source;
  wire       [0:0]    memory_arbiter_io_output_payload_fragment_opcode;
  wire       [31:0]   memory_arbiter_io_output_payload_fragment_address;
  wire       [5:0]    memory_arbiter_io_output_payload_fragment_length;
  wire       [31:0]   memory_arbiter_io_output_payload_fragment_data;
  wire       [3:0]    memory_arbiter_io_output_payload_fragment_mask;
  wire       [1:0]    memory_arbiter_io_output_payload_fragment_context;
  wire       [0:0]    memory_arbiter_io_chosen;
  wire       [1:0]    memory_arbiter_io_chosenOH;
  wire       [0:0]    memory_rspSel;

  StreamArbiter_2 memory_arbiter (
    .io_inputs_0_valid                       (io_inputs_0_cmd_valid                                    ), //i
    .io_inputs_0_ready                       (memory_arbiter_io_inputs_0_ready                         ), //o
    .io_inputs_0_payload_last                (io_inputs_0_cmd_payload_last                             ), //i
    .io_inputs_0_payload_fragment_source     (_zz_1                                                    ), //i
    .io_inputs_0_payload_fragment_opcode     (io_inputs_0_cmd_payload_fragment_opcode                  ), //i
    .io_inputs_0_payload_fragment_address    (io_inputs_0_cmd_payload_fragment_address[31:0]           ), //i
    .io_inputs_0_payload_fragment_length     (io_inputs_0_cmd_payload_fragment_length[5:0]             ), //i
    .io_inputs_0_payload_fragment_data       (io_inputs_0_cmd_payload_fragment_data[31:0]              ), //i
    .io_inputs_0_payload_fragment_mask       (io_inputs_0_cmd_payload_fragment_mask[3:0]               ), //i
    .io_inputs_0_payload_fragment_context    (io_inputs_0_cmd_payload_fragment_context[1:0]            ), //i
    .io_inputs_1_valid                       (io_inputs_1_cmd_valid                                    ), //i
    .io_inputs_1_ready                       (memory_arbiter_io_inputs_1_ready                         ), //o
    .io_inputs_1_payload_last                (io_inputs_1_cmd_payload_last                             ), //i
    .io_inputs_1_payload_fragment_source     (_zz_2                                                    ), //i
    .io_inputs_1_payload_fragment_opcode     (io_inputs_1_cmd_payload_fragment_opcode                  ), //i
    .io_inputs_1_payload_fragment_address    (io_inputs_1_cmd_payload_fragment_address[31:0]           ), //i
    .io_inputs_1_payload_fragment_length     (io_inputs_1_cmd_payload_fragment_length[5:0]             ), //i
    .io_inputs_1_payload_fragment_data       (io_inputs_1_cmd_payload_fragment_data[31:0]              ), //i
    .io_inputs_1_payload_fragment_mask       (io_inputs_1_cmd_payload_fragment_mask[3:0]               ), //i
    .io_inputs_1_payload_fragment_context    (io_inputs_1_cmd_payload_fragment_context[1:0]            ), //i
    .io_output_valid                         (memory_arbiter_io_output_valid                           ), //o
    .io_output_ready                         (io_output_cmd_ready                                      ), //i
    .io_output_payload_last                  (memory_arbiter_io_output_payload_last                    ), //o
    .io_output_payload_fragment_source       (memory_arbiter_io_output_payload_fragment_source         ), //o
    .io_output_payload_fragment_opcode       (memory_arbiter_io_output_payload_fragment_opcode         ), //o
    .io_output_payload_fragment_address      (memory_arbiter_io_output_payload_fragment_address[31:0]  ), //o
    .io_output_payload_fragment_length       (memory_arbiter_io_output_payload_fragment_length[5:0]    ), //o
    .io_output_payload_fragment_data         (memory_arbiter_io_output_payload_fragment_data[31:0]     ), //o
    .io_output_payload_fragment_mask         (memory_arbiter_io_output_payload_fragment_mask[3:0]      ), //o
    .io_output_payload_fragment_context      (memory_arbiter_io_output_payload_fragment_context[1:0]   ), //o
    .io_chosen                               (memory_arbiter_io_chosen                                 ), //o
    .io_chosenOH                             (memory_arbiter_io_chosenOH[1:0]                          ), //o
    .clk                                     (clk                                                      ), //i
    .reset                                   (reset                                                    )  //i
  );
  always @(*) begin
    case(memory_rspSel)
      1'b0 : begin
        _zz_3 = io_inputs_0_rsp_ready;
      end
      default : begin
        _zz_3 = io_inputs_1_rsp_ready;
      end
    endcase
  end

  assign io_inputs_0_cmd_ready = memory_arbiter_io_inputs_0_ready;
  assign _zz_1 = 1'b0;
  assign io_inputs_1_cmd_ready = memory_arbiter_io_inputs_1_ready;
  assign _zz_2 = 1'b0;
  assign io_output_cmd_valid = memory_arbiter_io_output_valid;
  assign io_output_cmd_payload_last = memory_arbiter_io_output_payload_last;
  assign io_output_cmd_payload_fragment_opcode = memory_arbiter_io_output_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = memory_arbiter_io_output_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = memory_arbiter_io_output_payload_fragment_length;
  assign io_output_cmd_payload_fragment_data = memory_arbiter_io_output_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = memory_arbiter_io_output_payload_fragment_mask;
  assign io_output_cmd_payload_fragment_context = memory_arbiter_io_output_payload_fragment_context;
  assign io_output_cmd_payload_fragment_source[0 : 0] = memory_arbiter_io_chosen;
  assign memory_rspSel = io_output_rsp_payload_fragment_source[0 : 0];
  assign io_inputs_0_rsp_valid = (io_output_rsp_valid && (memory_rspSel == 1'b0));
  assign io_inputs_0_rsp_payload_last = io_output_rsp_payload_last;
  assign io_inputs_0_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_inputs_0_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_inputs_0_rsp_payload_fragment_context = io_output_rsp_payload_fragment_context;
  assign io_inputs_1_rsp_valid = (io_output_rsp_valid && (memory_rspSel == 1'b1));
  assign io_inputs_1_rsp_payload_last = io_output_rsp_payload_last;
  assign io_inputs_1_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_inputs_1_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_inputs_1_rsp_payload_fragment_context = io_output_rsp_payload_fragment_context;
  assign io_output_rsp_ready = _zz_3;

endmodule

module BmbDownSizerBridge_1 (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  input      [63:0]   io_input_cmd_payload_fragment_data,
  input      [7:0]    io_input_cmd_payload_fragment_mask,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [63:0]   io_input_rsp_payload_fragment_data,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [31:0]   io_output_cmd_payload_fragment_address,
  output     [5:0]    io_output_cmd_payload_fragment_length,
  output     [31:0]   io_output_cmd_payload_fragment_data,
  output     [3:0]    io_output_cmd_payload_fragment_mask,
  output     [0:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [0:0]    io_output_rsp_payload_fragment_context,
  input               clk,
  input               reset
);
  reg        [31:0]   _zz_1;
  reg        [3:0]    _zz_2;
  wire       [31:0]   _zz_3;
  wire       [31:0]   _zz_4;
  wire       [0:0]    cmdArea_context_sel;
  reg                 cmdArea_writeLogic_locked;
  reg        [0:0]    cmdArea_writeLogic_counter;
  wire       [0:0]    cmdArea_writeLogic_sel;
  wire       [0:0]    rspArea_context_sel;
  reg                 rspArea_readLogic_locked;
  reg        [0:0]    rspArea_readLogic_counter;
  wire       [0:0]    rspArea_readLogic_sel;
  reg        [31:0]   rspArea_readLogic_buffers_0;
  reg        [31:0]   rspArea_readLogic_words_0;
  wire       [31:0]   rspArea_readLogic_words_1;

  assign _zz_3 = (io_input_cmd_payload_fragment_address + _zz_4);
  assign _zz_4 = {26'd0, io_input_cmd_payload_fragment_length};
  always @(*) begin
    case(cmdArea_writeLogic_sel)
      1'b0 : begin
        _zz_1 = io_input_cmd_payload_fragment_data[31 : 0];
        _zz_2 = io_input_cmd_payload_fragment_mask[3 : 0];
      end
      default : begin
        _zz_1 = io_input_cmd_payload_fragment_data[63 : 32];
        _zz_2 = io_input_cmd_payload_fragment_mask[7 : 4];
      end
    endcase
  end

  assign cmdArea_context_sel = io_input_cmd_payload_fragment_address[2 : 2];
  assign io_output_cmd_valid = io_input_cmd_valid;
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign io_output_cmd_payload_fragment_context = cmdArea_context_sel;
  assign cmdArea_writeLogic_sel = (cmdArea_writeLogic_locked ? cmdArea_writeLogic_counter : io_input_cmd_payload_fragment_address[2 : 2]);
  assign io_output_cmd_payload_fragment_data = _zz_1;
  assign io_output_cmd_payload_fragment_mask = _zz_2;
  assign io_output_cmd_payload_last = (io_input_cmd_payload_last && ((io_input_cmd_payload_fragment_opcode == 1'b0) || (cmdArea_writeLogic_sel == _zz_3[2 : 2])));
  assign io_input_cmd_ready = (io_output_cmd_ready && ((cmdArea_writeLogic_sel == 1'b1) || io_output_cmd_payload_last));
  assign rspArea_context_sel = io_output_rsp_payload_fragment_context[0 : 0];
  assign io_input_rsp_payload_last = io_output_rsp_payload_last;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_output_rsp_ready = io_input_rsp_ready;
  assign rspArea_readLogic_sel = (rspArea_readLogic_locked ? rspArea_readLogic_counter : rspArea_context_sel);
  always @ (*) begin
    rspArea_readLogic_words_0 = rspArea_readLogic_buffers_0;
    if((io_input_rsp_payload_last && (rspArea_readLogic_sel == 1'b0)))begin
      rspArea_readLogic_words_0 = io_output_rsp_payload_fragment_data;
    end
  end

  assign rspArea_readLogic_words_1 = io_output_rsp_payload_fragment_data;
  assign io_input_rsp_valid = (io_output_rsp_valid && (io_output_rsp_payload_last || (rspArea_readLogic_sel == 1'b1)));
  assign io_input_rsp_payload_fragment_data = {rspArea_readLogic_words_1,rspArea_readLogic_words_0};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      cmdArea_writeLogic_locked <= 1'b0;
      rspArea_readLogic_locked <= 1'b0;
    end else begin
      if((io_output_cmd_valid && io_output_cmd_ready))begin
        cmdArea_writeLogic_locked <= (! io_output_cmd_payload_last);
      end
      if((io_output_rsp_valid && io_output_rsp_ready))begin
        rspArea_readLogic_locked <= (! io_output_rsp_payload_last);
      end
    end
  end

  always @ (posedge clk) begin
    if((io_output_cmd_valid && io_output_cmd_ready))begin
      cmdArea_writeLogic_counter <= (cmdArea_writeLogic_sel + 1'b1);
    end
    if((io_output_rsp_valid && io_output_rsp_ready))begin
      rspArea_readLogic_counter <= (rspArea_readLogic_sel + 1'b1);
      if((rspArea_readLogic_sel == 1'b0))begin
        rspArea_readLogic_buffers_0 <= io_output_rsp_payload_fragment_data;
      end
    end
  end


endmodule

module BmbDownSizerBridge (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [127:0]  io_input_rsp_payload_fragment_data,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [31:0]   io_output_cmd_payload_fragment_address,
  output     [5:0]    io_output_cmd_payload_fragment_length,
  output     [1:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [1:0]    io_output_rsp_payload_fragment_context,
  input               clk,
  input               reset
);
  wire       [1:0]    cmdArea_context_sel;
  wire       [1:0]    rspArea_context_sel;
  reg                 rspArea_readLogic_locked;
  reg        [1:0]    rspArea_readLogic_counter;
  wire       [1:0]    rspArea_readLogic_sel;
  reg        [31:0]   rspArea_readLogic_buffers_0;
  reg        [31:0]   rspArea_readLogic_buffers_1;
  reg        [31:0]   rspArea_readLogic_buffers_2;
  reg        [31:0]   rspArea_readLogic_words_0;
  reg        [31:0]   rspArea_readLogic_words_1;
  reg        [31:0]   rspArea_readLogic_words_2;
  wire       [31:0]   rspArea_readLogic_words_3;

  assign cmdArea_context_sel = io_input_cmd_payload_fragment_address[3 : 2];
  assign io_output_cmd_valid = io_input_cmd_valid;
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign io_output_cmd_payload_fragment_context = cmdArea_context_sel;
  assign io_output_cmd_payload_last = io_input_cmd_payload_last;
  assign io_input_cmd_ready = io_output_cmd_ready;
  assign rspArea_context_sel = io_output_rsp_payload_fragment_context[1 : 0];
  assign io_input_rsp_payload_last = io_output_rsp_payload_last;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_output_rsp_ready = io_input_rsp_ready;
  assign rspArea_readLogic_sel = (rspArea_readLogic_locked ? rspArea_readLogic_counter : rspArea_context_sel);
  always @ (*) begin
    rspArea_readLogic_words_0 = rspArea_readLogic_buffers_0;
    if((io_input_rsp_payload_last && (rspArea_readLogic_sel == 2'b00)))begin
      rspArea_readLogic_words_0 = io_output_rsp_payload_fragment_data;
    end
  end

  always @ (*) begin
    rspArea_readLogic_words_1 = rspArea_readLogic_buffers_1;
    if((io_input_rsp_payload_last && (rspArea_readLogic_sel == 2'b01)))begin
      rspArea_readLogic_words_1 = io_output_rsp_payload_fragment_data;
    end
  end

  always @ (*) begin
    rspArea_readLogic_words_2 = rspArea_readLogic_buffers_2;
    if((io_input_rsp_payload_last && (rspArea_readLogic_sel == 2'b10)))begin
      rspArea_readLogic_words_2 = io_output_rsp_payload_fragment_data;
    end
  end

  assign rspArea_readLogic_words_3 = io_output_rsp_payload_fragment_data;
  assign io_input_rsp_valid = (io_output_rsp_valid && (io_output_rsp_payload_last || (rspArea_readLogic_sel == 2'b11)));
  assign io_input_rsp_payload_fragment_data = {rspArea_readLogic_words_3,{rspArea_readLogic_words_2,{rspArea_readLogic_words_1,rspArea_readLogic_words_0}}};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      rspArea_readLogic_locked <= 1'b0;
    end else begin
      if((io_output_rsp_valid && io_output_rsp_ready))begin
        rspArea_readLogic_locked <= (! io_output_rsp_payload_last);
      end
    end
  end

  always @ (posedge clk) begin
    if((io_output_rsp_valid && io_output_rsp_ready))begin
      rspArea_readLogic_counter <= (rspArea_readLogic_sel + 2'b01);
      if((rspArea_readLogic_sel == 2'b00))begin
        rspArea_readLogic_buffers_0 <= io_output_rsp_payload_fragment_data;
      end
      if((rspArea_readLogic_sel == 2'b01))begin
        rspArea_readLogic_buffers_1 <= io_output_rsp_payload_fragment_data;
      end
      if((rspArea_readLogic_sel == 2'b10))begin
        rspArea_readLogic_buffers_2 <= io_output_rsp_payload_fragment_data;
      end
    end
  end


endmodule

module BmbToLiteDram (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [127:0]  io_input_rsp_payload_fragment_data,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_we,
  output     [31:0]   io_output_cmd_payload_addr,
  output              io_output_wdata_valid,
  input               io_output_wdata_ready,
  output     [127:0]  io_output_wdata_payload_data,
  output     [15:0]   io_output_wdata_payload_we,
  input               io_output_rdata_valid,
  output              io_output_rdata_ready,
  input      [127:0]  io_output_rdata_payload_data,
  input               clk,
  input               reset
);
  wire                _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  wire       [0:0]    _zz_6;
  wire                _zz_7;
  wire                _zz_8;
  wire                _zz_9;
  wire                _zz_10;
  wire                _zz_11;
  wire                _zz_12;
  wire                _zz_13;
  wire                io_input_unburstify_io_input_cmd_ready;
  wire                io_input_unburstify_io_input_rsp_valid;
  wire                io_input_unburstify_io_input_rsp_payload_last;
  wire       [0:0]    io_input_unburstify_io_input_rsp_payload_fragment_opcode;
  wire       [127:0]  io_input_unburstify_io_input_rsp_payload_fragment_data;
  wire                io_input_unburstify_io_output_cmd_valid;
  wire                io_input_unburstify_io_output_cmd_payload_last;
  wire       [0:0]    io_input_unburstify_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   io_input_unburstify_io_output_cmd_payload_fragment_address;
  wire       [3:0]    io_input_unburstify_io_output_cmd_payload_fragment_length;
  wire       [1:0]    io_input_unburstify_io_output_cmd_payload_fragment_context;
  wire                io_input_unburstify_io_output_rsp_ready;
  wire                streamFork_4_io_input_ready;
  wire                streamFork_4_io_outputs_0_valid;
  wire                streamFork_4_io_outputs_0_payload_last;
  wire       [0:0]    streamFork_4_io_outputs_0_payload_fragment_opcode;
  wire       [31:0]   streamFork_4_io_outputs_0_payload_fragment_address;
  wire       [3:0]    streamFork_4_io_outputs_0_payload_fragment_length;
  wire       [1:0]    streamFork_4_io_outputs_0_payload_fragment_context;
  wire                streamFork_4_io_outputs_1_valid;
  wire                streamFork_4_io_outputs_1_payload_last;
  wire       [0:0]    streamFork_4_io_outputs_1_payload_fragment_opcode;
  wire       [31:0]   streamFork_4_io_outputs_1_payload_fragment_address;
  wire       [3:0]    streamFork_4_io_outputs_1_payload_fragment_length;
  wire       [1:0]    streamFork_4_io_outputs_1_payload_fragment_context;
  wire                cmdContext_fifo_io_push_ready;
  wire                cmdContext_fifo_io_pop_valid;
  wire       [1:0]    cmdContext_fifo_io_pop_payload_context;
  wire                cmdContext_fifo_io_pop_payload_isWrite;
  wire       [5:0]    cmdContext_fifo_io_occupancy;
  wire       [5:0]    cmdContext_fifo_io_availability;
  wire                io_output_rdata_fifo_io_push_ready;
  wire                io_output_rdata_fifo_io_pop_valid;
  wire       [127:0]  io_output_rdata_fifo_io_pop_payload_data;
  wire       [5:0]    io_output_rdata_fifo_io_occupancy;
  wire       [27:0]   _zz_14;
  wire       [5:0]    _zz_15;
  wire       [0:0]    _zz_16;
  wire       [5:0]    _zz_17;
  wire       [0:0]    _zz_18;
  wire       [5:0]    _zz_19;
  reg        [5:0]    pendingRead;
  wire                halt;
  wire                _zz_1;
  wire                outputCmd_valid;
  wire                outputCmd_ready;
  wire                outputCmd_payload_we;
  wire       [31:0]   outputCmd_payload_addr;
  wire                _zz_2;
  wire                outputCmd_m2sPipe_valid;
  wire                outputCmd_m2sPipe_ready;
  wire                outputCmd_m2sPipe_payload_we;
  wire       [31:0]   outputCmd_m2sPipe_payload_addr;
  reg                 outputCmd_m2sPipe_rValid;
  reg                 outputCmd_m2sPipe_rData_we;
  reg        [31:0]   outputCmd_m2sPipe_rData_addr;
  wire                cmdContext_valid;
  wire                cmdContext_ready;
  wire       [1:0]    cmdContext_payload_context;
  wire                cmdContext_payload_isWrite;
  reg                 writeTocken_incrementIt;
  reg                 writeTocken_decrementIt;
  wire       [5:0]    writeTocken_valueNext;
  reg        [5:0]    writeTocken_value;
  wire                writeTocken_willOverflowIfInc;
  wire                writeTocken_willOverflow;
  reg        [5:0]    writeTocken_finalIncrement;
  wire                canRspWrite;
  wire                canRspRead;

  assign _zz_14 = (streamFork_4_io_outputs_0_payload_fragment_address >>> 4);
  assign _zz_15 = (pendingRead + _zz_17);
  assign _zz_16 = ((outputCmd_valid && outputCmd_ready) && (! outputCmd_payload_we));
  assign _zz_17 = {5'd0, _zz_16};
  assign _zz_18 = (io_output_rdata_fifo_io_pop_valid && _zz_12);
  assign _zz_19 = {5'd0, _zz_18};
  BmbUnburstify io_input_unburstify (
    .io_input_cmd_valid                        (io_input_cmd_valid                                                ), //i
    .io_input_cmd_ready                        (io_input_unburstify_io_input_cmd_ready                            ), //o
    .io_input_cmd_payload_last                 (io_input_cmd_payload_last                                         ), //i
    .io_input_cmd_payload_fragment_opcode      (io_input_cmd_payload_fragment_opcode                              ), //i
    .io_input_cmd_payload_fragment_address     (io_input_cmd_payload_fragment_address[31:0]                       ), //i
    .io_input_cmd_payload_fragment_length      (io_input_cmd_payload_fragment_length[5:0]                         ), //i
    .io_input_rsp_valid                        (io_input_unburstify_io_input_rsp_valid                            ), //o
    .io_input_rsp_ready                        (io_input_rsp_ready                                                ), //i
    .io_input_rsp_payload_last                 (io_input_unburstify_io_input_rsp_payload_last                     ), //o
    .io_input_rsp_payload_fragment_opcode      (io_input_unburstify_io_input_rsp_payload_fragment_opcode          ), //o
    .io_input_rsp_payload_fragment_data        (io_input_unburstify_io_input_rsp_payload_fragment_data[127:0]     ), //o
    .io_output_cmd_valid                       (io_input_unburstify_io_output_cmd_valid                           ), //o
    .io_output_cmd_ready                       (_zz_3                                                             ), //i
    .io_output_cmd_payload_last                (io_input_unburstify_io_output_cmd_payload_last                    ), //o
    .io_output_cmd_payload_fragment_opcode     (io_input_unburstify_io_output_cmd_payload_fragment_opcode         ), //o
    .io_output_cmd_payload_fragment_address    (io_input_unburstify_io_output_cmd_payload_fragment_address[31:0]  ), //o
    .io_output_cmd_payload_fragment_length     (io_input_unburstify_io_output_cmd_payload_fragment_length[3:0]    ), //o
    .io_output_cmd_payload_fragment_context    (io_input_unburstify_io_output_cmd_payload_fragment_context[1:0]   ), //o
    .io_output_rsp_valid                       (_zz_4                                                             ), //i
    .io_output_rsp_ready                       (io_input_unburstify_io_output_rsp_ready                           ), //o
    .io_output_rsp_payload_last                (_zz_5                                                             ), //i
    .io_output_rsp_payload_fragment_opcode     (_zz_6                                                             ), //i
    .io_output_rsp_payload_fragment_data       (io_output_rdata_fifo_io_pop_payload_data[127:0]                   ), //i
    .io_output_rsp_payload_fragment_context    (cmdContext_fifo_io_pop_payload_context[1:0]                       ), //i
    .clk                                       (clk                                                               ), //i
    .reset                                     (reset                                                             )  //i
  );
  StreamFork_2 streamFork_4 (
    .io_input_valid                           (_zz_7                                                             ), //i
    .io_input_ready                           (streamFork_4_io_input_ready                                       ), //o
    .io_input_payload_last                    (io_input_unburstify_io_output_cmd_payload_last                    ), //i
    .io_input_payload_fragment_opcode         (io_input_unburstify_io_output_cmd_payload_fragment_opcode         ), //i
    .io_input_payload_fragment_address        (io_input_unburstify_io_output_cmd_payload_fragment_address[31:0]  ), //i
    .io_input_payload_fragment_length         (io_input_unburstify_io_output_cmd_payload_fragment_length[3:0]    ), //i
    .io_input_payload_fragment_context        (io_input_unburstify_io_output_cmd_payload_fragment_context[1:0]   ), //i
    .io_outputs_0_valid                       (streamFork_4_io_outputs_0_valid                                   ), //o
    .io_outputs_0_ready                       (_zz_8                                                             ), //i
    .io_outputs_0_payload_last                (streamFork_4_io_outputs_0_payload_last                            ), //o
    .io_outputs_0_payload_fragment_opcode     (streamFork_4_io_outputs_0_payload_fragment_opcode                 ), //o
    .io_outputs_0_payload_fragment_address    (streamFork_4_io_outputs_0_payload_fragment_address[31:0]          ), //o
    .io_outputs_0_payload_fragment_length     (streamFork_4_io_outputs_0_payload_fragment_length[3:0]            ), //o
    .io_outputs_0_payload_fragment_context    (streamFork_4_io_outputs_0_payload_fragment_context[1:0]           ), //o
    .io_outputs_1_valid                       (streamFork_4_io_outputs_1_valid                                   ), //o
    .io_outputs_1_ready                       (_zz_9                                                             ), //i
    .io_outputs_1_payload_last                (streamFork_4_io_outputs_1_payload_last                            ), //o
    .io_outputs_1_payload_fragment_opcode     (streamFork_4_io_outputs_1_payload_fragment_opcode                 ), //o
    .io_outputs_1_payload_fragment_address    (streamFork_4_io_outputs_1_payload_fragment_address[31:0]          ), //o
    .io_outputs_1_payload_fragment_length     (streamFork_4_io_outputs_1_payload_fragment_length[3:0]            ), //o
    .io_outputs_1_payload_fragment_context    (streamFork_4_io_outputs_1_payload_fragment_context[1:0]           ), //o
    .clk                                      (clk                                                               ), //i
    .reset                                    (reset                                                             )  //i
  );
  StreamFifo_1 cmdContext_fifo (
    .io_push_valid              (cmdContext_valid                             ), //i
    .io_push_ready              (cmdContext_fifo_io_push_ready                ), //o
    .io_push_payload_context    (cmdContext_payload_context[1:0]              ), //i
    .io_push_payload_isWrite    (cmdContext_payload_isWrite                   ), //i
    .io_pop_valid               (cmdContext_fifo_io_pop_valid                 ), //o
    .io_pop_ready               (_zz_10                                       ), //i
    .io_pop_payload_context     (cmdContext_fifo_io_pop_payload_context[1:0]  ), //o
    .io_pop_payload_isWrite     (cmdContext_fifo_io_pop_payload_isWrite       ), //o
    .io_flush                   (_zz_11                                       ), //i
    .io_occupancy               (cmdContext_fifo_io_occupancy[5:0]            ), //o
    .io_availability            (cmdContext_fifo_io_availability[5:0]         ), //o
    .clk                        (clk                                          ), //i
    .reset                      (reset                                        )  //i
  );
  StreamFifoLowLatency_1 io_output_rdata_fifo (
    .io_push_valid           (io_output_rdata_valid                            ), //i
    .io_push_ready           (io_output_rdata_fifo_io_push_ready               ), //o
    .io_push_payload_data    (io_output_rdata_payload_data[127:0]              ), //i
    .io_pop_valid            (io_output_rdata_fifo_io_pop_valid                ), //o
    .io_pop_ready            (_zz_12                                           ), //i
    .io_pop_payload_data     (io_output_rdata_fifo_io_pop_payload_data[127:0]  ), //o
    .io_flush                (_zz_13                                           ), //i
    .io_occupancy            (io_output_rdata_fifo_io_occupancy[5:0]           ), //o
    .clk                     (clk                                              ), //i
    .reset                   (reset                                            )  //i
  );
  assign io_input_cmd_ready = io_input_unburstify_io_input_cmd_ready;
  assign io_input_rsp_valid = io_input_unburstify_io_input_rsp_valid;
  assign io_input_rsp_payload_last = io_input_unburstify_io_input_rsp_payload_last;
  assign io_input_rsp_payload_fragment_opcode = io_input_unburstify_io_input_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_input_unburstify_io_input_rsp_payload_fragment_data;
  assign _zz_1 = (! halt);
  assign _zz_3 = (streamFork_4_io_input_ready && _zz_1);
  assign _zz_7 = (io_input_unburstify_io_output_cmd_valid && _zz_1);
  assign _zz_2 = (! pendingRead[5]);
  assign _zz_8 = (outputCmd_ready && _zz_2);
  assign outputCmd_valid = (streamFork_4_io_outputs_0_valid && _zz_2);
  assign outputCmd_payload_addr = {4'd0, _zz_14};
  assign outputCmd_payload_we = (streamFork_4_io_outputs_0_payload_fragment_opcode == 1'b1);
  assign outputCmd_ready = ((1'b1 && (! outputCmd_m2sPipe_valid)) || outputCmd_m2sPipe_ready);
  assign outputCmd_m2sPipe_valid = outputCmd_m2sPipe_rValid;
  assign outputCmd_m2sPipe_payload_we = outputCmd_m2sPipe_rData_we;
  assign outputCmd_m2sPipe_payload_addr = outputCmd_m2sPipe_rData_addr;
  assign io_output_cmd_valid = outputCmd_m2sPipe_valid;
  assign outputCmd_m2sPipe_ready = io_output_cmd_ready;
  assign io_output_cmd_payload_we = outputCmd_m2sPipe_payload_we;
  assign io_output_cmd_payload_addr = outputCmd_m2sPipe_payload_addr;
  assign _zz_9 = 1'b1;
  assign io_output_wdata_valid = 1'b0;
  assign io_output_wdata_payload_data = 128'h0;
  assign io_output_wdata_payload_we = 16'h0;
  assign cmdContext_valid = (io_input_unburstify_io_output_cmd_valid && _zz_3);
  assign cmdContext_payload_context = io_input_unburstify_io_output_cmd_payload_fragment_context;
  assign cmdContext_payload_isWrite = (io_input_unburstify_io_output_cmd_payload_fragment_opcode == 1'b1);
  assign halt = (! cmdContext_ready);
  assign cmdContext_ready = cmdContext_fifo_io_push_ready;
  assign io_output_rdata_ready = io_output_rdata_fifo_io_push_ready;
  always @ (*) begin
    writeTocken_incrementIt = 1'b0;
    if((io_output_wdata_valid && io_output_wdata_ready))begin
      writeTocken_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    writeTocken_decrementIt = 1'b0;
    if(((cmdContext_fifo_io_pop_valid && _zz_10) && cmdContext_fifo_io_pop_payload_isWrite))begin
      writeTocken_decrementIt = 1'b1;
    end
  end

  assign writeTocken_willOverflowIfInc = ((writeTocken_value == 6'h3f) && (! writeTocken_decrementIt));
  assign writeTocken_willOverflow = (writeTocken_willOverflowIfInc && writeTocken_incrementIt);
  always @ (*) begin
    if((writeTocken_incrementIt && (! writeTocken_decrementIt)))begin
      writeTocken_finalIncrement = 6'h01;
    end else begin
      if(((! writeTocken_incrementIt) && writeTocken_decrementIt))begin
        writeTocken_finalIncrement = 6'h3f;
      end else begin
        writeTocken_finalIncrement = 6'h0;
      end
    end
  end

  assign writeTocken_valueNext = (writeTocken_value + writeTocken_finalIncrement);
  assign canRspWrite = (writeTocken_value != 6'h0);
  assign canRspRead = io_output_rdata_fifo_io_pop_valid;
  assign _zz_12 = ((_zz_4 && io_input_unburstify_io_output_rsp_ready) && (! cmdContext_fifo_io_pop_payload_isWrite));
  assign _zz_10 = (_zz_4 && io_input_unburstify_io_output_rsp_ready);
  assign _zz_4 = (cmdContext_fifo_io_pop_valid && (cmdContext_fifo_io_pop_payload_isWrite ? canRspWrite : canRspRead));
  assign _zz_6 = 1'b0;
  assign _zz_5 = 1'b1;
  assign _zz_11 = 1'b0;
  assign _zz_13 = 1'b0;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pendingRead <= 6'h0;
      outputCmd_m2sPipe_rValid <= 1'b0;
      writeTocken_value <= 6'h0;
    end else begin
      if(outputCmd_ready)begin
        outputCmd_m2sPipe_rValid <= outputCmd_valid;
      end
      writeTocken_value <= writeTocken_valueNext;
      pendingRead <= (_zz_15 - _zz_19);
    end
  end

  always @ (posedge clk) begin
    if(outputCmd_ready)begin
      outputCmd_m2sPipe_rData_we <= outputCmd_payload_we;
      outputCmd_m2sPipe_rData_addr <= outputCmd_payload_addr;
    end
  end


endmodule

module BmbDecoder_1 (
  input               io_input_cmd_valid,
  output reg          io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [127:0]  io_input_rsp_payload_fragment_data,
  output reg          io_outputs_0_cmd_valid,
  input               io_outputs_0_cmd_ready,
  output              io_outputs_0_cmd_payload_last,
  output     [0:0]    io_outputs_0_cmd_payload_fragment_opcode,
  output     [31:0]   io_outputs_0_cmd_payload_fragment_address,
  output     [5:0]    io_outputs_0_cmd_payload_fragment_length,
  input               io_outputs_0_rsp_valid,
  output              io_outputs_0_rsp_ready,
  input               io_outputs_0_rsp_payload_last,
  input      [0:0]    io_outputs_0_rsp_payload_fragment_opcode,
  input      [127:0]  io_outputs_0_rsp_payload_fragment_data,
  output reg          io_outputs_1_cmd_valid,
  input               io_outputs_1_cmd_ready,
  output              io_outputs_1_cmd_payload_last,
  output     [0:0]    io_outputs_1_cmd_payload_fragment_opcode,
  output     [31:0]   io_outputs_1_cmd_payload_fragment_address,
  output     [5:0]    io_outputs_1_cmd_payload_fragment_length,
  input               io_outputs_1_rsp_valid,
  output              io_outputs_1_rsp_ready,
  input               io_outputs_1_rsp_payload_last,
  input      [0:0]    io_outputs_1_rsp_payload_fragment_opcode,
  input      [127:0]  io_outputs_1_rsp_payload_fragment_data,
  input               clk,
  input               reset
);
  reg                 _zz_4;
  reg        [0:0]    _zz_5;
  reg        [127:0]  _zz_6;
  wire       [3:0]    _zz_7;
  wire       [0:0]    _zz_8;
  wire       [3:0]    _zz_9;
  wire       [0:0]    _zz_10;
  wire       [3:0]    _zz_11;
  reg                 logic_hits_0;
  reg                 logic_hits_1;
  wire                _zz_1;
  wire                _zz_2;
  wire                logic_noHit;
  reg        [3:0]    logic_rspPendingCounter;
  wire                logic_cmdWait;
  reg                 logic_rspHits_0;
  reg                 logic_rspHits_1;
  wire                logic_rspPending;
  wire                logic_rspNoHitValid;
  wire       [0:0]    _zz_3;

  assign _zz_7 = (logic_rspPendingCounter + _zz_9);
  assign _zz_8 = ((io_input_cmd_valid && io_input_cmd_ready) && io_input_cmd_payload_last);
  assign _zz_9 = {3'd0, _zz_8};
  assign _zz_10 = ((io_input_rsp_valid && io_input_rsp_ready) && io_input_rsp_payload_last);
  assign _zz_11 = {3'd0, _zz_10};
  always @(*) begin
    case(_zz_3)
      1'b0 : begin
        _zz_4 = io_outputs_0_rsp_payload_last;
        _zz_5 = io_outputs_0_rsp_payload_fragment_opcode;
        _zz_6 = io_outputs_0_rsp_payload_fragment_data;
      end
      default : begin
        _zz_4 = io_outputs_1_rsp_payload_last;
        _zz_5 = io_outputs_1_rsp_payload_fragment_opcode;
        _zz_6 = io_outputs_1_rsp_payload_fragment_data;
      end
    endcase
  end

  always @ (*) begin
    logic_hits_0 = (! (logic_hits_1 != 1'b0));
    if((io_input_cmd_payload_fragment_opcode == 1'b1))begin
      logic_hits_0 = 1'b0;
    end
  end

  always @ (*) begin
    io_outputs_0_cmd_valid = (io_input_cmd_valid && logic_hits_0);
    if(logic_cmdWait)begin
      io_outputs_0_cmd_valid = 1'b0;
    end
  end

  assign _zz_1 = io_input_cmd_payload_last;
  assign io_outputs_0_cmd_payload_last = _zz_1;
  assign io_outputs_0_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign io_outputs_0_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign io_outputs_0_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
  always @ (*) begin
    logic_hits_1 = ((io_input_cmd_payload_fragment_address & (~ 32'h3fffffff)) == 32'h40000000);
    if((io_input_cmd_payload_fragment_opcode == 1'b1))begin
      logic_hits_1 = 1'b0;
    end
  end

  always @ (*) begin
    io_outputs_1_cmd_valid = (io_input_cmd_valid && logic_hits_1);
    if(logic_cmdWait)begin
      io_outputs_1_cmd_valid = 1'b0;
    end
  end

  assign _zz_2 = io_input_cmd_payload_last;
  assign io_outputs_1_cmd_payload_last = _zz_2;
  assign io_outputs_1_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign io_outputs_1_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign io_outputs_1_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign logic_noHit = 1'b0;
  always @ (*) begin
    io_input_cmd_ready = (({(logic_hits_1 && io_outputs_1_cmd_ready),(logic_hits_0 && io_outputs_0_cmd_ready)} != 2'b00) || logic_noHit);
    if(logic_cmdWait)begin
      io_input_cmd_ready = 1'b0;
    end
  end

  assign logic_rspPending = (logic_rspPendingCounter != 4'b0000);
  assign logic_rspNoHitValid = 1'b0;
  assign io_input_rsp_valid = (({io_outputs_1_rsp_valid,io_outputs_0_rsp_valid} != 2'b00) || (logic_rspPending && logic_rspNoHitValid));
  assign _zz_3 = logic_rspHits_1;
  assign io_input_rsp_payload_last = _zz_4;
  assign io_input_rsp_payload_fragment_opcode = _zz_5;
  assign io_input_rsp_payload_fragment_data = _zz_6;
  assign io_outputs_0_rsp_ready = io_input_rsp_ready;
  assign io_outputs_1_rsp_ready = io_input_rsp_ready;
  assign logic_cmdWait = ((logic_rspPending && (((logic_hits_0 != logic_rspHits_0) || (logic_hits_1 != logic_rspHits_1)) || logic_rspNoHitValid)) || (logic_rspPendingCounter == 4'b1111));
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      logic_rspPendingCounter <= 4'b0000;
    end else begin
      logic_rspPendingCounter <= (_zz_7 - _zz_11);
    end
  end

  always @ (posedge clk) begin
    if((io_input_cmd_valid && (! logic_cmdWait)))begin
      logic_rspHits_0 <= logic_hits_0;
      logic_rspHits_1 <= logic_hits_1;
    end
  end


endmodule

module BmbDecoderOutOfOrder (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  input      [63:0]   io_input_cmd_payload_fragment_data,
  input      [7:0]    io_input_cmd_payload_fragment_mask,
  input      [42:0]   io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [63:0]   io_input_rsp_payload_fragment_data,
  output     [42:0]   io_input_rsp_payload_fragment_context,
  output              io_outputs_0_cmd_valid,
  input               io_outputs_0_cmd_ready,
  output              io_outputs_0_cmd_payload_last,
  output     [0:0]    io_outputs_0_cmd_payload_fragment_opcode,
  output     [31:0]   io_outputs_0_cmd_payload_fragment_address,
  output     [5:0]    io_outputs_0_cmd_payload_fragment_length,
  output     [63:0]   io_outputs_0_cmd_payload_fragment_data,
  output     [7:0]    io_outputs_0_cmd_payload_fragment_mask,
  input               io_outputs_0_rsp_valid,
  output              io_outputs_0_rsp_ready,
  input               io_outputs_0_rsp_payload_last,
  input      [0:0]    io_outputs_0_rsp_payload_fragment_opcode,
  input      [63:0]   io_outputs_0_rsp_payload_fragment_data,
  output              io_outputs_1_cmd_valid,
  input               io_outputs_1_cmd_ready,
  output              io_outputs_1_cmd_payload_last,
  output     [0:0]    io_outputs_1_cmd_payload_fragment_opcode,
  output     [31:0]   io_outputs_1_cmd_payload_fragment_address,
  output     [5:0]    io_outputs_1_cmd_payload_fragment_length,
  output     [63:0]   io_outputs_1_cmd_payload_fragment_data,
  output     [7:0]    io_outputs_1_cmd_payload_fragment_mask,
  input               io_outputs_1_rsp_valid,
  output              io_outputs_1_rsp_ready,
  input               io_outputs_1_rsp_payload_last,
  input      [0:0]    io_outputs_1_rsp_payload_fragment_opcode,
  input      [63:0]   io_outputs_1_rsp_payload_fragment_data,
  input               clk,
  input               reset
);
  wire       [1:0]    _zz_10;
  wire                _zz_11;
  wire                _zz_12;
  wire                _zz_13;
  reg                 _zz_14;
  wire                _zz_15;
  wire                sourceOrderingFifo_io_push_stream_ready;
  wire                sourceOrderingFifo_io_push_full;
  wire                sourceOrderingFifo_io_pop_stream_valid;
  wire       [1:0]    sourceOrderingFifo_io_pop_stream_payload_hits;
  wire       [2:0]    sourceOrderingFifo_io_pop_stream_payload_beatCount;
  wire       [42:0]   sourceOrderingFifo_io_pop_stream_payload_context;
  wire       [0:0]    sourceOrderingFifo_io_pop_empty;
  wire       [5:0]    sourceOrderingFifo_io_availability;
  wire                portsLogic_0_rspFifo_io_push_stream_ready;
  wire                portsLogic_0_rspFifo_io_push_full;
  wire                portsLogic_0_rspFifo_io_pop_stream_valid;
  wire                portsLogic_0_rspFifo_io_pop_stream_payload_last;
  wire       [0:0]    portsLogic_0_rspFifo_io_pop_stream_payload_fragment_opcode;
  wire       [63:0]   portsLogic_0_rspFifo_io_pop_stream_payload_fragment_data;
  wire       [0:0]    portsLogic_0_rspFifo_io_pop_empty;
  wire       [5:0]    portsLogic_0_rspFifo_io_availability;
  wire                portsLogic_1_rspFifo_io_push_stream_ready;
  wire                portsLogic_1_rspFifo_io_push_full;
  wire                portsLogic_1_rspFifo_io_pop_stream_valid;
  wire                portsLogic_1_rspFifo_io_pop_stream_payload_last;
  wire       [0:0]    portsLogic_1_rspFifo_io_pop_stream_payload_fragment_opcode;
  wire       [63:0]   portsLogic_1_rspFifo_io_pop_stream_payload_fragment_data;
  wire       [0:0]    portsLogic_1_rspFifo_io_pop_empty;
  wire       [5:0]    portsLogic_1_rspFifo_io_availability;
  wire                io_input_cmd_fork_io_input_ready;
  wire                io_input_cmd_fork_io_outputs_0_valid;
  wire                io_input_cmd_fork_io_outputs_0_payload_last;
  wire       [0:0]    io_input_cmd_fork_io_outputs_0_payload_fragment_opcode;
  wire       [31:0]   io_input_cmd_fork_io_outputs_0_payload_fragment_address;
  wire       [5:0]    io_input_cmd_fork_io_outputs_0_payload_fragment_length;
  wire       [63:0]   io_input_cmd_fork_io_outputs_0_payload_fragment_data;
  wire       [7:0]    io_input_cmd_fork_io_outputs_0_payload_fragment_mask;
  wire       [42:0]   io_input_cmd_fork_io_outputs_0_payload_fragment_context;
  wire                io_input_cmd_fork_io_outputs_1_valid;
  wire                io_input_cmd_fork_io_outputs_1_payload_last;
  wire       [0:0]    io_input_cmd_fork_io_outputs_1_payload_fragment_opcode;
  wire       [31:0]   io_input_cmd_fork_io_outputs_1_payload_fragment_address;
  wire       [5:0]    io_input_cmd_fork_io_outputs_1_payload_fragment_length;
  wire       [63:0]   io_input_cmd_fork_io_outputs_1_payload_fragment_data;
  wire       [7:0]    io_input_cmd_fork_io_outputs_1_payload_fragment_mask;
  wire       [42:0]   io_input_cmd_fork_io_outputs_1_payload_fragment_context;
  wire                _zz_16;
  wire                _zz_17;
  wire       [0:0]    _zz_18;
  wire       [0:0]    _zz_19;
  wire       [3:0]    _zz_20;
  wire       [5:0]    _zz_21;
  wire       [5:0]    _zz_22;
  wire       [0:0]    _zz_23;
  wire       [5:0]    _zz_24;
  wire       [0:0]    _zz_25;
  wire       [3:0]    _zz_26;
  wire       [5:0]    _zz_27;
  wire       [5:0]    _zz_28;
  wire       [0:0]    _zz_29;
  wire       [5:0]    _zz_30;
  wire       [1:0]    _zz_31;
  wire       [1:0]    _zz_32;
  wire                io_pop_toStreams_bufferIn_0_valid;
  wire                io_pop_toStreams_bufferIn_0_ready;
  wire       [1:0]    io_pop_toStreams_bufferIn_0_payload_hits;
  wire       [2:0]    io_pop_toStreams_bufferIn_0_payload_beatCount;
  wire       [42:0]   io_pop_toStreams_bufferIn_0_payload_context;
  wire                sourceOrderingUnbuffered_0_valid;
  wire                sourceOrderingUnbuffered_0_ready;
  wire       [1:0]    sourceOrderingUnbuffered_0_payload_hits;
  wire       [2:0]    sourceOrderingUnbuffered_0_payload_beatCount;
  wire       [42:0]   sourceOrderingUnbuffered_0_payload_context;
  wire                io_pop_toStreams_bufferIn_0_s2mPipe_valid;
  wire                io_pop_toStreams_bufferIn_0_s2mPipe_ready;
  wire       [1:0]    io_pop_toStreams_bufferIn_0_s2mPipe_payload_hits;
  wire       [2:0]    io_pop_toStreams_bufferIn_0_s2mPipe_payload_beatCount;
  wire       [42:0]   io_pop_toStreams_bufferIn_0_s2mPipe_payload_context;
  reg                 io_pop_toStreams_bufferIn_0_s2mPipe_rValid;
  reg        [1:0]    io_pop_toStreams_bufferIn_0_s2mPipe_rData_hits;
  reg        [2:0]    io_pop_toStreams_bufferIn_0_s2mPipe_rData_beatCount;
  reg        [42:0]   io_pop_toStreams_bufferIn_0_s2mPipe_rData_context;
  wire       [0:0]    io_pop_toStreams_needRefill;
  wire       [0:0]    _zz_1;
  wire       [0:0]    io_pop_toStreams_selOh;
  wire                io_pop_toStreams_nonEmpty;
  wire       [0:0]    _zz_2;
  wire                sourceOrdering_0_valid;
  wire                sourceOrdering_0_ready;
  wire       [1:0]    sourceOrdering_0_payload_hits;
  wire       [2:0]    sourceOrdering_0_payload_beatCount;
  wire       [42:0]   sourceOrdering_0_payload_context;
  reg                 sourceOrderingUnbuffered_0_m2sPipe_rValid;
  reg        [1:0]    sourceOrderingUnbuffered_0_m2sPipe_rData_hits;
  reg        [2:0]    sourceOrderingUnbuffered_0_m2sPipe_rData_beatCount;
  reg        [42:0]   sourceOrderingUnbuffered_0_m2sPipe_rData_context;
  wire       [2:0]    cmdToRspCountMinusOne;
  wire       [0:0]    portsLogic_0_sourceHits;
  wire                portsLogic_0_sourceHit;
  wire       [0:0]    _zz_3;
  wire       [0:0]    portsLogic_0_sourceArbiter;
  reg                 portsLogic_0_lockValid;
  reg        [0:0]    portsLogic_0_lockSel;
  wire       [0:0]    portsLogic_0_sourceSel;
  reg        [5:0]    portsLogic_0_incomingRspCount;
  wire       [3:0]    portsLogic_0_incomingRspAdd;
  reg        [5:0]    portsLogic_0_rspFifo_io_availability_regNext;
  wire                portsLogic_0_rspFifoFull;
  wire       [0:0]    portsLogic_1_sourceHits;
  wire                portsLogic_1_sourceHit;
  wire       [0:0]    _zz_4;
  wire       [0:0]    portsLogic_1_sourceArbiter;
  reg                 portsLogic_1_lockValid;
  reg        [0:0]    portsLogic_1_lockSel;
  wire       [0:0]    portsLogic_1_sourceSel;
  reg        [5:0]    portsLogic_1_incomingRspCount;
  wire       [3:0]    portsLogic_1_incomingRspAdd;
  reg        [5:0]    portsLogic_1_rspFifo_io_availability_regNext;
  wire                portsLogic_1_rspFifoFull;
  wire       [2:0]    cmdLogic_rspCount;
  reg                 cmdLogic_halt;
  reg                 cmdLogic_lock;
  wire                cmdLogic_hits_0;
  wire                cmdLogic_hits_1;
  wire                _zz_5;
  wire                _zz_6;
  reg                 io_input_cmd_fork_io_outputs_0_payload_first;
  reg                 io_input_cmd_fork_io_outputs_0_thrown_valid;
  wire                io_input_cmd_fork_io_outputs_0_thrown_ready;
  wire                io_input_cmd_fork_io_outputs_0_thrown_payload_last;
  wire       [0:0]    io_input_cmd_fork_io_outputs_0_thrown_payload_fragment_opcode;
  wire       [31:0]   io_input_cmd_fork_io_outputs_0_thrown_payload_fragment_address;
  wire       [5:0]    io_input_cmd_fork_io_outputs_0_thrown_payload_fragment_length;
  wire       [63:0]   io_input_cmd_fork_io_outputs_0_thrown_payload_fragment_data;
  wire       [7:0]    io_input_cmd_fork_io_outputs_0_thrown_payload_fragment_mask;
  wire       [42:0]   io_input_cmd_fork_io_outputs_0_thrown_payload_fragment_context;
  reg                 rspLogic_lockValid;
  reg        [1:0]    rspLogic_lockSel;
  wire       [1:0]    _zz_7;
  wire       [1:0]    rspLogic_arbiterSel;
  wire       [1:0]    rspLogic_portSel;
  reg        [2:0]    rspLogic_beatCounter;
  wire       [0:0]    rspLogic_sourceSel;
  wire       [0:0]    rspLogic_lasts;
  wire                rspLogic_last;
  reg        [1:0]    _zz_8;
  wire                _zz_9;

  assign _zz_16 = (! (io_input_cmd_fork_io_outputs_0_valid && io_input_cmd_fork_io_outputs_0_payload_first));
  assign _zz_17 = (io_pop_toStreams_bufferIn_0_ready && (! io_pop_toStreams_bufferIn_0_s2mPipe_ready));
  assign _zz_18 = (_zz_1 - 1'b1);
  assign _zz_19 = (_zz_3 - 1'b1);
  assign _zz_20 = ({1'b0,cmdToRspCountMinusOne} + 4'b0001);
  assign _zz_21 = (portsLogic_0_incomingRspCount + _zz_22);
  assign _zz_22 = {2'd0, portsLogic_0_incomingRspAdd};
  assign _zz_23 = (io_outputs_0_rsp_valid && io_outputs_0_rsp_ready);
  assign _zz_24 = {5'd0, _zz_23};
  assign _zz_25 = (_zz_4 - 1'b1);
  assign _zz_26 = ({1'b0,cmdToRspCountMinusOne} + 4'b0001);
  assign _zz_27 = (portsLogic_1_incomingRspCount + _zz_28);
  assign _zz_28 = {2'd0, portsLogic_1_incomingRspAdd};
  assign _zz_29 = (io_outputs_1_rsp_valid && io_outputs_1_rsp_ready);
  assign _zz_30 = {5'd0, _zz_29};
  assign _zz_31 = (_zz_7 & (~ _zz_32));
  assign _zz_32 = (_zz_7 - 2'b01);
  StreamFifoMultiChannel sourceOrderingFifo (
    .io_push_full                        (sourceOrderingFifo_io_push_full                          ), //o
    .io_push_stream_valid                (io_input_cmd_fork_io_outputs_0_thrown_valid              ), //i
    .io_push_stream_ready                (sourceOrderingFifo_io_push_stream_ready                  ), //o
    .io_push_stream_payload_hits         (_zz_10[1:0]                                              ), //i
    .io_push_stream_payload_beatCount    (cmdToRspCountMinusOne[2:0]                               ), //i
    .io_push_stream_payload_context      (io_input_cmd_payload_fragment_context[42:0]              ), //i
    .io_pop_channel                      (io_pop_toStreams_selOh                                   ), //i
    .io_pop_empty                        (sourceOrderingFifo_io_pop_empty                          ), //o
    .io_pop_stream_valid                 (sourceOrderingFifo_io_pop_stream_valid                   ), //o
    .io_pop_stream_ready                 (_zz_11                                                   ), //i
    .io_pop_stream_payload_hits          (sourceOrderingFifo_io_pop_stream_payload_hits[1:0]       ), //o
    .io_pop_stream_payload_beatCount     (sourceOrderingFifo_io_pop_stream_payload_beatCount[2:0]  ), //o
    .io_pop_stream_payload_context       (sourceOrderingFifo_io_pop_stream_payload_context[42:0]   ), //o
    .io_availability                     (sourceOrderingFifo_io_availability[5:0]                  ), //o
    .clk                                 (clk                                                      ), //i
    .reset                               (reset                                                    )  //i
  );
  StreamFifoMultiChannel_1 portsLogic_0_rspFifo (
    .io_push_full                              (portsLogic_0_rspFifo_io_push_full                               ), //o
    .io_push_stream_valid                      (io_outputs_0_rsp_valid                                          ), //i
    .io_push_stream_ready                      (portsLogic_0_rspFifo_io_push_stream_ready                       ), //o
    .io_push_stream_payload_last               (io_outputs_0_rsp_payload_last                                   ), //i
    .io_push_stream_payload_fragment_opcode    (io_outputs_0_rsp_payload_fragment_opcode                        ), //i
    .io_push_stream_payload_fragment_data      (io_outputs_0_rsp_payload_fragment_data[63:0]                    ), //i
    .io_pop_channel                            (portsLogic_0_sourceSel                                          ), //i
    .io_pop_empty                              (portsLogic_0_rspFifo_io_pop_empty                               ), //o
    .io_pop_stream_valid                       (portsLogic_0_rspFifo_io_pop_stream_valid                        ), //o
    .io_pop_stream_ready                       (_zz_12                                                          ), //i
    .io_pop_stream_payload_last                (portsLogic_0_rspFifo_io_pop_stream_payload_last                 ), //o
    .io_pop_stream_payload_fragment_opcode     (portsLogic_0_rspFifo_io_pop_stream_payload_fragment_opcode      ), //o
    .io_pop_stream_payload_fragment_data       (portsLogic_0_rspFifo_io_pop_stream_payload_fragment_data[63:0]  ), //o
    .io_availability                           (portsLogic_0_rspFifo_io_availability[5:0]                       ), //o
    .clk                                       (clk                                                             ), //i
    .reset                                     (reset                                                           )  //i
  );
  StreamFifoMultiChannel_1 portsLogic_1_rspFifo (
    .io_push_full                              (portsLogic_1_rspFifo_io_push_full                               ), //o
    .io_push_stream_valid                      (io_outputs_1_rsp_valid                                          ), //i
    .io_push_stream_ready                      (portsLogic_1_rspFifo_io_push_stream_ready                       ), //o
    .io_push_stream_payload_last               (io_outputs_1_rsp_payload_last                                   ), //i
    .io_push_stream_payload_fragment_opcode    (io_outputs_1_rsp_payload_fragment_opcode                        ), //i
    .io_push_stream_payload_fragment_data      (io_outputs_1_rsp_payload_fragment_data[63:0]                    ), //i
    .io_pop_channel                            (portsLogic_1_sourceSel                                          ), //i
    .io_pop_empty                              (portsLogic_1_rspFifo_io_pop_empty                               ), //o
    .io_pop_stream_valid                       (portsLogic_1_rspFifo_io_pop_stream_valid                        ), //o
    .io_pop_stream_ready                       (_zz_13                                                          ), //i
    .io_pop_stream_payload_last                (portsLogic_1_rspFifo_io_pop_stream_payload_last                 ), //o
    .io_pop_stream_payload_fragment_opcode     (portsLogic_1_rspFifo_io_pop_stream_payload_fragment_opcode      ), //o
    .io_pop_stream_payload_fragment_data       (portsLogic_1_rspFifo_io_pop_stream_payload_fragment_data[63:0]  ), //o
    .io_availability                           (portsLogic_1_rspFifo_io_availability[5:0]                       ), //o
    .clk                                       (clk                                                             ), //i
    .reset                                     (reset                                                           )  //i
  );
  StreamFork_1 io_input_cmd_fork (
    .io_input_valid                           (io_input_cmd_valid                                             ), //i
    .io_input_ready                           (io_input_cmd_fork_io_input_ready                               ), //o
    .io_input_payload_last                    (io_input_cmd_payload_last                                      ), //i
    .io_input_payload_fragment_opcode         (io_input_cmd_payload_fragment_opcode                           ), //i
    .io_input_payload_fragment_address        (io_input_cmd_payload_fragment_address[31:0]                    ), //i
    .io_input_payload_fragment_length         (io_input_cmd_payload_fragment_length[5:0]                      ), //i
    .io_input_payload_fragment_data           (io_input_cmd_payload_fragment_data[63:0]                       ), //i
    .io_input_payload_fragment_mask           (io_input_cmd_payload_fragment_mask[7:0]                        ), //i
    .io_input_payload_fragment_context        (io_input_cmd_payload_fragment_context[42:0]                    ), //i
    .io_outputs_0_valid                       (io_input_cmd_fork_io_outputs_0_valid                           ), //o
    .io_outputs_0_ready                       (_zz_14                                                         ), //i
    .io_outputs_0_payload_last                (io_input_cmd_fork_io_outputs_0_payload_last                    ), //o
    .io_outputs_0_payload_fragment_opcode     (io_input_cmd_fork_io_outputs_0_payload_fragment_opcode         ), //o
    .io_outputs_0_payload_fragment_address    (io_input_cmd_fork_io_outputs_0_payload_fragment_address[31:0]  ), //o
    .io_outputs_0_payload_fragment_length     (io_input_cmd_fork_io_outputs_0_payload_fragment_length[5:0]    ), //o
    .io_outputs_0_payload_fragment_data       (io_input_cmd_fork_io_outputs_0_payload_fragment_data[63:0]     ), //o
    .io_outputs_0_payload_fragment_mask       (io_input_cmd_fork_io_outputs_0_payload_fragment_mask[7:0]      ), //o
    .io_outputs_0_payload_fragment_context    (io_input_cmd_fork_io_outputs_0_payload_fragment_context[42:0]  ), //o
    .io_outputs_1_valid                       (io_input_cmd_fork_io_outputs_1_valid                           ), //o
    .io_outputs_1_ready                       (_zz_15                                                         ), //i
    .io_outputs_1_payload_last                (io_input_cmd_fork_io_outputs_1_payload_last                    ), //o
    .io_outputs_1_payload_fragment_opcode     (io_input_cmd_fork_io_outputs_1_payload_fragment_opcode         ), //o
    .io_outputs_1_payload_fragment_address    (io_input_cmd_fork_io_outputs_1_payload_fragment_address[31:0]  ), //o
    .io_outputs_1_payload_fragment_length     (io_input_cmd_fork_io_outputs_1_payload_fragment_length[5:0]    ), //o
    .io_outputs_1_payload_fragment_data       (io_input_cmd_fork_io_outputs_1_payload_fragment_data[63:0]     ), //o
    .io_outputs_1_payload_fragment_mask       (io_input_cmd_fork_io_outputs_1_payload_fragment_mask[7:0]      ), //o
    .io_outputs_1_payload_fragment_context    (io_input_cmd_fork_io_outputs_1_payload_fragment_context[42:0]  ), //o
    .clk                                      (clk                                                            ), //i
    .reset                                    (reset                                                          )  //i
  );
  assign io_pop_toStreams_bufferIn_0_s2mPipe_valid = (io_pop_toStreams_bufferIn_0_valid || io_pop_toStreams_bufferIn_0_s2mPipe_rValid);
  assign io_pop_toStreams_bufferIn_0_ready = (! io_pop_toStreams_bufferIn_0_s2mPipe_rValid);
  assign io_pop_toStreams_bufferIn_0_s2mPipe_payload_hits = (io_pop_toStreams_bufferIn_0_s2mPipe_rValid ? io_pop_toStreams_bufferIn_0_s2mPipe_rData_hits : io_pop_toStreams_bufferIn_0_payload_hits);
  assign io_pop_toStreams_bufferIn_0_s2mPipe_payload_beatCount = (io_pop_toStreams_bufferIn_0_s2mPipe_rValid ? io_pop_toStreams_bufferIn_0_s2mPipe_rData_beatCount : io_pop_toStreams_bufferIn_0_payload_beatCount);
  assign io_pop_toStreams_bufferIn_0_s2mPipe_payload_context = (io_pop_toStreams_bufferIn_0_s2mPipe_rValid ? io_pop_toStreams_bufferIn_0_s2mPipe_rData_context : io_pop_toStreams_bufferIn_0_payload_context);
  assign sourceOrderingUnbuffered_0_valid = io_pop_toStreams_bufferIn_0_s2mPipe_valid;
  assign io_pop_toStreams_bufferIn_0_s2mPipe_ready = sourceOrderingUnbuffered_0_ready;
  assign sourceOrderingUnbuffered_0_payload_hits = io_pop_toStreams_bufferIn_0_s2mPipe_payload_hits;
  assign sourceOrderingUnbuffered_0_payload_beatCount = io_pop_toStreams_bufferIn_0_s2mPipe_payload_beatCount;
  assign sourceOrderingUnbuffered_0_payload_context = io_pop_toStreams_bufferIn_0_s2mPipe_payload_context;
  assign io_pop_toStreams_needRefill[0] = io_pop_toStreams_bufferIn_0_ready;
  assign _zz_1 = (io_pop_toStreams_needRefill & (~ sourceOrderingFifo_io_pop_empty));
  assign io_pop_toStreams_selOh = (_zz_1 & (~ _zz_18));
  assign io_pop_toStreams_nonEmpty = ((~ sourceOrderingFifo_io_pop_empty) != 1'b0);
  assign io_pop_toStreams_bufferIn_0_valid = (io_pop_toStreams_selOh[0] && io_pop_toStreams_nonEmpty);
  assign io_pop_toStreams_bufferIn_0_payload_hits = sourceOrderingFifo_io_pop_stream_payload_hits;
  assign io_pop_toStreams_bufferIn_0_payload_beatCount = sourceOrderingFifo_io_pop_stream_payload_beatCount;
  assign io_pop_toStreams_bufferIn_0_payload_context = sourceOrderingFifo_io_pop_stream_payload_context;
  assign _zz_2[0] = io_pop_toStreams_bufferIn_0_ready;
  assign _zz_11 = ((io_pop_toStreams_selOh & _zz_2) != 1'b0);
  assign sourceOrderingUnbuffered_0_ready = ((1'b1 && (! sourceOrdering_0_valid)) || sourceOrdering_0_ready);
  assign sourceOrdering_0_valid = sourceOrderingUnbuffered_0_m2sPipe_rValid;
  assign sourceOrdering_0_payload_hits = sourceOrderingUnbuffered_0_m2sPipe_rData_hits;
  assign sourceOrdering_0_payload_beatCount = sourceOrderingUnbuffered_0_m2sPipe_rData_beatCount;
  assign sourceOrdering_0_payload_context = sourceOrderingUnbuffered_0_m2sPipe_rData_context;
  assign cmdToRspCountMinusOne = ((io_input_cmd_payload_fragment_opcode == 1'b0) ? io_input_cmd_payload_fragment_length[5 : 3] : 3'b000);
  assign io_outputs_0_rsp_ready = 1'b1;
  assign portsLogic_0_sourceHits[0] = (((! portsLogic_0_rspFifo_io_pop_empty[0]) && sourceOrdering_0_valid) && sourceOrdering_0_payload_hits[0]);
  assign portsLogic_0_sourceHit = (portsLogic_0_sourceHits != 1'b0);
  assign _zz_3 = portsLogic_0_sourceHits;
  assign portsLogic_0_sourceArbiter = (_zz_3 & (~ _zz_19));
  assign portsLogic_0_sourceSel = (portsLogic_0_lockValid ? portsLogic_0_lockSel : portsLogic_0_sourceArbiter);
  assign portsLogic_0_incomingRspAdd = (((io_outputs_0_cmd_valid && io_outputs_0_cmd_ready) && io_outputs_0_cmd_payload_last) ? _zz_20 : 4'b0000);
  assign portsLogic_0_rspFifoFull = (portsLogic_0_rspFifo_io_availability_regNext <= portsLogic_0_incomingRspCount);
  assign io_outputs_1_rsp_ready = 1'b1;
  assign portsLogic_1_sourceHits[0] = (((! portsLogic_1_rspFifo_io_pop_empty[0]) && sourceOrdering_0_valid) && sourceOrdering_0_payload_hits[1]);
  assign portsLogic_1_sourceHit = (portsLogic_1_sourceHits != 1'b0);
  assign _zz_4 = portsLogic_1_sourceHits;
  assign portsLogic_1_sourceArbiter = (_zz_4 & (~ _zz_25));
  assign portsLogic_1_sourceSel = (portsLogic_1_lockValid ? portsLogic_1_lockSel : portsLogic_1_sourceArbiter);
  assign portsLogic_1_incomingRspAdd = (((io_outputs_1_cmd_valid && io_outputs_1_cmd_ready) && io_outputs_1_cmd_payload_last) ? _zz_26 : 4'b0000);
  assign portsLogic_1_rspFifoFull = (portsLogic_1_rspFifo_io_availability_regNext <= portsLogic_1_incomingRspCount);
  assign cmdLogic_rspCount = (io_input_cmd_payload_fragment_length[5 : 3] + 3'b001);
  assign io_input_cmd_ready = io_input_cmd_fork_io_input_ready;
  always @ (*) begin
    cmdLogic_halt = 1'b0;
    if((cmdLogic_hits_0 && portsLogic_0_rspFifoFull))begin
      cmdLogic_halt = 1'b1;
    end
    if((cmdLogic_hits_1 && portsLogic_1_rspFifoFull))begin
      cmdLogic_halt = 1'b1;
    end
    if(cmdLogic_lock)begin
      cmdLogic_halt = 1'b0;
    end
  end

  assign cmdLogic_hits_0 = (! (cmdLogic_hits_1 != 1'b0));
  assign io_outputs_0_cmd_valid = ((io_input_cmd_fork_io_outputs_1_valid && cmdLogic_hits_0) && ((! portsLogic_0_rspFifoFull) || cmdLogic_lock));
  assign _zz_5 = io_input_cmd_fork_io_outputs_1_payload_last;
  assign io_outputs_0_cmd_payload_last = _zz_5;
  assign io_outputs_0_cmd_payload_fragment_opcode = io_input_cmd_fork_io_outputs_1_payload_fragment_opcode;
  assign io_outputs_0_cmd_payload_fragment_address = io_input_cmd_fork_io_outputs_1_payload_fragment_address;
  assign io_outputs_0_cmd_payload_fragment_length = io_input_cmd_fork_io_outputs_1_payload_fragment_length;
  assign io_outputs_0_cmd_payload_fragment_data = io_input_cmd_fork_io_outputs_1_payload_fragment_data;
  assign io_outputs_0_cmd_payload_fragment_mask = io_input_cmd_fork_io_outputs_1_payload_fragment_mask;
  assign cmdLogic_hits_1 = ((io_input_cmd_payload_fragment_address & (~ 32'h3fffffff)) == 32'h40000000);
  assign io_outputs_1_cmd_valid = ((io_input_cmd_fork_io_outputs_1_valid && cmdLogic_hits_1) && ((! portsLogic_1_rspFifoFull) || cmdLogic_lock));
  assign _zz_6 = io_input_cmd_fork_io_outputs_1_payload_last;
  assign io_outputs_1_cmd_payload_last = _zz_6;
  assign io_outputs_1_cmd_payload_fragment_opcode = io_input_cmd_fork_io_outputs_1_payload_fragment_opcode;
  assign io_outputs_1_cmd_payload_fragment_address = io_input_cmd_fork_io_outputs_1_payload_fragment_address;
  assign io_outputs_1_cmd_payload_fragment_length = io_input_cmd_fork_io_outputs_1_payload_fragment_length;
  assign io_outputs_1_cmd_payload_fragment_data = io_input_cmd_fork_io_outputs_1_payload_fragment_data;
  assign io_outputs_1_cmd_payload_fragment_mask = io_input_cmd_fork_io_outputs_1_payload_fragment_mask;
  assign _zz_15 = ((({(cmdLogic_hits_1 && io_outputs_1_cmd_ready),(cmdLogic_hits_0 && io_outputs_0_cmd_ready)} != 2'b00) || ({cmdLogic_hits_1,cmdLogic_hits_0} == 2'b00)) && (! cmdLogic_halt));
  always @ (*) begin
    io_input_cmd_fork_io_outputs_0_thrown_valid = io_input_cmd_fork_io_outputs_0_valid;
    if(_zz_16)begin
      io_input_cmd_fork_io_outputs_0_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_14 = io_input_cmd_fork_io_outputs_0_thrown_ready;
    if(_zz_16)begin
      _zz_14 = 1'b1;
    end
  end

  assign io_input_cmd_fork_io_outputs_0_thrown_payload_last = io_input_cmd_fork_io_outputs_0_payload_last;
  assign io_input_cmd_fork_io_outputs_0_thrown_payload_fragment_opcode = io_input_cmd_fork_io_outputs_0_payload_fragment_opcode;
  assign io_input_cmd_fork_io_outputs_0_thrown_payload_fragment_address = io_input_cmd_fork_io_outputs_0_payload_fragment_address;
  assign io_input_cmd_fork_io_outputs_0_thrown_payload_fragment_length = io_input_cmd_fork_io_outputs_0_payload_fragment_length;
  assign io_input_cmd_fork_io_outputs_0_thrown_payload_fragment_data = io_input_cmd_fork_io_outputs_0_payload_fragment_data;
  assign io_input_cmd_fork_io_outputs_0_thrown_payload_fragment_mask = io_input_cmd_fork_io_outputs_0_payload_fragment_mask;
  assign io_input_cmd_fork_io_outputs_0_thrown_payload_fragment_context = io_input_cmd_fork_io_outputs_0_payload_fragment_context;
  assign io_input_cmd_fork_io_outputs_0_thrown_ready = sourceOrderingFifo_io_push_stream_ready;
  assign _zz_10 = {cmdLogic_hits_1,cmdLogic_hits_0};
  assign _zz_7 = {portsLogic_1_sourceHit,portsLogic_0_sourceHit};
  assign rspLogic_arbiterSel = {_zz_31[1],portsLogic_0_sourceHit};
  assign rspLogic_portSel = (rspLogic_lockValid ? rspLogic_lockSel : rspLogic_arbiterSel);
  assign _zz_12 = (rspLogic_portSel[0] && io_input_rsp_ready);
  assign _zz_13 = (rspLogic_portSel[1] && io_input_rsp_ready);
  assign rspLogic_sourceSel = (rspLogic_portSel[0] ? portsLogic_0_sourceSel : portsLogic_1_sourceSel);
  assign rspLogic_lasts[0] = (sourceOrdering_0_payload_beatCount == rspLogic_beatCounter);
  assign rspLogic_last = ((rspLogic_lasts & rspLogic_sourceSel) != 1'b0);
  always @ (*) begin
    _zz_8[0] = portsLogic_0_rspFifo_io_pop_stream_valid;
    _zz_8[1] = portsLogic_1_rspFifo_io_pop_stream_valid;
  end

  assign io_input_rsp_valid = ((_zz_8 & rspLogic_portSel) != 2'b00);
  assign _zz_9 = rspLogic_portSel[0];
  assign io_input_rsp_payload_fragment_opcode = (_zz_9 ? portsLogic_0_rspFifo_io_pop_stream_payload_fragment_opcode : portsLogic_1_rspFifo_io_pop_stream_payload_fragment_opcode);
  assign io_input_rsp_payload_fragment_data = (_zz_9 ? portsLogic_0_rspFifo_io_pop_stream_payload_fragment_data : portsLogic_1_rspFifo_io_pop_stream_payload_fragment_data);
  assign io_input_rsp_payload_last = rspLogic_last;
  assign io_input_rsp_payload_fragment_context = sourceOrdering_0_payload_context;
  assign sourceOrdering_0_ready = ((rspLogic_sourceSel[0] && (io_input_rsp_valid && io_input_rsp_ready)) && io_input_rsp_payload_last);
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      io_pop_toStreams_bufferIn_0_s2mPipe_rValid <= 1'b0;
      sourceOrderingUnbuffered_0_m2sPipe_rValid <= 1'b0;
      portsLogic_0_lockValid <= 1'b0;
      portsLogic_0_incomingRspCount <= 6'h0a;
      portsLogic_1_lockValid <= 1'b0;
      portsLogic_1_incomingRspCount <= 6'h0a;
      cmdLogic_lock <= 1'b0;
      io_input_cmd_fork_io_outputs_0_payload_first <= 1'b1;
      rspLogic_lockValid <= 1'b0;
      rspLogic_beatCounter <= 3'b000;
    end else begin
      if(io_pop_toStreams_bufferIn_0_s2mPipe_ready)begin
        io_pop_toStreams_bufferIn_0_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_17)begin
        io_pop_toStreams_bufferIn_0_s2mPipe_rValid <= io_pop_toStreams_bufferIn_0_valid;
      end
      if(sourceOrderingUnbuffered_0_ready)begin
        sourceOrderingUnbuffered_0_m2sPipe_rValid <= sourceOrderingUnbuffered_0_valid;
      end
      if(io_input_rsp_valid)begin
        portsLogic_0_lockValid <= 1'b1;
        if((io_input_rsp_ready && io_input_rsp_payload_last))begin
          portsLogic_0_lockValid <= 1'b0;
        end
      end
      portsLogic_0_incomingRspCount <= (_zz_21 - _zz_24);
      if(io_input_rsp_valid)begin
        portsLogic_1_lockValid <= 1'b1;
        if((io_input_rsp_ready && io_input_rsp_payload_last))begin
          portsLogic_1_lockValid <= 1'b0;
        end
      end
      portsLogic_1_incomingRspCount <= (_zz_27 - _zz_30);
      if((io_input_cmd_valid && (! cmdLogic_halt)))begin
        cmdLogic_lock <= 1'b1;
      end
      if(io_input_cmd_ready)begin
        cmdLogic_lock <= 1'b0;
      end
      if((io_input_cmd_fork_io_outputs_0_valid && _zz_14))begin
        io_input_cmd_fork_io_outputs_0_payload_first <= io_input_cmd_fork_io_outputs_0_payload_last;
      end
      if(io_input_rsp_valid)begin
        rspLogic_lockValid <= 1'b1;
        if(io_input_rsp_ready)begin
          rspLogic_beatCounter <= (rspLogic_beatCounter + 3'b001);
          if(io_input_rsp_payload_last)begin
            rspLogic_lockValid <= 1'b0;
            rspLogic_beatCounter <= 3'b000;
          end
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(_zz_17)begin
      io_pop_toStreams_bufferIn_0_s2mPipe_rData_hits <= io_pop_toStreams_bufferIn_0_payload_hits;
      io_pop_toStreams_bufferIn_0_s2mPipe_rData_beatCount <= io_pop_toStreams_bufferIn_0_payload_beatCount;
      io_pop_toStreams_bufferIn_0_s2mPipe_rData_context <= io_pop_toStreams_bufferIn_0_payload_context;
    end
    if(sourceOrderingUnbuffered_0_ready)begin
      sourceOrderingUnbuffered_0_m2sPipe_rData_hits <= sourceOrderingUnbuffered_0_payload_hits;
      sourceOrderingUnbuffered_0_m2sPipe_rData_beatCount <= sourceOrderingUnbuffered_0_payload_beatCount;
      sourceOrderingUnbuffered_0_m2sPipe_rData_context <= sourceOrderingUnbuffered_0_payload_context;
    end
    `ifndef SYNTHESIS
      `ifdef FORMAL
        assert((! (io_outputs_0_rsp_valid && (! portsLogic_0_rspFifo_io_push_stream_ready))))
      `else
        if(!(! (io_outputs_0_rsp_valid && (! portsLogic_0_rspFifo_io_push_stream_ready)))) begin
          $display("FAILURE ");
          $finish;
        end
      `endif
    `endif
    if(io_input_rsp_valid)begin
      portsLogic_0_lockSel <= portsLogic_0_sourceSel;
    end
    portsLogic_0_rspFifo_io_availability_regNext <= portsLogic_0_rspFifo_io_availability;
    `ifndef SYNTHESIS
      `ifdef FORMAL
        assert((! (io_outputs_1_rsp_valid && (! portsLogic_1_rspFifo_io_push_stream_ready))))
      `else
        if(!(! (io_outputs_1_rsp_valid && (! portsLogic_1_rspFifo_io_push_stream_ready)))) begin
          $display("FAILURE ");
          $finish;
        end
      `endif
    `endif
    if(io_input_rsp_valid)begin
      portsLogic_1_lockSel <= portsLogic_1_sourceSel;
    end
    portsLogic_1_rspFifo_io_availability_regNext <= portsLogic_1_rspFifo_io_availability;
    if(io_input_rsp_valid)begin
      rspLogic_lockSel <= rspLogic_portSel;
    end
  end


endmodule

module SystemDebugger (
  input               io_remote_cmd_valid,
  output              io_remote_cmd_ready,
  input               io_remote_cmd_payload_last,
  input      [0:0]    io_remote_cmd_payload_fragment,
  output              io_remote_rsp_valid,
  input               io_remote_rsp_ready,
  output              io_remote_rsp_payload_error,
  output     [31:0]   io_remote_rsp_payload_data,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  output     [31:0]   io_mem_cmd_payload_data,
  output              io_mem_cmd_payload_wr,
  output     [1:0]    io_mem_cmd_payload_size,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload,
  input               clk,
  input               debugResetIn
);
  wire                _zz_2;
  wire       [0:0]    _zz_3;
  reg        [66:0]   dispatcher_dataShifter;
  reg                 dispatcher_dataLoaded;
  reg        [7:0]    dispatcher_headerShifter;
  wire       [7:0]    dispatcher_header;
  reg                 dispatcher_headerLoaded;
  reg        [2:0]    dispatcher_counter;
  wire       [66:0]   _zz_1;

  assign _zz_2 = (dispatcher_headerLoaded == 1'b0);
  assign _zz_3 = _zz_1[64 : 64];
  assign dispatcher_header = dispatcher_headerShifter[7 : 0];
  assign io_remote_cmd_ready = (! dispatcher_dataLoaded);
  assign _zz_1 = dispatcher_dataShifter[66 : 0];
  assign io_mem_cmd_payload_address = _zz_1[31 : 0];
  assign io_mem_cmd_payload_data = _zz_1[63 : 32];
  assign io_mem_cmd_payload_wr = _zz_3[0];
  assign io_mem_cmd_payload_size = _zz_1[66 : 65];
  assign io_mem_cmd_valid = (dispatcher_dataLoaded && (dispatcher_header == 8'h0));
  assign io_remote_rsp_valid = io_mem_rsp_valid;
  assign io_remote_rsp_payload_error = 1'b0;
  assign io_remote_rsp_payload_data = io_mem_rsp_payload;
  always @ (posedge clk or posedge debugResetIn) begin
    if (debugResetIn) begin
      dispatcher_dataLoaded <= 1'b0;
      dispatcher_headerLoaded <= 1'b0;
      dispatcher_counter <= 3'b000;
    end else begin
      if(io_remote_cmd_valid)begin
        if(_zz_2)begin
          dispatcher_counter <= (dispatcher_counter + 3'b001);
          if((dispatcher_counter == 3'b111))begin
            dispatcher_headerLoaded <= 1'b1;
          end
        end
        if(io_remote_cmd_payload_last)begin
          dispatcher_headerLoaded <= 1'b1;
          dispatcher_dataLoaded <= 1'b1;
          dispatcher_counter <= 3'b000;
        end
      end
      if(((dispatcher_headerLoaded && dispatcher_dataLoaded) && (! (io_mem_cmd_valid && (! io_mem_cmd_ready)))))begin
        dispatcher_headerLoaded <= 1'b0;
        dispatcher_dataLoaded <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(io_remote_cmd_valid)begin
      if(_zz_2)begin
        dispatcher_headerShifter <= ({io_remote_cmd_payload_fragment,dispatcher_headerShifter} >>> 1);
      end else begin
        dispatcher_dataShifter <= ({io_remote_cmd_payload_fragment,dispatcher_dataShifter} >>> 1);
      end
    end
  end


endmodule

module JtagBridgeNoTap (
  input               io_ctrl_tdi,
  input               io_ctrl_enable,
  input               io_ctrl_capture,
  input               io_ctrl_shift,
  input               io_ctrl_update,
  input               io_ctrl_reset,
  output              io_ctrl_tdo,
  output              io_remote_cmd_valid,
  input               io_remote_cmd_ready,
  output              io_remote_cmd_payload_last,
  output     [0:0]    io_remote_cmd_payload_fragment,
  input               io_remote_rsp_valid,
  output              io_remote_rsp_ready,
  input               io_remote_rsp_payload_error,
  input      [31:0]   io_remote_rsp_payload_data,
  input               clk,
  input               debugResetIn,
  input               jtag_clk
);
  wire                _zz_9;
  wire                flowCCByToggle_1_io_output_valid;
  wire                flowCCByToggle_1_io_output_payload_last;
  wire       [0:0]    flowCCByToggle_1_io_output_payload_fragment;
  wire                _zz_10;
  wire                _zz_11;
  wire                system_cmd_valid;
  wire                system_cmd_payload_last;
  wire       [0:0]    system_cmd_payload_fragment;
  reg                 system_rsp_valid;
  reg                 system_rsp_payload_error;
  reg        [31:0]   system_rsp_payload_data;
  wire                jtag_wrapper_ctrl_tdi;
  wire                jtag_wrapper_ctrl_enable;
  wire                jtag_wrapper_ctrl_capture;
  wire                jtag_wrapper_ctrl_shift;
  wire                jtag_wrapper_ctrl_update;
  wire                jtag_wrapper_ctrl_reset;
  reg                 jtag_wrapper_ctrl_tdo;
  reg        [1:0]    jtag_wrapper_header;
  wire       [1:0]    jtag_wrapper_headerNext;
  reg        [0:0]    jtag_wrapper_counter;
  reg                 jtag_wrapper_done;
  reg                 jtag_wrapper_sendCapture;
  reg                 jtag_wrapper_sendShift;
  reg                 jtag_wrapper_sendUpdate;
  wire                _zz_1;
  wire                _zz_2;
  wire       [0:0]    _zz_3;
  reg                 _zz_4;
  reg                 _zz_5;
  wire                _zz_6;
  reg        [33:0]   _zz_7;
  wire                _zz_8;

  assign _zz_10 = (! jtag_wrapper_done);
  assign _zz_11 = (jtag_wrapper_counter == 1'b1);
  FlowCCByToggle flowCCByToggle_1 (
    .io_input_valid                (_zz_4                                        ), //i
    .io_input_payload_last         (_zz_9                                        ), //i
    .io_input_payload_fragment     (_zz_3                                        ), //i
    .io_output_valid               (flowCCByToggle_1_io_output_valid             ), //o
    .io_output_payload_last        (flowCCByToggle_1_io_output_payload_last      ), //o
    .io_output_payload_fragment    (flowCCByToggle_1_io_output_payload_fragment  ), //o
    .jtag_clk                      (jtag_clk                                     ), //i
    .clk                           (clk                                          ), //i
    .debugResetIn                  (debugResetIn                                 )  //i
  );
  assign io_remote_cmd_valid = system_cmd_valid;
  assign io_remote_cmd_payload_last = system_cmd_payload_last;
  assign io_remote_cmd_payload_fragment = system_cmd_payload_fragment;
  assign io_remote_rsp_ready = 1'b1;
  assign jtag_wrapper_headerNext = ({jtag_wrapper_ctrl_tdi,jtag_wrapper_header} >>> 1);
  always @ (*) begin
    jtag_wrapper_sendCapture = 1'b0;
    if(jtag_wrapper_ctrl_enable)begin
      if(jtag_wrapper_ctrl_shift)begin
        if(_zz_10)begin
          if(_zz_11)begin
            jtag_wrapper_sendCapture = 1'b1;
          end
        end
      end
    end
  end

  always @ (*) begin
    jtag_wrapper_sendShift = 1'b0;
    if(jtag_wrapper_ctrl_enable)begin
      if(jtag_wrapper_ctrl_shift)begin
        if(! _zz_10) begin
          jtag_wrapper_sendShift = 1'b1;
        end
      end
    end
  end

  always @ (*) begin
    jtag_wrapper_sendUpdate = 1'b0;
    if(jtag_wrapper_ctrl_enable)begin
      if(jtag_wrapper_ctrl_update)begin
        jtag_wrapper_sendUpdate = 1'b1;
      end
    end
  end

  always @ (*) begin
    jtag_wrapper_ctrl_tdo = 1'b0;
    if(_zz_6)begin
      jtag_wrapper_ctrl_tdo = 1'b0;
    end
    if(_zz_8)begin
      jtag_wrapper_ctrl_tdo = _zz_7[0];
    end
  end

  assign jtag_wrapper_ctrl_tdi = io_ctrl_tdi;
  assign jtag_wrapper_ctrl_enable = io_ctrl_enable;
  assign jtag_wrapper_ctrl_capture = io_ctrl_capture;
  assign jtag_wrapper_ctrl_shift = io_ctrl_shift;
  assign jtag_wrapper_ctrl_update = io_ctrl_update;
  assign jtag_wrapper_ctrl_reset = io_ctrl_reset;
  assign io_ctrl_tdo = jtag_wrapper_ctrl_tdo;
  assign _zz_3[0] = _zz_5;
  assign _zz_9 = (! (_zz_1 && _zz_2));
  assign system_cmd_valid = flowCCByToggle_1_io_output_valid;
  assign system_cmd_payload_last = flowCCByToggle_1_io_output_payload_last;
  assign system_cmd_payload_fragment = flowCCByToggle_1_io_output_payload_fragment;
  assign _zz_6 = (jtag_wrapper_header == 2'b00);
  assign _zz_1 = 1'b1;
  assign _zz_2 = (_zz_6 && jtag_wrapper_sendShift);
  assign _zz_8 = (jtag_wrapper_header == 2'b01);
  always @ (posedge clk) begin
    if(io_remote_cmd_valid)begin
      system_rsp_valid <= 1'b0;
    end
    if((io_remote_rsp_valid && io_remote_rsp_ready))begin
      system_rsp_valid <= 1'b1;
      system_rsp_payload_error <= io_remote_rsp_payload_error;
      system_rsp_payload_data <= io_remote_rsp_payload_data;
    end
  end

  always @ (posedge jtag_clk) begin
    if(jtag_wrapper_ctrl_enable)begin
      if(jtag_wrapper_ctrl_capture)begin
        jtag_wrapper_done <= 1'b0;
        jtag_wrapper_counter <= 1'b0;
      end
      if(jtag_wrapper_ctrl_shift)begin
        if(_zz_10)begin
          jtag_wrapper_counter <= (jtag_wrapper_counter + 1'b1);
          jtag_wrapper_header <= jtag_wrapper_headerNext;
          if(_zz_11)begin
            jtag_wrapper_done <= 1'b1;
          end
        end
      end
    end
    _zz_4 <= (_zz_1 && _zz_2);
    _zz_5 <= jtag_wrapper_ctrl_tdi;
    if(1'b1)begin
      if(((jtag_wrapper_headerNext == 2'b01) && jtag_wrapper_sendCapture))begin
        _zz_7 <= {{system_rsp_payload_data,system_rsp_payload_error},system_rsp_valid};
      end
      if((_zz_8 && jtag_wrapper_sendShift))begin
        _zz_7 <= ({jtag_wrapper_ctrl_tdi,_zz_7} >>> 1);
      end
    end
  end


endmodule

module VexRiscvSmpCluster (
  output              io_dMem_cmd_valid,
  input               io_dMem_cmd_ready,
  output              io_dMem_cmd_payload_last,
  output     [0:0]    io_dMem_cmd_payload_fragment_opcode,
  output     [31:0]   io_dMem_cmd_payload_fragment_address,
  output     [5:0]    io_dMem_cmd_payload_fragment_length,
  output     [63:0]   io_dMem_cmd_payload_fragment_data,
  output     [7:0]    io_dMem_cmd_payload_fragment_mask,
  output     [42:0]   io_dMem_cmd_payload_fragment_context,
  input               io_dMem_rsp_valid,
  output              io_dMem_rsp_ready,
  input               io_dMem_rsp_payload_last,
  input      [0:0]    io_dMem_rsp_payload_fragment_opcode,
  input      [63:0]   io_dMem_rsp_payload_fragment_data,
  input      [42:0]   io_dMem_rsp_payload_fragment_context,
  output              io_iMems_0_cmd_valid,
  input               io_iMems_0_cmd_ready,
  output              io_iMems_0_cmd_payload_last,
  output     [0:0]    io_iMems_0_cmd_payload_fragment_opcode,
  output     [31:0]   io_iMems_0_cmd_payload_fragment_address,
  output     [5:0]    io_iMems_0_cmd_payload_fragment_length,
  input               io_iMems_0_rsp_valid,
  output              io_iMems_0_rsp_ready,
  input               io_iMems_0_rsp_payload_last,
  input      [0:0]    io_iMems_0_rsp_payload_fragment_opcode,
  input      [127:0]  io_iMems_0_rsp_payload_fragment_data,
  input      [0:0]    io_timerInterrupts,
  input      [0:0]    io_externalInterrupts,
  input      [0:0]    io_softwareInterrupts,
  input      [0:0]    io_externalSupervisorInterrupts,
  input               io_debugBus_cmd_valid,
  output              io_debugBus_cmd_ready,
  input               io_debugBus_cmd_payload_last,
  input      [0:0]    io_debugBus_cmd_payload_fragment_opcode,
  input      [19:0]   io_debugBus_cmd_payload_fragment_address,
  input      [1:0]    io_debugBus_cmd_payload_fragment_length,
  input      [31:0]   io_debugBus_cmd_payload_fragment_data,
  input      [3:0]    io_debugBus_cmd_payload_fragment_mask,
  output              io_debugBus_rsp_valid,
  input               io_debugBus_rsp_ready,
  output              io_debugBus_rsp_payload_last,
  output     [0:0]    io_debugBus_rsp_payload_fragment_opcode,
  output     [31:0]   io_debugBus_rsp_payload_fragment_data,
  output reg          io_debugReset,
  input      [63:0]   io_time,
  input               clk,
  input               reset,
  input               debugResetIn
);
  wire                _zz_29;
  wire                _zz_30;
  wire                _zz_31;
  wire                _zz_32;
  wire                _zz_33;
  wire                _zz_34;
  wire       [7:0]    _zz_35;
  wire                _zz_36;
  wire                _zz_37;
  wire                _zz_38;
  wire                _zz_39;
  wire                _zz_40;
  wire                cpus_0_core_dBus_cmd_valid;
  wire                cpus_0_core_dBus_cmd_payload_wr;
  wire                cpus_0_core_dBus_cmd_payload_uncached;
  wire       [31:0]   cpus_0_core_dBus_cmd_payload_address;
  wire       [31:0]   cpus_0_core_dBus_cmd_payload_data;
  wire       [3:0]    cpus_0_core_dBus_cmd_payload_mask;
  wire       [3:0]    cpus_0_core_dBus_cmd_payload_length;
  wire                cpus_0_core_dBus_cmd_payload_exclusive;
  wire                cpus_0_core_dBus_cmd_payload_last;
  wire                cpus_0_core_dBus_inv_ready;
  wire                cpus_0_core_dBus_ack_valid;
  wire                cpus_0_core_dBus_ack_payload_hit;
  wire                cpus_0_core_dBus_sync_ready;
  wire                cpus_0_core_debug_bus_cmd_ready;
  wire       [31:0]   cpus_0_core_debug_bus_rsp_data;
  wire                cpus_0_core_debug_resetOut;
  wire                cpus_0_core_iBus_cmd_valid;
  wire       [31:0]   cpus_0_core_iBus_cmd_payload_address;
  wire       [2:0]    cpus_0_core_iBus_cmd_payload_size;
  wire                dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_fifo_io_push_ready;
  wire                dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_fifo_io_pop_valid;
  wire       [2:0]    dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_fifo_io_pop_payload;
  wire       [4:0]    dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_fifo_io_occupancy;
  wire                dBusArbiter_io_inputs_0_cmd_ready;
  wire                dBusArbiter_io_inputs_0_rsp_valid;
  wire                dBusArbiter_io_inputs_0_rsp_payload_last;
  wire       [0:0]    dBusArbiter_io_inputs_0_rsp_payload_fragment_opcode;
  wire                dBusArbiter_io_inputs_0_rsp_payload_fragment_exclusive;
  wire       [63:0]   dBusArbiter_io_inputs_0_rsp_payload_fragment_data;
  wire       [2:0]    dBusArbiter_io_inputs_0_rsp_payload_fragment_context;
  wire                dBusArbiter_io_inputs_0_inv_valid;
  wire                dBusArbiter_io_inputs_0_inv_payload_all;
  wire       [31:0]   dBusArbiter_io_inputs_0_inv_payload_address;
  wire       [5:0]    dBusArbiter_io_inputs_0_inv_payload_length;
  wire                dBusArbiter_io_inputs_0_ack_ready;
  wire                dBusArbiter_io_inputs_0_sync_valid;
  wire                dBusArbiter_io_output_cmd_valid;
  wire                dBusArbiter_io_output_cmd_payload_last;
  wire       [0:0]    dBusArbiter_io_output_cmd_payload_fragment_opcode;
  wire                dBusArbiter_io_output_cmd_payload_fragment_exclusive;
  wire       [31:0]   dBusArbiter_io_output_cmd_payload_fragment_address;
  wire       [5:0]    dBusArbiter_io_output_cmd_payload_fragment_length;
  wire       [63:0]   dBusArbiter_io_output_cmd_payload_fragment_data;
  wire       [7:0]    dBusArbiter_io_output_cmd_payload_fragment_mask;
  wire       [2:0]    dBusArbiter_io_output_cmd_payload_fragment_context;
  wire                dBusArbiter_io_output_rsp_ready;
  wire                dBusArbiter_io_output_inv_ready;
  wire                dBusArbiter_io_output_ack_valid;
  wire                dBusArbiter_io_output_sync_ready;
  wire                exclusiveMonitor_io_input_cmd_ready;
  wire                exclusiveMonitor_io_input_rsp_valid;
  wire                exclusiveMonitor_io_input_rsp_payload_last;
  wire       [0:0]    exclusiveMonitor_io_input_rsp_payload_fragment_opcode;
  wire                exclusiveMonitor_io_input_rsp_payload_fragment_exclusive;
  wire       [63:0]   exclusiveMonitor_io_input_rsp_payload_fragment_data;
  wire       [2:0]    exclusiveMonitor_io_input_rsp_payload_fragment_context;
  wire                exclusiveMonitor_io_input_inv_valid;
  wire                exclusiveMonitor_io_input_inv_payload_all;
  wire       [31:0]   exclusiveMonitor_io_input_inv_payload_address;
  wire       [5:0]    exclusiveMonitor_io_input_inv_payload_length;
  wire                exclusiveMonitor_io_input_ack_ready;
  wire                exclusiveMonitor_io_input_sync_valid;
  wire                exclusiveMonitor_io_output_cmd_valid;
  wire                exclusiveMonitor_io_output_cmd_payload_last;
  wire       [0:0]    exclusiveMonitor_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   exclusiveMonitor_io_output_cmd_payload_fragment_address;
  wire       [5:0]    exclusiveMonitor_io_output_cmd_payload_fragment_length;
  wire       [63:0]   exclusiveMonitor_io_output_cmd_payload_fragment_data;
  wire       [7:0]    exclusiveMonitor_io_output_cmd_payload_fragment_mask;
  wire       [3:0]    exclusiveMonitor_io_output_cmd_payload_fragment_context;
  wire                exclusiveMonitor_io_output_rsp_ready;
  wire                exclusiveMonitor_io_output_inv_ready;
  wire                exclusiveMonitor_io_output_ack_valid;
  wire                exclusiveMonitor_io_output_sync_ready;
  wire                invalidateMonitor_io_input_cmd_ready;
  wire                invalidateMonitor_io_input_rsp_valid;
  wire                invalidateMonitor_io_input_rsp_payload_last;
  wire       [0:0]    invalidateMonitor_io_input_rsp_payload_fragment_opcode;
  wire       [63:0]   invalidateMonitor_io_input_rsp_payload_fragment_data;
  wire       [3:0]    invalidateMonitor_io_input_rsp_payload_fragment_context;
  wire                invalidateMonitor_io_input_inv_valid;
  wire                invalidateMonitor_io_input_inv_payload_all;
  wire       [31:0]   invalidateMonitor_io_input_inv_payload_address;
  wire       [5:0]    invalidateMonitor_io_input_inv_payload_length;
  wire                invalidateMonitor_io_input_ack_ready;
  wire                invalidateMonitor_io_input_sync_valid;
  wire                invalidateMonitor_io_output_cmd_valid;
  wire                invalidateMonitor_io_output_cmd_payload_last;
  wire       [0:0]    invalidateMonitor_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   invalidateMonitor_io_output_cmd_payload_fragment_address;
  wire       [5:0]    invalidateMonitor_io_output_cmd_payload_fragment_length;
  wire       [63:0]   invalidateMonitor_io_output_cmd_payload_fragment_data;
  wire       [7:0]    invalidateMonitor_io_output_cmd_payload_fragment_mask;
  wire       [42:0]   invalidateMonitor_io_output_cmd_payload_fragment_context;
  wire                invalidateMonitor_io_output_rsp_ready;
  wire                debug_arbiter_io_input_cmd_ready;
  wire                debug_arbiter_io_input_rsp_valid;
  wire                debug_arbiter_io_input_rsp_payload_last;
  wire       [0:0]    debug_arbiter_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   debug_arbiter_io_input_rsp_payload_fragment_data;
  wire                debug_arbiter_io_outputs_0_cmd_valid;
  wire                debug_arbiter_io_outputs_0_cmd_payload_last;
  wire       [0:0]    debug_arbiter_io_outputs_0_cmd_payload_fragment_opcode;
  wire       [19:0]   debug_arbiter_io_outputs_0_cmd_payload_fragment_address;
  wire       [1:0]    debug_arbiter_io_outputs_0_cmd_payload_fragment_length;
  wire       [31:0]   debug_arbiter_io_outputs_0_cmd_payload_fragment_data;
  wire       [3:0]    debug_arbiter_io_outputs_0_cmd_payload_fragment_mask;
  wire                debug_arbiter_io_outputs_0_rsp_ready;
  wire                _zz_41;
  wire                _zz_42;
  wire                _zz_43;
  wire                _zz_44;
  wire                _zz_45;
  wire                _zz_46;
  wire                _zz_47;
  wire                _zz_48;
  wire                _zz_49;
  wire                _zz_50;
  wire       [5:0]    _zz_51;
  wire                cpus_0_core_iBus_toBmb_cmd_valid;
  wire                cpus_0_core_iBus_toBmb_cmd_ready;
  wire                cpus_0_core_iBus_toBmb_cmd_payload_last;
  wire       [0:0]    cpus_0_core_iBus_toBmb_cmd_payload_fragment_opcode;
  wire       [31:0]   cpus_0_core_iBus_toBmb_cmd_payload_fragment_address;
  wire       [5:0]    cpus_0_core_iBus_toBmb_cmd_payload_fragment_length;
  wire                cpus_0_core_iBus_toBmb_rsp_valid;
  wire                cpus_0_core_iBus_toBmb_rsp_ready;
  wire                cpus_0_core_iBus_toBmb_rsp_payload_last;
  wire       [0:0]    cpus_0_core_iBus_toBmb_rsp_payload_fragment_opcode;
  wire       [127:0]  cpus_0_core_iBus_toBmb_rsp_payload_fragment_data;
  wire                dBus_Bridge_bus_cmd_valid;
  wire                dBus_Bridge_bus_cmd_ready;
  wire                dBus_Bridge_bus_cmd_payload_last;
  wire       [0:0]    dBus_Bridge_bus_cmd_payload_fragment_opcode;
  wire                dBus_Bridge_bus_cmd_payload_fragment_exclusive;
  wire       [31:0]   dBus_Bridge_bus_cmd_payload_fragment_address;
  wire       [5:0]    dBus_Bridge_bus_cmd_payload_fragment_length;
  wire       [63:0]   dBus_Bridge_bus_cmd_payload_fragment_data;
  wire       [7:0]    dBus_Bridge_bus_cmd_payload_fragment_mask;
  wire       [2:0]    dBus_Bridge_bus_cmd_payload_fragment_context;
  wire                dBus_Bridge_bus_rsp_valid;
  wire                dBus_Bridge_bus_rsp_ready;
  wire                dBus_Bridge_bus_rsp_payload_last;
  wire       [0:0]    dBus_Bridge_bus_rsp_payload_fragment_opcode;
  wire                dBus_Bridge_bus_rsp_payload_fragment_exclusive;
  wire       [63:0]   dBus_Bridge_bus_rsp_payload_fragment_data;
  wire       [2:0]    dBus_Bridge_bus_rsp_payload_fragment_context;
  wire                dBus_Bridge_bus_inv_valid;
  wire                dBus_Bridge_bus_inv_ready;
  wire                dBus_Bridge_bus_inv_payload_all;
  wire       [31:0]   dBus_Bridge_bus_inv_payload_address;
  wire       [5:0]    dBus_Bridge_bus_inv_payload_length;
  wire                dBus_Bridge_bus_ack_valid;
  wire                dBus_Bridge_bus_ack_ready;
  wire                dBus_Bridge_bus_sync_valid;
  wire                dBus_Bridge_bus_sync_ready;
  wire                _zz_1;
  wire                dBus_Bridge_withWriteBuffer_buffer_stream_valid;
  wire                dBus_Bridge_withWriteBuffer_buffer_stream_ready;
  reg                 _zz_2;
  reg        [31:0]   dBus_Bridge_withWriteBuffer_buffer_address;
  reg        [5:0]    dBus_Bridge_withWriteBuffer_buffer_length;
  reg                 dBus_Bridge_withWriteBuffer_buffer_write;
  reg                 dBus_Bridge_withWriteBuffer_buffer_exclusive;
  reg        [63:0]   dBus_Bridge_withWriteBuffer_buffer_data;
  reg        [7:0]    dBus_Bridge_withWriteBuffer_buffer_mask;
  reg                 dBus_Bridge_withWriteBuffer_aggregationEnabled;
  reg        [2:0]    dBus_Bridge_withWriteBuffer_aggregationCounter;
  wire                dBus_Bridge_withWriteBuffer_aggregationCounterFull;
  reg        [4:0]    dBus_Bridge_withWriteBuffer_timer;
  wire                dBus_Bridge_withWriteBuffer_timerFull;
  wire                dBus_Bridge_withWriteBuffer_hit;
  wire                dBus_Bridge_withWriteBuffer_canAggregate;
  wire                dBus_Bridge_withWriteBuffer_doFlush;
  wire       [2:0]    dBus_Bridge_withWriteBuffer_busCmdContext_rspCount;
  reg                 dBus_Bridge_withWriteBuffer_halt;
  wire       [0:0]    dBus_Bridge_withWriteBuffer_aggregationSel;
  wire       [7:0]    _zz_3;
  wire       [7:0]    _zz_4;
  wire       [7:0]    _zz_5;
  wire       [7:0]    _zz_6;
  wire       [2:0]    dBus_Bridge_withWriteBuffer_rspCtx_rspCount;
  wire                dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_valid;
  wire                dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_ready;
  wire       [2:0]    dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_payload;
  wire                _zz_7;
  wire                dBus_Bridge_bus_cmd_m2sPipe_valid;
  wire                dBus_Bridge_bus_cmd_m2sPipe_ready;
  wire                dBus_Bridge_bus_cmd_m2sPipe_payload_last;
  wire       [0:0]    dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_opcode;
  wire                dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_exclusive;
  wire       [31:0]   dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_address;
  wire       [5:0]    dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_length;
  wire       [63:0]   dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_data;
  wire       [7:0]    dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_mask;
  wire       [2:0]    dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_context;
  reg                 dBus_Bridge_bus_cmd_m2sPipe_rValid;
  reg                 dBus_Bridge_bus_cmd_m2sPipe_rData_last;
  reg        [0:0]    dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_opcode;
  reg                 dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_exclusive;
  reg        [31:0]   dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_address;
  reg        [5:0]    dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_length;
  reg        [63:0]   dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_data;
  reg        [7:0]    dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_mask;
  reg        [2:0]    dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_context;
  reg                 cpus_0_core_debug_resetOut_regNext;
  wire       [0:0]    _zz_8;
  reg                 _zz_9;
  wire                _zz_10;
  wire                _zz_11;
  wire                _zz_12;
  reg                 _zz_13;
  reg                 _zz_14;
  reg        [31:0]   _zz_15;
  reg        [5:0]    _zz_16;
  wire                _zz_17;
  reg                 _zz_18;
  wire                _zz_19;
  reg                 _zz_20;
  wire                _zz_21;
  wire                dBusArbiter_io_output_cmd_s2mPipe_valid;
  wire                dBusArbiter_io_output_cmd_s2mPipe_ready;
  wire                dBusArbiter_io_output_cmd_s2mPipe_payload_last;
  wire       [0:0]    dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_opcode;
  wire                dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_exclusive;
  wire       [31:0]   dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_address;
  wire       [5:0]    dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_length;
  wire       [63:0]   dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_data;
  wire       [7:0]    dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_mask;
  wire       [2:0]    dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_context;
  reg                 dBusArbiter_io_output_cmd_s2mPipe_rValid;
  reg                 dBusArbiter_io_output_cmd_s2mPipe_rData_last;
  reg        [0:0]    dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_opcode;
  reg                 dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_exclusive;
  reg        [31:0]   dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_address;
  reg        [5:0]    dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_length;
  reg        [63:0]   dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_data;
  reg        [7:0]    dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_mask;
  reg        [2:0]    dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_context;
  wire                dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_valid;
  wire                dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_ready;
  wire                dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_last;
  wire       [0:0]    dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_opcode;
  wire                dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_exclusive;
  wire       [31:0]   dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_address;
  wire       [5:0]    dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_length;
  wire       [63:0]   dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_data;
  wire       [7:0]    dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_mask;
  wire       [2:0]    dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_context;
  reg                 dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rValid;
  reg                 dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_last;
  reg        [0:0]    dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_opcode;
  reg                 dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_exclusive;
  reg        [31:0]   dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_address;
  reg        [5:0]    dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_length;
  reg        [63:0]   dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_data;
  reg        [7:0]    dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_mask;
  reg        [2:0]    dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_context;
  wire                _zz_22;
  reg                 _zz_23;
  reg                 _zz_24;
  reg        [0:0]    _zz_25;
  reg                 _zz_26;
  reg        [63:0]   _zz_27;
  reg        [2:0]    _zz_28;

  assign _zz_41 = (cpus_0_core_dBus_cmd_valid && _zz_1);
  assign _zz_42 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b0) && cpus_0_core_dBus_cmd_payload_mask[0]);
  assign _zz_43 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b0) && cpus_0_core_dBus_cmd_payload_mask[1]);
  assign _zz_44 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b0) && cpus_0_core_dBus_cmd_payload_mask[2]);
  assign _zz_45 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b0) && cpus_0_core_dBus_cmd_payload_mask[3]);
  assign _zz_46 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b1) && cpus_0_core_dBus_cmd_payload_mask[0]);
  assign _zz_47 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b1) && cpus_0_core_dBus_cmd_payload_mask[1]);
  assign _zz_48 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b1) && cpus_0_core_dBus_cmd_payload_mask[2]);
  assign _zz_49 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b1) && cpus_0_core_dBus_cmd_payload_mask[3]);
  assign _zz_50 = (_zz_39 && (! dBusArbiter_io_output_cmd_s2mPipe_ready));
  assign _zz_51 = ({2'd0,cpus_0_core_dBus_cmd_payload_length} <<< 2);
  VexRiscv cpus_0_core (
    .dBus_cmd_valid                   (cpus_0_core_dBus_cmd_valid                                             ), //o
    .dBus_cmd_ready                   (_zz_1                                                                  ), //i
    .dBus_cmd_payload_wr              (cpus_0_core_dBus_cmd_payload_wr                                        ), //o
    .dBus_cmd_payload_uncached        (cpus_0_core_dBus_cmd_payload_uncached                                  ), //o
    .dBus_cmd_payload_address         (cpus_0_core_dBus_cmd_payload_address[31:0]                             ), //o
    .dBus_cmd_payload_data            (cpus_0_core_dBus_cmd_payload_data[31:0]                                ), //o
    .dBus_cmd_payload_mask            (cpus_0_core_dBus_cmd_payload_mask[3:0]                                 ), //o
    .dBus_cmd_payload_length          (cpus_0_core_dBus_cmd_payload_length[3:0]                               ), //o
    .dBus_cmd_payload_exclusive       (cpus_0_core_dBus_cmd_payload_exclusive                                 ), //o
    .dBus_cmd_payload_last            (cpus_0_core_dBus_cmd_payload_last                                      ), //o
    .dBus_rsp_valid                   (dBus_Bridge_bus_rsp_valid                                              ), //i
    .dBus_rsp_payload_aggregated      (dBus_Bridge_withWriteBuffer_rspCtx_rspCount[2:0]                       ), //i
    .dBus_rsp_payload_last            (dBus_Bridge_bus_rsp_payload_last                                       ), //i
    .dBus_rsp_payload_data            (dBus_Bridge_bus_rsp_payload_fragment_data[63:0]                        ), //i
    .dBus_rsp_payload_error           (_zz_29                                                                 ), //i
    .dBus_rsp_payload_exclusive       (dBus_Bridge_bus_rsp_payload_fragment_exclusive                         ), //i
    .dBus_inv_valid                   (dBus_Bridge_bus_inv_valid                                              ), //i
    .dBus_inv_ready                   (cpus_0_core_dBus_inv_ready                                             ), //o
    .dBus_inv_payload_enable          (dBus_Bridge_bus_inv_payload_all                                        ), //i
    .dBus_inv_payload_address         (dBus_Bridge_bus_inv_payload_address[31:0]                              ), //i
    .dBus_ack_valid                   (cpus_0_core_dBus_ack_valid                                             ), //o
    .dBus_ack_ready                   (dBus_Bridge_bus_ack_ready                                              ), //i
    .dBus_ack_payload_hit             (cpus_0_core_dBus_ack_payload_hit                                       ), //o
    .dBus_sync_valid                  (dBus_Bridge_bus_sync_valid                                             ), //i
    .dBus_sync_ready                  (cpus_0_core_dBus_sync_ready                                            ), //o
    .dBus_sync_payload_aggregated     (dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_fifo_io_pop_payload[2:0]  ), //i
    .timerInterrupt                   (_zz_30                                                                 ), //i
    .externalInterrupt                (_zz_31                                                                 ), //i
    .softwareInterrupt                (_zz_32                                                                 ), //i
    .externalInterruptS               (_zz_33                                                                 ), //i
    .utime                            (io_time[63:0]                                                          ), //i
    .debug_bus_cmd_valid              (debug_arbiter_io_outputs_0_cmd_valid                                   ), //i
    .debug_bus_cmd_ready              (cpus_0_core_debug_bus_cmd_ready                                        ), //o
    .debug_bus_cmd_payload_wr         (_zz_34                                                                 ), //i
    .debug_bus_cmd_payload_address    (_zz_35[7:0]                                                            ), //i
    .debug_bus_cmd_payload_data       (debug_arbiter_io_outputs_0_cmd_payload_fragment_data[31:0]             ), //i
    .debug_bus_rsp_data               (cpus_0_core_debug_bus_rsp_data[31:0]                                   ), //o
    .debug_resetOut                   (cpus_0_core_debug_resetOut                                             ), //o
    .iBus_cmd_valid                   (cpus_0_core_iBus_cmd_valid                                             ), //o
    .iBus_cmd_ready                   (cpus_0_core_iBus_toBmb_cmd_ready                                       ), //i
    .iBus_cmd_payload_address         (cpus_0_core_iBus_cmd_payload_address[31:0]                             ), //o
    .iBus_cmd_payload_size            (cpus_0_core_iBus_cmd_payload_size[2:0]                                 ), //o
    .iBus_rsp_valid                   (cpus_0_core_iBus_toBmb_rsp_valid                                       ), //i
    .iBus_rsp_payload_data            (cpus_0_core_iBus_toBmb_rsp_payload_fragment_data[127:0]                ), //i
    .iBus_rsp_payload_error           (_zz_36                                                                 ), //i
    .clk                              (clk                                                                    ), //i
    .reset                            (reset                                                                  ), //i
    .debugResetIn                     (debugResetIn                                                           )  //i
  );
  StreamFifoLowLatency dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_fifo (
    .io_push_valid      (dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_valid                     ), //i
    .io_push_ready      (dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_fifo_io_push_ready        ), //o
    .io_push_payload    (dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_payload[2:0]              ), //i
    .io_pop_valid       (dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_fifo_io_pop_valid         ), //o
    .io_pop_ready       (_zz_37                                                                 ), //i
    .io_pop_payload     (dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_fifo_io_pop_payload[2:0]  ), //o
    .io_flush           (_zz_38                                                                 ), //i
    .io_occupancy       (dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_fifo_io_occupancy[4:0]    ), //o
    .clk                (clk                                                                    ), //i
    .reset              (reset                                                                  )  //i
  );
  BmbArbiter dBusArbiter (
    .io_inputs_0_cmd_valid                         (dBus_Bridge_bus_cmd_m2sPipe_valid                           ), //i
    .io_inputs_0_cmd_ready                         (dBusArbiter_io_inputs_0_cmd_ready                           ), //o
    .io_inputs_0_cmd_payload_last                  (dBus_Bridge_bus_cmd_m2sPipe_payload_last                    ), //i
    .io_inputs_0_cmd_payload_fragment_opcode       (dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_opcode         ), //i
    .io_inputs_0_cmd_payload_fragment_exclusive    (dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_exclusive      ), //i
    .io_inputs_0_cmd_payload_fragment_address      (dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_address[31:0]  ), //i
    .io_inputs_0_cmd_payload_fragment_length       (dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_length[5:0]    ), //i
    .io_inputs_0_cmd_payload_fragment_data         (dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_data[63:0]     ), //i
    .io_inputs_0_cmd_payload_fragment_mask         (dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_mask[7:0]      ), //i
    .io_inputs_0_cmd_payload_fragment_context      (dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_context[2:0]   ), //i
    .io_inputs_0_rsp_valid                         (dBusArbiter_io_inputs_0_rsp_valid                           ), //o
    .io_inputs_0_rsp_ready                         (dBus_Bridge_bus_rsp_ready                                   ), //i
    .io_inputs_0_rsp_payload_last                  (dBusArbiter_io_inputs_0_rsp_payload_last                    ), //o
    .io_inputs_0_rsp_payload_fragment_opcode       (dBusArbiter_io_inputs_0_rsp_payload_fragment_opcode         ), //o
    .io_inputs_0_rsp_payload_fragment_exclusive    (dBusArbiter_io_inputs_0_rsp_payload_fragment_exclusive      ), //o
    .io_inputs_0_rsp_payload_fragment_data         (dBusArbiter_io_inputs_0_rsp_payload_fragment_data[63:0]     ), //o
    .io_inputs_0_rsp_payload_fragment_context      (dBusArbiter_io_inputs_0_rsp_payload_fragment_context[2:0]   ), //o
    .io_inputs_0_inv_valid                         (dBusArbiter_io_inputs_0_inv_valid                           ), //o
    .io_inputs_0_inv_ready                         (_zz_10                                                      ), //i
    .io_inputs_0_inv_payload_all                   (dBusArbiter_io_inputs_0_inv_payload_all                     ), //o
    .io_inputs_0_inv_payload_address               (dBusArbiter_io_inputs_0_inv_payload_address[31:0]           ), //o
    .io_inputs_0_inv_payload_length                (dBusArbiter_io_inputs_0_inv_payload_length[5:0]             ), //o
    .io_inputs_0_ack_valid                         (_zz_17                                                      ), //i
    .io_inputs_0_ack_ready                         (dBusArbiter_io_inputs_0_ack_ready                           ), //o
    .io_inputs_0_sync_valid                        (dBusArbiter_io_inputs_0_sync_valid                          ), //o
    .io_inputs_0_sync_ready                        (_zz_11                                                      ), //i
    .io_output_cmd_valid                           (dBusArbiter_io_output_cmd_valid                             ), //o
    .io_output_cmd_ready                           (_zz_39                                                      ), //i
    .io_output_cmd_payload_last                    (dBusArbiter_io_output_cmd_payload_last                      ), //o
    .io_output_cmd_payload_fragment_opcode         (dBusArbiter_io_output_cmd_payload_fragment_opcode           ), //o
    .io_output_cmd_payload_fragment_exclusive      (dBusArbiter_io_output_cmd_payload_fragment_exclusive        ), //o
    .io_output_cmd_payload_fragment_address        (dBusArbiter_io_output_cmd_payload_fragment_address[31:0]    ), //o
    .io_output_cmd_payload_fragment_length         (dBusArbiter_io_output_cmd_payload_fragment_length[5:0]      ), //o
    .io_output_cmd_payload_fragment_data           (dBusArbiter_io_output_cmd_payload_fragment_data[63:0]       ), //o
    .io_output_cmd_payload_fragment_mask           (dBusArbiter_io_output_cmd_payload_fragment_mask[7:0]        ), //o
    .io_output_cmd_payload_fragment_context        (dBusArbiter_io_output_cmd_payload_fragment_context[2:0]     ), //o
    .io_output_rsp_valid                           (_zz_22                                                      ), //i
    .io_output_rsp_ready                           (dBusArbiter_io_output_rsp_ready                             ), //o
    .io_output_rsp_payload_last                    (_zz_24                                                      ), //i
    .io_output_rsp_payload_fragment_opcode         (_zz_25                                                      ), //i
    .io_output_rsp_payload_fragment_exclusive      (_zz_26                                                      ), //i
    .io_output_rsp_payload_fragment_data           (_zz_27[63:0]                                                ), //i
    .io_output_rsp_payload_fragment_context        (_zz_28[2:0]                                                 ), //i
    .io_output_inv_valid                           (exclusiveMonitor_io_input_inv_valid                         ), //i
    .io_output_inv_ready                           (dBusArbiter_io_output_inv_ready                             ), //o
    .io_output_inv_payload_all                     (exclusiveMonitor_io_input_inv_payload_all                   ), //i
    .io_output_inv_payload_address                 (exclusiveMonitor_io_input_inv_payload_address[31:0]         ), //i
    .io_output_inv_payload_length                  (exclusiveMonitor_io_input_inv_payload_length[5:0]           ), //i
    .io_output_ack_valid                           (dBusArbiter_io_output_ack_valid                             ), //o
    .io_output_ack_ready                           (exclusiveMonitor_io_input_ack_ready                         ), //i
    .io_output_sync_valid                          (exclusiveMonitor_io_input_sync_valid                        ), //i
    .io_output_sync_ready                          (dBusArbiter_io_output_sync_ready                            )  //o
  );
  BmbExclusiveMonitor exclusiveMonitor (
    .io_input_cmd_valid                         (dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_valid                           ), //i
    .io_input_cmd_ready                         (exclusiveMonitor_io_input_cmd_ready                                       ), //o
    .io_input_cmd_payload_last                  (dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_last                    ), //i
    .io_input_cmd_payload_fragment_opcode       (dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_opcode         ), //i
    .io_input_cmd_payload_fragment_exclusive    (dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_exclusive      ), //i
    .io_input_cmd_payload_fragment_address      (dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_address[31:0]  ), //i
    .io_input_cmd_payload_fragment_length       (dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_length[5:0]    ), //i
    .io_input_cmd_payload_fragment_data         (dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_data[63:0]     ), //i
    .io_input_cmd_payload_fragment_mask         (dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_mask[7:0]      ), //i
    .io_input_cmd_payload_fragment_context      (dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_context[2:0]   ), //i
    .io_input_rsp_valid                         (exclusiveMonitor_io_input_rsp_valid                                       ), //o
    .io_input_rsp_ready                         (_zz_21                                                                    ), //i
    .io_input_rsp_payload_last                  (exclusiveMonitor_io_input_rsp_payload_last                                ), //o
    .io_input_rsp_payload_fragment_opcode       (exclusiveMonitor_io_input_rsp_payload_fragment_opcode                     ), //o
    .io_input_rsp_payload_fragment_exclusive    (exclusiveMonitor_io_input_rsp_payload_fragment_exclusive                  ), //o
    .io_input_rsp_payload_fragment_data         (exclusiveMonitor_io_input_rsp_payload_fragment_data[63:0]                 ), //o
    .io_input_rsp_payload_fragment_context      (exclusiveMonitor_io_input_rsp_payload_fragment_context[2:0]               ), //o
    .io_input_inv_valid                         (exclusiveMonitor_io_input_inv_valid                                       ), //o
    .io_input_inv_ready                         (dBusArbiter_io_output_inv_ready                                           ), //i
    .io_input_inv_payload_all                   (exclusiveMonitor_io_input_inv_payload_all                                 ), //o
    .io_input_inv_payload_address               (exclusiveMonitor_io_input_inv_payload_address[31:0]                       ), //o
    .io_input_inv_payload_length                (exclusiveMonitor_io_input_inv_payload_length[5:0]                         ), //o
    .io_input_ack_valid                         (dBusArbiter_io_output_ack_valid                                           ), //i
    .io_input_ack_ready                         (exclusiveMonitor_io_input_ack_ready                                       ), //o
    .io_input_sync_valid                        (exclusiveMonitor_io_input_sync_valid                                      ), //o
    .io_input_sync_ready                        (dBusArbiter_io_output_sync_ready                                          ), //i
    .io_output_cmd_valid                        (exclusiveMonitor_io_output_cmd_valid                                      ), //o
    .io_output_cmd_ready                        (invalidateMonitor_io_input_cmd_ready                                      ), //i
    .io_output_cmd_payload_last                 (exclusiveMonitor_io_output_cmd_payload_last                               ), //o
    .io_output_cmd_payload_fragment_opcode      (exclusiveMonitor_io_output_cmd_payload_fragment_opcode                    ), //o
    .io_output_cmd_payload_fragment_address     (exclusiveMonitor_io_output_cmd_payload_fragment_address[31:0]             ), //o
    .io_output_cmd_payload_fragment_length      (exclusiveMonitor_io_output_cmd_payload_fragment_length[5:0]               ), //o
    .io_output_cmd_payload_fragment_data        (exclusiveMonitor_io_output_cmd_payload_fragment_data[63:0]                ), //o
    .io_output_cmd_payload_fragment_mask        (exclusiveMonitor_io_output_cmd_payload_fragment_mask[7:0]                 ), //o
    .io_output_cmd_payload_fragment_context     (exclusiveMonitor_io_output_cmd_payload_fragment_context[3:0]              ), //o
    .io_output_rsp_valid                        (invalidateMonitor_io_input_rsp_valid                                      ), //i
    .io_output_rsp_ready                        (exclusiveMonitor_io_output_rsp_ready                                      ), //o
    .io_output_rsp_payload_last                 (invalidateMonitor_io_input_rsp_payload_last                               ), //i
    .io_output_rsp_payload_fragment_opcode      (invalidateMonitor_io_input_rsp_payload_fragment_opcode                    ), //i
    .io_output_rsp_payload_fragment_data        (invalidateMonitor_io_input_rsp_payload_fragment_data[63:0]                ), //i
    .io_output_rsp_payload_fragment_context     (invalidateMonitor_io_input_rsp_payload_fragment_context[3:0]              ), //i
    .io_output_inv_valid                        (invalidateMonitor_io_input_inv_valid                                      ), //i
    .io_output_inv_ready                        (exclusiveMonitor_io_output_inv_ready                                      ), //o
    .io_output_inv_payload_all                  (invalidateMonitor_io_input_inv_payload_all                                ), //i
    .io_output_inv_payload_address              (invalidateMonitor_io_input_inv_payload_address[31:0]                      ), //i
    .io_output_inv_payload_length               (invalidateMonitor_io_input_inv_payload_length[5:0]                        ), //i
    .io_output_ack_valid                        (exclusiveMonitor_io_output_ack_valid                                      ), //o
    .io_output_ack_ready                        (invalidateMonitor_io_input_ack_ready                                      ), //i
    .io_output_sync_valid                       (invalidateMonitor_io_input_sync_valid                                     ), //i
    .io_output_sync_ready                       (exclusiveMonitor_io_output_sync_ready                                     ), //o
    .clk                                        (clk                                                                       ), //i
    .reset                                      (reset                                                                     )  //i
  );
  BmbInvalidateMonitor invalidateMonitor (
    .io_input_cmd_valid                        (exclusiveMonitor_io_output_cmd_valid                            ), //i
    .io_input_cmd_ready                        (invalidateMonitor_io_input_cmd_ready                            ), //o
    .io_input_cmd_payload_last                 (exclusiveMonitor_io_output_cmd_payload_last                     ), //i
    .io_input_cmd_payload_fragment_opcode      (exclusiveMonitor_io_output_cmd_payload_fragment_opcode          ), //i
    .io_input_cmd_payload_fragment_address     (exclusiveMonitor_io_output_cmd_payload_fragment_address[31:0]   ), //i
    .io_input_cmd_payload_fragment_length      (exclusiveMonitor_io_output_cmd_payload_fragment_length[5:0]     ), //i
    .io_input_cmd_payload_fragment_data        (exclusiveMonitor_io_output_cmd_payload_fragment_data[63:0]      ), //i
    .io_input_cmd_payload_fragment_mask        (exclusiveMonitor_io_output_cmd_payload_fragment_mask[7:0]       ), //i
    .io_input_cmd_payload_fragment_context     (exclusiveMonitor_io_output_cmd_payload_fragment_context[3:0]    ), //i
    .io_input_rsp_valid                        (invalidateMonitor_io_input_rsp_valid                            ), //o
    .io_input_rsp_ready                        (exclusiveMonitor_io_output_rsp_ready                            ), //i
    .io_input_rsp_payload_last                 (invalidateMonitor_io_input_rsp_payload_last                     ), //o
    .io_input_rsp_payload_fragment_opcode      (invalidateMonitor_io_input_rsp_payload_fragment_opcode          ), //o
    .io_input_rsp_payload_fragment_data        (invalidateMonitor_io_input_rsp_payload_fragment_data[63:0]      ), //o
    .io_input_rsp_payload_fragment_context     (invalidateMonitor_io_input_rsp_payload_fragment_context[3:0]    ), //o
    .io_input_inv_valid                        (invalidateMonitor_io_input_inv_valid                            ), //o
    .io_input_inv_ready                        (exclusiveMonitor_io_output_inv_ready                            ), //i
    .io_input_inv_payload_all                  (invalidateMonitor_io_input_inv_payload_all                      ), //o
    .io_input_inv_payload_address              (invalidateMonitor_io_input_inv_payload_address[31:0]            ), //o
    .io_input_inv_payload_length               (invalidateMonitor_io_input_inv_payload_length[5:0]              ), //o
    .io_input_ack_valid                        (exclusiveMonitor_io_output_ack_valid                            ), //i
    .io_input_ack_ready                        (invalidateMonitor_io_input_ack_ready                            ), //o
    .io_input_sync_valid                       (invalidateMonitor_io_input_sync_valid                           ), //o
    .io_input_sync_ready                       (exclusiveMonitor_io_output_sync_ready                           ), //i
    .io_output_cmd_valid                       (invalidateMonitor_io_output_cmd_valid                           ), //o
    .io_output_cmd_ready                       (io_dMem_cmd_ready                                               ), //i
    .io_output_cmd_payload_last                (invalidateMonitor_io_output_cmd_payload_last                    ), //o
    .io_output_cmd_payload_fragment_opcode     (invalidateMonitor_io_output_cmd_payload_fragment_opcode         ), //o
    .io_output_cmd_payload_fragment_address    (invalidateMonitor_io_output_cmd_payload_fragment_address[31:0]  ), //o
    .io_output_cmd_payload_fragment_length     (invalidateMonitor_io_output_cmd_payload_fragment_length[5:0]    ), //o
    .io_output_cmd_payload_fragment_data       (invalidateMonitor_io_output_cmd_payload_fragment_data[63:0]     ), //o
    .io_output_cmd_payload_fragment_mask       (invalidateMonitor_io_output_cmd_payload_fragment_mask[7:0]      ), //o
    .io_output_cmd_payload_fragment_context    (invalidateMonitor_io_output_cmd_payload_fragment_context[42:0]  ), //o
    .io_output_rsp_valid                       (io_dMem_rsp_valid                                               ), //i
    .io_output_rsp_ready                       (invalidateMonitor_io_output_rsp_ready                           ), //o
    .io_output_rsp_payload_last                (io_dMem_rsp_payload_last                                        ), //i
    .io_output_rsp_payload_fragment_opcode     (io_dMem_rsp_payload_fragment_opcode                             ), //i
    .io_output_rsp_payload_fragment_data       (io_dMem_rsp_payload_fragment_data[63:0]                         ), //i
    .io_output_rsp_payload_fragment_context    (io_dMem_rsp_payload_fragment_context[42:0]                      ), //i
    .clk                                       (clk                                                             ), //i
    .reset                                     (reset                                                           )  //i
  );
  BmbDecoder debug_arbiter (
    .io_input_cmd_valid                           (io_debugBus_cmd_valid                                          ), //i
    .io_input_cmd_ready                           (debug_arbiter_io_input_cmd_ready                               ), //o
    .io_input_cmd_payload_last                    (io_debugBus_cmd_payload_last                                   ), //i
    .io_input_cmd_payload_fragment_opcode         (io_debugBus_cmd_payload_fragment_opcode                        ), //i
    .io_input_cmd_payload_fragment_address        (io_debugBus_cmd_payload_fragment_address[19:0]                 ), //i
    .io_input_cmd_payload_fragment_length         (io_debugBus_cmd_payload_fragment_length[1:0]                   ), //i
    .io_input_cmd_payload_fragment_data           (io_debugBus_cmd_payload_fragment_data[31:0]                    ), //i
    .io_input_cmd_payload_fragment_mask           (io_debugBus_cmd_payload_fragment_mask[3:0]                     ), //i
    .io_input_rsp_valid                           (debug_arbiter_io_input_rsp_valid                               ), //o
    .io_input_rsp_ready                           (io_debugBus_rsp_ready                                          ), //i
    .io_input_rsp_payload_last                    (debug_arbiter_io_input_rsp_payload_last                        ), //o
    .io_input_rsp_payload_fragment_opcode         (debug_arbiter_io_input_rsp_payload_fragment_opcode             ), //o
    .io_input_rsp_payload_fragment_data           (debug_arbiter_io_input_rsp_payload_fragment_data[31:0]         ), //o
    .io_outputs_0_cmd_valid                       (debug_arbiter_io_outputs_0_cmd_valid                           ), //o
    .io_outputs_0_cmd_ready                       (cpus_0_core_debug_bus_cmd_ready                                ), //i
    .io_outputs_0_cmd_payload_last                (debug_arbiter_io_outputs_0_cmd_payload_last                    ), //o
    .io_outputs_0_cmd_payload_fragment_opcode     (debug_arbiter_io_outputs_0_cmd_payload_fragment_opcode         ), //o
    .io_outputs_0_cmd_payload_fragment_address    (debug_arbiter_io_outputs_0_cmd_payload_fragment_address[19:0]  ), //o
    .io_outputs_0_cmd_payload_fragment_length     (debug_arbiter_io_outputs_0_cmd_payload_fragment_length[1:0]    ), //o
    .io_outputs_0_cmd_payload_fragment_data       (debug_arbiter_io_outputs_0_cmd_payload_fragment_data[31:0]     ), //o
    .io_outputs_0_cmd_payload_fragment_mask       (debug_arbiter_io_outputs_0_cmd_payload_fragment_mask[3:0]      ), //o
    .io_outputs_0_rsp_valid                       (_zz_9                                                          ), //i
    .io_outputs_0_rsp_ready                       (debug_arbiter_io_outputs_0_rsp_ready                           ), //o
    .io_outputs_0_rsp_payload_last                (_zz_40                                                         ), //i
    .io_outputs_0_rsp_payload_fragment_opcode     (_zz_8                                                          ), //i
    .io_outputs_0_rsp_payload_fragment_data       (cpus_0_core_debug_bus_rsp_data[31:0]                           ), //i
    .clk                                          (clk                                                            ), //i
    .debugResetIn                                 (debugResetIn                                                   )  //i
  );
  always @ (*) begin
    io_debugReset = 1'b0;
    if(cpus_0_core_debug_resetOut_regNext)begin
      io_debugReset = 1'b1;
    end
  end

  assign cpus_0_core_iBus_toBmb_cmd_valid = cpus_0_core_iBus_cmd_valid;
  assign cpus_0_core_iBus_toBmb_cmd_payload_fragment_opcode = 1'b0;
  assign cpus_0_core_iBus_toBmb_cmd_payload_fragment_address = cpus_0_core_iBus_cmd_payload_address;
  assign cpus_0_core_iBus_toBmb_cmd_payload_fragment_length = 6'h3f;
  assign cpus_0_core_iBus_toBmb_cmd_payload_last = 1'b1;
  assign _zz_36 = (cpus_0_core_iBus_toBmb_rsp_payload_fragment_opcode == 1'b1);
  assign cpus_0_core_iBus_toBmb_rsp_ready = 1'b1;
  assign _zz_1 = ((1'b1 && (! dBus_Bridge_withWriteBuffer_buffer_stream_valid)) || dBus_Bridge_withWriteBuffer_buffer_stream_ready);
  assign dBus_Bridge_withWriteBuffer_buffer_stream_valid = _zz_2;
  assign dBus_Bridge_withWriteBuffer_aggregationCounterFull = (dBus_Bridge_withWriteBuffer_aggregationCounter == 3'b111);
  assign dBus_Bridge_withWriteBuffer_timerFull = dBus_Bridge_withWriteBuffer_timer[4];
  assign dBus_Bridge_withWriteBuffer_hit = (cpus_0_core_dBus_cmd_payload_address[31 : 3] == dBus_Bridge_withWriteBuffer_buffer_address[31 : 3]);
  assign dBus_Bridge_withWriteBuffer_canAggregate = ((((((cpus_0_core_dBus_cmd_valid && cpus_0_core_dBus_cmd_payload_wr) && (! cpus_0_core_dBus_cmd_payload_uncached)) && (! cpus_0_core_dBus_cmd_payload_exclusive)) && (! dBus_Bridge_withWriteBuffer_timerFull)) && (! dBus_Bridge_withWriteBuffer_aggregationCounterFull)) && ((! dBus_Bridge_withWriteBuffer_buffer_stream_valid) || (dBus_Bridge_withWriteBuffer_aggregationEnabled && dBus_Bridge_withWriteBuffer_hit)));
  assign dBus_Bridge_withWriteBuffer_doFlush = ((((cpus_0_core_dBus_cmd_valid && (! dBus_Bridge_withWriteBuffer_canAggregate)) || dBus_Bridge_withWriteBuffer_timerFull) || dBus_Bridge_withWriteBuffer_aggregationCounterFull) || (! dBus_Bridge_withWriteBuffer_aggregationEnabled));
  always @ (*) begin
    dBus_Bridge_withWriteBuffer_halt = 1'b0;
    if((! dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_ready))begin
      dBus_Bridge_withWriteBuffer_halt = 1'b1;
    end
  end

  assign dBus_Bridge_withWriteBuffer_buffer_stream_ready = (((dBus_Bridge_bus_cmd_ready && dBus_Bridge_withWriteBuffer_doFlush) || dBus_Bridge_withWriteBuffer_canAggregate) && (! dBus_Bridge_withWriteBuffer_halt));
  assign dBus_Bridge_bus_cmd_valid = ((dBus_Bridge_withWriteBuffer_buffer_stream_valid && dBus_Bridge_withWriteBuffer_doFlush) && (! dBus_Bridge_withWriteBuffer_halt));
  assign dBus_Bridge_bus_cmd_payload_last = 1'b1;
  assign dBus_Bridge_bus_cmd_payload_fragment_opcode = (dBus_Bridge_withWriteBuffer_buffer_write ? 1'b1 : 1'b0);
  assign dBus_Bridge_bus_cmd_payload_fragment_address = dBus_Bridge_withWriteBuffer_buffer_address;
  assign dBus_Bridge_bus_cmd_payload_fragment_length = dBus_Bridge_withWriteBuffer_buffer_length;
  assign dBus_Bridge_bus_cmd_payload_fragment_data = dBus_Bridge_withWriteBuffer_buffer_data;
  assign dBus_Bridge_bus_cmd_payload_fragment_mask = dBus_Bridge_withWriteBuffer_buffer_mask;
  assign dBus_Bridge_bus_cmd_payload_fragment_exclusive = dBus_Bridge_withWriteBuffer_buffer_exclusive;
  assign dBus_Bridge_bus_cmd_payload_fragment_context = dBus_Bridge_withWriteBuffer_busCmdContext_rspCount;
  assign dBus_Bridge_withWriteBuffer_busCmdContext_rspCount = dBus_Bridge_withWriteBuffer_aggregationCounter;
  assign dBus_Bridge_withWriteBuffer_aggregationSel = cpus_0_core_dBus_cmd_payload_address[2 : 2];
  assign _zz_3 = cpus_0_core_dBus_cmd_payload_data[7 : 0];
  assign _zz_4 = cpus_0_core_dBus_cmd_payload_data[15 : 8];
  assign _zz_5 = cpus_0_core_dBus_cmd_payload_data[23 : 16];
  assign _zz_6 = cpus_0_core_dBus_cmd_payload_data[31 : 24];
  assign dBus_Bridge_withWriteBuffer_rspCtx_rspCount = dBus_Bridge_bus_rsp_payload_fragment_context[2 : 0];
  assign dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_valid = ((dBus_Bridge_bus_cmd_valid && dBus_Bridge_bus_cmd_ready) && (dBus_Bridge_bus_cmd_payload_fragment_opcode == 1'b1));
  assign dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_payload = dBus_Bridge_withWriteBuffer_aggregationCounter;
  assign dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_ready = dBus_Bridge_withWriteBuffer_syncLogic_cmdCtx_fifo_io_push_ready;
  assign _zz_37 = (dBus_Bridge_bus_sync_valid && dBus_Bridge_bus_sync_ready);
  assign dBus_Bridge_bus_sync_ready = cpus_0_core_dBus_sync_ready;
  assign _zz_29 = (dBus_Bridge_bus_rsp_payload_fragment_opcode == 1'b1);
  assign dBus_Bridge_bus_rsp_ready = 1'b1;
  assign dBus_Bridge_bus_inv_ready = cpus_0_core_dBus_inv_ready;
  assign dBus_Bridge_bus_ack_valid = cpus_0_core_dBus_ack_valid;
  assign dBus_Bridge_bus_cmd_ready = ((1'b1 && (! dBus_Bridge_bus_cmd_m2sPipe_valid)) || dBus_Bridge_bus_cmd_m2sPipe_ready);
  assign dBus_Bridge_bus_cmd_m2sPipe_valid = dBus_Bridge_bus_cmd_m2sPipe_rValid;
  assign dBus_Bridge_bus_cmd_m2sPipe_payload_last = dBus_Bridge_bus_cmd_m2sPipe_rData_last;
  assign dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_opcode = dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_opcode;
  assign dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_exclusive = dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_exclusive;
  assign dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_address = dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_address;
  assign dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_length = dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_length;
  assign dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_data = dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_data;
  assign dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_mask = dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_mask;
  assign dBus_Bridge_bus_cmd_m2sPipe_payload_fragment_context = dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_context;
  assign dBus_Bridge_bus_cmd_m2sPipe_ready = dBusArbiter_io_inputs_0_cmd_ready;
  assign dBus_Bridge_bus_rsp_valid = dBusArbiter_io_inputs_0_rsp_valid;
  assign dBus_Bridge_bus_rsp_payload_last = dBusArbiter_io_inputs_0_rsp_payload_last;
  assign dBus_Bridge_bus_rsp_payload_fragment_opcode = dBusArbiter_io_inputs_0_rsp_payload_fragment_opcode;
  assign dBus_Bridge_bus_rsp_payload_fragment_exclusive = dBusArbiter_io_inputs_0_rsp_payload_fragment_exclusive;
  assign dBus_Bridge_bus_rsp_payload_fragment_data = dBusArbiter_io_inputs_0_rsp_payload_fragment_data;
  assign dBus_Bridge_bus_rsp_payload_fragment_context = dBusArbiter_io_inputs_0_rsp_payload_fragment_context;
  assign dBus_Bridge_bus_inv_valid = _zz_12;
  assign dBus_Bridge_bus_inv_payload_all = _zz_14;
  assign dBus_Bridge_bus_inv_payload_address = _zz_15;
  assign dBus_Bridge_bus_inv_payload_length = _zz_16;
  assign dBus_Bridge_bus_ack_ready = _zz_7;
  assign dBus_Bridge_bus_sync_valid = _zz_19;
  assign _zz_32 = io_softwareInterrupts[0];
  assign _zz_31 = io_externalInterrupts[0];
  assign _zz_30 = io_timerInterrupts[0];
  assign _zz_33 = io_externalSupervisorInterrupts[0];
  assign _zz_34 = (debug_arbiter_io_outputs_0_cmd_payload_fragment_opcode == 1'b1);
  assign _zz_35 = debug_arbiter_io_outputs_0_cmd_payload_fragment_address[7:0];
  assign _zz_10 = ((1'b1 && (! _zz_12)) || dBus_Bridge_bus_inv_ready);
  assign _zz_12 = _zz_13;
  assign _zz_7 = ((1'b1 && (! _zz_17)) || dBusArbiter_io_inputs_0_ack_ready);
  assign _zz_17 = _zz_18;
  assign _zz_11 = ((1'b1 && (! _zz_19)) || dBus_Bridge_bus_sync_ready);
  assign _zz_19 = _zz_20;
  assign dBusArbiter_io_output_cmd_s2mPipe_valid = (dBusArbiter_io_output_cmd_valid || dBusArbiter_io_output_cmd_s2mPipe_rValid);
  assign _zz_39 = (! dBusArbiter_io_output_cmd_s2mPipe_rValid);
  assign dBusArbiter_io_output_cmd_s2mPipe_payload_last = (dBusArbiter_io_output_cmd_s2mPipe_rValid ? dBusArbiter_io_output_cmd_s2mPipe_rData_last : dBusArbiter_io_output_cmd_payload_last);
  assign dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_opcode = (dBusArbiter_io_output_cmd_s2mPipe_rValid ? dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_opcode : dBusArbiter_io_output_cmd_payload_fragment_opcode);
  assign dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_exclusive = (dBusArbiter_io_output_cmd_s2mPipe_rValid ? dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_exclusive : dBusArbiter_io_output_cmd_payload_fragment_exclusive);
  assign dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_address = (dBusArbiter_io_output_cmd_s2mPipe_rValid ? dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_address : dBusArbiter_io_output_cmd_payload_fragment_address);
  assign dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_length = (dBusArbiter_io_output_cmd_s2mPipe_rValid ? dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_length : dBusArbiter_io_output_cmd_payload_fragment_length);
  assign dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_data = (dBusArbiter_io_output_cmd_s2mPipe_rValid ? dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_data : dBusArbiter_io_output_cmd_payload_fragment_data);
  assign dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_mask = (dBusArbiter_io_output_cmd_s2mPipe_rValid ? dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_mask : dBusArbiter_io_output_cmd_payload_fragment_mask);
  assign dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_context = (dBusArbiter_io_output_cmd_s2mPipe_rValid ? dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_context : dBusArbiter_io_output_cmd_payload_fragment_context);
  assign dBusArbiter_io_output_cmd_s2mPipe_ready = ((1'b1 && (! dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_valid)) || dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_ready);
  assign dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_valid = dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rValid;
  assign dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_last = dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_last;
  assign dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_opcode = dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_opcode;
  assign dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_exclusive = dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_exclusive;
  assign dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_address = dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_address;
  assign dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_length = dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_length;
  assign dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_data = dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_data;
  assign dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_mask = dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_mask;
  assign dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_payload_fragment_context = dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_context;
  assign dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_ready = exclusiveMonitor_io_input_cmd_ready;
  assign _zz_21 = ((1'b1 && (! _zz_22)) || dBusArbiter_io_output_rsp_ready);
  assign _zz_22 = _zz_23;
  assign io_dMem_cmd_valid = invalidateMonitor_io_output_cmd_valid;
  assign io_dMem_rsp_ready = invalidateMonitor_io_output_rsp_ready;
  assign io_dMem_cmd_payload_last = invalidateMonitor_io_output_cmd_payload_last;
  assign io_dMem_cmd_payload_fragment_opcode = invalidateMonitor_io_output_cmd_payload_fragment_opcode;
  assign io_dMem_cmd_payload_fragment_address = invalidateMonitor_io_output_cmd_payload_fragment_address;
  assign io_dMem_cmd_payload_fragment_length = invalidateMonitor_io_output_cmd_payload_fragment_length;
  assign io_dMem_cmd_payload_fragment_data = invalidateMonitor_io_output_cmd_payload_fragment_data;
  assign io_dMem_cmd_payload_fragment_mask = invalidateMonitor_io_output_cmd_payload_fragment_mask;
  assign io_dMem_cmd_payload_fragment_context = invalidateMonitor_io_output_cmd_payload_fragment_context;
  assign io_iMems_0_cmd_valid = cpus_0_core_iBus_toBmb_cmd_valid;
  assign cpus_0_core_iBus_toBmb_cmd_ready = io_iMems_0_cmd_ready;
  assign cpus_0_core_iBus_toBmb_rsp_valid = io_iMems_0_rsp_valid;
  assign io_iMems_0_rsp_ready = cpus_0_core_iBus_toBmb_rsp_ready;
  assign io_iMems_0_cmd_payload_last = cpus_0_core_iBus_toBmb_cmd_payload_last;
  assign cpus_0_core_iBus_toBmb_rsp_payload_last = io_iMems_0_rsp_payload_last;
  assign io_iMems_0_cmd_payload_fragment_opcode = cpus_0_core_iBus_toBmb_cmd_payload_fragment_opcode;
  assign io_iMems_0_cmd_payload_fragment_address = cpus_0_core_iBus_toBmb_cmd_payload_fragment_address;
  assign io_iMems_0_cmd_payload_fragment_length = cpus_0_core_iBus_toBmb_cmd_payload_fragment_length;
  assign cpus_0_core_iBus_toBmb_rsp_payload_fragment_opcode = io_iMems_0_rsp_payload_fragment_opcode;
  assign cpus_0_core_iBus_toBmb_rsp_payload_fragment_data = io_iMems_0_rsp_payload_fragment_data;
  assign io_debugBus_cmd_ready = debug_arbiter_io_input_cmd_ready;
  assign io_debugBus_rsp_valid = debug_arbiter_io_input_rsp_valid;
  assign io_debugBus_rsp_payload_last = debug_arbiter_io_input_rsp_payload_last;
  assign io_debugBus_rsp_payload_fragment_opcode = debug_arbiter_io_input_rsp_payload_fragment_opcode;
  assign io_debugBus_rsp_payload_fragment_data = debug_arbiter_io_input_rsp_payload_fragment_data;
  assign _zz_40 = 1'b1;
  assign _zz_38 = 1'b0;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_2 <= 1'b0;
      dBus_Bridge_withWriteBuffer_buffer_mask <= 8'h0;
      dBus_Bridge_withWriteBuffer_aggregationCounter <= 3'b000;
      dBus_Bridge_withWriteBuffer_timer <= 5'h0;
      dBus_Bridge_bus_cmd_m2sPipe_rValid <= 1'b0;
      _zz_13 <= 1'b0;
      _zz_18 <= 1'b0;
      _zz_20 <= 1'b0;
      dBusArbiter_io_output_cmd_s2mPipe_rValid <= 1'b0;
      dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rValid <= 1'b0;
      _zz_23 <= 1'b0;
    end else begin
      if(_zz_1)begin
        _zz_2 <= cpus_0_core_dBus_cmd_valid;
      end
      if((cpus_0_core_dBus_cmd_valid && _zz_1))begin
        dBus_Bridge_withWriteBuffer_aggregationCounter <= (dBus_Bridge_withWriteBuffer_aggregationCounter + 3'b001);
      end
      if((dBus_Bridge_withWriteBuffer_buffer_stream_valid && (! dBus_Bridge_withWriteBuffer_timerFull)))begin
        dBus_Bridge_withWriteBuffer_timer <= (dBus_Bridge_withWriteBuffer_timer + 5'h01);
      end
      if(((dBus_Bridge_bus_cmd_valid && dBus_Bridge_bus_cmd_ready) || (! dBus_Bridge_withWriteBuffer_buffer_stream_valid)))begin
        dBus_Bridge_withWriteBuffer_buffer_mask <= 8'h0;
        dBus_Bridge_withWriteBuffer_aggregationCounter <= 3'b000;
        dBus_Bridge_withWriteBuffer_timer <= 5'h0;
      end
      if(_zz_41)begin
        if(_zz_42)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[0] <= 1'b1;
        end
        if(_zz_43)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[1] <= 1'b1;
        end
        if(_zz_44)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[2] <= 1'b1;
        end
        if(_zz_45)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[3] <= 1'b1;
        end
        if(_zz_46)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[4] <= 1'b1;
        end
        if(_zz_47)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[5] <= 1'b1;
        end
        if(_zz_48)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[6] <= 1'b1;
        end
        if(_zz_49)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[7] <= 1'b1;
        end
      end
      if(dBus_Bridge_bus_cmd_ready)begin
        dBus_Bridge_bus_cmd_m2sPipe_rValid <= dBus_Bridge_bus_cmd_valid;
      end
      if(_zz_10)begin
        _zz_13 <= dBusArbiter_io_inputs_0_inv_valid;
      end
      if(_zz_7)begin
        _zz_18 <= dBus_Bridge_bus_ack_valid;
      end
      if(_zz_11)begin
        _zz_20 <= dBusArbiter_io_inputs_0_sync_valid;
      end
      if(dBusArbiter_io_output_cmd_s2mPipe_ready)begin
        dBusArbiter_io_output_cmd_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_50)begin
        dBusArbiter_io_output_cmd_s2mPipe_rValid <= dBusArbiter_io_output_cmd_valid;
      end
      if(dBusArbiter_io_output_cmd_s2mPipe_ready)begin
        dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rValid <= dBusArbiter_io_output_cmd_s2mPipe_valid;
      end
      if(_zz_21)begin
        _zz_23 <= exclusiveMonitor_io_input_rsp_valid;
      end
    end
  end

  always @ (posedge clk) begin
    if(_zz_41)begin
      if(_zz_42)begin
        dBus_Bridge_withWriteBuffer_buffer_data[7 : 0] <= _zz_3;
      end
      if(_zz_43)begin
        dBus_Bridge_withWriteBuffer_buffer_data[15 : 8] <= _zz_4;
      end
      if(_zz_44)begin
        dBus_Bridge_withWriteBuffer_buffer_data[23 : 16] <= _zz_5;
      end
      if(_zz_45)begin
        dBus_Bridge_withWriteBuffer_buffer_data[31 : 24] <= _zz_6;
      end
      if(_zz_46)begin
        dBus_Bridge_withWriteBuffer_buffer_data[39 : 32] <= _zz_3;
      end
      if(_zz_47)begin
        dBus_Bridge_withWriteBuffer_buffer_data[47 : 40] <= _zz_4;
      end
      if(_zz_48)begin
        dBus_Bridge_withWriteBuffer_buffer_data[55 : 48] <= _zz_5;
      end
      if(_zz_49)begin
        dBus_Bridge_withWriteBuffer_buffer_data[63 : 56] <= _zz_6;
      end
    end
    if((cpus_0_core_dBus_cmd_valid && _zz_1))begin
      dBus_Bridge_withWriteBuffer_buffer_write <= cpus_0_core_dBus_cmd_payload_wr;
      dBus_Bridge_withWriteBuffer_buffer_address <= cpus_0_core_dBus_cmd_payload_address;
      dBus_Bridge_withWriteBuffer_buffer_length <= (_zz_51 | 6'h03);
      dBus_Bridge_withWriteBuffer_buffer_exclusive <= cpus_0_core_dBus_cmd_payload_exclusive;
      if(((cpus_0_core_dBus_cmd_payload_wr && (! cpus_0_core_dBus_cmd_payload_uncached)) && (! cpus_0_core_dBus_cmd_payload_exclusive)))begin
        dBus_Bridge_withWriteBuffer_aggregationEnabled <= 1'b1;
        dBus_Bridge_withWriteBuffer_buffer_address[2 : 0] <= 3'b000;
        dBus_Bridge_withWriteBuffer_buffer_length <= 6'h07;
      end else begin
        dBus_Bridge_withWriteBuffer_aggregationEnabled <= 1'b0;
      end
    end
    if(dBus_Bridge_bus_cmd_ready)begin
      dBus_Bridge_bus_cmd_m2sPipe_rData_last <= dBus_Bridge_bus_cmd_payload_last;
      dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_opcode <= dBus_Bridge_bus_cmd_payload_fragment_opcode;
      dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_exclusive <= dBus_Bridge_bus_cmd_payload_fragment_exclusive;
      dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_address <= dBus_Bridge_bus_cmd_payload_fragment_address;
      dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_length <= dBus_Bridge_bus_cmd_payload_fragment_length;
      dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_data <= dBus_Bridge_bus_cmd_payload_fragment_data;
      dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_mask <= dBus_Bridge_bus_cmd_payload_fragment_mask;
      dBus_Bridge_bus_cmd_m2sPipe_rData_fragment_context <= dBus_Bridge_bus_cmd_payload_fragment_context;
    end
    if(_zz_10)begin
      _zz_14 <= dBusArbiter_io_inputs_0_inv_payload_all;
      _zz_15 <= dBusArbiter_io_inputs_0_inv_payload_address;
      _zz_16 <= dBusArbiter_io_inputs_0_inv_payload_length;
    end
    if(_zz_50)begin
      dBusArbiter_io_output_cmd_s2mPipe_rData_last <= dBusArbiter_io_output_cmd_payload_last;
      dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_opcode <= dBusArbiter_io_output_cmd_payload_fragment_opcode;
      dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_exclusive <= dBusArbiter_io_output_cmd_payload_fragment_exclusive;
      dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_address <= dBusArbiter_io_output_cmd_payload_fragment_address;
      dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_length <= dBusArbiter_io_output_cmd_payload_fragment_length;
      dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_data <= dBusArbiter_io_output_cmd_payload_fragment_data;
      dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_mask <= dBusArbiter_io_output_cmd_payload_fragment_mask;
      dBusArbiter_io_output_cmd_s2mPipe_rData_fragment_context <= dBusArbiter_io_output_cmd_payload_fragment_context;
    end
    if(dBusArbiter_io_output_cmd_s2mPipe_ready)begin
      dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_last <= dBusArbiter_io_output_cmd_s2mPipe_payload_last;
      dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_opcode <= dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_opcode;
      dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_exclusive <= dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_exclusive;
      dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_address <= dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_address;
      dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_length <= dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_length;
      dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_data <= dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_data;
      dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_mask <= dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_mask;
      dBusArbiter_io_output_cmd_s2mPipe_m2sPipe_rData_fragment_context <= dBusArbiter_io_output_cmd_s2mPipe_payload_fragment_context;
    end
    if(_zz_21)begin
      _zz_24 <= exclusiveMonitor_io_input_rsp_payload_last;
      _zz_25 <= exclusiveMonitor_io_input_rsp_payload_fragment_opcode;
      _zz_26 <= exclusiveMonitor_io_input_rsp_payload_fragment_exclusive;
      _zz_27 <= exclusiveMonitor_io_input_rsp_payload_fragment_data;
      _zz_28 <= exclusiveMonitor_io_input_rsp_payload_fragment_context;
    end
  end

  always @ (posedge clk) begin
    cpus_0_core_debug_resetOut_regNext <= cpus_0_core_debug_resetOut;
  end

  always @ (posedge clk or posedge debugResetIn) begin
    if (debugResetIn) begin
      _zz_9 <= 1'b0;
    end else begin
      _zz_9 <= (debug_arbiter_io_outputs_0_cmd_valid && cpus_0_core_debug_bus_cmd_ready);
    end
  end


endmodule

//StreamFifoLowLatency_1 replaced by StreamFifoLowLatency_1

module StreamFifo_2 (
  input               io_push_valid,
  output              io_push_ready,
  input      [3:0]    io_push_payload_context,
  input               io_push_payload_isWrite,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [3:0]    io_pop_payload_context,
  output              io_pop_payload_isWrite,
  input               io_flush,
  output     [5:0]    io_occupancy,
  output     [5:0]    io_availability,
  input               clk,
  input               reset
);
  reg        [4:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [4:0]    _zz_6;
  wire       [0:0]    _zz_7;
  wire       [4:0]    _zz_8;
  wire       [0:0]    _zz_9;
  wire       [4:0]    _zz_10;
  wire                _zz_11;
  wire       [4:0]    _zz_12;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [4:0]    logic_pushPtr_valueNext;
  reg        [4:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [4:0]    logic_popPtr_valueNext;
  reg        [4:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_2;
  wire       [4:0]    _zz_3;
  wire       [4:0]    logic_ptrDif;
  (* ram_style = "distributed" *) reg [4:0] logic_ram [0:31];

  assign _zz_5 = logic_pushPtr_willIncrement;
  assign _zz_6 = {4'd0, _zz_5};
  assign _zz_7 = logic_popPtr_willIncrement;
  assign _zz_8 = {4'd0, _zz_7};
  assign _zz_9 = _zz_3[4 : 4];
  assign _zz_10 = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_11 = 1'b1;
  assign _zz_12 = {io_push_payload_isWrite,io_push_payload_context};
  always @ (posedge clk) begin
    if(_zz_11) begin
      _zz_4 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @ (posedge clk) begin
    if(_zz_1) begin
      logic_ram[logic_pushPtr_value] <= _zz_12;
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(logic_pushing)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing)begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_pushPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 5'h1f);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @ (*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_6);
    if(logic_pushPtr_willClear)begin
      logic_pushPtr_valueNext = 5'h0;
    end
  end

  always @ (*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping)begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_popPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 5'h1f);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @ (*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_8);
    if(logic_popPtr_willClear)begin
      logic_popPtr_valueNext = 5'h0;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_2 && (! logic_full))));
  assign _zz_3 = _zz_4;
  assign io_pop_payload_context = _zz_3[3 : 0];
  assign io_pop_payload_isWrite = _zz_9[0];
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_10};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      logic_pushPtr_value <= 5'h0;
      logic_popPtr_value <= 5'h0;
      logic_risingOccupancy <= 1'b0;
      _zz_2 <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_2 <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if((logic_pushing != logic_popping))begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(io_flush)begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamFifoLowLatency_2 (
  input               io_push_valid,
  output              io_push_ready,
  input      [127:0]  io_push_payload_data,
  input      [15:0]   io_push_payload_we,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [127:0]  io_pop_payload_data,
  output     [15:0]   io_pop_payload_we,
  input               io_flush,
  output     [5:0]    io_occupancy,
  input               clk,
  input               reset
);
  wire       [143:0]  _zz_3;
  wire       [0:0]    _zz_4;
  wire       [4:0]    _zz_5;
  wire       [0:0]    _zz_6;
  wire       [4:0]    _zz_7;
  wire       [143:0]  _zz_8;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [4:0]    pushPtr_valueNext;
  reg        [4:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [4:0]    popPtr_valueNext;
  reg        [4:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [143:0]  _zz_2;
  wire       [4:0]    ptrDif;
  (* ram_style = "distributed" *) reg [143:0] ram [0:31];

  assign _zz_4 = pushPtr_willIncrement;
  assign _zz_5 = {4'd0, _zz_4};
  assign _zz_6 = popPtr_willIncrement;
  assign _zz_7 = {4'd0, _zz_6};
  assign _zz_8 = {io_push_payload_we,io_push_payload_data};
  assign _zz_3 = ram[popPtr_value];
  always @ (posedge clk) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_8;
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(pushing)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing)begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush)begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 5'h1f);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @ (*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_5);
    if(pushPtr_willClear)begin
      pushPtr_valueNext = 5'h0;
    end
  end

  always @ (*) begin
    popPtr_willIncrement = 1'b0;
    if(popping)begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    popPtr_willClear = 1'b0;
    if(io_flush)begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 5'h1f);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @ (*) begin
    popPtr_valueNext = (popPtr_value + _zz_7);
    if(popPtr_willClear)begin
      popPtr_valueNext = 5'h0;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  assign io_pop_valid = (! empty);
  assign _zz_2 = _zz_3;
  assign io_pop_payload_data = _zz_2[127 : 0];
  assign io_pop_payload_we = _zz_2[143 : 128];
  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pushPtr_value <= 5'h0;
      popPtr_value <= 5'h0;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if((pushing != popping))begin
        risingOccupancy <= pushing;
      end
      if(io_flush)begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamFork_3 (
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_last,
  input      [0:0]    io_input_payload_fragment_opcode,
  input      [31:0]   io_input_payload_fragment_address,
  input      [3:0]    io_input_payload_fragment_length,
  input      [127:0]  io_input_payload_fragment_data,
  input      [15:0]   io_input_payload_fragment_mask,
  input      [3:0]    io_input_payload_fragment_context,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output              io_outputs_0_payload_last,
  output     [0:0]    io_outputs_0_payload_fragment_opcode,
  output     [31:0]   io_outputs_0_payload_fragment_address,
  output     [3:0]    io_outputs_0_payload_fragment_length,
  output     [127:0]  io_outputs_0_payload_fragment_data,
  output     [15:0]   io_outputs_0_payload_fragment_mask,
  output     [3:0]    io_outputs_0_payload_fragment_context,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output              io_outputs_1_payload_last,
  output     [0:0]    io_outputs_1_payload_fragment_opcode,
  output     [31:0]   io_outputs_1_payload_fragment_address,
  output     [3:0]    io_outputs_1_payload_fragment_length,
  output     [127:0]  io_outputs_1_payload_fragment_data,
  output     [15:0]   io_outputs_1_payload_fragment_mask,
  output     [3:0]    io_outputs_1_payload_fragment_context,
  input               clk,
  input               reset
);
  reg                 _zz_1;
  reg                 _zz_2;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1);
  assign io_outputs_0_payload_last = io_input_payload_last;
  assign io_outputs_0_payload_fragment_opcode = io_input_payload_fragment_opcode;
  assign io_outputs_0_payload_fragment_address = io_input_payload_fragment_address;
  assign io_outputs_0_payload_fragment_length = io_input_payload_fragment_length;
  assign io_outputs_0_payload_fragment_data = io_input_payload_fragment_data;
  assign io_outputs_0_payload_fragment_mask = io_input_payload_fragment_mask;
  assign io_outputs_0_payload_fragment_context = io_input_payload_fragment_context;
  assign io_outputs_1_valid = (io_input_valid && _zz_2);
  assign io_outputs_1_payload_last = io_input_payload_last;
  assign io_outputs_1_payload_fragment_opcode = io_input_payload_fragment_opcode;
  assign io_outputs_1_payload_fragment_address = io_input_payload_fragment_address;
  assign io_outputs_1_payload_fragment_length = io_input_payload_fragment_length;
  assign io_outputs_1_payload_fragment_data = io_input_payload_fragment_data;
  assign io_outputs_1_payload_fragment_mask = io_input_payload_fragment_mask;
  assign io_outputs_1_payload_fragment_context = io_input_payload_fragment_context;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_1 <= 1'b1;
      _zz_2 <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1 <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2 <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1 <= 1'b1;
        _zz_2 <= 1'b1;
      end
    end
  end


endmodule

module BmbUnburstify_1 (
  input               io_input_cmd_valid,
  output reg          io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  input      [127:0]  io_input_cmd_payload_fragment_data,
  input      [15:0]   io_input_cmd_payload_fragment_mask,
  input      [1:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [127:0]  io_input_rsp_payload_fragment_data,
  output     [1:0]    io_input_rsp_payload_fragment_context,
  output reg          io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output reg [0:0]    io_output_cmd_payload_fragment_opcode,
  output reg [31:0]   io_output_cmd_payload_fragment_address,
  output reg [3:0]    io_output_cmd_payload_fragment_length,
  output     [127:0]  io_output_cmd_payload_fragment_data,
  output     [15:0]   io_output_cmd_payload_fragment_mask,
  output     [3:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output reg          io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [127:0]  io_output_rsp_payload_fragment_data,
  input      [3:0]    io_output_rsp_payload_fragment_context,
  input               clk,
  input               reset
);
  wire                _zz_2;
  wire                _zz_3;
  wire       [11:0]   _zz_4;
  wire       [11:0]   _zz_5;
  wire       [11:0]   _zz_6;
  wire       [0:0]    _zz_7;
  wire       [0:0]    _zz_8;
  wire                doResult;
  reg                 buffer_valid;
  reg        [0:0]    buffer_opcode;
  reg        [31:0]   buffer_address;
  reg        [1:0]    buffer_context;
  reg        [1:0]    buffer_beat;
  wire                buffer_last;
  wire       [31:0]   buffer_addressIncr;
  wire                buffer_isWrite;
  wire       [1:0]    cmdTransferBeatCount;
  wire                requireBuffer;
  reg        [1:0]    cmdContext_context;
  reg                 cmdContext_drop;
  reg                 cmdContext_last;
  wire       [1:0]    rspContext_context;
  wire                rspContext_drop;
  wire                rspContext_last;
  wire       [3:0]    _zz_1;
  reg                 io_output_rsp_thrown_valid;
  wire                io_output_rsp_thrown_ready;
  wire                io_output_rsp_thrown_payload_last;
  wire       [0:0]    io_output_rsp_thrown_payload_fragment_opcode;
  wire       [127:0]  io_output_rsp_thrown_payload_fragment_data;
  wire       [3:0]    io_output_rsp_thrown_payload_fragment_context;

  assign _zz_2 = (! (rspContext_last || (! rspContext_drop)));
  assign _zz_3 = (io_output_cmd_valid && io_output_cmd_ready);
  assign _zz_4 = (_zz_6 + 12'h010);
  assign _zz_5 = buffer_address[11 : 0];
  assign _zz_6 = _zz_5;
  assign _zz_7 = _zz_1[2 : 2];
  assign _zz_8 = _zz_1[3 : 3];
  assign buffer_last = (buffer_beat == 2'b01);
  assign buffer_addressIncr = {buffer_address[31 : 12],(_zz_4 & (~ 12'h00f))};
  assign buffer_isWrite = (buffer_opcode == 1'b1);
  assign cmdTransferBeatCount = io_input_cmd_payload_fragment_length[5 : 4];
  assign requireBuffer = (cmdTransferBeatCount != 2'b00);
  assign io_output_cmd_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
  assign io_output_cmd_payload_last = 1'b1;
  assign io_output_cmd_payload_fragment_context = {cmdContext_last,{cmdContext_drop,cmdContext_context}};
  always @ (*) begin
    if(buffer_valid)begin
      io_output_cmd_payload_fragment_address = buffer_addressIncr;
    end else begin
      io_output_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
      if(requireBuffer)begin
        io_output_cmd_payload_fragment_address[3 : 0] = 4'b0000;
      end
    end
  end

  always @ (*) begin
    if(buffer_valid)begin
      io_output_cmd_payload_fragment_opcode = buffer_opcode;
    end else begin
      io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
    end
  end

  always @ (*) begin
    if(buffer_valid)begin
      io_output_cmd_payload_fragment_length = 4'b1111;
    end else begin
      if(requireBuffer)begin
        io_output_cmd_payload_fragment_length = 4'b1111;
      end else begin
        io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length[3:0];
      end
    end
  end

  always @ (*) begin
    if(buffer_valid)begin
      cmdContext_context = buffer_context;
    end else begin
      cmdContext_context = io_input_cmd_payload_fragment_context;
    end
  end

  always @ (*) begin
    io_input_cmd_ready = 1'b0;
    if(buffer_valid)begin
      io_input_cmd_ready = (buffer_isWrite && io_output_cmd_ready);
    end else begin
      io_input_cmd_ready = io_output_cmd_ready;
    end
  end

  always @ (*) begin
    if(buffer_valid)begin
      io_output_cmd_valid = (! (buffer_isWrite && (! io_input_cmd_valid)));
    end else begin
      io_output_cmd_valid = io_input_cmd_valid;
    end
  end

  always @ (*) begin
    if(buffer_valid)begin
      cmdContext_last = buffer_last;
    end else begin
      cmdContext_last = (! requireBuffer);
    end
  end

  always @ (*) begin
    if(buffer_valid)begin
      cmdContext_drop = buffer_isWrite;
    end else begin
      cmdContext_drop = (io_input_cmd_payload_fragment_opcode == 1'b1);
    end
  end

  assign _zz_1 = io_output_rsp_payload_fragment_context;
  assign rspContext_context = _zz_1[1 : 0];
  assign rspContext_drop = _zz_7[0];
  assign rspContext_last = _zz_8[0];
  always @ (*) begin
    io_output_rsp_thrown_valid = io_output_rsp_valid;
    if(_zz_2)begin
      io_output_rsp_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    io_output_rsp_ready = io_output_rsp_thrown_ready;
    if(_zz_2)begin
      io_output_rsp_ready = 1'b1;
    end
  end

  assign io_output_rsp_thrown_payload_last = io_output_rsp_payload_last;
  assign io_output_rsp_thrown_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_output_rsp_thrown_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_output_rsp_thrown_payload_fragment_context = io_output_rsp_payload_fragment_context;
  assign io_input_rsp_valid = io_output_rsp_thrown_valid;
  assign io_output_rsp_thrown_ready = io_input_rsp_ready;
  assign io_input_rsp_payload_last = rspContext_last;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = rspContext_context;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      buffer_valid <= 1'b0;
    end else begin
      if(_zz_3)begin
        if(buffer_last)begin
          buffer_valid <= 1'b0;
        end
      end
      if(! buffer_valid) begin
        buffer_valid <= (requireBuffer && (io_output_cmd_valid && io_output_cmd_ready));
      end
    end
  end

  always @ (posedge clk) begin
    if(_zz_3)begin
      buffer_beat <= (buffer_beat - 2'b01);
      buffer_address[11 : 0] <= buffer_addressIncr[11 : 0];
    end
    if(! buffer_valid) begin
      buffer_opcode <= io_input_cmd_payload_fragment_opcode;
      buffer_address <= io_input_cmd_payload_fragment_address;
      buffer_context <= io_input_cmd_payload_fragment_context;
      buffer_beat <= cmdTransferBeatCount;
    end
  end


endmodule

module BmbUpSizerBridge (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  input      [63:0]   io_input_cmd_payload_fragment_data,
  input      [7:0]    io_input_cmd_payload_fragment_mask,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output reg          io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [63:0]   io_input_rsp_payload_fragment_data,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [31:0]   io_output_cmd_payload_fragment_address,
  output     [5:0]    io_output_cmd_payload_fragment_length,
  output reg [127:0]  io_output_cmd_payload_fragment_data,
  output reg [15:0]   io_output_cmd_payload_fragment_mask,
  output     [1:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [127:0]  io_output_rsp_payload_fragment_data,
  input      [1:0]    io_output_rsp_payload_fragment_context,
  input               clk,
  input               reset
);
  reg        [63:0]   _zz_2;
  wire                _zz_3;
  wire       [2:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [2:0]    _zz_6;
  wire       [0:0]    cmdArea_context_selStart;
  reg        [0:0]    cmdArea_context_selEnd;
  reg        [63:0]   cmdArea_writeLogic_dataRegs_0;
  reg        [7:0]    cmdArea_writeLogic_maskRegs_0;
  reg        [0:0]    cmdArea_writeLogic_selReg;
  reg                 io_input_cmd_payload_first;
  wire       [0:0]    cmdArea_writeLogic_sel;
  wire       [63:0]   cmdArea_writeLogic_outputData_0;
  wire       [63:0]   cmdArea_writeLogic_outputData_1;
  wire       [7:0]    cmdArea_writeLogic_outputMask_0;
  wire       [7:0]    cmdArea_writeLogic_outputMask_1;
  wire       [0:0]    rspArea_context_selStart;
  wire       [0:0]    rspArea_context_selEnd;
  wire       [1:0]    _zz_1;
  reg        [0:0]    rspArea_readLogic_selReg;
  reg                 io_input_rsp_payload_first;
  wire       [0:0]    rspArea_readLogic_sel;

  assign _zz_3 = ((! io_input_cmd_payload_first) && (cmdArea_writeLogic_selReg != 1'b0));
  assign _zz_4 = (_zz_6 + io_input_cmd_payload_fragment_length[5 : 3]);
  assign _zz_5 = io_input_cmd_payload_fragment_address[3 : 3];
  assign _zz_6 = {2'd0, _zz_5};
  always @(*) begin
    case(rspArea_readLogic_sel)
      1'b0 : begin
        _zz_2 = io_output_rsp_payload_fragment_data[63 : 0];
      end
      default : begin
        _zz_2 = io_output_rsp_payload_fragment_data[127 : 64];
      end
    endcase
  end

  assign cmdArea_context_selStart = io_input_cmd_payload_fragment_address[3 : 3];
  always @ (*) begin
    cmdArea_context_selEnd = _zz_4[0:0];
    if((io_input_cmd_payload_fragment_opcode == 1'b1))begin
      cmdArea_context_selEnd = io_input_cmd_payload_fragment_address[3 : 3];
    end
  end

  assign io_output_cmd_payload_last = io_input_cmd_payload_last;
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign io_output_cmd_payload_fragment_context = {cmdArea_context_selEnd,cmdArea_context_selStart};
  assign cmdArea_writeLogic_sel = (io_input_cmd_payload_first ? cmdArea_context_selStart : cmdArea_writeLogic_selReg);
  assign cmdArea_writeLogic_outputData_0 = io_output_cmd_payload_fragment_data[63 : 0];
  assign cmdArea_writeLogic_outputData_1 = io_output_cmd_payload_fragment_data[127 : 64];
  assign cmdArea_writeLogic_outputMask_0 = io_output_cmd_payload_fragment_mask[7 : 0];
  assign cmdArea_writeLogic_outputMask_1 = io_output_cmd_payload_fragment_mask[15 : 8];
  always @ (*) begin
    io_output_cmd_payload_fragment_data[63 : 0] = io_input_cmd_payload_fragment_data;
    if(_zz_3)begin
      io_output_cmd_payload_fragment_data[63 : 0] = cmdArea_writeLogic_dataRegs_0;
    end
    io_output_cmd_payload_fragment_data[127 : 64] = io_input_cmd_payload_fragment_data;
  end

  always @ (*) begin
    io_output_cmd_payload_fragment_mask[7 : 0] = ((cmdArea_writeLogic_sel == 1'b0) ? io_input_cmd_payload_fragment_mask : cmdArea_writeLogic_maskRegs_0);
    io_output_cmd_payload_fragment_mask[15 : 8] = ((cmdArea_writeLogic_sel == 1'b1) ? io_input_cmd_payload_fragment_mask : 8'h0);
  end

  assign io_output_cmd_valid = (io_input_cmd_valid && ((cmdArea_writeLogic_sel == 1'b1) || io_input_cmd_payload_last));
  assign io_input_cmd_ready = (! (io_output_cmd_valid && (! io_output_cmd_ready)));
  assign _zz_1 = io_output_rsp_payload_fragment_context;
  assign rspArea_context_selStart = _zz_1[0 : 0];
  assign rspArea_context_selEnd = _zz_1[1 : 1];
  assign io_input_rsp_valid = io_output_rsp_valid;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign rspArea_readLogic_sel = (io_input_rsp_payload_first ? rspArea_context_selStart : rspArea_readLogic_selReg);
  always @ (*) begin
    io_input_rsp_payload_last = (io_output_rsp_payload_last && (rspArea_readLogic_sel == rspArea_context_selEnd));
    if((rspArea_context_selEnd != rspArea_readLogic_sel))begin
      io_input_rsp_payload_last = 1'b0;
    end
  end

  assign io_output_rsp_ready = (io_input_rsp_ready && (io_input_rsp_payload_last || (rspArea_readLogic_sel == 1'b1)));
  assign io_input_rsp_payload_fragment_data = _zz_2;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      cmdArea_writeLogic_maskRegs_0 <= 8'h0;
      io_input_cmd_payload_first <= 1'b1;
      io_input_rsp_payload_first <= 1'b1;
    end else begin
      if((io_input_cmd_valid && io_input_cmd_ready))begin
        io_input_cmd_payload_first <= io_input_cmd_payload_last;
      end
      if((io_input_cmd_valid && (cmdArea_writeLogic_sel == 1'b0)))begin
        cmdArea_writeLogic_maskRegs_0 <= io_input_cmd_payload_fragment_mask;
      end
      if((io_output_cmd_valid && io_output_cmd_ready))begin
        cmdArea_writeLogic_maskRegs_0 <= 8'h0;
      end
      if((io_input_rsp_valid && io_input_rsp_ready))begin
        io_input_rsp_payload_first <= io_input_rsp_payload_last;
      end
    end
  end

  always @ (posedge clk) begin
    if((io_input_cmd_valid && io_input_cmd_ready))begin
      cmdArea_writeLogic_selReg <= (cmdArea_writeLogic_sel + 1'b1);
    end
    if(! _zz_3) begin
      cmdArea_writeLogic_dataRegs_0 <= io_input_cmd_payload_fragment_data;
    end
    rspArea_readLogic_selReg <= rspArea_readLogic_sel;
    if((io_input_rsp_valid && io_input_rsp_ready))begin
      rspArea_readLogic_selReg <= (rspArea_readLogic_sel + 1'b1);
    end
  end


endmodule

module StreamArbiter_3 (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input               io_inputs_0_payload_last,
  input      [0:0]    io_inputs_0_payload_fragment_opcode,
  input      [63:0]   io_inputs_0_payload_fragment_data,
  output              io_output_valid,
  input               io_output_ready,
  output              io_output_payload_last,
  output     [0:0]    io_output_payload_fragment_opcode,
  output     [63:0]   io_output_payload_fragment_data,
  output     [0:0]    io_chosenOH,
  input               clk,
  input               reset
);
  wire       [1:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [1:0]    _zz_6;
  wire       [0:0]    _zz_7;
  wire       [0:0]    _zz_8;
  reg                 locked;
  wire                maskProposal_0;
  reg                 maskLocked_0;
  wire                maskRouted_0;
  wire       [0:0]    _zz_1;
  wire       [1:0]    _zz_2;
  wire       [1:0]    _zz_3;

  assign _zz_4 = (_zz_2 - _zz_6);
  assign _zz_5 = maskLocked_0;
  assign _zz_6 = {1'd0, _zz_5};
  assign _zz_7 = _zz_8[0 : 0];
  assign _zz_8 = (_zz_3[1 : 1] | _zz_3[0 : 0]);
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign _zz_1 = io_inputs_0_valid;
  assign _zz_2 = {_zz_1,_zz_1};
  assign _zz_3 = (_zz_2 & (~ _zz_4));
  assign maskProposal_0 = _zz_7[0];
  assign io_output_valid = (io_inputs_0_valid && maskRouted_0);
  assign io_output_payload_last = io_inputs_0_payload_last;
  assign io_output_payload_fragment_opcode = io_inputs_0_payload_fragment_opcode;
  assign io_output_payload_fragment_data = io_inputs_0_payload_fragment_data;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_chosenOH = maskRouted_0;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b1;
    end else begin
      if(io_output_valid)begin
        maskLocked_0 <= maskRouted_0;
      end
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if(((io_output_valid && io_output_ready) && io_output_payload_last))begin
        locked <= 1'b0;
      end
    end
  end


endmodule

module StreamDemux (
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_last,
  input      [0:0]    io_input_payload_fragment_opcode,
  input      [31:0]   io_input_payload_fragment_address,
  input      [5:0]    io_input_payload_fragment_length,
  input      [63:0]   io_input_payload_fragment_data,
  input      [7:0]    io_input_payload_fragment_mask,
  output reg          io_outputs_0_valid,
  input               io_outputs_0_ready,
  output              io_outputs_0_payload_last,
  output     [0:0]    io_outputs_0_payload_fragment_opcode,
  output     [31:0]   io_outputs_0_payload_fragment_address,
  output     [5:0]    io_outputs_0_payload_fragment_length,
  output     [63:0]   io_outputs_0_payload_fragment_data,
  output     [7:0]    io_outputs_0_payload_fragment_mask
);
  wire                _zz_1;

  assign _zz_1 = 1'b0;
  always @ (*) begin
    io_input_ready = 1'b0;
    if(! _zz_1) begin
      io_input_ready = io_outputs_0_ready;
    end
  end

  assign io_outputs_0_payload_last = io_input_payload_last;
  assign io_outputs_0_payload_fragment_opcode = io_input_payload_fragment_opcode;
  assign io_outputs_0_payload_fragment_address = io_input_payload_fragment_address;
  assign io_outputs_0_payload_fragment_length = io_input_payload_fragment_length;
  assign io_outputs_0_payload_fragment_data = io_input_payload_fragment_data;
  assign io_outputs_0_payload_fragment_mask = io_input_payload_fragment_mask;
  always @ (*) begin
    if(_zz_1)begin
      io_outputs_0_valid = 1'b0;
    end else begin
      io_outputs_0_valid = io_input_valid;
    end
  end


endmodule

module StreamArbiter_2 (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input               io_inputs_0_payload_last,
  input      [0:0]    io_inputs_0_payload_fragment_source,
  input      [0:0]    io_inputs_0_payload_fragment_opcode,
  input      [31:0]   io_inputs_0_payload_fragment_address,
  input      [5:0]    io_inputs_0_payload_fragment_length,
  input      [31:0]   io_inputs_0_payload_fragment_data,
  input      [3:0]    io_inputs_0_payload_fragment_mask,
  input      [1:0]    io_inputs_0_payload_fragment_context,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input               io_inputs_1_payload_last,
  input      [0:0]    io_inputs_1_payload_fragment_source,
  input      [0:0]    io_inputs_1_payload_fragment_opcode,
  input      [31:0]   io_inputs_1_payload_fragment_address,
  input      [5:0]    io_inputs_1_payload_fragment_length,
  input      [31:0]   io_inputs_1_payload_fragment_data,
  input      [3:0]    io_inputs_1_payload_fragment_mask,
  input      [1:0]    io_inputs_1_payload_fragment_context,
  output              io_output_valid,
  input               io_output_ready,
  output              io_output_payload_last,
  output     [0:0]    io_output_payload_fragment_source,
  output     [0:0]    io_output_payload_fragment_opcode,
  output     [31:0]   io_output_payload_fragment_address,
  output     [5:0]    io_output_payload_fragment_length,
  output     [31:0]   io_output_payload_fragment_data,
  output     [3:0]    io_output_payload_fragment_mask,
  output     [1:0]    io_output_payload_fragment_context,
  output     [0:0]    io_chosen,
  output     [1:0]    io_chosenOH,
  input               clk,
  input               reset
);
  wire       [1:0]    _zz_3;
  wire       [1:0]    _zz_4;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire       [1:0]    _zz_1;
  wire                _zz_2;

  assign _zz_3 = (_zz_1 & (~ _zz_4));
  assign _zz_4 = (_zz_1 - 2'b01);
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign _zz_1 = {io_inputs_1_valid,io_inputs_0_valid};
  assign maskProposal_0 = io_inputs_0_valid;
  assign maskProposal_1 = _zz_3[1];
  assign io_output_valid = ((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1));
  assign io_output_payload_last = (maskRouted_0 ? io_inputs_0_payload_last : io_inputs_1_payload_last);
  assign io_output_payload_fragment_source = (maskRouted_0 ? io_inputs_0_payload_fragment_source : io_inputs_1_payload_fragment_source);
  assign io_output_payload_fragment_opcode = (maskRouted_0 ? io_inputs_0_payload_fragment_opcode : io_inputs_1_payload_fragment_opcode);
  assign io_output_payload_fragment_address = (maskRouted_0 ? io_inputs_0_payload_fragment_address : io_inputs_1_payload_fragment_address);
  assign io_output_payload_fragment_length = (maskRouted_0 ? io_inputs_0_payload_fragment_length : io_inputs_1_payload_fragment_length);
  assign io_output_payload_fragment_data = (maskRouted_0 ? io_inputs_0_payload_fragment_data : io_inputs_1_payload_fragment_data);
  assign io_output_payload_fragment_mask = (maskRouted_0 ? io_inputs_0_payload_fragment_mask : io_inputs_1_payload_fragment_mask);
  assign io_output_payload_fragment_context = (maskRouted_0 ? io_inputs_0_payload_fragment_context : io_inputs_1_payload_fragment_context);
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_chosenOH = {maskRouted_1,maskRouted_0};
  assign _zz_2 = io_chosenOH[1];
  assign io_chosen = _zz_2;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      locked <= 1'b0;
    end else begin
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if(((io_output_valid && io_output_ready) && io_output_payload_last))begin
        locked <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(io_output_valid)begin
      maskLocked_0 <= maskRouted_0;
      maskLocked_1 <= maskRouted_1;
    end
  end


endmodule

module StreamFifoLowLatency_1 (
  input               io_push_valid,
  output              io_push_ready,
  input      [127:0]  io_push_payload_data,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [127:0]  io_pop_payload_data,
  input               io_flush,
  output     [5:0]    io_occupancy,
  input               clk,
  input               reset
);
  wire       [127:0]  _zz_2;
  wire       [0:0]    _zz_3;
  wire       [4:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [4:0]    _zz_6;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [4:0]    pushPtr_valueNext;
  reg        [4:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [4:0]    popPtr_valueNext;
  reg        [4:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [4:0]    ptrDif;
  (* ram_style = "distributed" *) reg [127:0] ram [0:31];

  assign _zz_3 = pushPtr_willIncrement;
  assign _zz_4 = {4'd0, _zz_3};
  assign _zz_5 = popPtr_willIncrement;
  assign _zz_6 = {4'd0, _zz_5};
  assign _zz_2 = ram[popPtr_value];
  always @ (posedge clk) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= io_push_payload_data;
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(pushing)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing)begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush)begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 5'h1f);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @ (*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_4);
    if(pushPtr_willClear)begin
      pushPtr_valueNext = 5'h0;
    end
  end

  always @ (*) begin
    popPtr_willIncrement = 1'b0;
    if(popping)begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    popPtr_willClear = 1'b0;
    if(io_flush)begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 5'h1f);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @ (*) begin
    popPtr_valueNext = (popPtr_value + _zz_6);
    if(popPtr_willClear)begin
      popPtr_valueNext = 5'h0;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  assign io_pop_valid = (! empty);
  assign io_pop_payload_data = _zz_2[127 : 0];
  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pushPtr_value <= 5'h0;
      popPtr_value <= 5'h0;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if((pushing != popping))begin
        risingOccupancy <= pushing;
      end
      if(io_flush)begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamFifo_1 (
  input               io_push_valid,
  output              io_push_ready,
  input      [1:0]    io_push_payload_context,
  input               io_push_payload_isWrite,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [1:0]    io_pop_payload_context,
  output              io_pop_payload_isWrite,
  input               io_flush,
  output     [5:0]    io_occupancy,
  output     [5:0]    io_availability,
  input               clk,
  input               reset
);
  reg        [2:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [4:0]    _zz_6;
  wire       [0:0]    _zz_7;
  wire       [4:0]    _zz_8;
  wire       [0:0]    _zz_9;
  wire       [4:0]    _zz_10;
  wire                _zz_11;
  wire       [2:0]    _zz_12;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [4:0]    logic_pushPtr_valueNext;
  reg        [4:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [4:0]    logic_popPtr_valueNext;
  reg        [4:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_2;
  wire       [2:0]    _zz_3;
  wire       [4:0]    logic_ptrDif;
  (* ram_style = "distributed" *) reg [2:0] logic_ram [0:31];

  assign _zz_5 = logic_pushPtr_willIncrement;
  assign _zz_6 = {4'd0, _zz_5};
  assign _zz_7 = logic_popPtr_willIncrement;
  assign _zz_8 = {4'd0, _zz_7};
  assign _zz_9 = _zz_3[2 : 2];
  assign _zz_10 = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_11 = 1'b1;
  assign _zz_12 = {io_push_payload_isWrite,io_push_payload_context};
  always @ (posedge clk) begin
    if(_zz_11) begin
      _zz_4 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @ (posedge clk) begin
    if(_zz_1) begin
      logic_ram[logic_pushPtr_value] <= _zz_12;
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(logic_pushing)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing)begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_pushPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 5'h1f);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @ (*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_6);
    if(logic_pushPtr_willClear)begin
      logic_pushPtr_valueNext = 5'h0;
    end
  end

  always @ (*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping)begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_popPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 5'h1f);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @ (*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_8);
    if(logic_popPtr_willClear)begin
      logic_popPtr_valueNext = 5'h0;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_2 && (! logic_full))));
  assign _zz_3 = _zz_4;
  assign io_pop_payload_context = _zz_3[1 : 0];
  assign io_pop_payload_isWrite = _zz_9[0];
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_10};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      logic_pushPtr_value <= 5'h0;
      logic_popPtr_value <= 5'h0;
      logic_risingOccupancy <= 1'b0;
      _zz_2 <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_2 <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if((logic_pushing != logic_popping))begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(io_flush)begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamFork_2 (
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_last,
  input      [0:0]    io_input_payload_fragment_opcode,
  input      [31:0]   io_input_payload_fragment_address,
  input      [3:0]    io_input_payload_fragment_length,
  input      [1:0]    io_input_payload_fragment_context,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output              io_outputs_0_payload_last,
  output     [0:0]    io_outputs_0_payload_fragment_opcode,
  output     [31:0]   io_outputs_0_payload_fragment_address,
  output     [3:0]    io_outputs_0_payload_fragment_length,
  output     [1:0]    io_outputs_0_payload_fragment_context,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output              io_outputs_1_payload_last,
  output     [0:0]    io_outputs_1_payload_fragment_opcode,
  output     [31:0]   io_outputs_1_payload_fragment_address,
  output     [3:0]    io_outputs_1_payload_fragment_length,
  output     [1:0]    io_outputs_1_payload_fragment_context,
  input               clk,
  input               reset
);
  reg                 _zz_1;
  reg                 _zz_2;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1);
  assign io_outputs_0_payload_last = io_input_payload_last;
  assign io_outputs_0_payload_fragment_opcode = io_input_payload_fragment_opcode;
  assign io_outputs_0_payload_fragment_address = io_input_payload_fragment_address;
  assign io_outputs_0_payload_fragment_length = io_input_payload_fragment_length;
  assign io_outputs_0_payload_fragment_context = io_input_payload_fragment_context;
  assign io_outputs_1_valid = (io_input_valid && _zz_2);
  assign io_outputs_1_payload_last = io_input_payload_last;
  assign io_outputs_1_payload_fragment_opcode = io_input_payload_fragment_opcode;
  assign io_outputs_1_payload_fragment_address = io_input_payload_fragment_address;
  assign io_outputs_1_payload_fragment_length = io_input_payload_fragment_length;
  assign io_outputs_1_payload_fragment_context = io_input_payload_fragment_context;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_1 <= 1'b1;
      _zz_2 <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1 <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2 <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1 <= 1'b1;
        _zz_2 <= 1'b1;
      end
    end
  end


endmodule

module BmbUnburstify (
  input               io_input_cmd_valid,
  output reg          io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [127:0]  io_input_rsp_payload_fragment_data,
  output reg          io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output reg [0:0]    io_output_cmd_payload_fragment_opcode,
  output reg [31:0]   io_output_cmd_payload_fragment_address,
  output reg [3:0]    io_output_cmd_payload_fragment_length,
  output     [1:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output reg          io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [127:0]  io_output_rsp_payload_fragment_data,
  input      [1:0]    io_output_rsp_payload_fragment_context,
  input               clk,
  input               reset
);
  wire                _zz_2;
  wire                _zz_3;
  wire       [11:0]   _zz_4;
  wire       [11:0]   _zz_5;
  wire       [11:0]   _zz_6;
  wire       [0:0]    _zz_7;
  wire       [0:0]    _zz_8;
  wire                doResult;
  reg                 buffer_valid;
  reg        [0:0]    buffer_opcode;
  reg        [31:0]   buffer_address;
  reg        [1:0]    buffer_beat;
  wire                buffer_last;
  wire       [31:0]   buffer_addressIncr;
  wire                buffer_isWrite;
  wire       [1:0]    cmdTransferBeatCount;
  wire                requireBuffer;
  reg                 cmdContext_drop;
  reg                 cmdContext_last;
  wire                rspContext_drop;
  wire                rspContext_last;
  wire       [1:0]    _zz_1;
  reg                 io_output_rsp_thrown_valid;
  wire                io_output_rsp_thrown_ready;
  wire                io_output_rsp_thrown_payload_last;
  wire       [0:0]    io_output_rsp_thrown_payload_fragment_opcode;
  wire       [127:0]  io_output_rsp_thrown_payload_fragment_data;
  wire       [1:0]    io_output_rsp_thrown_payload_fragment_context;

  assign _zz_2 = (! (rspContext_last || (! rspContext_drop)));
  assign _zz_3 = (io_output_cmd_valid && io_output_cmd_ready);
  assign _zz_4 = (_zz_6 + 12'h010);
  assign _zz_5 = buffer_address[11 : 0];
  assign _zz_6 = _zz_5;
  assign _zz_7 = _zz_1[0 : 0];
  assign _zz_8 = _zz_1[1 : 1];
  assign buffer_last = (buffer_beat == 2'b01);
  assign buffer_addressIncr = {buffer_address[31 : 12],(_zz_4 & (~ 12'h00f))};
  assign buffer_isWrite = (buffer_opcode == 1'b1);
  assign cmdTransferBeatCount = io_input_cmd_payload_fragment_length[5 : 4];
  assign requireBuffer = (cmdTransferBeatCount != 2'b00);
  assign io_output_cmd_payload_last = 1'b1;
  assign io_output_cmd_payload_fragment_context = {cmdContext_last,cmdContext_drop};
  always @ (*) begin
    if(buffer_valid)begin
      io_output_cmd_payload_fragment_address = buffer_addressIncr;
    end else begin
      io_output_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
      if(requireBuffer)begin
        io_output_cmd_payload_fragment_address[3 : 0] = 4'b0000;
      end
    end
  end

  always @ (*) begin
    if(buffer_valid)begin
      io_output_cmd_payload_fragment_opcode = buffer_opcode;
    end else begin
      io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
    end
  end

  always @ (*) begin
    if(buffer_valid)begin
      io_output_cmd_payload_fragment_length = 4'b1111;
    end else begin
      if(requireBuffer)begin
        io_output_cmd_payload_fragment_length = 4'b1111;
      end else begin
        io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length[3:0];
      end
    end
  end

  always @ (*) begin
    io_input_cmd_ready = 1'b0;
    if(buffer_valid)begin
      io_input_cmd_ready = (buffer_isWrite && io_output_cmd_ready);
    end else begin
      io_input_cmd_ready = io_output_cmd_ready;
    end
  end

  always @ (*) begin
    if(buffer_valid)begin
      io_output_cmd_valid = (! (buffer_isWrite && (! io_input_cmd_valid)));
    end else begin
      io_output_cmd_valid = io_input_cmd_valid;
    end
  end

  always @ (*) begin
    if(buffer_valid)begin
      cmdContext_last = buffer_last;
    end else begin
      cmdContext_last = (! requireBuffer);
    end
  end

  always @ (*) begin
    if(buffer_valid)begin
      cmdContext_drop = buffer_isWrite;
    end else begin
      cmdContext_drop = (io_input_cmd_payload_fragment_opcode == 1'b1);
    end
  end

  assign _zz_1 = io_output_rsp_payload_fragment_context;
  assign rspContext_drop = _zz_7[0];
  assign rspContext_last = _zz_8[0];
  always @ (*) begin
    io_output_rsp_thrown_valid = io_output_rsp_valid;
    if(_zz_2)begin
      io_output_rsp_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    io_output_rsp_ready = io_output_rsp_thrown_ready;
    if(_zz_2)begin
      io_output_rsp_ready = 1'b1;
    end
  end

  assign io_output_rsp_thrown_payload_last = io_output_rsp_payload_last;
  assign io_output_rsp_thrown_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_output_rsp_thrown_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_output_rsp_thrown_payload_fragment_context = io_output_rsp_payload_fragment_context;
  assign io_input_rsp_valid = io_output_rsp_thrown_valid;
  assign io_output_rsp_thrown_ready = io_input_rsp_ready;
  assign io_input_rsp_payload_last = rspContext_last;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      buffer_valid <= 1'b0;
    end else begin
      if(_zz_3)begin
        if(buffer_last)begin
          buffer_valid <= 1'b0;
        end
      end
      if(! buffer_valid) begin
        buffer_valid <= (requireBuffer && (io_output_cmd_valid && io_output_cmd_ready));
      end
    end
  end

  always @ (posedge clk) begin
    if(_zz_3)begin
      buffer_beat <= (buffer_beat - 2'b01);
      buffer_address[11 : 0] <= buffer_addressIncr[11 : 0];
    end
    if(! buffer_valid) begin
      buffer_opcode <= io_input_cmd_payload_fragment_opcode;
      buffer_address <= io_input_cmd_payload_fragment_address;
      buffer_beat <= cmdTransferBeatCount;
    end
  end


endmodule

module StreamFork_1 (
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_last,
  input      [0:0]    io_input_payload_fragment_opcode,
  input      [31:0]   io_input_payload_fragment_address,
  input      [5:0]    io_input_payload_fragment_length,
  input      [63:0]   io_input_payload_fragment_data,
  input      [7:0]    io_input_payload_fragment_mask,
  input      [42:0]   io_input_payload_fragment_context,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output              io_outputs_0_payload_last,
  output     [0:0]    io_outputs_0_payload_fragment_opcode,
  output     [31:0]   io_outputs_0_payload_fragment_address,
  output     [5:0]    io_outputs_0_payload_fragment_length,
  output     [63:0]   io_outputs_0_payload_fragment_data,
  output     [7:0]    io_outputs_0_payload_fragment_mask,
  output     [42:0]   io_outputs_0_payload_fragment_context,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output              io_outputs_1_payload_last,
  output     [0:0]    io_outputs_1_payload_fragment_opcode,
  output     [31:0]   io_outputs_1_payload_fragment_address,
  output     [5:0]    io_outputs_1_payload_fragment_length,
  output     [63:0]   io_outputs_1_payload_fragment_data,
  output     [7:0]    io_outputs_1_payload_fragment_mask,
  output     [42:0]   io_outputs_1_payload_fragment_context,
  input               clk,
  input               reset
);
  reg                 _zz_1;
  reg                 _zz_2;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1);
  assign io_outputs_0_payload_last = io_input_payload_last;
  assign io_outputs_0_payload_fragment_opcode = io_input_payload_fragment_opcode;
  assign io_outputs_0_payload_fragment_address = io_input_payload_fragment_address;
  assign io_outputs_0_payload_fragment_length = io_input_payload_fragment_length;
  assign io_outputs_0_payload_fragment_data = io_input_payload_fragment_data;
  assign io_outputs_0_payload_fragment_mask = io_input_payload_fragment_mask;
  assign io_outputs_0_payload_fragment_context = io_input_payload_fragment_context;
  assign io_outputs_1_valid = (io_input_valid && _zz_2);
  assign io_outputs_1_payload_last = io_input_payload_last;
  assign io_outputs_1_payload_fragment_opcode = io_input_payload_fragment_opcode;
  assign io_outputs_1_payload_fragment_address = io_input_payload_fragment_address;
  assign io_outputs_1_payload_fragment_length = io_input_payload_fragment_length;
  assign io_outputs_1_payload_fragment_data = io_input_payload_fragment_data;
  assign io_outputs_1_payload_fragment_mask = io_input_payload_fragment_mask;
  assign io_outputs_1_payload_fragment_context = io_input_payload_fragment_context;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_1 <= 1'b1;
      _zz_2 <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1 <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2 <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1 <= 1'b1;
        _zz_2 <= 1'b1;
      end
    end
  end


endmodule

//StreamFifoMultiChannel_1 replaced by StreamFifoMultiChannel_1

module StreamFifoMultiChannel_1 (
  output              io_push_full,
  input               io_push_stream_valid,
  output              io_push_stream_ready,
  input               io_push_stream_payload_last,
  input      [0:0]    io_push_stream_payload_fragment_opcode,
  input      [63:0]   io_push_stream_payload_fragment_data,
  input      [0:0]    io_pop_channel,
  output     [0:0]    io_pop_empty,
  output              io_pop_stream_valid,
  input               io_pop_stream_ready,
  output              io_pop_stream_payload_last,
  output     [0:0]    io_pop_stream_payload_fragment_opcode,
  output     [63:0]   io_pop_stream_payload_fragment_data,
  output     [5:0]    io_availability,
  input               clk,
  input               reset
);
  wire       [65:0]   _zz_5;
  wire       [4:0]    _zz_6;
  wire                _zz_7;
  wire                _zz_8;
  wire                _zz_9;
  wire                _zz_10;
  wire       [0:0]    _zz_11;
  wire       [5:0]    _zz_12;
  wire       [65:0]   _zz_13;
  wire       [4:0]    _zz_14;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 full;
  wire       [4:0]    pushNextEntry;
  wire       [4:0]    popNextEntry;
  reg                 channels_0_valid;
  reg        [4:0]    channels_0_headPtr;
  reg        [4:0]    channels_0_lastPtr;
  reg                 channels_0_lastFire;
  wire       [4:0]    pushLogic_previousAddress;
  wire       [4:0]    popLogic_readAddress;
  wire       [65:0]   _zz_3;
  wire       [64:0]   _zz_4;
  reg        [4:0]    allocationByCounter_allocationPtr;
  reg                 allocationByCounter_onChannels_0_wasValid;
  reg        [4:0]    allocationByCounter_onChannels_0_availability;
  (* ram_style = "distributed" *) reg [65:0] payloadRam [0:31];
  (* ram_style = "distributed" *) reg [4:0] nextRam [0:31];

  assign _zz_7 = (io_push_stream_valid && io_push_stream_ready);
  assign _zz_8 = ((io_pop_stream_valid && io_pop_stream_ready) && io_pop_channel[0]);
  assign _zz_9 = (channels_0_headPtr == channels_0_lastPtr);
  assign _zz_10 = ((io_push_stream_valid && io_push_stream_ready) && 1'b1);
  assign _zz_11 = _zz_3[0 : 0];
  assign _zz_12 = {1'd0, allocationByCounter_onChannels_0_availability};
  assign _zz_13 = {{io_push_stream_payload_fragment_data,io_push_stream_payload_fragment_opcode},io_push_stream_payload_last};
  assign _zz_14 = pushNextEntry;
  always @ (posedge clk) begin
    if(_zz_2) begin
      payloadRam[pushNextEntry] <= _zz_13;
    end
  end

  assign _zz_5 = payloadRam[popLogic_readAddress];
  always @ (posedge clk) begin
    if(_zz_1) begin
      nextRam[pushLogic_previousAddress] <= _zz_14;
    end
  end

  assign _zz_6 = nextRam[popLogic_readAddress];
  always @ (*) begin
    _zz_1 = 1'b0;
    if(_zz_7)begin
      if(channels_0_valid)begin
        _zz_1 = 1'b1;
      end
    end
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    if(_zz_7)begin
      _zz_2 = 1'b1;
    end
  end

  always @ (*) begin
    full = 1'b0;
    if((channels_0_valid && (allocationByCounter_allocationPtr == channels_0_headPtr)))begin
      full = 1'b1;
    end
  end

  assign io_push_full = full;
  assign io_push_stream_ready = (! full);
  always @ (*) begin
    channels_0_lastFire = 1'b0;
    if(_zz_8)begin
      if(_zz_9)begin
        channels_0_lastFire = 1'b1;
      end
    end
  end

  assign io_pop_empty[0] = (! channels_0_valid);
  assign pushLogic_previousAddress = channels_0_lastPtr;
  assign popLogic_readAddress = channels_0_headPtr;
  assign io_pop_stream_valid = ((io_pop_channel & (~ io_pop_empty)) != 1'b0);
  assign _zz_3 = _zz_5;
  assign _zz_4 = _zz_3[65 : 1];
  assign io_pop_stream_payload_last = _zz_11[0];
  assign io_pop_stream_payload_fragment_opcode = _zz_4[0 : 0];
  assign io_pop_stream_payload_fragment_data = _zz_4[64 : 1];
  assign popNextEntry = _zz_6;
  assign io_availability = (allocationByCounter_onChannels_0_wasValid ? _zz_12 : 6'h20);
  assign pushNextEntry = allocationByCounter_allocationPtr;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      channels_0_valid <= 1'b0;
      allocationByCounter_allocationPtr <= 5'h0;
      allocationByCounter_onChannels_0_wasValid <= 1'b0;
    end else begin
      if(_zz_8)begin
        if(_zz_9)begin
          channels_0_valid <= 1'b0;
        end
      end
      if(_zz_10)begin
        channels_0_valid <= 1'b1;
      end
      if((io_push_stream_valid && io_push_stream_ready))begin
        allocationByCounter_allocationPtr <= (allocationByCounter_allocationPtr + 5'h01);
      end
      allocationByCounter_onChannels_0_wasValid <= channels_0_valid;
    end
  end

  always @ (posedge clk) begin
    if(_zz_8)begin
      channels_0_headPtr <= popNextEntry;
    end
    if(((! channels_0_valid) || channels_0_lastFire))begin
      channels_0_headPtr <= pushNextEntry;
    end
    if(_zz_10)begin
      channels_0_lastPtr <= pushNextEntry;
    end
    allocationByCounter_onChannels_0_availability <= (channels_0_headPtr - allocationByCounter_allocationPtr);
  end


endmodule

module StreamFifoMultiChannel (
  output              io_push_full,
  input               io_push_stream_valid,
  output              io_push_stream_ready,
  input      [1:0]    io_push_stream_payload_hits,
  input      [2:0]    io_push_stream_payload_beatCount,
  input      [42:0]   io_push_stream_payload_context,
  input      [0:0]    io_pop_channel,
  output     [0:0]    io_pop_empty,
  output              io_pop_stream_valid,
  input               io_pop_stream_ready,
  output     [1:0]    io_pop_stream_payload_hits,
  output     [2:0]    io_pop_stream_payload_beatCount,
  output     [42:0]   io_pop_stream_payload_context,
  output     [5:0]    io_availability,
  input               clk,
  input               reset
);
  wire       [47:0]   _zz_4;
  wire       [4:0]    _zz_5;
  wire                _zz_6;
  wire                _zz_7;
  wire                _zz_8;
  wire                _zz_9;
  wire       [5:0]    _zz_10;
  wire       [47:0]   _zz_11;
  wire       [4:0]    _zz_12;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 full;
  wire       [4:0]    pushNextEntry;
  wire       [4:0]    popNextEntry;
  reg                 channels_0_valid;
  reg        [4:0]    channels_0_headPtr;
  reg        [4:0]    channels_0_lastPtr;
  reg                 channels_0_lastFire;
  wire       [4:0]    pushLogic_previousAddress;
  wire       [4:0]    popLogic_readAddress;
  wire       [47:0]   _zz_3;
  reg        [4:0]    allocationByCounter_allocationPtr;
  reg                 allocationByCounter_onChannels_0_wasValid;
  reg        [4:0]    allocationByCounter_onChannels_0_availability;
  (* ram_style = "distributed" *) reg [47:0] payloadRam [0:31];
  (* ram_style = "distributed" *) reg [4:0] nextRam [0:31];

  assign _zz_6 = (io_push_stream_valid && io_push_stream_ready);
  assign _zz_7 = ((io_pop_stream_valid && io_pop_stream_ready) && io_pop_channel[0]);
  assign _zz_8 = (channels_0_headPtr == channels_0_lastPtr);
  assign _zz_9 = ((io_push_stream_valid && io_push_stream_ready) && 1'b1);
  assign _zz_10 = {1'd0, allocationByCounter_onChannels_0_availability};
  assign _zz_11 = {io_push_stream_payload_context,{io_push_stream_payload_beatCount,io_push_stream_payload_hits}};
  assign _zz_12 = pushNextEntry;
  always @ (posedge clk) begin
    if(_zz_2) begin
      payloadRam[pushNextEntry] <= _zz_11;
    end
  end

  assign _zz_4 = payloadRam[popLogic_readAddress];
  always @ (posedge clk) begin
    if(_zz_1) begin
      nextRam[pushLogic_previousAddress] <= _zz_12;
    end
  end

  assign _zz_5 = nextRam[popLogic_readAddress];
  always @ (*) begin
    _zz_1 = 1'b0;
    if(_zz_6)begin
      if(channels_0_valid)begin
        _zz_1 = 1'b1;
      end
    end
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    if(_zz_6)begin
      _zz_2 = 1'b1;
    end
  end

  always @ (*) begin
    full = 1'b0;
    if((channels_0_valid && (allocationByCounter_allocationPtr == channels_0_headPtr)))begin
      full = 1'b1;
    end
  end

  assign io_push_full = full;
  assign io_push_stream_ready = (! full);
  always @ (*) begin
    channels_0_lastFire = 1'b0;
    if(_zz_7)begin
      if(_zz_8)begin
        channels_0_lastFire = 1'b1;
      end
    end
  end

  assign io_pop_empty[0] = (! channels_0_valid);
  assign pushLogic_previousAddress = channels_0_lastPtr;
  assign popLogic_readAddress = channels_0_headPtr;
  assign io_pop_stream_valid = ((io_pop_channel & (~ io_pop_empty)) != 1'b0);
  assign _zz_3 = _zz_4;
  assign io_pop_stream_payload_hits = _zz_3[1 : 0];
  assign io_pop_stream_payload_beatCount = _zz_3[4 : 2];
  assign io_pop_stream_payload_context = _zz_3[47 : 5];
  assign popNextEntry = _zz_5;
  assign io_availability = (allocationByCounter_onChannels_0_wasValid ? _zz_10 : 6'h20);
  assign pushNextEntry = allocationByCounter_allocationPtr;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      channels_0_valid <= 1'b0;
      allocationByCounter_allocationPtr <= 5'h0;
      allocationByCounter_onChannels_0_wasValid <= 1'b0;
    end else begin
      if(_zz_7)begin
        if(_zz_8)begin
          channels_0_valid <= 1'b0;
        end
      end
      if(_zz_9)begin
        channels_0_valid <= 1'b1;
      end
      if((io_push_stream_valid && io_push_stream_ready))begin
        allocationByCounter_allocationPtr <= (allocationByCounter_allocationPtr + 5'h01);
      end
      allocationByCounter_onChannels_0_wasValid <= channels_0_valid;
    end
  end

  always @ (posedge clk) begin
    if(_zz_7)begin
      channels_0_headPtr <= popNextEntry;
    end
    if(((! channels_0_valid) || channels_0_lastFire))begin
      channels_0_headPtr <= pushNextEntry;
    end
    if(_zz_9)begin
      channels_0_lastPtr <= pushNextEntry;
    end
    allocationByCounter_onChannels_0_availability <= (channels_0_headPtr - allocationByCounter_allocationPtr);
  end


endmodule

module FlowCCByToggle (
  input               io_input_valid,
  input               io_input_payload_last,
  input      [0:0]    io_input_payload_fragment,
  output              io_output_valid,
  output              io_output_payload_last,
  output     [0:0]    io_output_payload_fragment,
  input               jtag_clk,
  input               clk,
  input               debugResetIn
);
  wire                inputArea_target_buffercc_io_dataOut;
  wire                outHitSignal;
  reg                 inputArea_target = 0;
  reg                 inputArea_data_last;
  reg        [0:0]    inputArea_data_fragment;
  wire                outputArea_target;
  reg                 outputArea_hit;
  wire                outputArea_flow_valid;
  wire                outputArea_flow_payload_last;
  wire       [0:0]    outputArea_flow_payload_fragment;
  reg                 outputArea_flow_regNext_valid;
  reg                 outputArea_flow_regNext_payload_last;
  reg        [0:0]    outputArea_flow_regNext_payload_fragment;

  BufferCC inputArea_target_buffercc (
    .io_dataIn       (inputArea_target                      ), //i
    .io_dataOut      (inputArea_target_buffercc_io_dataOut  ), //o
    .clk             (clk                                   ), //i
    .debugResetIn    (debugResetIn                          )  //i
  );
  assign outputArea_target = inputArea_target_buffercc_io_dataOut;
  assign outputArea_flow_valid = (outputArea_target != outputArea_hit);
  assign outputArea_flow_payload_last = inputArea_data_last;
  assign outputArea_flow_payload_fragment = inputArea_data_fragment;
  assign io_output_valid = outputArea_flow_regNext_valid;
  assign io_output_payload_last = outputArea_flow_regNext_payload_last;
  assign io_output_payload_fragment = outputArea_flow_regNext_payload_fragment;
  always @ (posedge jtag_clk) begin
    if(io_input_valid)begin
      inputArea_target <= (! inputArea_target);
      inputArea_data_last <= io_input_payload_last;
      inputArea_data_fragment <= io_input_payload_fragment;
    end
  end

  always @ (posedge clk) begin
    outputArea_hit <= outputArea_target;
    outputArea_flow_regNext_payload_last <= outputArea_flow_payload_last;
    outputArea_flow_regNext_payload_fragment <= outputArea_flow_payload_fragment;
  end

  always @ (posedge clk or posedge debugResetIn) begin
    if (debugResetIn) begin
      outputArea_flow_regNext_valid <= 1'b0;
    end else begin
      outputArea_flow_regNext_valid <= outputArea_flow_valid;
    end
  end


endmodule

module BmbDecoder (
  input               io_input_cmd_valid,
  output reg          io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [19:0]   io_input_cmd_payload_fragment_address,
  input      [1:0]    io_input_cmd_payload_fragment_length,
  input      [31:0]   io_input_cmd_payload_fragment_data,
  input      [3:0]    io_input_cmd_payload_fragment_mask,
  output reg          io_input_rsp_valid,
  input               io_input_rsp_ready,
  output reg          io_input_rsp_payload_last,
  output reg [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output reg          io_outputs_0_cmd_valid,
  input               io_outputs_0_cmd_ready,
  output              io_outputs_0_cmd_payload_last,
  output     [0:0]    io_outputs_0_cmd_payload_fragment_opcode,
  output     [19:0]   io_outputs_0_cmd_payload_fragment_address,
  output     [1:0]    io_outputs_0_cmd_payload_fragment_length,
  output     [31:0]   io_outputs_0_cmd_payload_fragment_data,
  output     [3:0]    io_outputs_0_cmd_payload_fragment_mask,
  input               io_outputs_0_rsp_valid,
  output              io_outputs_0_rsp_ready,
  input               io_outputs_0_rsp_payload_last,
  input      [0:0]    io_outputs_0_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_0_rsp_payload_fragment_data,
  input               clk,
  input               debugResetIn
);
  wire       [1:0]    _zz_2;
  wire       [0:0]    _zz_3;
  wire       [1:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [1:0]    _zz_6;
  wire                logic_hits_0;
  wire                _zz_1;
  wire                logic_noHit;
  reg        [1:0]    logic_rspPendingCounter;
  wire                logic_cmdWait;
  reg                 logic_rspHits_0;
  wire                logic_rspPending;
  wire                logic_rspNoHitValid;
  reg                 logic_rspNoHit_doIt;
  reg                 logic_rspNoHit_singleBeatRsp;

  assign _zz_2 = (logic_rspPendingCounter + _zz_4);
  assign _zz_3 = ((io_input_cmd_valid && io_input_cmd_ready) && io_input_cmd_payload_last);
  assign _zz_4 = {1'd0, _zz_3};
  assign _zz_5 = ((io_input_rsp_valid && io_input_rsp_ready) && io_input_rsp_payload_last);
  assign _zz_6 = {1'd0, _zz_5};
  assign logic_hits_0 = ((io_input_cmd_payload_fragment_address & (~ 20'h00fff)) == 20'h0);
  always @ (*) begin
    io_outputs_0_cmd_valid = (io_input_cmd_valid && logic_hits_0);
    if(logic_cmdWait)begin
      io_outputs_0_cmd_valid = 1'b0;
    end
  end

  assign _zz_1 = io_input_cmd_payload_last;
  assign io_outputs_0_cmd_payload_last = _zz_1;
  assign io_outputs_0_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign io_outputs_0_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign io_outputs_0_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign io_outputs_0_cmd_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign io_outputs_0_cmd_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
  assign logic_noHit = (! (logic_hits_0 != 1'b0));
  always @ (*) begin
    io_input_cmd_ready = (((logic_hits_0 && io_outputs_0_cmd_ready) != 1'b0) || logic_noHit);
    if(logic_cmdWait)begin
      io_input_cmd_ready = 1'b0;
    end
  end

  assign logic_rspPending = (logic_rspPendingCounter != 2'b00);
  assign logic_rspNoHitValid = (! (logic_rspHits_0 != 1'b0));
  always @ (*) begin
    io_input_rsp_valid = ((io_outputs_0_rsp_valid != 1'b0) || (logic_rspPending && logic_rspNoHitValid));
    if(logic_rspNoHit_doIt)begin
      io_input_rsp_valid = 1'b1;
    end
  end

  always @ (*) begin
    io_input_rsp_payload_last = io_outputs_0_rsp_payload_last;
    if(logic_rspNoHit_doIt)begin
      io_input_rsp_payload_last = 1'b1;
    end
  end

  always @ (*) begin
    io_input_rsp_payload_fragment_opcode = io_outputs_0_rsp_payload_fragment_opcode;
    if(logic_rspNoHit_doIt)begin
      io_input_rsp_payload_fragment_opcode = 1'b1;
    end
  end

  assign io_input_rsp_payload_fragment_data = io_outputs_0_rsp_payload_fragment_data;
  assign io_outputs_0_rsp_ready = io_input_rsp_ready;
  assign logic_cmdWait = ((logic_rspPending && ((logic_hits_0 != logic_rspHits_0) || logic_rspNoHitValid)) || (logic_rspPendingCounter == 2'b10));
  always @ (posedge clk or posedge debugResetIn) begin
    if (debugResetIn) begin
      logic_rspPendingCounter <= 2'b00;
      logic_rspNoHit_doIt <= 1'b0;
    end else begin
      logic_rspPendingCounter <= (_zz_2 - _zz_6);
      if(((io_input_rsp_valid && io_input_rsp_ready) && io_input_rsp_payload_last))begin
        logic_rspNoHit_doIt <= 1'b0;
      end
      if((((io_input_cmd_valid && io_input_cmd_ready) && logic_noHit) && io_input_cmd_payload_last))begin
        logic_rspNoHit_doIt <= 1'b1;
      end
    end
  end

  always @ (posedge clk) begin
    if((io_input_cmd_valid && (! logic_cmdWait)))begin
      logic_rspHits_0 <= logic_hits_0;
    end
    if((io_input_cmd_valid && io_input_cmd_ready))begin
      logic_rspNoHit_singleBeatRsp <= (io_input_cmd_payload_fragment_opcode == 1'b1);
    end
  end


endmodule

module BmbInvalidateMonitor (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  input      [63:0]   io_input_cmd_payload_fragment_data,
  input      [7:0]    io_input_cmd_payload_fragment_mask,
  input      [3:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [63:0]   io_input_rsp_payload_fragment_data,
  output     [3:0]    io_input_rsp_payload_fragment_context,
  output              io_input_inv_valid,
  input               io_input_inv_ready,
  output              io_input_inv_payload_all,
  output     [31:0]   io_input_inv_payload_address,
  output     [5:0]    io_input_inv_payload_length,
  input               io_input_ack_valid,
  output              io_input_ack_ready,
  output              io_input_sync_valid,
  input               io_input_sync_ready,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [31:0]   io_output_cmd_payload_fragment_address,
  output     [5:0]    io_output_cmd_payload_fragment_length,
  output     [63:0]   io_output_cmd_payload_fragment_data,
  output     [7:0]    io_output_cmd_payload_fragment_mask,
  output     [42:0]   io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [63:0]   io_output_rsp_payload_fragment_data,
  input      [42:0]   io_output_rsp_payload_fragment_context,
  input               clk,
  input               reset
);
  reg                 _zz_2;
  wire                _zz_3;
  wire                _zz_4;
  wire                io_output_rsp_fork_io_input_ready;
  wire                io_output_rsp_fork_io_outputs_0_valid;
  wire                io_output_rsp_fork_io_outputs_0_payload_last;
  wire       [0:0]    io_output_rsp_fork_io_outputs_0_payload_fragment_opcode;
  wire       [63:0]   io_output_rsp_fork_io_outputs_0_payload_fragment_data;
  wire       [42:0]   io_output_rsp_fork_io_outputs_0_payload_fragment_context;
  wire                io_output_rsp_fork_io_outputs_1_valid;
  wire                io_output_rsp_fork_io_outputs_1_payload_last;
  wire       [0:0]    io_output_rsp_fork_io_outputs_1_payload_fragment_opcode;
  wire       [63:0]   io_output_rsp_fork_io_outputs_1_payload_fragment_data;
  wire       [42:0]   io_output_rsp_fork_io_outputs_1_payload_fragment_context;
  wire                io_output_rsp_fork_io_outputs_2_valid;
  wire                io_output_rsp_fork_io_outputs_2_payload_last;
  wire       [0:0]    io_output_rsp_fork_io_outputs_2_payload_fragment_opcode;
  wire       [63:0]   io_output_rsp_fork_io_outputs_2_payload_fragment_data;
  wire       [42:0]   io_output_rsp_fork_io_outputs_2_payload_fragment_context;
  wire                rspLogic_rspToSyncFiltred_fifo_io_push_ready;
  wire                rspLogic_rspToSyncFiltred_fifo_io_pop_valid;
  wire       [4:0]    rspLogic_rspToSyncFiltred_fifo_io_occupancy;
  wire       [4:0]    rspLogic_rspToSyncFiltred_fifo_io_availability;
  wire                _zz_5;
  wire                _zz_6;
  wire       [0:0]    _zz_7;
  wire       [3:0]    cmdLogic_cmdContext_context;
  wire       [31:0]   cmdLogic_cmdContext_address;
  wire       [5:0]    cmdLogic_cmdContext_length;
  wire                cmdLogic_cmdContext_write;
  wire       [3:0]    rspLogic_rspContext_context;
  wire       [31:0]   rspLogic_rspContext_address;
  wire       [5:0]    rspLogic_rspContext_length;
  wire                rspLogic_rspContext_write;
  wire       [42:0]   _zz_1;
  reg                 rspLogic_rspToInvFiltred_valid;
  wire                rspLogic_rspToInvFiltred_ready;
  wire                rspLogic_rspToInvFiltred_payload_last;
  wire       [0:0]    rspLogic_rspToInvFiltred_payload_fragment_opcode;
  wire       [63:0]   rspLogic_rspToInvFiltred_payload_fragment_data;
  wire       [42:0]   rspLogic_rspToInvFiltred_payload_fragment_context;
  wire                io_output_rsp_fork_io_outputs_2_translated_valid;
  reg                 io_output_rsp_fork_io_outputs_2_translated_ready;
  reg                 rspLogic_rspToSyncFiltred_valid;
  wire                rspLogic_rspToSyncFiltred_ready;

  assign _zz_5 = (! rspLogic_rspContext_write);
  assign _zz_6 = (! rspLogic_rspContext_write);
  assign _zz_7 = _zz_1[42 : 42];
  StreamFork io_output_rsp_fork (
    .io_input_valid                           (io_output_rsp_valid                                             ), //i
    .io_input_ready                           (io_output_rsp_fork_io_input_ready                               ), //o
    .io_input_payload_last                    (io_output_rsp_payload_last                                      ), //i
    .io_input_payload_fragment_opcode         (io_output_rsp_payload_fragment_opcode                           ), //i
    .io_input_payload_fragment_data           (io_output_rsp_payload_fragment_data[63:0]                       ), //i
    .io_input_payload_fragment_context        (io_output_rsp_payload_fragment_context[42:0]                    ), //i
    .io_outputs_0_valid                       (io_output_rsp_fork_io_outputs_0_valid                           ), //o
    .io_outputs_0_ready                       (io_input_rsp_ready                                              ), //i
    .io_outputs_0_payload_last                (io_output_rsp_fork_io_outputs_0_payload_last                    ), //o
    .io_outputs_0_payload_fragment_opcode     (io_output_rsp_fork_io_outputs_0_payload_fragment_opcode         ), //o
    .io_outputs_0_payload_fragment_data       (io_output_rsp_fork_io_outputs_0_payload_fragment_data[63:0]     ), //o
    .io_outputs_0_payload_fragment_context    (io_output_rsp_fork_io_outputs_0_payload_fragment_context[42:0]  ), //o
    .io_outputs_1_valid                       (io_output_rsp_fork_io_outputs_1_valid                           ), //o
    .io_outputs_1_ready                       (_zz_2                                                           ), //i
    .io_outputs_1_payload_last                (io_output_rsp_fork_io_outputs_1_payload_last                    ), //o
    .io_outputs_1_payload_fragment_opcode     (io_output_rsp_fork_io_outputs_1_payload_fragment_opcode         ), //o
    .io_outputs_1_payload_fragment_data       (io_output_rsp_fork_io_outputs_1_payload_fragment_data[63:0]     ), //o
    .io_outputs_1_payload_fragment_context    (io_output_rsp_fork_io_outputs_1_payload_fragment_context[42:0]  ), //o
    .io_outputs_2_valid                       (io_output_rsp_fork_io_outputs_2_valid                           ), //o
    .io_outputs_2_ready                       (io_output_rsp_fork_io_outputs_2_translated_ready                ), //i
    .io_outputs_2_payload_last                (io_output_rsp_fork_io_outputs_2_payload_last                    ), //o
    .io_outputs_2_payload_fragment_opcode     (io_output_rsp_fork_io_outputs_2_payload_fragment_opcode         ), //o
    .io_outputs_2_payload_fragment_data       (io_output_rsp_fork_io_outputs_2_payload_fragment_data[63:0]     ), //o
    .io_outputs_2_payload_fragment_context    (io_output_rsp_fork_io_outputs_2_payload_fragment_context[42:0]  ), //o
    .clk                                      (clk                                                             ), //i
    .reset                                    (reset                                                           )  //i
  );
  StreamFifo rspLogic_rspToSyncFiltred_fifo (
    .io_push_valid      (rspLogic_rspToSyncFiltred_valid                      ), //i
    .io_push_ready      (rspLogic_rspToSyncFiltred_fifo_io_push_ready         ), //o
    .io_pop_valid       (rspLogic_rspToSyncFiltred_fifo_io_pop_valid          ), //o
    .io_pop_ready       (_zz_3                                                ), //i
    .io_flush           (_zz_4                                                ), //i
    .io_occupancy       (rspLogic_rspToSyncFiltred_fifo_io_occupancy[4:0]     ), //o
    .io_availability    (rspLogic_rspToSyncFiltred_fifo_io_availability[4:0]  ), //o
    .clk                (clk                                                  ), //i
    .reset              (reset                                                )  //i
  );
  assign cmdLogic_cmdContext_context = io_input_cmd_payload_fragment_context;
  assign cmdLogic_cmdContext_write = (io_input_cmd_payload_fragment_opcode == 1'b1);
  assign cmdLogic_cmdContext_address = io_input_cmd_payload_fragment_address;
  assign cmdLogic_cmdContext_length = io_input_cmd_payload_fragment_length;
  assign io_output_cmd_valid = io_input_cmd_valid;
  assign io_input_cmd_ready = io_output_cmd_ready;
  assign io_output_cmd_payload_last = io_input_cmd_payload_last;
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign io_output_cmd_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
  assign io_output_cmd_payload_fragment_context = {cmdLogic_cmdContext_write,{cmdLogic_cmdContext_length,{cmdLogic_cmdContext_address,cmdLogic_cmdContext_context}}};
  assign _zz_1 = io_output_rsp_payload_fragment_context;
  assign rspLogic_rspContext_context = _zz_1[3 : 0];
  assign rspLogic_rspContext_address = _zz_1[35 : 4];
  assign rspLogic_rspContext_length = _zz_1[41 : 36];
  assign rspLogic_rspContext_write = _zz_7[0];
  assign io_output_rsp_ready = io_output_rsp_fork_io_input_ready;
  assign io_input_rsp_valid = io_output_rsp_fork_io_outputs_0_valid;
  assign io_input_rsp_payload_last = io_output_rsp_fork_io_outputs_0_payload_last;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_fork_io_outputs_0_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_output_rsp_fork_io_outputs_0_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = rspLogic_rspContext_context;
  always @ (*) begin
    rspLogic_rspToInvFiltred_valid = io_output_rsp_fork_io_outputs_1_valid;
    if(_zz_5)begin
      rspLogic_rspToInvFiltred_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_2 = rspLogic_rspToInvFiltred_ready;
    if(_zz_5)begin
      _zz_2 = 1'b1;
    end
  end

  assign rspLogic_rspToInvFiltred_payload_last = io_output_rsp_fork_io_outputs_1_payload_last;
  assign rspLogic_rspToInvFiltred_payload_fragment_opcode = io_output_rsp_fork_io_outputs_1_payload_fragment_opcode;
  assign rspLogic_rspToInvFiltred_payload_fragment_data = io_output_rsp_fork_io_outputs_1_payload_fragment_data;
  assign rspLogic_rspToInvFiltred_payload_fragment_context = io_output_rsp_fork_io_outputs_1_payload_fragment_context;
  assign io_input_inv_valid = rspLogic_rspToInvFiltred_valid;
  assign rspLogic_rspToInvFiltred_ready = io_input_inv_ready;
  assign io_input_inv_payload_address = rspLogic_rspContext_address;
  assign io_input_inv_payload_length = rspLogic_rspContext_length;
  assign io_input_inv_payload_all = 1'b0;
  assign io_output_rsp_fork_io_outputs_2_translated_valid = io_output_rsp_fork_io_outputs_2_valid;
  always @ (*) begin
    rspLogic_rspToSyncFiltred_valid = io_output_rsp_fork_io_outputs_2_translated_valid;
    if(_zz_6)begin
      rspLogic_rspToSyncFiltred_valid = 1'b0;
    end
  end

  always @ (*) begin
    io_output_rsp_fork_io_outputs_2_translated_ready = rspLogic_rspToSyncFiltred_ready;
    if(_zz_6)begin
      io_output_rsp_fork_io_outputs_2_translated_ready = 1'b1;
    end
  end

  assign rspLogic_rspToSyncFiltred_ready = rspLogic_rspToSyncFiltred_fifo_io_push_ready;
  assign _zz_3 = (io_input_ack_valid && io_input_ack_ready);
  assign io_input_sync_valid = io_input_ack_valid;
  assign io_input_ack_ready = io_input_sync_ready;
  assign _zz_4 = 1'b0;

endmodule

module BmbExclusiveMonitor (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input               io_input_cmd_payload_fragment_exclusive,
  input      [31:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  input      [63:0]   io_input_cmd_payload_fragment_data,
  input      [7:0]    io_input_cmd_payload_fragment_mask,
  input      [2:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output              io_input_rsp_payload_fragment_exclusive,
  output     [63:0]   io_input_rsp_payload_fragment_data,
  output     [2:0]    io_input_rsp_payload_fragment_context,
  output              io_input_inv_valid,
  input               io_input_inv_ready,
  output              io_input_inv_payload_all,
  output     [31:0]   io_input_inv_payload_address,
  output     [5:0]    io_input_inv_payload_length,
  input               io_input_ack_valid,
  output              io_input_ack_ready,
  output              io_input_sync_valid,
  input               io_input_sync_ready,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [31:0]   io_output_cmd_payload_fragment_address,
  output     [5:0]    io_output_cmd_payload_fragment_length,
  output     [63:0]   io_output_cmd_payload_fragment_data,
  output reg [7:0]    io_output_cmd_payload_fragment_mask,
  output     [3:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [63:0]   io_output_rsp_payload_fragment_data,
  input      [3:0]    io_output_rsp_payload_fragment_context,
  input               io_output_inv_valid,
  output              io_output_inv_ready,
  input               io_output_inv_payload_all,
  input      [31:0]   io_output_inv_payload_address,
  input      [5:0]    io_output_inv_payload_length,
  output              io_output_ack_valid,
  input               io_output_ack_ready,
  input               io_output_sync_valid,
  output              io_output_sync_ready,
  input               clk,
  input               reset
);
  wire                _zz_4;
  wire                exclusiveReadArbiter_io_inputs_0_ready;
  wire                exclusiveReadArbiter_io_output_valid;
  wire                exclusiveReadArbiter_io_output_payload_last;
  wire       [0:0]    exclusiveReadArbiter_io_output_payload_fragment_opcode;
  wire                exclusiveReadArbiter_io_output_payload_fragment_exclusive;
  wire       [31:0]   exclusiveReadArbiter_io_output_payload_fragment_address;
  wire       [5:0]    exclusiveReadArbiter_io_output_payload_fragment_length;
  wire       [2:0]    exclusiveReadArbiter_io_output_payload_fragment_context;
  wire       [0:0]    exclusiveReadArbiter_io_chosenOH;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire                cmdArbiter_io_output_payload_last;
  wire       [0:0]    cmdArbiter_io_output_payload_fragment_opcode;
  wire                cmdArbiter_io_output_payload_fragment_exclusive;
  wire       [31:0]   cmdArbiter_io_output_payload_fragment_address;
  wire       [5:0]    cmdArbiter_io_output_payload_fragment_length;
  wire       [2:0]    cmdArbiter_io_output_payload_fragment_context;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  wire                _zz_5;
  wire                _zz_6;
  wire                _zz_7;
  wire                _zz_8;
  wire                _zz_9;
  wire       [25:0]   _zz_10;
  wire       [25:0]   _zz_11;
  reg                 fence_start;
  reg                 fence_done;
  reg                 fence_busy;
  reg                 exclusiveWriteCancel;
  reg                 sources_0_valid;
  reg                 sources_0_exclusiveWritePending;
  reg        `BmbExclusiveMonitorState_defaultEncoding_type sources_0_state;
  reg        [31:0]   sources_0_address;
  reg        [5:0]    sources_0_length;
  reg        [2:0]    sources_0_context;
  wire                sources_0_addressHit;
  wire                sources_0_sourceHit;
  wire                sources_0_haltSource;
  reg                 sources_0_exclusiveReadCmd_valid;
  wire                sources_0_exclusiveReadCmd_ready;
  wire                sources_0_exclusiveReadCmd_payload_last;
  wire       [0:0]    sources_0_exclusiveReadCmd_payload_fragment_opcode;
  wire                sources_0_exclusiveReadCmd_payload_fragment_exclusive;
  wire       [31:0]   sources_0_exclusiveReadCmd_payload_fragment_address;
  wire       [5:0]    sources_0_exclusiveReadCmd_payload_fragment_length;
  wire       [2:0]    sources_0_exclusiveReadCmd_payload_fragment_context;
  reg        [6:0]    sources_0_tracker_cmdCounter;
  reg        [6:0]    sources_0_tracker_rspCounter;
  wire                sources_0_tracker_full;
  reg                 io_output_cmd_payload_first;
  reg                 io_output_rsp_payload_first;
  reg        [6:0]    sources_0_tracker_target;
  wire                sources_0_tracker_hit;
  reg                 sources_0_tracker_done;
  wire                _zz_1;
  reg                 _zz_2;
  reg                 inputCmdHalted_valid;
  wire                inputCmdHalted_ready;
  wire                inputCmdHalted_payload_last;
  wire       [0:0]    inputCmdHalted_payload_fragment_opcode;
  wire                inputCmdHalted_payload_fragment_exclusive;
  wire       [31:0]   inputCmdHalted_payload_fragment_address;
  wire       [5:0]    inputCmdHalted_payload_fragment_length;
  wire       [63:0]   inputCmdHalted_payload_fragment_data;
  wire       [7:0]    inputCmdHalted_payload_fragment_mask;
  wire       [2:0]    inputCmdHalted_payload_fragment_context;
  wire                exclusiveSuccess;
  wire                _zz_3;
  `ifndef SYNTHESIS
  reg [87:0] sources_0_state_string;
  `endif


  assign _zz_5 = (! fence_busy);
  assign _zz_6 = (io_input_cmd_payload_fragment_exclusive && (! exclusiveSuccess));
  assign _zz_7 = ((io_input_cmd_valid && (io_input_cmd_payload_fragment_opcode == 1'b0)) && io_input_cmd_payload_fragment_exclusive);
  assign _zz_8 = ((io_input_cmd_valid && (io_input_cmd_payload_fragment_opcode == 1'b0)) && io_input_cmd_payload_fragment_exclusive);
  assign _zz_9 = (sources_0_sourceHit && (! sources_0_haltSource));
  assign _zz_10 = (sources_0_address >>> 6);
  assign _zz_11 = (io_input_cmd_payload_fragment_address >>> 6);
  StreamArbiter exclusiveReadArbiter (
    .io_inputs_0_valid                         (sources_0_exclusiveReadCmd_valid                               ), //i
    .io_inputs_0_ready                         (exclusiveReadArbiter_io_inputs_0_ready                         ), //o
    .io_inputs_0_payload_last                  (sources_0_exclusiveReadCmd_payload_last                        ), //i
    .io_inputs_0_payload_fragment_opcode       (sources_0_exclusiveReadCmd_payload_fragment_opcode             ), //i
    .io_inputs_0_payload_fragment_exclusive    (sources_0_exclusiveReadCmd_payload_fragment_exclusive          ), //i
    .io_inputs_0_payload_fragment_address      (sources_0_exclusiveReadCmd_payload_fragment_address[31:0]      ), //i
    .io_inputs_0_payload_fragment_length       (sources_0_exclusiveReadCmd_payload_fragment_length[5:0]        ), //i
    .io_inputs_0_payload_fragment_context      (sources_0_exclusiveReadCmd_payload_fragment_context[2:0]       ), //i
    .io_output_valid                           (exclusiveReadArbiter_io_output_valid                           ), //o
    .io_output_ready                           (cmdArbiter_io_inputs_0_ready                                   ), //i
    .io_output_payload_last                    (exclusiveReadArbiter_io_output_payload_last                    ), //o
    .io_output_payload_fragment_opcode         (exclusiveReadArbiter_io_output_payload_fragment_opcode         ), //o
    .io_output_payload_fragment_exclusive      (exclusiveReadArbiter_io_output_payload_fragment_exclusive      ), //o
    .io_output_payload_fragment_address        (exclusiveReadArbiter_io_output_payload_fragment_address[31:0]  ), //o
    .io_output_payload_fragment_length         (exclusiveReadArbiter_io_output_payload_fragment_length[5:0]    ), //o
    .io_output_payload_fragment_context        (exclusiveReadArbiter_io_output_payload_fragment_context[2:0]   ), //o
    .io_chosenOH                               (exclusiveReadArbiter_io_chosenOH                               ), //o
    .clk                                       (clk                                                            ), //i
    .reset                                     (reset                                                          )  //i
  );
  StreamArbiter_1 cmdArbiter (
    .io_inputs_0_valid                         (exclusiveReadArbiter_io_output_valid                           ), //i
    .io_inputs_0_ready                         (cmdArbiter_io_inputs_0_ready                                   ), //o
    .io_inputs_0_payload_last                  (exclusiveReadArbiter_io_output_payload_last                    ), //i
    .io_inputs_0_payload_fragment_opcode       (exclusiveReadArbiter_io_output_payload_fragment_opcode         ), //i
    .io_inputs_0_payload_fragment_exclusive    (exclusiveReadArbiter_io_output_payload_fragment_exclusive      ), //i
    .io_inputs_0_payload_fragment_address      (exclusiveReadArbiter_io_output_payload_fragment_address[31:0]  ), //i
    .io_inputs_0_payload_fragment_length       (exclusiveReadArbiter_io_output_payload_fragment_length[5:0]    ), //i
    .io_inputs_0_payload_fragment_context      (exclusiveReadArbiter_io_output_payload_fragment_context[2:0]   ), //i
    .io_inputs_1_valid                         (inputCmdHalted_valid                                           ), //i
    .io_inputs_1_ready                         (cmdArbiter_io_inputs_1_ready                                   ), //o
    .io_inputs_1_payload_last                  (inputCmdHalted_payload_last                                    ), //i
    .io_inputs_1_payload_fragment_opcode       (inputCmdHalted_payload_fragment_opcode                         ), //i
    .io_inputs_1_payload_fragment_exclusive    (inputCmdHalted_payload_fragment_exclusive                      ), //i
    .io_inputs_1_payload_fragment_address      (inputCmdHalted_payload_fragment_address[31:0]                  ), //i
    .io_inputs_1_payload_fragment_length       (inputCmdHalted_payload_fragment_length[5:0]                    ), //i
    .io_inputs_1_payload_fragment_context      (inputCmdHalted_payload_fragment_context[2:0]                   ), //i
    .io_output_valid                           (cmdArbiter_io_output_valid                                     ), //o
    .io_output_ready                           (_zz_4                                                          ), //i
    .io_output_payload_last                    (cmdArbiter_io_output_payload_last                              ), //o
    .io_output_payload_fragment_opcode         (cmdArbiter_io_output_payload_fragment_opcode                   ), //o
    .io_output_payload_fragment_exclusive      (cmdArbiter_io_output_payload_fragment_exclusive                ), //o
    .io_output_payload_fragment_address        (cmdArbiter_io_output_payload_fragment_address[31:0]            ), //o
    .io_output_payload_fragment_length         (cmdArbiter_io_output_payload_fragment_length[5:0]              ), //o
    .io_output_payload_fragment_context        (cmdArbiter_io_output_payload_fragment_context[2:0]             ), //o
    .io_chosen                                 (cmdArbiter_io_chosen                                           ), //o
    .io_chosenOH                               (cmdArbiter_io_chosenOH[1:0]                                    ), //o
    .clk                                       (clk                                                            ), //i
    .reset                                     (reset                                                          )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(sources_0_state)
      `BmbExclusiveMonitorState_defaultEncoding_IDLE : sources_0_state_string = "IDLE       ";
      `BmbExclusiveMonitorState_defaultEncoding_FENCE_START : sources_0_state_string = "FENCE_START";
      `BmbExclusiveMonitorState_defaultEncoding_FENCE_BUSY : sources_0_state_string = "FENCE_BUSY ";
      `BmbExclusiveMonitorState_defaultEncoding_EMIT : sources_0_state_string = "EMIT       ";
      default : sources_0_state_string = "???????????";
    endcase
  end
  `endif

  always @ (*) begin
    fence_start = 1'b0;
    case(sources_0_state)
      `BmbExclusiveMonitorState_defaultEncoding_FENCE_START : begin
        if(_zz_5)begin
          fence_start = 1'b1;
        end
      end
      `BmbExclusiveMonitorState_defaultEncoding_FENCE_BUSY : begin
      end
      `BmbExclusiveMonitorState_defaultEncoding_EMIT : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    fence_done = 1'b1;
    if((! sources_0_tracker_done))begin
      fence_done = 1'b0;
    end
  end

  always @ (*) begin
    exclusiveWriteCancel = 1'b0;
    if(_zz_6)begin
      exclusiveWriteCancel = 1'b1;
    end
  end

  assign sources_0_addressHit = (_zz_10 == _zz_11);
  assign sources_0_sourceHit = 1'b1;
  assign sources_0_haltSource = (sources_0_state != `BmbExclusiveMonitorState_defaultEncoding_IDLE);
  always @ (*) begin
    sources_0_exclusiveReadCmd_valid = 1'b0;
    case(sources_0_state)
      `BmbExclusiveMonitorState_defaultEncoding_FENCE_START : begin
      end
      `BmbExclusiveMonitorState_defaultEncoding_FENCE_BUSY : begin
      end
      `BmbExclusiveMonitorState_defaultEncoding_EMIT : begin
        sources_0_exclusiveReadCmd_valid = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign sources_0_exclusiveReadCmd_payload_fragment_opcode = 1'b0;
  assign sources_0_exclusiveReadCmd_payload_fragment_exclusive = 1'b1;
  assign sources_0_exclusiveReadCmd_payload_fragment_address = sources_0_address;
  assign sources_0_exclusiveReadCmd_payload_fragment_length = sources_0_length;
  assign sources_0_exclusiveReadCmd_payload_fragment_context = sources_0_context;
  assign sources_0_exclusiveReadCmd_payload_last = 1'b1;
  assign sources_0_tracker_full = ((sources_0_tracker_cmdCounter[6] != sources_0_tracker_rspCounter[6]) && (sources_0_tracker_cmdCounter[5 : 0] == sources_0_tracker_rspCounter[5 : 0]));
  assign sources_0_tracker_hit = (sources_0_tracker_target == sources_0_tracker_rspCounter);
  assign sources_0_exclusiveReadCmd_ready = exclusiveReadArbiter_io_inputs_0_ready;
  assign _zz_1 = (! sources_0_haltSource);
  assign io_input_cmd_ready = (_zz_2 && _zz_1);
  always @ (*) begin
    inputCmdHalted_valid = (io_input_cmd_valid && _zz_1);
    if(_zz_7)begin
      inputCmdHalted_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_2 = inputCmdHalted_ready;
    if(_zz_7)begin
      _zz_2 = 1'b1;
    end
  end

  assign inputCmdHalted_payload_last = io_input_cmd_payload_last;
  assign inputCmdHalted_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign inputCmdHalted_payload_fragment_exclusive = io_input_cmd_payload_fragment_exclusive;
  assign inputCmdHalted_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign inputCmdHalted_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign inputCmdHalted_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign inputCmdHalted_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
  assign inputCmdHalted_payload_fragment_context = io_input_cmd_payload_fragment_context;
  assign inputCmdHalted_ready = cmdArbiter_io_inputs_1_ready;
  assign exclusiveSuccess = (sources_0_valid && sources_0_addressHit);
  assign _zz_3 = (! (sources_0_tracker_full != 1'b0));
  assign _zz_4 = (io_output_cmd_ready && _zz_3);
  assign io_output_cmd_valid = (cmdArbiter_io_output_valid && _zz_3);
  assign io_output_cmd_payload_last = cmdArbiter_io_output_payload_last;
  assign io_output_cmd_payload_fragment_opcode = cmdArbiter_io_output_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = cmdArbiter_io_output_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = cmdArbiter_io_output_payload_fragment_length;
  assign io_output_cmd_payload_fragment_context = {(io_input_cmd_payload_fragment_exclusive && exclusiveSuccess),cmdArbiter_io_output_payload_fragment_context};
  assign io_output_cmd_payload_fragment_data = io_input_cmd_payload_fragment_data;
  always @ (*) begin
    io_output_cmd_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
    if(_zz_6)begin
      io_output_cmd_payload_fragment_mask = 8'h0;
    end
  end

  assign io_input_rsp_valid = io_output_rsp_valid;
  assign io_output_rsp_ready = io_input_rsp_ready;
  assign io_input_rsp_payload_last = io_output_rsp_payload_last;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = io_output_rsp_payload_fragment_context[2:0];
  assign io_input_rsp_payload_fragment_exclusive = io_output_rsp_payload_fragment_context[3];
  assign io_input_inv_valid = io_output_inv_valid;
  assign io_output_inv_ready = io_input_inv_ready;
  assign io_input_inv_payload_all = io_output_inv_payload_all;
  assign io_input_inv_payload_address = io_output_inv_payload_address;
  assign io_input_inv_payload_length = io_output_inv_payload_length;
  assign io_output_ack_valid = io_input_ack_valid;
  assign io_input_ack_ready = io_output_ack_ready;
  assign io_input_sync_valid = io_output_sync_valid;
  assign io_output_sync_ready = io_input_sync_ready;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      fence_busy <= 1'b0;
      sources_0_valid <= 1'b0;
      sources_0_exclusiveWritePending <= 1'b0;
      sources_0_state <= `BmbExclusiveMonitorState_defaultEncoding_IDLE;
      sources_0_tracker_cmdCounter <= 7'h0;
      sources_0_tracker_rspCounter <= 7'h0;
      io_output_cmd_payload_first <= 1'b1;
      io_output_rsp_payload_first <= 1'b1;
    end else begin
      if(fence_done)begin
        fence_busy <= 1'b0;
      end
      if(fence_start)begin
        fence_busy <= 1'b1;
      end
      if((((io_output_rsp_valid && io_output_rsp_ready) && 1'b1) && io_output_rsp_payload_fragment_context[3]))begin
        sources_0_exclusiveWritePending <= 1'b0;
      end
      if(_zz_8)begin
        if(_zz_9)begin
          sources_0_valid <= 1'b1;
          sources_0_state <= `BmbExclusiveMonitorState_defaultEncoding_FENCE_START;
        end
      end
      if(((sources_0_addressHit && ((io_input_cmd_valid && io_input_cmd_ready) && io_input_cmd_payload_last)) && (io_input_cmd_payload_fragment_opcode == 1'b1)))begin
        if((! exclusiveWriteCancel))begin
          sources_0_valid <= 1'b0;
        end
        if(sources_0_sourceHit)begin
          sources_0_exclusiveWritePending <= 1'b1;
        end
      end
      case(sources_0_state)
        `BmbExclusiveMonitorState_defaultEncoding_FENCE_START : begin
          if(_zz_5)begin
            sources_0_state <= `BmbExclusiveMonitorState_defaultEncoding_FENCE_BUSY;
          end
        end
        `BmbExclusiveMonitorState_defaultEncoding_FENCE_BUSY : begin
          if(fence_done)begin
            sources_0_state <= `BmbExclusiveMonitorState_defaultEncoding_EMIT;
          end
        end
        `BmbExclusiveMonitorState_defaultEncoding_EMIT : begin
          if(sources_0_exclusiveReadCmd_ready)begin
            sources_0_state <= `BmbExclusiveMonitorState_defaultEncoding_IDLE;
          end
        end
        default : begin
        end
      endcase
      if((io_output_cmd_valid && io_output_cmd_ready))begin
        io_output_cmd_payload_first <= io_output_cmd_payload_last;
      end
      if((((io_output_cmd_valid && io_output_cmd_ready) && io_output_cmd_payload_first) && 1'b1))begin
        sources_0_tracker_cmdCounter <= (sources_0_tracker_cmdCounter + 7'h01);
      end
      if((io_output_rsp_valid && io_output_rsp_ready))begin
        io_output_rsp_payload_first <= io_output_rsp_payload_last;
      end
      if((((io_output_rsp_valid && io_output_rsp_ready) && io_output_rsp_payload_first) && 1'b1))begin
        sources_0_tracker_rspCounter <= (sources_0_tracker_rspCounter + 7'h01);
      end
    end
  end

  always @ (posedge clk) begin
    if(_zz_8)begin
      if(_zz_9)begin
        sources_0_address <= io_input_cmd_payload_fragment_address;
        sources_0_length <= io_input_cmd_payload_fragment_length;
        sources_0_context <= io_input_cmd_payload_fragment_context;
      end
    end
    if(sources_0_tracker_hit)begin
      sources_0_tracker_done <= 1'b1;
    end
    if(fence_start)begin
      sources_0_tracker_target <= sources_0_tracker_cmdCounter;
      sources_0_tracker_done <= 1'b0;
    end
  end


endmodule

module BmbArbiter (
  input               io_inputs_0_cmd_valid,
  output              io_inputs_0_cmd_ready,
  input               io_inputs_0_cmd_payload_last,
  input      [0:0]    io_inputs_0_cmd_payload_fragment_opcode,
  input               io_inputs_0_cmd_payload_fragment_exclusive,
  input      [31:0]   io_inputs_0_cmd_payload_fragment_address,
  input      [5:0]    io_inputs_0_cmd_payload_fragment_length,
  input      [63:0]   io_inputs_0_cmd_payload_fragment_data,
  input      [7:0]    io_inputs_0_cmd_payload_fragment_mask,
  input      [2:0]    io_inputs_0_cmd_payload_fragment_context,
  output              io_inputs_0_rsp_valid,
  input               io_inputs_0_rsp_ready,
  output              io_inputs_0_rsp_payload_last,
  output     [0:0]    io_inputs_0_rsp_payload_fragment_opcode,
  output              io_inputs_0_rsp_payload_fragment_exclusive,
  output     [63:0]   io_inputs_0_rsp_payload_fragment_data,
  output     [2:0]    io_inputs_0_rsp_payload_fragment_context,
  output              io_inputs_0_inv_valid,
  input               io_inputs_0_inv_ready,
  output              io_inputs_0_inv_payload_all,
  output     [31:0]   io_inputs_0_inv_payload_address,
  output     [5:0]    io_inputs_0_inv_payload_length,
  input               io_inputs_0_ack_valid,
  output              io_inputs_0_ack_ready,
  output              io_inputs_0_sync_valid,
  input               io_inputs_0_sync_ready,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output              io_output_cmd_payload_fragment_exclusive,
  output     [31:0]   io_output_cmd_payload_fragment_address,
  output     [5:0]    io_output_cmd_payload_fragment_length,
  output     [63:0]   io_output_cmd_payload_fragment_data,
  output     [7:0]    io_output_cmd_payload_fragment_mask,
  output     [2:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input               io_output_rsp_payload_fragment_exclusive,
  input      [63:0]   io_output_rsp_payload_fragment_data,
  input      [2:0]    io_output_rsp_payload_fragment_context,
  input               io_output_inv_valid,
  output              io_output_inv_ready,
  input               io_output_inv_payload_all,
  input      [31:0]   io_output_inv_payload_address,
  input      [5:0]    io_output_inv_payload_length,
  output              io_output_ack_valid,
  input               io_output_ack_ready,
  input               io_output_sync_valid,
  output              io_output_sync_ready
);

  assign io_output_cmd_valid = io_inputs_0_cmd_valid;
  assign io_inputs_0_cmd_ready = io_output_cmd_ready;
  assign io_inputs_0_rsp_valid = io_output_rsp_valid;
  assign io_output_rsp_ready = io_inputs_0_rsp_ready;
  assign io_output_cmd_payload_last = io_inputs_0_cmd_payload_last;
  assign io_inputs_0_rsp_payload_last = io_output_rsp_payload_last;
  assign io_output_cmd_payload_fragment_opcode = io_inputs_0_cmd_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = io_inputs_0_cmd_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = io_inputs_0_cmd_payload_fragment_length;
  assign io_output_cmd_payload_fragment_data = io_inputs_0_cmd_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = io_inputs_0_cmd_payload_fragment_mask;
  assign io_output_cmd_payload_fragment_context = io_inputs_0_cmd_payload_fragment_context;
  assign io_output_cmd_payload_fragment_exclusive = io_inputs_0_cmd_payload_fragment_exclusive;
  assign io_inputs_0_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_inputs_0_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_inputs_0_rsp_payload_fragment_context = io_output_rsp_payload_fragment_context;
  assign io_inputs_0_rsp_payload_fragment_exclusive = io_output_rsp_payload_fragment_exclusive;
  assign io_inputs_0_inv_valid = io_output_inv_valid;
  assign io_output_inv_ready = io_inputs_0_inv_ready;
  assign io_output_ack_valid = io_inputs_0_ack_valid;
  assign io_inputs_0_ack_ready = io_output_ack_ready;
  assign io_inputs_0_inv_payload_address = io_output_inv_payload_address;
  assign io_inputs_0_inv_payload_length = io_output_inv_payload_length;
  assign io_inputs_0_inv_payload_all = io_output_inv_payload_all;
  assign io_inputs_0_sync_valid = io_output_sync_valid;
  assign io_output_sync_ready = io_inputs_0_sync_ready;

endmodule

module StreamFifoLowLatency (
  input               io_push_valid,
  output              io_push_ready,
  input      [2:0]    io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [2:0]    io_pop_payload,
  input               io_flush,
  output     [4:0]    io_occupancy,
  input               clk,
  input               reset
);
  wire       [2:0]    _zz_2;
  wire       [0:0]    _zz_3;
  wire       [3:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [3:0]    _zz_6;
  wire       [2:0]    _zz_7;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [3:0]    pushPtr_valueNext;
  reg        [3:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [3:0]    popPtr_valueNext;
  reg        [3:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [3:0]    ptrDif;
  (* ram_style = "distributed" *) reg [2:0] ram [0:15];

  assign _zz_3 = pushPtr_willIncrement;
  assign _zz_4 = {3'd0, _zz_3};
  assign _zz_5 = popPtr_willIncrement;
  assign _zz_6 = {3'd0, _zz_5};
  assign _zz_7 = io_push_payload;
  assign _zz_2 = ram[popPtr_value];
  always @ (posedge clk) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_7;
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(pushing)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing)begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush)begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 4'b1111);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @ (*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_4);
    if(pushPtr_willClear)begin
      pushPtr_valueNext = 4'b0000;
    end
  end

  always @ (*) begin
    popPtr_willIncrement = 1'b0;
    if(popping)begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    popPtr_willClear = 1'b0;
    if(io_flush)begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 4'b1111);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @ (*) begin
    popPtr_valueNext = (popPtr_value + _zz_6);
    if(popPtr_willClear)begin
      popPtr_valueNext = 4'b0000;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  assign io_pop_valid = (! empty);
  assign io_pop_payload = _zz_2;
  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pushPtr_value <= 4'b0000;
      popPtr_value <= 4'b0000;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if((pushing != popping))begin
        risingOccupancy <= pushing;
      end
      if(io_flush)begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module VexRiscv (
  output              dBus_cmd_valid,
  input               dBus_cmd_ready,
  output              dBus_cmd_payload_wr,
  output              dBus_cmd_payload_uncached,
  output     [31:0]   dBus_cmd_payload_address,
  output     [31:0]   dBus_cmd_payload_data,
  output     [3:0]    dBus_cmd_payload_mask,
  output     [3:0]    dBus_cmd_payload_length,
  output              dBus_cmd_payload_exclusive,
  output              dBus_cmd_payload_last,
  input               dBus_rsp_valid,
  input      [2:0]    dBus_rsp_payload_aggregated,
  input               dBus_rsp_payload_last,
  input      [63:0]   dBus_rsp_payload_data,
  input               dBus_rsp_payload_error,
  input               dBus_rsp_payload_exclusive,
  input               dBus_inv_valid,
  output              dBus_inv_ready,
  input               dBus_inv_payload_enable,
  input      [31:0]   dBus_inv_payload_address,
  output              dBus_ack_valid,
  input               dBus_ack_ready,
  output              dBus_ack_payload_hit,
  input               dBus_sync_valid,
  output              dBus_sync_ready,
  input      [2:0]    dBus_sync_payload_aggregated,
  input               timerInterrupt,
  input               externalInterrupt,
  input               softwareInterrupt,
  input               externalInterruptS,
  input      [63:0]   utime,
  input               debug_bus_cmd_valid,
  output reg          debug_bus_cmd_ready,
  input               debug_bus_cmd_payload_wr,
  input      [7:0]    debug_bus_cmd_payload_address,
  input      [31:0]   debug_bus_cmd_payload_data,
  output reg [31:0]   debug_bus_rsp_data,
  output              debug_resetOut,
  output              iBus_cmd_valid,
  input               iBus_cmd_ready,
  output reg [31:0]   iBus_cmd_payload_address,
  output     [2:0]    iBus_cmd_payload_size,
  input               iBus_rsp_valid,
  input      [127:0]  iBus_rsp_payload_data,
  input               iBus_rsp_payload_error,
  input               clk,
  input               reset,
  input               debugResetIn
);
  wire                _zz_195;
  wire                _zz_196;
  wire                _zz_197;
  wire                _zz_198;
  wire                _zz_199;
  wire                _zz_200;
  wire                _zz_201;
  wire                _zz_202;
  reg                 _zz_203;
  reg                 _zz_204;
  reg        [31:0]   _zz_205;
  reg                 _zz_206;
  reg        [31:0]   _zz_207;
  reg        [1:0]    _zz_208;
  reg                 _zz_209;
  reg                 _zz_210;
  wire                _zz_211;
  wire       [2:0]    _zz_212;
  reg                 _zz_213;
  reg                 _zz_214;
  reg                 _zz_215;
  wire                _zz_216;
  wire       [31:0]   _zz_217;
  reg                 _zz_218;
  reg                 _zz_219;
  reg                 _zz_220;
  reg                 _zz_221;
  reg                 _zz_222;
  reg                 _zz_223;
  reg                 _zz_224;
  reg                 _zz_225;
  wire       [3:0]    _zz_226;
  wire                _zz_227;
  wire                _zz_228;
  wire       [31:0]   _zz_229;
  wire       [31:0]   _zz_230;
  reg                 _zz_231;
  reg                 _zz_232;
  reg                 _zz_233;
  reg        [9:0]    _zz_234;
  reg        [9:0]    _zz_235;
  reg        [9:0]    _zz_236;
  reg        [9:0]    _zz_237;
  reg                 _zz_238;
  reg                 _zz_239;
  reg                 _zz_240;
  reg                 _zz_241;
  reg                 _zz_242;
  reg                 _zz_243;
  reg                 _zz_244;
  reg        [9:0]    _zz_245;
  reg        [9:0]    _zz_246;
  reg        [9:0]    _zz_247;
  reg        [9:0]    _zz_248;
  reg                 _zz_249;
  reg                 _zz_250;
  reg                 _zz_251;
  reg                 _zz_252;
  reg        [31:0]   _zz_253;
  wire                IBusCachedPlugin_cache_io_cpu_prefetch_haltIt;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_data;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress;
  wire                IBusCachedPlugin_cache_io_cpu_decode_error;
  wire                IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling;
  wire                IBusCachedPlugin_cache_io_cpu_decode_mmuException;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_data;
  wire                IBusCachedPlugin_cache_io_cpu_decode_cacheMiss;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_physicalAddress;
  wire                IBusCachedPlugin_cache_io_mem_cmd_valid;
  wire       [31:0]   IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  wire       [2:0]    IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  wire                dataCache_1_io_cpu_execute_haltIt;
  wire                dataCache_1_io_cpu_memory_isWrite;
  wire                dataCache_1_io_cpu_writeBack_haltIt;
  wire       [31:0]   dataCache_1_io_cpu_writeBack_data;
  wire                dataCache_1_io_cpu_writeBack_mmuException;
  wire                dataCache_1_io_cpu_writeBack_unalignedAccess;
  wire                dataCache_1_io_cpu_writeBack_accessError;
  wire                dataCache_1_io_cpu_writeBack_isWrite;
  wire                dataCache_1_io_cpu_writeBack_keepMemRspData;
  wire                dataCache_1_io_cpu_flush_ready;
  wire                dataCache_1_io_cpu_redo;
  wire                dataCache_1_io_mem_cmd_valid;
  wire                dataCache_1_io_mem_cmd_payload_wr;
  wire                dataCache_1_io_mem_cmd_payload_uncached;
  wire       [31:0]   dataCache_1_io_mem_cmd_payload_address;
  wire       [31:0]   dataCache_1_io_mem_cmd_payload_data;
  wire       [3:0]    dataCache_1_io_mem_cmd_payload_mask;
  wire       [3:0]    dataCache_1_io_mem_cmd_payload_length;
  wire                dataCache_1_io_mem_cmd_payload_exclusive;
  wire                dataCache_1_io_mem_cmd_payload_last;
  wire                dataCache_1_io_mem_inv_ready;
  wire                dataCache_1_io_mem_ack_valid;
  wire                dataCache_1_io_mem_ack_payload_hit;
  wire                dataCache_1_io_mem_sync_ready;
  wire                _zz_254;
  wire                _zz_255;
  wire                _zz_256;
  wire                _zz_257;
  wire                _zz_258;
  wire                _zz_259;
  wire                _zz_260;
  wire                _zz_261;
  wire                _zz_262;
  wire                _zz_263;
  wire                _zz_264;
  wire                _zz_265;
  wire                _zz_266;
  wire                _zz_267;
  wire                _zz_268;
  wire                _zz_269;
  wire                _zz_270;
  wire       [1:0]    _zz_271;
  wire                _zz_272;
  wire                _zz_273;
  wire                _zz_274;
  wire                _zz_275;
  wire                _zz_276;
  wire                _zz_277;
  wire                _zz_278;
  wire                _zz_279;
  wire                _zz_280;
  wire                _zz_281;
  wire                _zz_282;
  wire                _zz_283;
  wire                _zz_284;
  wire       [1:0]    _zz_285;
  wire                _zz_286;
  wire                _zz_287;
  wire                _zz_288;
  wire                _zz_289;
  wire       [5:0]    _zz_290;
  wire                _zz_291;
  wire                _zz_292;
  wire                _zz_293;
  wire                _zz_294;
  wire                _zz_295;
  wire                _zz_296;
  wire                _zz_297;
  wire                _zz_298;
  wire                _zz_299;
  wire                _zz_300;
  wire                _zz_301;
  wire                _zz_302;
  wire                _zz_303;
  wire                _zz_304;
  wire                _zz_305;
  wire                _zz_306;
  wire                _zz_307;
  wire                _zz_308;
  wire                _zz_309;
  wire                _zz_310;
  wire                _zz_311;
  wire       [1:0]    _zz_312;
  wire       [1:0]    _zz_313;
  wire                _zz_314;
  wire       [51:0]   _zz_315;
  wire       [51:0]   _zz_316;
  wire       [51:0]   _zz_317;
  wire       [32:0]   _zz_318;
  wire       [51:0]   _zz_319;
  wire       [49:0]   _zz_320;
  wire       [51:0]   _zz_321;
  wire       [49:0]   _zz_322;
  wire       [51:0]   _zz_323;
  wire       [32:0]   _zz_324;
  wire       [31:0]   _zz_325;
  wire       [32:0]   _zz_326;
  wire       [0:0]    _zz_327;
  wire       [0:0]    _zz_328;
  wire       [0:0]    _zz_329;
  wire       [0:0]    _zz_330;
  wire       [0:0]    _zz_331;
  wire       [0:0]    _zz_332;
  wire       [0:0]    _zz_333;
  wire       [0:0]    _zz_334;
  wire       [0:0]    _zz_335;
  wire       [0:0]    _zz_336;
  wire       [0:0]    _zz_337;
  wire       [0:0]    _zz_338;
  wire       [0:0]    _zz_339;
  wire       [0:0]    _zz_340;
  wire       [0:0]    _zz_341;
  wire       [0:0]    _zz_342;
  wire       [0:0]    _zz_343;
  wire       [0:0]    _zz_344;
  wire       [0:0]    _zz_345;
  wire       [0:0]    _zz_346;
  wire       [0:0]    _zz_347;
  wire       [0:0]    _zz_348;
  wire       [0:0]    _zz_349;
  wire       [1:0]    _zz_350;
  wire       [0:0]    _zz_351;
  wire       [1:0]    _zz_352;
  wire       [0:0]    _zz_353;
  wire       [0:0]    _zz_354;
  wire       [0:0]    _zz_355;
  wire       [0:0]    _zz_356;
  wire       [0:0]    _zz_357;
  wire       [0:0]    _zz_358;
  wire       [0:0]    _zz_359;
  wire       [0:0]    _zz_360;
  wire       [1:0]    _zz_361;
  wire       [4:0]    _zz_362;
  wire       [2:0]    _zz_363;
  wire       [31:0]   _zz_364;
  wire       [11:0]   _zz_365;
  wire       [31:0]   _zz_366;
  wire       [19:0]   _zz_367;
  wire       [11:0]   _zz_368;
  wire       [31:0]   _zz_369;
  wire       [31:0]   _zz_370;
  wire       [19:0]   _zz_371;
  wire       [11:0]   _zz_372;
  wire       [0:0]    _zz_373;
  wire       [0:0]    _zz_374;
  wire       [0:0]    _zz_375;
  wire       [0:0]    _zz_376;
  wire       [0:0]    _zz_377;
  wire       [0:0]    _zz_378;
  wire       [0:0]    _zz_379;
  wire       [0:0]    _zz_380;
  wire       [2:0]    _zz_381;
  wire       [2:0]    _zz_382;
  wire       [0:0]    _zz_383;
  wire       [2:0]    _zz_384;
  wire       [4:0]    _zz_385;
  wire       [11:0]   _zz_386;
  wire       [11:0]   _zz_387;
  wire       [31:0]   _zz_388;
  wire       [31:0]   _zz_389;
  wire       [31:0]   _zz_390;
  wire       [31:0]   _zz_391;
  wire       [31:0]   _zz_392;
  wire       [31:0]   _zz_393;
  wire       [31:0]   _zz_394;
  wire       [65:0]   _zz_395;
  wire       [65:0]   _zz_396;
  wire       [31:0]   _zz_397;
  wire       [31:0]   _zz_398;
  wire       [0:0]    _zz_399;
  wire       [5:0]    _zz_400;
  wire       [32:0]   _zz_401;
  wire       [31:0]   _zz_402;
  wire       [31:0]   _zz_403;
  wire       [32:0]   _zz_404;
  wire       [32:0]   _zz_405;
  wire       [32:0]   _zz_406;
  wire       [32:0]   _zz_407;
  wire       [0:0]    _zz_408;
  wire       [32:0]   _zz_409;
  wire       [0:0]    _zz_410;
  wire       [32:0]   _zz_411;
  wire       [0:0]    _zz_412;
  wire       [31:0]   _zz_413;
  wire       [1:0]    _zz_414;
  wire       [1:0]    _zz_415;
  wire       [11:0]   _zz_416;
  wire       [19:0]   _zz_417;
  wire       [11:0]   _zz_418;
  wire       [31:0]   _zz_419;
  wire       [31:0]   _zz_420;
  wire       [31:0]   _zz_421;
  wire       [11:0]   _zz_422;
  wire       [19:0]   _zz_423;
  wire       [11:0]   _zz_424;
  wire       [2:0]    _zz_425;
  wire       [0:0]    _zz_426;
  wire       [0:0]    _zz_427;
  wire       [0:0]    _zz_428;
  wire       [0:0]    _zz_429;
  wire       [0:0]    _zz_430;
  wire       [0:0]    _zz_431;
  wire       [0:0]    _zz_432;
  wire       [0:0]    _zz_433;
  wire       [0:0]    _zz_434;
  wire       [0:0]    _zz_435;
  wire       [0:0]    _zz_436;
  wire       [0:0]    _zz_437;
  wire       [0:0]    _zz_438;
  wire       [0:0]    _zz_439;
  wire       [0:0]    _zz_440;
  wire       [0:0]    _zz_441;
  wire       [0:0]    _zz_442;
  wire       [0:0]    _zz_443;
  wire       [0:0]    _zz_444;
  wire       [0:0]    _zz_445;
  wire       [0:0]    _zz_446;
  wire       [0:0]    _zz_447;
  wire       [0:0]    _zz_448;
  wire       [0:0]    _zz_449;
  wire       [0:0]    _zz_450;
  wire       [0:0]    _zz_451;
  wire       [0:0]    _zz_452;
  wire       [0:0]    _zz_453;
  wire       [0:0]    _zz_454;
  wire       [0:0]    _zz_455;
  wire       [0:0]    _zz_456;
  wire       [0:0]    _zz_457;
  wire       [0:0]    _zz_458;
  wire       [0:0]    _zz_459;
  wire       [0:0]    _zz_460;
  wire       [0:0]    _zz_461;
  wire       [0:0]    _zz_462;
  wire       [0:0]    _zz_463;
  wire       [0:0]    _zz_464;
  wire       [0:0]    _zz_465;
  wire       [0:0]    _zz_466;
  wire       [0:0]    _zz_467;
  wire       [0:0]    _zz_468;
  wire       [0:0]    _zz_469;
  wire       [0:0]    _zz_470;
  wire       [2:0]    _zz_471;
  wire       [31:0]   _zz_472;
  wire       [31:0]   _zz_473;
  wire       [31:0]   _zz_474;
  wire                _zz_475;
  wire       [0:0]    _zz_476;
  wire       [17:0]   _zz_477;
  wire       [31:0]   _zz_478;
  wire       [31:0]   _zz_479;
  wire       [31:0]   _zz_480;
  wire                _zz_481;
  wire       [0:0]    _zz_482;
  wire       [11:0]   _zz_483;
  wire       [31:0]   _zz_484;
  wire       [31:0]   _zz_485;
  wire       [31:0]   _zz_486;
  wire                _zz_487;
  wire       [0:0]    _zz_488;
  wire       [5:0]    _zz_489;
  wire       [31:0]   _zz_490;
  wire       [31:0]   _zz_491;
  wire       [31:0]   _zz_492;
  wire                _zz_493;
  wire                _zz_494;
  wire                _zz_495;
  wire                _zz_496;
  wire                _zz_497;
  wire       [31:0]   _zz_498;
  wire                _zz_499;
  wire                _zz_500;
  wire       [1:0]    _zz_501;
  wire       [1:0]    _zz_502;
  wire                _zz_503;
  wire       [0:0]    _zz_504;
  wire       [30:0]   _zz_505;
  wire       [31:0]   _zz_506;
  wire       [31:0]   _zz_507;
  wire       [31:0]   _zz_508;
  wire       [31:0]   _zz_509;
  wire       [31:0]   _zz_510;
  wire       [31:0]   _zz_511;
  wire       [0:0]    _zz_512;
  wire       [0:0]    _zz_513;
  wire       [0:0]    _zz_514;
  wire       [0:0]    _zz_515;
  wire                _zz_516;
  wire       [0:0]    _zz_517;
  wire       [27:0]   _zz_518;
  wire       [31:0]   _zz_519;
  wire       [31:0]   _zz_520;
  wire                _zz_521;
  wire       [1:0]    _zz_522;
  wire       [1:0]    _zz_523;
  wire                _zz_524;
  wire       [0:0]    _zz_525;
  wire       [23:0]   _zz_526;
  wire       [31:0]   _zz_527;
  wire       [31:0]   _zz_528;
  wire       [31:0]   _zz_529;
  wire       [31:0]   _zz_530;
  wire                _zz_531;
  wire       [0:0]    _zz_532;
  wire       [0:0]    _zz_533;
  wire                _zz_534;
  wire       [0:0]    _zz_535;
  wire       [0:0]    _zz_536;
  wire                _zz_537;
  wire       [0:0]    _zz_538;
  wire       [20:0]   _zz_539;
  wire       [31:0]   _zz_540;
  wire       [31:0]   _zz_541;
  wire       [31:0]   _zz_542;
  wire                _zz_543;
  wire                _zz_544;
  wire                _zz_545;
  wire       [0:0]    _zz_546;
  wire       [0:0]    _zz_547;
  wire                _zz_548;
  wire       [0:0]    _zz_549;
  wire       [17:0]   _zz_550;
  wire       [31:0]   _zz_551;
  wire       [31:0]   _zz_552;
  wire       [31:0]   _zz_553;
  wire       [0:0]    _zz_554;
  wire       [2:0]    _zz_555;
  wire       [0:0]    _zz_556;
  wire       [0:0]    _zz_557;
  wire                _zz_558;
  wire       [0:0]    _zz_559;
  wire       [14:0]   _zz_560;
  wire       [31:0]   _zz_561;
  wire       [31:0]   _zz_562;
  wire       [31:0]   _zz_563;
  wire                _zz_564;
  wire                _zz_565;
  wire       [31:0]   _zz_566;
  wire       [31:0]   _zz_567;
  wire       [31:0]   _zz_568;
  wire       [0:0]    _zz_569;
  wire       [4:0]    _zz_570;
  wire       [2:0]    _zz_571;
  wire       [2:0]    _zz_572;
  wire                _zz_573;
  wire       [0:0]    _zz_574;
  wire       [11:0]   _zz_575;
  wire       [31:0]   _zz_576;
  wire       [31:0]   _zz_577;
  wire       [31:0]   _zz_578;
  wire       [31:0]   _zz_579;
  wire                _zz_580;
  wire       [0:0]    _zz_581;
  wire       [2:0]    _zz_582;
  wire                _zz_583;
  wire       [0:0]    _zz_584;
  wire       [0:0]    _zz_585;
  wire       [0:0]    _zz_586;
  wire       [3:0]    _zz_587;
  wire       [4:0]    _zz_588;
  wire       [4:0]    _zz_589;
  wire                _zz_590;
  wire       [0:0]    _zz_591;
  wire       [9:0]    _zz_592;
  wire       [31:0]   _zz_593;
  wire       [31:0]   _zz_594;
  wire       [31:0]   _zz_595;
  wire                _zz_596;
  wire       [0:0]    _zz_597;
  wire       [0:0]    _zz_598;
  wire       [31:0]   _zz_599;
  wire       [31:0]   _zz_600;
  wire       [31:0]   _zz_601;
  wire       [31:0]   _zz_602;
  wire       [31:0]   _zz_603;
  wire       [31:0]   _zz_604;
  wire       [31:0]   _zz_605;
  wire                _zz_606;
  wire       [0:0]    _zz_607;
  wire       [1:0]    _zz_608;
  wire       [0:0]    _zz_609;
  wire       [2:0]    _zz_610;
  wire       [0:0]    _zz_611;
  wire       [5:0]    _zz_612;
  wire       [1:0]    _zz_613;
  wire       [1:0]    _zz_614;
  wire                _zz_615;
  wire       [0:0]    _zz_616;
  wire       [7:0]    _zz_617;
  wire       [31:0]   _zz_618;
  wire       [31:0]   _zz_619;
  wire       [31:0]   _zz_620;
  wire       [31:0]   _zz_621;
  wire       [31:0]   _zz_622;
  wire       [31:0]   _zz_623;
  wire       [31:0]   _zz_624;
  wire       [31:0]   _zz_625;
  wire                _zz_626;
  wire       [31:0]   _zz_627;
  wire       [31:0]   _zz_628;
  wire                _zz_629;
  wire       [0:0]    _zz_630;
  wire       [0:0]    _zz_631;
  wire                _zz_632;
  wire       [0:0]    _zz_633;
  wire       [3:0]    _zz_634;
  wire                _zz_635;
  wire       [0:0]    _zz_636;
  wire       [0:0]    _zz_637;
  wire       [0:0]    _zz_638;
  wire       [0:0]    _zz_639;
  wire                _zz_640;
  wire       [0:0]    _zz_641;
  wire       [5:0]    _zz_642;
  wire       [31:0]   _zz_643;
  wire       [31:0]   _zz_644;
  wire       [31:0]   _zz_645;
  wire       [31:0]   _zz_646;
  wire       [31:0]   _zz_647;
  wire       [31:0]   _zz_648;
  wire       [31:0]   _zz_649;
  wire       [31:0]   _zz_650;
  wire       [31:0]   _zz_651;
  wire                _zz_652;
  wire       [0:0]    _zz_653;
  wire       [1:0]    _zz_654;
  wire       [31:0]   _zz_655;
  wire       [31:0]   _zz_656;
  wire       [31:0]   _zz_657;
  wire       [31:0]   _zz_658;
  wire       [31:0]   _zz_659;
  wire                _zz_660;
  wire       [4:0]    _zz_661;
  wire       [4:0]    _zz_662;
  wire                _zz_663;
  wire       [0:0]    _zz_664;
  wire       [3:0]    _zz_665;
  wire       [31:0]   _zz_666;
  wire       [31:0]   _zz_667;
  wire       [31:0]   _zz_668;
  wire                _zz_669;
  wire       [31:0]   _zz_670;
  wire                _zz_671;
  wire       [0:0]    _zz_672;
  wire       [2:0]    _zz_673;
  wire       [0:0]    _zz_674;
  wire       [0:0]    _zz_675;
  wire       [2:0]    _zz_676;
  wire       [2:0]    _zz_677;
  wire                _zz_678;
  wire       [0:0]    _zz_679;
  wire       [1:0]    _zz_680;
  wire       [31:0]   _zz_681;
  wire       [31:0]   _zz_682;
  wire       [31:0]   _zz_683;
  wire       [31:0]   _zz_684;
  wire                _zz_685;
  wire       [0:0]    _zz_686;
  wire       [0:0]    _zz_687;
  wire       [31:0]   _zz_688;
  wire       [31:0]   _zz_689;
  wire                _zz_690;
  wire       [0:0]    _zz_691;
  wire       [0:0]    _zz_692;
  wire       [0:0]    _zz_693;
  wire       [1:0]    _zz_694;
  wire       [1:0]    _zz_695;
  wire       [1:0]    _zz_696;
  wire                _zz_697;
  wire                _zz_698;
  wire       [31:0]   _zz_699;
  wire       [31:0]   _zz_700;
  wire       [31:0]   _zz_701;
  wire       [31:0]   _zz_702;
  wire       [31:0]   _zz_703;
  wire       [31:0]   _zz_704;
  wire       [31:0]   _zz_705;
  wire       [31:0]   _zz_706;
  wire                _zz_707;
  wire                _zz_708;
  wire                _zz_709;
  wire                _zz_710;
  wire                _zz_711;
  wire                _zz_712;
  wire                _zz_713;
  wire       [31:0]   _zz_714;
  wire       [31:0]   _zz_715;
  wire       [31:0]   _zz_716;
  wire       [31:0]   _zz_717;
  wire       [51:0]   memory_MUL_LOW;
  wire       [31:0]   execute_BRANCH_CALC;
  wire                execute_BRANCH_DO;
  wire       [33:0]   memory_MUL_HH;
  wire       [33:0]   execute_MUL_HH;
  wire       [33:0]   execute_MUL_HL;
  wire       [33:0]   execute_MUL_LH;
  wire       [31:0]   execute_MUL_LL;
  wire       [31:0]   execute_SHIFT_RIGHT;
  wire       [31:0]   memory_REGFILE_WRITE_DATA;
  wire       [31:0]   execute_REGFILE_WRITE_DATA;
  wire       [31:0]   execute_MEMORY_VIRTUAL_ADDRESS;
  wire       [1:0]    memory_MEMORY_ADDRESS_LOW;
  wire       [1:0]    execute_MEMORY_ADDRESS_LOW;
  wire                decode_DO_EBREAK;
  wire                decode_PREDICTION_HAD_BRANCHED2;
  wire                decode_CSR_READ_OPCODE;
  wire                decode_CSR_WRITE_OPCODE;
  wire       [31:0]   decode_SRC2;
  wire       [31:0]   decode_SRC1;
  wire                decode_SRC2_FORCE_ZERO;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_1;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_2;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_3;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_4;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_5;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_6;
  wire       `EnvCtrlEnum_defaultEncoding_type decode_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_7;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_8;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_9;
  wire                decode_IS_CSR;
  wire                decode_IS_RS2_SIGNED;
  wire                decode_IS_RS1_SIGNED;
  wire                decode_IS_DIV;
  wire                memory_IS_MUL;
  wire                execute_IS_MUL;
  wire                decode_IS_MUL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_10;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_11;
  wire       `ShiftCtrlEnum_defaultEncoding_type decode_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_12;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_13;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_14;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type decode_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_15;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_16;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_17;
  wire                decode_SRC_LESS_UNSIGNED;
  wire                memory_MEMORY_FENCE;
  wire                execute_MEMORY_FENCE;
  wire                decode_MEMORY_FENCE;
  wire                decode_MEMORY_MANAGMENT;
  wire                memory_MEMORY_AMO;
  wire                memory_MEMORY_LRSC;
  wire                memory_MEMORY_WR;
  wire                decode_MEMORY_WR;
  wire                execute_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_EXECUTE_STAGE;
  wire       `AluCtrlEnum_defaultEncoding_type decode_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_18;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_19;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_20;
  wire                memory_IS_SFENCE_VMA;
  wire                execute_IS_SFENCE_VMA;
  wire                decode_IS_SFENCE_VMA;
  wire                decode_MEMORY_FORCE_CONSTISTENCY;
  wire       [31:0]   writeBack_FORMAL_PC_NEXT;
  wire       [31:0]   memory_FORMAL_PC_NEXT;
  wire       [31:0]   execute_FORMAL_PC_NEXT;
  wire       [31:0]   decode_FORMAL_PC_NEXT;
  wire       [31:0]   memory_PC;
  wire                execute_DO_EBREAK;
  wire                decode_IS_EBREAK;
  wire       [31:0]   memory_BRANCH_CALC;
  wire                memory_BRANCH_DO;
  wire       [31:0]   execute_PC;
  wire                execute_PREDICTION_HAD_BRANCHED2;
  wire                execute_BRANCH_COND_RESULT;
  wire       `BranchCtrlEnum_defaultEncoding_type execute_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_21;
  wire                execute_CSR_READ_OPCODE;
  wire                execute_CSR_WRITE_OPCODE;
  wire                execute_IS_CSR;
  wire       `EnvCtrlEnum_defaultEncoding_type memory_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_22;
  wire       `EnvCtrlEnum_defaultEncoding_type execute_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_23;
  wire       `EnvCtrlEnum_defaultEncoding_type writeBack_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_24;
  wire                execute_IS_RS1_SIGNED;
  wire                execute_IS_DIV;
  wire                execute_IS_RS2_SIGNED;
  wire                memory_IS_DIV;
  wire                writeBack_IS_MUL;
  wire       [33:0]   writeBack_MUL_HH;
  wire       [51:0]   writeBack_MUL_LOW;
  wire       [33:0]   memory_MUL_HL;
  wire       [33:0]   memory_MUL_LH;
  wire       [31:0]   memory_MUL_LL;
  (* keep , syn_keep *) wire       [31:0]   execute_RS1 /* synthesis syn_keep = 1 */ ;
  wire                decode_RS2_USE;
  wire                decode_RS1_USE;
  reg        [31:0]   _zz_25;
  wire                execute_REGFILE_WRITE_VALID;
  wire                execute_BYPASSABLE_EXECUTE_STAGE;
  wire                memory_REGFILE_WRITE_VALID;
  wire       [31:0]   memory_INSTRUCTION;
  wire                memory_BYPASSABLE_MEMORY_STAGE;
  wire                writeBack_REGFILE_WRITE_VALID;
  reg        [31:0]   decode_RS2;
  reg        [31:0]   decode_RS1;
  wire       [31:0]   memory_SHIFT_RIGHT;
  reg        [31:0]   _zz_26;
  wire       `ShiftCtrlEnum_defaultEncoding_type memory_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_27;
  wire       `ShiftCtrlEnum_defaultEncoding_type execute_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_28;
  wire                execute_SRC_LESS_UNSIGNED;
  wire                execute_SRC2_FORCE_ZERO;
  wire                execute_SRC_USE_SUB_LESS;
  wire       [31:0]   _zz_29;
  wire       [31:0]   _zz_30;
  wire       `Src2CtrlEnum_defaultEncoding_type decode_SRC2_CTRL;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_31;
  wire       [31:0]   _zz_32;
  wire       `Src1CtrlEnum_defaultEncoding_type decode_SRC1_CTRL;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_33;
  wire                decode_SRC_USE_SUB_LESS;
  wire                decode_SRC_ADD_ZERO;
  wire       [31:0]   execute_SRC_ADD_SUB;
  wire                execute_SRC_LESS;
  wire       `AluCtrlEnum_defaultEncoding_type execute_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_34;
  wire       [31:0]   execute_SRC2;
  wire       [31:0]   execute_SRC1;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type execute_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_35;
  wire       [31:0]   _zz_36;
  wire                _zz_37;
  reg                 _zz_38;
  reg                 decode_REGFILE_WRITE_VALID;
  wire                decode_LEGAL_INSTRUCTION;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_39;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_40;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_41;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_42;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_43;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_44;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_45;
  wire                writeBack_IS_DBUS_SHARING;
  wire                execute_IS_DBUS_SHARING;
  wire                memory_IS_DBUS_SHARING;
  reg        [31:0]   _zz_46;
  wire       [1:0]    writeBack_MEMORY_ADDRESS_LOW;
  wire                writeBack_MEMORY_WR;
  wire                writeBack_MEMORY_FENCE;
  wire                writeBack_MEMORY_AMO;
  wire                writeBack_MEMORY_LRSC;
  wire       [31:0]   writeBack_REGFILE_WRITE_DATA;
  wire                writeBack_MEMORY_ENABLE;
  wire                memory_MEMORY_ENABLE;
  wire       [31:0]   memory_MEMORY_VIRTUAL_ADDRESS;
  wire                execute_MEMORY_AMO;
  wire                execute_MEMORY_LRSC;
  wire                execute_MEMORY_FORCE_CONSTISTENCY;
  wire                execute_MEMORY_MANAGMENT;
  (* keep , syn_keep *) wire       [31:0]   execute_RS2 /* synthesis syn_keep = 1 */ ;
  wire                execute_MEMORY_WR;
  wire       [31:0]   execute_SRC_ADD;
  wire                execute_MEMORY_ENABLE;
  wire       [31:0]   execute_INSTRUCTION;
  wire                decode_MEMORY_AMO;
  wire                decode_MEMORY_LRSC;
  reg                 _zz_47;
  wire                decode_MEMORY_ENABLE;
  wire                decode_FLUSH_ALL;
  reg                 _zz_48;
  reg                 _zz_48_2;
  reg                 _zz_48_1;
  reg                 _zz_48_0;
  wire       `BranchCtrlEnum_defaultEncoding_type decode_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_49;
  wire       [31:0]   decode_INSTRUCTION;
  reg        [31:0]   _zz_50;
  reg        [31:0]   _zz_51;
  reg        [31:0]   _zz_52;
  wire       [31:0]   decode_PC;
  wire                writeBack_IS_SFENCE_VMA;
  wire       [31:0]   writeBack_PC;
  wire       [31:0]   writeBack_INSTRUCTION;
  reg                 decode_arbitration_haltItself;
  reg                 decode_arbitration_haltByOther;
  reg                 decode_arbitration_removeIt;
  wire                decode_arbitration_flushIt;
  reg                 decode_arbitration_flushNext;
  reg                 decode_arbitration_isValid;
  wire                decode_arbitration_isStuck;
  wire                decode_arbitration_isStuckByOthers;
  wire                decode_arbitration_isFlushed;
  wire                decode_arbitration_isMoving;
  wire                decode_arbitration_isFiring;
  reg                 execute_arbitration_haltItself;
  reg                 execute_arbitration_haltByOther;
  reg                 execute_arbitration_removeIt;
  reg                 execute_arbitration_flushIt;
  reg                 execute_arbitration_flushNext;
  reg                 execute_arbitration_isValid;
  wire                execute_arbitration_isStuck;
  wire                execute_arbitration_isStuckByOthers;
  wire                execute_arbitration_isFlushed;
  wire                execute_arbitration_isMoving;
  wire                execute_arbitration_isFiring;
  reg                 memory_arbitration_haltItself;
  reg                 memory_arbitration_haltByOther;
  reg                 memory_arbitration_removeIt;
  wire                memory_arbitration_flushIt;
  reg                 memory_arbitration_flushNext;
  reg                 memory_arbitration_isValid;
  wire                memory_arbitration_isStuck;
  wire                memory_arbitration_isStuckByOthers;
  wire                memory_arbitration_isFlushed;
  wire                memory_arbitration_isMoving;
  wire                memory_arbitration_isFiring;
  reg                 writeBack_arbitration_haltItself;
  wire                writeBack_arbitration_haltByOther;
  reg                 writeBack_arbitration_removeIt;
  reg                 writeBack_arbitration_flushIt;
  reg                 writeBack_arbitration_flushNext;
  reg                 writeBack_arbitration_isValid;
  wire                writeBack_arbitration_isStuck;
  wire                writeBack_arbitration_isStuckByOthers;
  wire                writeBack_arbitration_isFlushed;
  wire                writeBack_arbitration_isMoving;
  wire                writeBack_arbitration_isFiring;
  wire       [31:0]   lastStageInstruction /* verilator public */ ;
  wire       [31:0]   lastStagePc /* verilator public */ ;
  wire                lastStageIsValid /* verilator public */ ;
  wire                lastStageIsFiring /* verilator public */ ;
  reg                 MmuPlugin_dBusAccess_cmd_valid;
  reg                 MmuPlugin_dBusAccess_cmd_ready;
  reg        [31:0]   MmuPlugin_dBusAccess_cmd_payload_address;
  wire       [1:0]    MmuPlugin_dBusAccess_cmd_payload_size;
  wire                MmuPlugin_dBusAccess_cmd_payload_write;
  wire       [31:0]   MmuPlugin_dBusAccess_cmd_payload_data;
  wire       [3:0]    MmuPlugin_dBusAccess_cmd_payload_writeMask;
  wire                MmuPlugin_dBusAccess_rsp_valid;
  wire       [31:0]   MmuPlugin_dBusAccess_rsp_payload_data;
  wire                MmuPlugin_dBusAccess_rsp_payload_error;
  wire                MmuPlugin_dBusAccess_rsp_payload_redo;
  reg                 IBusCachedPlugin_fetcherHalt;
  reg                 IBusCachedPlugin_incomingInstruction;
  wire                IBusCachedPlugin_predictionJumpInterface_valid;
  (* keep , syn_keep *) wire       [31:0]   IBusCachedPlugin_predictionJumpInterface_payload /* synthesis syn_keep = 1 */ ;
  reg                 IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  wire                IBusCachedPlugin_decodePrediction_rsp_wasWrong;
  wire                IBusCachedPlugin_pcValids_0;
  wire                IBusCachedPlugin_pcValids_1;
  wire                IBusCachedPlugin_pcValids_2;
  wire                IBusCachedPlugin_pcValids_3;
  reg                 IBusCachedPlugin_decodeExceptionPort_valid;
  reg        [3:0]    IBusCachedPlugin_decodeExceptionPort_payload_code;
  wire       [31:0]   IBusCachedPlugin_decodeExceptionPort_payload_badAddr;
  wire                IBusCachedPlugin_mmuBus_cmd_0_isValid;
  wire                IBusCachedPlugin_mmuBus_cmd_0_isStuck;
  wire       [31:0]   IBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  wire                IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation;
  wire                IBusCachedPlugin_mmuBus_cmd_1_isValid;
  wire                IBusCachedPlugin_mmuBus_cmd_1_isStuck;
  wire       [31:0]   IBusCachedPlugin_mmuBus_cmd_1_virtualAddress;
  wire                IBusCachedPlugin_mmuBus_cmd_1_bypassTranslation;
  reg        [31:0]   IBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                IBusCachedPlugin_mmuBus_rsp_isIoAccess;
  reg                 IBusCachedPlugin_mmuBus_rsp_allowRead;
  reg                 IBusCachedPlugin_mmuBus_rsp_allowWrite;
  reg                 IBusCachedPlugin_mmuBus_rsp_allowExecute;
  reg                 IBusCachedPlugin_mmuBus_rsp_exception;
  reg                 IBusCachedPlugin_mmuBus_rsp_refilling;
  wire                IBusCachedPlugin_mmuBus_rsp_bypassTranslation;
  wire                IBusCachedPlugin_mmuBus_rsp_ways_0_sel;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_ways_0_physical;
  wire                IBusCachedPlugin_mmuBus_rsp_ways_1_sel;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_ways_1_physical;
  wire                IBusCachedPlugin_mmuBus_rsp_ways_2_sel;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_ways_2_physical;
  wire                IBusCachedPlugin_mmuBus_rsp_ways_3_sel;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_ways_3_physical;
  wire                IBusCachedPlugin_mmuBus_end;
  wire                IBusCachedPlugin_mmuBus_busy;
  wire                DBusCachedPlugin_mmuBus_cmd_0_isValid;
  wire                DBusCachedPlugin_mmuBus_cmd_0_isStuck;
  wire       [31:0]   DBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  reg                 DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation;
  wire                DBusCachedPlugin_mmuBus_cmd_1_isValid;
  wire                DBusCachedPlugin_mmuBus_cmd_1_isStuck;
  wire       [31:0]   DBusCachedPlugin_mmuBus_cmd_1_virtualAddress;
  reg                 DBusCachedPlugin_mmuBus_cmd_1_bypassTranslation;
  reg        [31:0]   DBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                DBusCachedPlugin_mmuBus_rsp_isIoAccess;
  reg                 DBusCachedPlugin_mmuBus_rsp_allowRead;
  reg                 DBusCachedPlugin_mmuBus_rsp_allowWrite;
  reg                 DBusCachedPlugin_mmuBus_rsp_allowExecute;
  reg                 DBusCachedPlugin_mmuBus_rsp_exception;
  reg                 DBusCachedPlugin_mmuBus_rsp_refilling;
  wire                DBusCachedPlugin_mmuBus_rsp_bypassTranslation;
  wire                DBusCachedPlugin_mmuBus_rsp_ways_0_sel;
  wire       [31:0]   DBusCachedPlugin_mmuBus_rsp_ways_0_physical;
  wire                DBusCachedPlugin_mmuBus_rsp_ways_1_sel;
  wire       [31:0]   DBusCachedPlugin_mmuBus_rsp_ways_1_physical;
  wire                DBusCachedPlugin_mmuBus_rsp_ways_2_sel;
  wire       [31:0]   DBusCachedPlugin_mmuBus_rsp_ways_2_physical;
  wire                DBusCachedPlugin_mmuBus_rsp_ways_3_sel;
  wire       [31:0]   DBusCachedPlugin_mmuBus_rsp_ways_3_physical;
  wire                DBusCachedPlugin_mmuBus_end;
  wire                DBusCachedPlugin_mmuBus_busy;
  reg                 DBusCachedPlugin_redoBranch_valid;
  wire       [31:0]   DBusCachedPlugin_redoBranch_payload;
  reg                 DBusCachedPlugin_exceptionBus_valid;
  reg        [3:0]    DBusCachedPlugin_exceptionBus_payload_code;
  wire       [31:0]   DBusCachedPlugin_exceptionBus_payload_badAddr;
  reg                 _zz_53;
  wire                decodeExceptionPort_valid;
  wire       [3:0]    decodeExceptionPort_payload_code;
  wire       [31:0]   decodeExceptionPort_payload_badAddr;
  reg                 CsrPlugin_inWfi /* verilator public */ ;
  reg                 CsrPlugin_thirdPartyWake;
  reg                 CsrPlugin_jumpInterface_valid;
  reg        [31:0]   CsrPlugin_jumpInterface_payload;
  reg                 CsrPlugin_redoInterface_valid;
  wire       [31:0]   CsrPlugin_redoInterface_payload;
  wire                CsrPlugin_exceptionPendings_0;
  wire                CsrPlugin_exceptionPendings_1;
  wire                CsrPlugin_exceptionPendings_2;
  wire                CsrPlugin_exceptionPendings_3;
  wire                contextSwitching;
  reg        [1:0]    CsrPlugin_privilege;
  reg                 CsrPlugin_forceMachineWire;
  reg                 CsrPlugin_selfException_valid;
  reg        [3:0]    CsrPlugin_selfException_payload_code;
  wire       [31:0]   CsrPlugin_selfException_payload_badAddr;
  reg                 CsrPlugin_allowInterrupts;
  reg                 CsrPlugin_allowException;
  wire                BranchPlugin_jumpInterface_valid;
  wire       [31:0]   BranchPlugin_jumpInterface_payload;
  wire                BranchPlugin_branchExceptionPort_valid;
  wire       [3:0]    BranchPlugin_branchExceptionPort_payload_code;
  wire       [31:0]   BranchPlugin_branchExceptionPort_payload_badAddr;
  reg                 IBusCachedPlugin_injectionPort_valid;
  reg                 IBusCachedPlugin_injectionPort_ready;
  wire       [31:0]   IBusCachedPlugin_injectionPort_payload;
  reg                 MmuPlugin_status_sum;
  reg                 MmuPlugin_status_mxr;
  reg                 MmuPlugin_status_mprv;
  reg                 MmuPlugin_satp_mode;
  reg        [19:0]   MmuPlugin_satp_ppn;
  reg                 MmuPlugin_ports_0_cache_0_valid;
  reg                 MmuPlugin_ports_0_cache_0_exception;
  reg                 MmuPlugin_ports_0_cache_0_superPage;
  reg        [9:0]    MmuPlugin_ports_0_cache_0_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_0_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_0_cache_0_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_0_physicalAddress_1;
  reg                 MmuPlugin_ports_0_cache_0_allowRead;
  reg                 MmuPlugin_ports_0_cache_0_allowWrite;
  reg                 MmuPlugin_ports_0_cache_0_allowExecute;
  reg                 MmuPlugin_ports_0_cache_0_allowUser;
  reg                 MmuPlugin_ports_0_cache_1_valid;
  reg                 MmuPlugin_ports_0_cache_1_exception;
  reg                 MmuPlugin_ports_0_cache_1_superPage;
  reg        [9:0]    MmuPlugin_ports_0_cache_1_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_1_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_0_cache_1_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_1_physicalAddress_1;
  reg                 MmuPlugin_ports_0_cache_1_allowRead;
  reg                 MmuPlugin_ports_0_cache_1_allowWrite;
  reg                 MmuPlugin_ports_0_cache_1_allowExecute;
  reg                 MmuPlugin_ports_0_cache_1_allowUser;
  reg                 MmuPlugin_ports_0_cache_2_valid;
  reg                 MmuPlugin_ports_0_cache_2_exception;
  reg                 MmuPlugin_ports_0_cache_2_superPage;
  reg        [9:0]    MmuPlugin_ports_0_cache_2_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_2_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_0_cache_2_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_2_physicalAddress_1;
  reg                 MmuPlugin_ports_0_cache_2_allowRead;
  reg                 MmuPlugin_ports_0_cache_2_allowWrite;
  reg                 MmuPlugin_ports_0_cache_2_allowExecute;
  reg                 MmuPlugin_ports_0_cache_2_allowUser;
  reg                 MmuPlugin_ports_0_cache_3_valid;
  reg                 MmuPlugin_ports_0_cache_3_exception;
  reg                 MmuPlugin_ports_0_cache_3_superPage;
  reg        [9:0]    MmuPlugin_ports_0_cache_3_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_3_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_0_cache_3_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_0_cache_3_physicalAddress_1;
  reg                 MmuPlugin_ports_0_cache_3_allowRead;
  reg                 MmuPlugin_ports_0_cache_3_allowWrite;
  reg                 MmuPlugin_ports_0_cache_3_allowExecute;
  reg                 MmuPlugin_ports_0_cache_3_allowUser;
  reg                 MmuPlugin_ports_0_requireMmuLockupCalc;
  reg        [3:0]    MmuPlugin_ports_0_cacheHitsCalc;
  reg                 MmuPlugin_ports_0_requireMmuLockup;
  reg        [3:0]    MmuPlugin_ports_0_cacheHits;
  wire                MmuPlugin_ports_0_cacheHit;
  wire                _zz_54;
  wire                _zz_55;
  wire                _zz_56;
  wire       [1:0]    _zz_57;
  wire                MmuPlugin_ports_0_cacheLine_valid;
  wire                MmuPlugin_ports_0_cacheLine_exception;
  wire                MmuPlugin_ports_0_cacheLine_superPage;
  wire       [9:0]    MmuPlugin_ports_0_cacheLine_virtualAddress_0;
  wire       [9:0]    MmuPlugin_ports_0_cacheLine_virtualAddress_1;
  wire       [9:0]    MmuPlugin_ports_0_cacheLine_physicalAddress_0;
  wire       [9:0]    MmuPlugin_ports_0_cacheLine_physicalAddress_1;
  wire                MmuPlugin_ports_0_cacheLine_allowRead;
  wire                MmuPlugin_ports_0_cacheLine_allowWrite;
  wire                MmuPlugin_ports_0_cacheLine_allowExecute;
  wire                MmuPlugin_ports_0_cacheLine_allowUser;
  reg                 MmuPlugin_ports_0_entryToReplace_willIncrement;
  wire                MmuPlugin_ports_0_entryToReplace_willClear;
  reg        [1:0]    MmuPlugin_ports_0_entryToReplace_valueNext;
  reg        [1:0]    MmuPlugin_ports_0_entryToReplace_value;
  wire                MmuPlugin_ports_0_entryToReplace_willOverflowIfInc;
  wire                MmuPlugin_ports_0_entryToReplace_willOverflow;
  reg                 MmuPlugin_ports_1_cache_0_valid;
  reg                 MmuPlugin_ports_1_cache_0_exception;
  reg                 MmuPlugin_ports_1_cache_0_superPage;
  reg        [9:0]    MmuPlugin_ports_1_cache_0_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_0_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_1_cache_0_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_0_physicalAddress_1;
  reg                 MmuPlugin_ports_1_cache_0_allowRead;
  reg                 MmuPlugin_ports_1_cache_0_allowWrite;
  reg                 MmuPlugin_ports_1_cache_0_allowExecute;
  reg                 MmuPlugin_ports_1_cache_0_allowUser;
  reg                 MmuPlugin_ports_1_cache_1_valid;
  reg                 MmuPlugin_ports_1_cache_1_exception;
  reg                 MmuPlugin_ports_1_cache_1_superPage;
  reg        [9:0]    MmuPlugin_ports_1_cache_1_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_1_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_1_cache_1_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_1_physicalAddress_1;
  reg                 MmuPlugin_ports_1_cache_1_allowRead;
  reg                 MmuPlugin_ports_1_cache_1_allowWrite;
  reg                 MmuPlugin_ports_1_cache_1_allowExecute;
  reg                 MmuPlugin_ports_1_cache_1_allowUser;
  reg                 MmuPlugin_ports_1_cache_2_valid;
  reg                 MmuPlugin_ports_1_cache_2_exception;
  reg                 MmuPlugin_ports_1_cache_2_superPage;
  reg        [9:0]    MmuPlugin_ports_1_cache_2_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_2_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_1_cache_2_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_2_physicalAddress_1;
  reg                 MmuPlugin_ports_1_cache_2_allowRead;
  reg                 MmuPlugin_ports_1_cache_2_allowWrite;
  reg                 MmuPlugin_ports_1_cache_2_allowExecute;
  reg                 MmuPlugin_ports_1_cache_2_allowUser;
  reg                 MmuPlugin_ports_1_cache_3_valid;
  reg                 MmuPlugin_ports_1_cache_3_exception;
  reg                 MmuPlugin_ports_1_cache_3_superPage;
  reg        [9:0]    MmuPlugin_ports_1_cache_3_virtualAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_3_virtualAddress_1;
  reg        [9:0]    MmuPlugin_ports_1_cache_3_physicalAddress_0;
  reg        [9:0]    MmuPlugin_ports_1_cache_3_physicalAddress_1;
  reg                 MmuPlugin_ports_1_cache_3_allowRead;
  reg                 MmuPlugin_ports_1_cache_3_allowWrite;
  reg                 MmuPlugin_ports_1_cache_3_allowExecute;
  reg                 MmuPlugin_ports_1_cache_3_allowUser;
  reg                 MmuPlugin_ports_1_requireMmuLockupCalc;
  reg        [3:0]    MmuPlugin_ports_1_cacheHitsCalc;
  reg                 MmuPlugin_ports_1_requireMmuLockup;
  reg        [3:0]    MmuPlugin_ports_1_cacheHits;
  wire                MmuPlugin_ports_1_cacheHit;
  wire                _zz_58;
  wire                _zz_59;
  wire                _zz_60;
  wire       [1:0]    _zz_61;
  wire                MmuPlugin_ports_1_cacheLine_valid;
  wire                MmuPlugin_ports_1_cacheLine_exception;
  wire                MmuPlugin_ports_1_cacheLine_superPage;
  wire       [9:0]    MmuPlugin_ports_1_cacheLine_virtualAddress_0;
  wire       [9:0]    MmuPlugin_ports_1_cacheLine_virtualAddress_1;
  wire       [9:0]    MmuPlugin_ports_1_cacheLine_physicalAddress_0;
  wire       [9:0]    MmuPlugin_ports_1_cacheLine_physicalAddress_1;
  wire                MmuPlugin_ports_1_cacheLine_allowRead;
  wire                MmuPlugin_ports_1_cacheLine_allowWrite;
  wire                MmuPlugin_ports_1_cacheLine_allowExecute;
  wire                MmuPlugin_ports_1_cacheLine_allowUser;
  reg                 MmuPlugin_ports_1_entryToReplace_willIncrement;
  wire                MmuPlugin_ports_1_entryToReplace_willClear;
  reg        [1:0]    MmuPlugin_ports_1_entryToReplace_valueNext;
  reg        [1:0]    MmuPlugin_ports_1_entryToReplace_value;
  wire                MmuPlugin_ports_1_entryToReplace_willOverflowIfInc;
  wire                MmuPlugin_ports_1_entryToReplace_willOverflow;
  reg        `MmuPlugin_shared_State_defaultEncoding_type MmuPlugin_shared_state_1;
  reg        [9:0]    MmuPlugin_shared_vpn_0;
  reg        [9:0]    MmuPlugin_shared_vpn_1;
  reg        [1:0]    MmuPlugin_shared_portSortedOh;
  reg                 MmuPlugin_shared_dBusRspStaged_valid;
  reg        [31:0]   MmuPlugin_shared_dBusRspStaged_payload_data;
  reg                 MmuPlugin_shared_dBusRspStaged_payload_error;
  reg                 MmuPlugin_shared_dBusRspStaged_payload_redo;
  wire                MmuPlugin_shared_dBusRsp_pte_V;
  wire                MmuPlugin_shared_dBusRsp_pte_R;
  wire                MmuPlugin_shared_dBusRsp_pte_W;
  wire                MmuPlugin_shared_dBusRsp_pte_X;
  wire                MmuPlugin_shared_dBusRsp_pte_U;
  wire                MmuPlugin_shared_dBusRsp_pte_G;
  wire                MmuPlugin_shared_dBusRsp_pte_A;
  wire                MmuPlugin_shared_dBusRsp_pte_D;
  wire       [1:0]    MmuPlugin_shared_dBusRsp_pte_RSW;
  wire       [9:0]    MmuPlugin_shared_dBusRsp_pte_PPN0;
  wire       [11:0]   MmuPlugin_shared_dBusRsp_pte_PPN1;
  wire                MmuPlugin_shared_dBusRsp_exception;
  wire                MmuPlugin_shared_dBusRsp_leaf;
  reg                 MmuPlugin_shared_pteBuffer_V;
  reg                 MmuPlugin_shared_pteBuffer_R;
  reg                 MmuPlugin_shared_pteBuffer_W;
  reg                 MmuPlugin_shared_pteBuffer_X;
  reg                 MmuPlugin_shared_pteBuffer_U;
  reg                 MmuPlugin_shared_pteBuffer_G;
  reg                 MmuPlugin_shared_pteBuffer_A;
  reg                 MmuPlugin_shared_pteBuffer_D;
  reg        [1:0]    MmuPlugin_shared_pteBuffer_RSW;
  reg        [9:0]    MmuPlugin_shared_pteBuffer_PPN0;
  reg        [11:0]   MmuPlugin_shared_pteBuffer_PPN1;
  reg        [1:0]    _zz_62;
  wire       [1:0]    _zz_63;
  reg        [1:0]    _zz_64;
  wire       [1:0]    MmuPlugin_shared_refills;
  wire       [1:0]    _zz_65;
  reg        [1:0]    _zz_66;
  wire       [31:0]   _zz_67;
  wire                IBusCachedPlugin_externalFlush;
  wire                IBusCachedPlugin_jump_pcLoad_valid;
  wire       [31:0]   IBusCachedPlugin_jump_pcLoad_payload;
  wire       [4:0]    _zz_68;
  wire       [4:0]    _zz_69;
  wire                _zz_70;
  wire                _zz_71;
  wire                _zz_72;
  wire                _zz_73;
  wire                IBusCachedPlugin_fetchPc_output_valid;
  wire                IBusCachedPlugin_fetchPc_output_ready;
  wire       [31:0]   IBusCachedPlugin_fetchPc_output_payload;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pcReg /* verilator public */ ;
  reg                 IBusCachedPlugin_fetchPc_correction;
  reg                 IBusCachedPlugin_fetchPc_correctionReg;
  wire                IBusCachedPlugin_fetchPc_corrected;
  reg                 IBusCachedPlugin_fetchPc_pcRegPropagate;
  reg                 IBusCachedPlugin_fetchPc_booted;
  reg                 IBusCachedPlugin_fetchPc_inc;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pc;
  wire                IBusCachedPlugin_fetchPc_redo_valid;
  wire       [31:0]   IBusCachedPlugin_fetchPc_redo_payload;
  reg                 IBusCachedPlugin_fetchPc_flushed;
  reg                 IBusCachedPlugin_iBusRsp_redoFetch;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_output_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_0_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_1_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_2_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_3_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_3_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_3_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_3_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_3_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_3_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_3_halt;
  wire                _zz_74;
  wire                _zz_75;
  wire                _zz_76;
  wire                _zz_77;
  wire                IBusCachedPlugin_iBusRsp_flush;
  wire                _zz_78;
  wire                _zz_79;
  reg                 _zz_80;
  wire                _zz_81;
  reg                 _zz_82;
  reg        [31:0]   _zz_83;
  wire                _zz_84;
  reg                 _zz_85;
  reg        [31:0]   _zz_86;
  reg                 IBusCachedPlugin_iBusRsp_readyForError;
  wire                IBusCachedPlugin_iBusRsp_output_valid;
  wire                IBusCachedPlugin_iBusRsp_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_pc;
  wire                IBusCachedPlugin_iBusRsp_output_payload_rsp_error;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  wire                IBusCachedPlugin_iBusRsp_output_payload_isRvc;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_0;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_1;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_2;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_3;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_4;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_5;
  wire                _zz_87;
  reg        [18:0]   _zz_88;
  wire                _zz_89;
  reg        [10:0]   _zz_90;
  wire                _zz_91;
  reg        [18:0]   _zz_92;
  reg                 _zz_93;
  wire                _zz_94;
  reg        [10:0]   _zz_95;
  wire                _zz_96;
  reg        [18:0]   _zz_97;
  wire       [31:0]   _zz_98;
  reg        [31:0]   IBusCachedPlugin_rspCounter;
  wire                IBusCachedPlugin_s0_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s1_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s2_tightlyCoupledHit;
  wire                IBusCachedPlugin_rsp_iBusRspOutputHalt;
  wire                IBusCachedPlugin_rsp_issueDetected;
  reg                 IBusCachedPlugin_rsp_redoFetch;
  wire                dataCache_1_io_mem_cmd_s2mPipe_valid;
  wire                dataCache_1_io_mem_cmd_s2mPipe_ready;
  wire                dataCache_1_io_mem_cmd_s2mPipe_payload_wr;
  wire                dataCache_1_io_mem_cmd_s2mPipe_payload_uncached;
  wire       [31:0]   dataCache_1_io_mem_cmd_s2mPipe_payload_address;
  wire       [31:0]   dataCache_1_io_mem_cmd_s2mPipe_payload_data;
  wire       [3:0]    dataCache_1_io_mem_cmd_s2mPipe_payload_mask;
  wire       [3:0]    dataCache_1_io_mem_cmd_s2mPipe_payload_length;
  wire                dataCache_1_io_mem_cmd_s2mPipe_payload_exclusive;
  wire                dataCache_1_io_mem_cmd_s2mPipe_payload_last;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rValid;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rData_wr;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rData_uncached;
  reg        [31:0]   dataCache_1_io_mem_cmd_s2mPipe_rData_address;
  reg        [31:0]   dataCache_1_io_mem_cmd_s2mPipe_rData_data;
  reg        [3:0]    dataCache_1_io_mem_cmd_s2mPipe_rData_mask;
  reg        [3:0]    dataCache_1_io_mem_cmd_s2mPipe_rData_length;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rData_exclusive;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rData_last;
  reg                 dBus_rsp_valid_regNext;
  reg                 dBus_rsp_payload_exclusive_regNext;
  reg                 dBus_rsp_payload_error_regNext;
  reg                 dBus_rsp_payload_last_regNext;
  reg        [2:0]    dBus_rsp_payload_aggregated_regNext;
  reg        [63:0]   dBus_rsp_payload_data_regNextWhen;
  wire       [31:0]   _zz_99;
  reg        [31:0]   DBusCachedPlugin_rspCounter;
  wire       [1:0]    execute_DBusCachedPlugin_size;
  reg        [31:0]   _zz_100;
  wire       [11:0]   _zz_101;
  reg                 _zz_102;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspShifted;
  wire                _zz_103;
  reg        [31:0]   _zz_104;
  wire                _zz_105;
  reg        [31:0]   _zz_106;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspFormated;
  reg                 DBusCachedPlugin_forceDatapath;
  wire       [36:0]   _zz_107;
  wire                _zz_108;
  wire                _zz_109;
  wire                _zz_110;
  wire                _zz_111;
  wire                _zz_112;
  wire                _zz_113;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_114;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_115;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_116;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_117;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_118;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_119;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_120;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress1;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress2;
  wire       [31:0]   decode_RegFilePlugin_rs1Data;
  wire       [31:0]   decode_RegFilePlugin_rs2Data;
  reg                 lastStageRegFileWrite_valid /* verilator public */ ;
  wire       [4:0]    lastStageRegFileWrite_payload_address /* verilator public */ ;
  wire       [31:0]   lastStageRegFileWrite_payload_data /* verilator public */ ;
  reg        [31:0]   execute_IntAluPlugin_bitwise;
  reg        [31:0]   _zz_121;
  reg        [31:0]   _zz_122;
  wire                _zz_123;
  reg        [19:0]   _zz_124;
  wire                _zz_125;
  reg        [19:0]   _zz_126;
  reg        [31:0]   _zz_127;
  reg        [31:0]   execute_SrcPlugin_addSub;
  wire                execute_SrcPlugin_less;
  wire       [4:0]    execute_FullBarrelShifterPlugin_amplitude;
  reg        [31:0]   _zz_128;
  wire       [31:0]   execute_FullBarrelShifterPlugin_reversed;
  reg        [31:0]   _zz_129;
  reg                 _zz_130;
  reg                 _zz_131;
  reg                 _zz_132;
  reg        [4:0]    _zz_133;
  reg        [31:0]   _zz_134;
  wire                _zz_135;
  wire                _zz_136;
  wire                _zz_137;
  wire                _zz_138;
  wire                _zz_139;
  wire                _zz_140;
  reg                 execute_MulPlugin_aSigned;
  reg                 execute_MulPlugin_bSigned;
  wire       [31:0]   execute_MulPlugin_a;
  wire       [31:0]   execute_MulPlugin_b;
  wire       [15:0]   execute_MulPlugin_aULow;
  wire       [15:0]   execute_MulPlugin_bULow;
  wire       [16:0]   execute_MulPlugin_aSLow;
  wire       [16:0]   execute_MulPlugin_bSLow;
  wire       [16:0]   execute_MulPlugin_aHigh;
  wire       [16:0]   execute_MulPlugin_bHigh;
  wire       [65:0]   writeBack_MulPlugin_result;
  reg        [32:0]   memory_MulDivIterativePlugin_rs1;
  reg        [31:0]   memory_MulDivIterativePlugin_rs2;
  reg        [64:0]   memory_MulDivIterativePlugin_accumulator;
  wire                memory_MulDivIterativePlugin_frontendOk;
  reg                 memory_MulDivIterativePlugin_div_needRevert;
  reg                 memory_MulDivIterativePlugin_div_counter_willIncrement;
  reg                 memory_MulDivIterativePlugin_div_counter_willClear;
  reg        [5:0]    memory_MulDivIterativePlugin_div_counter_valueNext;
  reg        [5:0]    memory_MulDivIterativePlugin_div_counter_value;
  wire                memory_MulDivIterativePlugin_div_counter_willOverflowIfInc;
  wire                memory_MulDivIterativePlugin_div_counter_willOverflow;
  reg                 memory_MulDivIterativePlugin_div_done;
  reg        [31:0]   memory_MulDivIterativePlugin_div_result;
  wire       [31:0]   _zz_141;
  wire       [32:0]   memory_MulDivIterativePlugin_div_stage_0_remainderShifted;
  wire       [32:0]   memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator;
  wire       [31:0]   memory_MulDivIterativePlugin_div_stage_0_outRemainder;
  wire       [31:0]   memory_MulDivIterativePlugin_div_stage_0_outNumerator;
  wire       [31:0]   _zz_142;
  wire                _zz_143;
  wire                _zz_144;
  reg        [32:0]   _zz_145;
  reg        [1:0]    _zz_146;
  wire       [1:0]    CsrPlugin_misa_base;
  wire       [25:0]   CsrPlugin_misa_extensions;
  reg        [1:0]    CsrPlugin_mtvec_mode;
  reg        [29:0]   CsrPlugin_mtvec_base;
  reg        [31:0]   CsrPlugin_mepc;
  reg                 CsrPlugin_mstatus_MIE;
  reg                 CsrPlugin_mstatus_MPIE;
  reg        [1:0]    CsrPlugin_mstatus_MPP;
  reg                 CsrPlugin_mip_MEIP;
  reg                 CsrPlugin_mip_MTIP;
  reg                 CsrPlugin_mip_MSIP;
  reg                 CsrPlugin_mie_MEIE;
  reg                 CsrPlugin_mie_MTIE;
  reg                 CsrPlugin_mie_MSIE;
  reg        [31:0]   CsrPlugin_mscratch;
  reg                 CsrPlugin_mcause_interrupt;
  reg        [3:0]    CsrPlugin_mcause_exceptionCode;
  reg        [31:0]   CsrPlugin_mtval;
  reg        [63:0]   CsrPlugin_mcycle = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  reg        [63:0]   CsrPlugin_minstret = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  reg                 CsrPlugin_medeleg_IAM;
  reg                 CsrPlugin_medeleg_IAF;
  reg                 CsrPlugin_medeleg_II;
  reg                 CsrPlugin_medeleg_LAM;
  reg                 CsrPlugin_medeleg_LAF;
  reg                 CsrPlugin_medeleg_SAM;
  reg                 CsrPlugin_medeleg_SAF;
  reg                 CsrPlugin_medeleg_EU;
  reg                 CsrPlugin_medeleg_ES;
  reg                 CsrPlugin_medeleg_IPF;
  reg                 CsrPlugin_medeleg_LPF;
  reg                 CsrPlugin_medeleg_SPF;
  reg                 CsrPlugin_mideleg_ST;
  reg                 CsrPlugin_mideleg_SE;
  reg                 CsrPlugin_mideleg_SS;
  reg                 CsrPlugin_sstatus_SIE;
  reg                 CsrPlugin_sstatus_SPIE;
  reg        [0:0]    CsrPlugin_sstatus_SPP;
  reg                 CsrPlugin_sip_SEIP_SOFT;
  reg                 CsrPlugin_sip_SEIP_INPUT;
  wire                CsrPlugin_sip_SEIP_OR;
  reg                 CsrPlugin_sip_STIP;
  reg                 CsrPlugin_sip_SSIP;
  reg                 CsrPlugin_sie_SEIE;
  reg                 CsrPlugin_sie_STIE;
  reg                 CsrPlugin_sie_SSIE;
  reg        [1:0]    CsrPlugin_stvec_mode;
  reg        [29:0]   CsrPlugin_stvec_base;
  reg        [31:0]   CsrPlugin_sscratch;
  reg                 CsrPlugin_scause_interrupt;
  reg        [3:0]    CsrPlugin_scause_exceptionCode;
  reg        [31:0]   CsrPlugin_stval;
  reg        [31:0]   CsrPlugin_sepc;
  reg        [21:0]   CsrPlugin_satp_PPN;
  reg        [8:0]    CsrPlugin_satp_ASID;
  reg        [0:0]    CsrPlugin_satp_MODE;
  wire                _zz_147;
  wire                _zz_148;
  wire                _zz_149;
  wire                _zz_150;
  wire                _zz_151;
  wire                _zz_152;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  reg        [3:0]    CsrPlugin_exceptionPortCtrl_exceptionContext_code;
  reg        [31:0]   CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
  reg        [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
  wire       [1:0]    _zz_153;
  wire                _zz_154;
  reg                 CsrPlugin_interrupt_valid;
  reg        [3:0]    CsrPlugin_interrupt_code /* verilator public */ ;
  reg        [1:0]    CsrPlugin_interrupt_targetPrivilege;
  wire                CsrPlugin_exception;
  reg                 CsrPlugin_lastStageWasWfi;
  reg                 CsrPlugin_pipelineLiberator_pcValids_0;
  reg                 CsrPlugin_pipelineLiberator_pcValids_1;
  reg                 CsrPlugin_pipelineLiberator_pcValids_2;
  wire                CsrPlugin_pipelineLiberator_active;
  reg                 CsrPlugin_pipelineLiberator_done;
  wire                CsrPlugin_interruptJump /* verilator public */ ;
  reg                 CsrPlugin_hadException /* verilator public */ ;
  reg        [1:0]    CsrPlugin_targetPrivilege;
  reg        [3:0]    CsrPlugin_trapCause;
  reg        [1:0]    CsrPlugin_xtvec_mode;
  reg        [29:0]   CsrPlugin_xtvec_base;
  reg                 execute_CsrPlugin_wfiWake;
  wire                execute_CsrPlugin_blockedBySideEffects;
  reg                 execute_CsrPlugin_illegalAccess;
  reg                 execute_CsrPlugin_illegalInstruction;
  wire       [31:0]   execute_CsrPlugin_readData;
  wire                execute_CsrPlugin_writeInstruction;
  wire                execute_CsrPlugin_readInstruction;
  wire                execute_CsrPlugin_writeEnable;
  wire                execute_CsrPlugin_readEnable;
  reg        [31:0]   execute_CsrPlugin_readToWriteData;
  reg        [31:0]   execute_CsrPlugin_writeData;
  wire       [11:0]   execute_CsrPlugin_csrAddress;
  wire                execute_BranchPlugin_eq;
  wire       [2:0]    _zz_155;
  reg                 _zz_156;
  reg                 _zz_157;
  wire                _zz_158;
  reg        [19:0]   _zz_159;
  wire                _zz_160;
  reg        [10:0]   _zz_161;
  wire                _zz_162;
  reg        [18:0]   _zz_163;
  reg                 _zz_164;
  wire                execute_BranchPlugin_missAlignedTarget;
  reg        [31:0]   execute_BranchPlugin_branch_src1;
  reg        [31:0]   execute_BranchPlugin_branch_src2;
  wire                _zz_165;
  reg        [19:0]   _zz_166;
  wire                _zz_167;
  reg        [10:0]   _zz_168;
  wire                _zz_169;
  reg        [18:0]   _zz_170;
  wire       [31:0]   execute_BranchPlugin_branchAdder;
  reg                 DebugPlugin_firstCycle;
  reg                 DebugPlugin_secondCycle;
  reg                 DebugPlugin_resetIt;
  reg                 DebugPlugin_haltIt;
  reg                 DebugPlugin_stepIt;
  reg                 DebugPlugin_isPipBusy;
  reg                 DebugPlugin_godmode;
  reg                 DebugPlugin_haltedByBreak;
  reg        [31:0]   DebugPlugin_busReadDataReg;
  reg                 _zz_171;
  reg                 DebugPlugin_resetIt_regNext;
  reg        [31:0]   decode_to_execute_PC;
  reg        [31:0]   execute_to_memory_PC;
  reg        [31:0]   memory_to_writeBack_PC;
  reg        [31:0]   decode_to_execute_INSTRUCTION;
  reg        [31:0]   execute_to_memory_INSTRUCTION;
  reg        [31:0]   memory_to_writeBack_INSTRUCTION;
  reg        [31:0]   decode_to_execute_FORMAL_PC_NEXT;
  reg        [31:0]   execute_to_memory_FORMAL_PC_NEXT;
  reg        [31:0]   memory_to_writeBack_FORMAL_PC_NEXT;
  reg                 decode_to_execute_MEMORY_FORCE_CONSTISTENCY;
  reg                 decode_to_execute_IS_SFENCE_VMA;
  reg                 execute_to_memory_IS_SFENCE_VMA;
  reg                 memory_to_writeBack_IS_SFENCE_VMA;
  reg                 decode_to_execute_SRC_USE_SUB_LESS;
  reg                 decode_to_execute_MEMORY_ENABLE;
  reg                 execute_to_memory_MEMORY_ENABLE;
  reg                 memory_to_writeBack_MEMORY_ENABLE;
  reg        `AluCtrlEnum_defaultEncoding_type decode_to_execute_ALU_CTRL;
  reg                 decode_to_execute_REGFILE_WRITE_VALID;
  reg                 execute_to_memory_REGFILE_WRITE_VALID;
  reg                 memory_to_writeBack_REGFILE_WRITE_VALID;
  reg                 decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  reg                 decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  reg                 execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  reg                 decode_to_execute_MEMORY_WR;
  reg                 execute_to_memory_MEMORY_WR;
  reg                 memory_to_writeBack_MEMORY_WR;
  reg                 decode_to_execute_MEMORY_LRSC;
  reg                 execute_to_memory_MEMORY_LRSC;
  reg                 memory_to_writeBack_MEMORY_LRSC;
  reg                 decode_to_execute_MEMORY_AMO;
  reg                 execute_to_memory_MEMORY_AMO;
  reg                 memory_to_writeBack_MEMORY_AMO;
  reg                 decode_to_execute_MEMORY_MANAGMENT;
  reg                 decode_to_execute_MEMORY_FENCE;
  reg                 execute_to_memory_MEMORY_FENCE;
  reg                 memory_to_writeBack_MEMORY_FENCE;
  reg                 decode_to_execute_SRC_LESS_UNSIGNED;
  reg        `AluBitwiseCtrlEnum_defaultEncoding_type decode_to_execute_ALU_BITWISE_CTRL;
  reg        `ShiftCtrlEnum_defaultEncoding_type decode_to_execute_SHIFT_CTRL;
  reg        `ShiftCtrlEnum_defaultEncoding_type execute_to_memory_SHIFT_CTRL;
  reg                 decode_to_execute_IS_MUL;
  reg                 execute_to_memory_IS_MUL;
  reg                 memory_to_writeBack_IS_MUL;
  reg                 decode_to_execute_IS_DIV;
  reg                 execute_to_memory_IS_DIV;
  reg                 decode_to_execute_IS_RS1_SIGNED;
  reg                 decode_to_execute_IS_RS2_SIGNED;
  reg                 decode_to_execute_IS_CSR;
  reg        `EnvCtrlEnum_defaultEncoding_type decode_to_execute_ENV_CTRL;
  reg        `EnvCtrlEnum_defaultEncoding_type execute_to_memory_ENV_CTRL;
  reg        `EnvCtrlEnum_defaultEncoding_type memory_to_writeBack_ENV_CTRL;
  reg        `BranchCtrlEnum_defaultEncoding_type decode_to_execute_BRANCH_CTRL;
  reg        [31:0]   decode_to_execute_RS1;
  reg        [31:0]   decode_to_execute_RS2;
  reg                 decode_to_execute_SRC2_FORCE_ZERO;
  reg        [31:0]   decode_to_execute_SRC1;
  reg        [31:0]   decode_to_execute_SRC2;
  reg                 decode_to_execute_CSR_WRITE_OPCODE;
  reg                 decode_to_execute_CSR_READ_OPCODE;
  reg                 decode_to_execute_PREDICTION_HAD_BRANCHED2;
  reg                 decode_to_execute_DO_EBREAK;
  reg        [1:0]    execute_to_memory_MEMORY_ADDRESS_LOW;
  reg        [1:0]    memory_to_writeBack_MEMORY_ADDRESS_LOW;
  (* keep , syn_keep *) reg        [31:0]   execute_to_memory_MEMORY_VIRTUAL_ADDRESS /* synthesis syn_keep = 1 */ ;
  reg                 execute_to_memory_IS_DBUS_SHARING;
  reg                 memory_to_writeBack_IS_DBUS_SHARING;
  reg        [31:0]   execute_to_memory_REGFILE_WRITE_DATA;
  reg        [31:0]   memory_to_writeBack_REGFILE_WRITE_DATA;
  reg        [31:0]   execute_to_memory_SHIFT_RIGHT;
  reg        [31:0]   execute_to_memory_MUL_LL;
  reg        [33:0]   execute_to_memory_MUL_LH;
  reg        [33:0]   execute_to_memory_MUL_HL;
  reg        [33:0]   execute_to_memory_MUL_HH;
  reg        [33:0]   memory_to_writeBack_MUL_HH;
  reg                 execute_to_memory_BRANCH_DO;
  reg        [31:0]   execute_to_memory_BRANCH_CALC;
  reg        [51:0]   memory_to_writeBack_MUL_LOW;
  reg        [2:0]    _zz_172;
  reg                 execute_CsrPlugin_csr_768;
  reg                 execute_CsrPlugin_csr_256;
  reg                 execute_CsrPlugin_csr_384;
  reg                 execute_CsrPlugin_csr_3857;
  reg                 execute_CsrPlugin_csr_3858;
  reg                 execute_CsrPlugin_csr_3859;
  reg                 execute_CsrPlugin_csr_3860;
  reg                 execute_CsrPlugin_csr_769;
  reg                 execute_CsrPlugin_csr_836;
  reg                 execute_CsrPlugin_csr_772;
  reg                 execute_CsrPlugin_csr_773;
  reg                 execute_CsrPlugin_csr_833;
  reg                 execute_CsrPlugin_csr_832;
  reg                 execute_CsrPlugin_csr_834;
  reg                 execute_CsrPlugin_csr_835;
  reg                 execute_CsrPlugin_csr_770;
  reg                 execute_CsrPlugin_csr_771;
  reg                 execute_CsrPlugin_csr_3073;
  reg                 execute_CsrPlugin_csr_3201;
  reg                 execute_CsrPlugin_csr_324;
  reg                 execute_CsrPlugin_csr_260;
  reg                 execute_CsrPlugin_csr_261;
  reg                 execute_CsrPlugin_csr_321;
  reg                 execute_CsrPlugin_csr_320;
  reg                 execute_CsrPlugin_csr_322;
  reg                 execute_CsrPlugin_csr_323;
  reg        [31:0]   _zz_173;
  reg        [31:0]   _zz_174;
  reg        [31:0]   _zz_175;
  reg        [31:0]   _zz_176;
  reg        [31:0]   _zz_177;
  reg        [31:0]   _zz_178;
  reg        [31:0]   _zz_179;
  reg        [31:0]   _zz_180;
  reg        [31:0]   _zz_181;
  reg        [31:0]   _zz_182;
  reg        [31:0]   _zz_183;
  reg        [31:0]   _zz_184;
  reg        [31:0]   _zz_185;
  reg        [31:0]   _zz_186;
  reg        [31:0]   _zz_187;
  reg        [31:0]   _zz_188;
  reg        [31:0]   _zz_189;
  reg        [31:0]   _zz_190;
  reg        [31:0]   _zz_191;
  reg        [31:0]   _zz_192;
  reg        [31:0]   _zz_193;
  reg        [31:0]   _zz_194;
  `ifndef SYNTHESIS
  reg [31:0] _zz_1_string;
  reg [31:0] _zz_2_string;
  reg [39:0] _zz_3_string;
  reg [39:0] _zz_4_string;
  reg [39:0] _zz_5_string;
  reg [39:0] _zz_6_string;
  reg [39:0] decode_ENV_CTRL_string;
  reg [39:0] _zz_7_string;
  reg [39:0] _zz_8_string;
  reg [39:0] _zz_9_string;
  reg [71:0] _zz_10_string;
  reg [71:0] _zz_11_string;
  reg [71:0] decode_SHIFT_CTRL_string;
  reg [71:0] _zz_12_string;
  reg [71:0] _zz_13_string;
  reg [71:0] _zz_14_string;
  reg [39:0] decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_15_string;
  reg [39:0] _zz_16_string;
  reg [39:0] _zz_17_string;
  reg [63:0] decode_ALU_CTRL_string;
  reg [63:0] _zz_18_string;
  reg [63:0] _zz_19_string;
  reg [63:0] _zz_20_string;
  reg [31:0] execute_BRANCH_CTRL_string;
  reg [31:0] _zz_21_string;
  reg [39:0] memory_ENV_CTRL_string;
  reg [39:0] _zz_22_string;
  reg [39:0] execute_ENV_CTRL_string;
  reg [39:0] _zz_23_string;
  reg [39:0] writeBack_ENV_CTRL_string;
  reg [39:0] _zz_24_string;
  reg [71:0] memory_SHIFT_CTRL_string;
  reg [71:0] _zz_27_string;
  reg [71:0] execute_SHIFT_CTRL_string;
  reg [71:0] _zz_28_string;
  reg [23:0] decode_SRC2_CTRL_string;
  reg [23:0] _zz_31_string;
  reg [95:0] decode_SRC1_CTRL_string;
  reg [95:0] _zz_33_string;
  reg [63:0] execute_ALU_CTRL_string;
  reg [63:0] _zz_34_string;
  reg [39:0] execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_35_string;
  reg [31:0] _zz_39_string;
  reg [39:0] _zz_40_string;
  reg [71:0] _zz_41_string;
  reg [39:0] _zz_42_string;
  reg [23:0] _zz_43_string;
  reg [63:0] _zz_44_string;
  reg [95:0] _zz_45_string;
  reg [31:0] decode_BRANCH_CTRL_string;
  reg [31:0] _zz_49_string;
  reg [47:0] MmuPlugin_shared_state_1_string;
  reg [95:0] _zz_114_string;
  reg [63:0] _zz_115_string;
  reg [23:0] _zz_116_string;
  reg [39:0] _zz_117_string;
  reg [71:0] _zz_118_string;
  reg [39:0] _zz_119_string;
  reg [31:0] _zz_120_string;
  reg [63:0] decode_to_execute_ALU_CTRL_string;
  reg [39:0] decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [71:0] decode_to_execute_SHIFT_CTRL_string;
  reg [71:0] execute_to_memory_SHIFT_CTRL_string;
  reg [39:0] decode_to_execute_ENV_CTRL_string;
  reg [39:0] execute_to_memory_ENV_CTRL_string;
  reg [39:0] memory_to_writeBack_ENV_CTRL_string;
  reg [31:0] decode_to_execute_BRANCH_CTRL_string;
  `endif

  (* ram_style = "distributed" *) reg [31:0] RegFilePlugin_regFile [0:31] /* verilator public */ ;

  assign _zz_254 = (execute_arbitration_isValid && execute_IS_CSR);
  assign _zz_255 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign _zz_256 = 1'b1;
  assign _zz_257 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_258 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_259 = (memory_arbitration_isValid && memory_IS_DIV);
  assign _zz_260 = ((_zz_200 && IBusCachedPlugin_cache_io_cpu_decode_error) && (! _zz_48_2));
  assign _zz_261 = ((_zz_200 && IBusCachedPlugin_cache_io_cpu_decode_cacheMiss) && (! _zz_48_1));
  assign _zz_262 = ((_zz_200 && IBusCachedPlugin_cache_io_cpu_decode_mmuException) && (! _zz_48_0));
  assign _zz_263 = ((_zz_200 && IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling) && (! IBusCachedPlugin_rsp_issueDetected));
  assign _zz_264 = ({decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid} != 2'b00);
  assign _zz_265 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_WFI));
  assign _zz_266 = (execute_arbitration_isValid && execute_DO_EBREAK);
  assign _zz_267 = (({writeBack_arbitration_isValid,memory_arbitration_isValid} != 2'b00) == 1'b0);
  assign _zz_268 = (CsrPlugin_hadException || CsrPlugin_interruptJump);
  assign _zz_269 = (writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET));
  assign _zz_270 = (DebugPlugin_stepIt && IBusCachedPlugin_incomingInstruction);
  assign _zz_271 = writeBack_INSTRUCTION[29 : 28];
  assign _zz_272 = ((MmuPlugin_shared_dBusRspStaged_valid && (! MmuPlugin_shared_dBusRspStaged_payload_redo)) && (MmuPlugin_shared_dBusRsp_leaf || MmuPlugin_shared_dBusRsp_exception));
  assign _zz_273 = MmuPlugin_shared_portSortedOh[0];
  assign _zz_274 = MmuPlugin_shared_portSortedOh[1];
  assign _zz_275 = (! ({(writeBack_arbitration_isValid || CsrPlugin_exceptionPendings_3),{(memory_arbitration_isValid || CsrPlugin_exceptionPendings_2),(execute_arbitration_isValid || CsrPlugin_exceptionPendings_1)}} != 3'b000));
  assign _zz_276 = (! dataCache_1_io_cpu_redo);
  assign _zz_277 = ((! writeBack_MEMORY_FENCE) || (! writeBack_arbitration_isFiring));
  assign _zz_278 = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign _zz_279 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign _zz_280 = (1'b0 || (! 1'b1));
  assign _zz_281 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_282 = (1'b0 || (! memory_BYPASSABLE_MEMORY_STAGE));
  assign _zz_283 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_284 = (1'b0 || (! execute_BYPASSABLE_EXECUTE_STAGE));
  assign _zz_285 = execute_INSTRUCTION[13 : 12];
  assign _zz_286 = (memory_MulDivIterativePlugin_frontendOk && (! memory_MulDivIterativePlugin_div_done));
  assign _zz_287 = (! memory_arbitration_isStuck);
  assign _zz_288 = (execute_CsrPlugin_illegalAccess || execute_CsrPlugin_illegalInstruction);
  assign _zz_289 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_ECALL));
  assign _zz_290 = debug_bus_cmd_payload_address[7 : 2];
  assign _zz_291 = (MmuPlugin_shared_refills != 2'b00);
  assign _zz_292 = (MmuPlugin_ports_0_entryToReplace_value == 2'b00);
  assign _zz_293 = (MmuPlugin_ports_0_entryToReplace_value == 2'b01);
  assign _zz_294 = (MmuPlugin_ports_0_entryToReplace_value == 2'b10);
  assign _zz_295 = (MmuPlugin_ports_0_entryToReplace_value == 2'b11);
  assign _zz_296 = (MmuPlugin_ports_1_entryToReplace_value == 2'b00);
  assign _zz_297 = (MmuPlugin_ports_1_entryToReplace_value == 2'b01);
  assign _zz_298 = (MmuPlugin_ports_1_entryToReplace_value == 2'b10);
  assign _zz_299 = (MmuPlugin_ports_1_entryToReplace_value == 2'b11);
  assign _zz_300 = (_zz_228 && (! dataCache_1_io_mem_cmd_s2mPipe_ready));
  assign _zz_301 = ((CsrPlugin_sstatus_SIE && (CsrPlugin_privilege == 2'b01)) || (CsrPlugin_privilege < 2'b01));
  assign _zz_302 = ((_zz_147 && (1'b1 && CsrPlugin_mideleg_ST)) && (! 1'b0));
  assign _zz_303 = ((_zz_148 && (1'b1 && CsrPlugin_mideleg_SS)) && (! 1'b0));
  assign _zz_304 = ((_zz_149 && (1'b1 && CsrPlugin_mideleg_SE)) && (! 1'b0));
  assign _zz_305 = (CsrPlugin_mstatus_MIE || (CsrPlugin_privilege < 2'b11));
  assign _zz_306 = ((_zz_147 && 1'b1) && (! (CsrPlugin_mideleg_ST != 1'b0)));
  assign _zz_307 = ((_zz_148 && 1'b1) && (! (CsrPlugin_mideleg_SS != 1'b0)));
  assign _zz_308 = ((_zz_149 && 1'b1) && (! (CsrPlugin_mideleg_SE != 1'b0)));
  assign _zz_309 = ((_zz_150 && 1'b1) && (! 1'b0));
  assign _zz_310 = ((_zz_151 && 1'b1) && (! 1'b0));
  assign _zz_311 = ((_zz_152 && 1'b1) && (! 1'b0));
  assign _zz_312 = writeBack_INSTRUCTION[13 : 12];
  assign _zz_313 = writeBack_INSTRUCTION[13 : 12];
  assign _zz_314 = execute_INSTRUCTION[13];
  assign _zz_315 = ($signed(_zz_316) + $signed(_zz_321));
  assign _zz_316 = ($signed(_zz_317) + $signed(_zz_319));
  assign _zz_317 = 52'h0;
  assign _zz_318 = {1'b0,memory_MUL_LL};
  assign _zz_319 = {{19{_zz_318[32]}}, _zz_318};
  assign _zz_320 = ({16'd0,memory_MUL_LH} <<< 16);
  assign _zz_321 = {{2{_zz_320[49]}}, _zz_320};
  assign _zz_322 = ({16'd0,memory_MUL_HL} <<< 16);
  assign _zz_323 = {{2{_zz_322[49]}}, _zz_322};
  assign _zz_324 = ($signed(_zz_326) >>> execute_FullBarrelShifterPlugin_amplitude);
  assign _zz_325 = _zz_324[31 : 0];
  assign _zz_326 = {((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SRA_1) && execute_FullBarrelShifterPlugin_reversed[31]),execute_FullBarrelShifterPlugin_reversed};
  assign _zz_327 = _zz_107[31 : 31];
  assign _zz_328 = _zz_107[30 : 30];
  assign _zz_329 = _zz_107[29 : 29];
  assign _zz_330 = _zz_107[28 : 28];
  assign _zz_331 = _zz_107[27 : 27];
  assign _zz_332 = _zz_107[22 : 22];
  assign _zz_333 = _zz_107[21 : 21];
  assign _zz_334 = _zz_107[20 : 20];
  assign _zz_335 = _zz_107[14 : 14];
  assign _zz_336 = _zz_107[13 : 13];
  assign _zz_337 = _zz_107[12 : 12];
  assign _zz_338 = _zz_107[0 : 0];
  assign _zz_339 = _zz_107[36 : 36];
  assign _zz_340 = _zz_107[18 : 18];
  assign _zz_341 = _zz_107[6 : 6];
  assign _zz_342 = _zz_107[4 : 4];
  assign _zz_343 = _zz_107[19 : 19];
  assign _zz_344 = _zz_107[11 : 11];
  assign _zz_345 = _zz_107[17 : 17];
  assign _zz_346 = _zz_107[16 : 16];
  assign _zz_347 = _zz_107[5 : 5];
  assign _zz_348 = _zz_107[1 : 1];
  assign _zz_349 = MmuPlugin_ports_0_entryToReplace_willIncrement;
  assign _zz_350 = {1'd0, _zz_349};
  assign _zz_351 = MmuPlugin_ports_1_entryToReplace_willIncrement;
  assign _zz_352 = {1'd0, _zz_351};
  assign _zz_353 = MmuPlugin_shared_dBusRspStaged_payload_data[0 : 0];
  assign _zz_354 = MmuPlugin_shared_dBusRspStaged_payload_data[1 : 1];
  assign _zz_355 = MmuPlugin_shared_dBusRspStaged_payload_data[2 : 2];
  assign _zz_356 = MmuPlugin_shared_dBusRspStaged_payload_data[3 : 3];
  assign _zz_357 = MmuPlugin_shared_dBusRspStaged_payload_data[4 : 4];
  assign _zz_358 = MmuPlugin_shared_dBusRspStaged_payload_data[5 : 5];
  assign _zz_359 = MmuPlugin_shared_dBusRspStaged_payload_data[6 : 6];
  assign _zz_360 = MmuPlugin_shared_dBusRspStaged_payload_data[7 : 7];
  assign _zz_361 = (_zz_64 - 2'b01);
  assign _zz_362 = (_zz_68 - 5'h01);
  assign _zz_363 = {IBusCachedPlugin_fetchPc_inc,2'b00};
  assign _zz_364 = {29'd0, _zz_363};
  assign _zz_365 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_366 = {{_zz_88,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_367 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]};
  assign _zz_368 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_369 = {{_zz_90,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]}},1'b0};
  assign _zz_370 = {{_zz_92,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_371 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]};
  assign _zz_372 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_373 = _zz_101[0 : 0];
  assign _zz_374 = _zz_101[1 : 1];
  assign _zz_375 = _zz_101[2 : 2];
  assign _zz_376 = _zz_101[3 : 3];
  assign _zz_377 = _zz_101[4 : 4];
  assign _zz_378 = _zz_101[5 : 5];
  assign _zz_379 = _zz_101[6 : 6];
  assign _zz_380 = _zz_101[7 : 7];
  assign _zz_381 = (writeBack_MEMORY_WR ? 3'b111 : 3'b101);
  assign _zz_382 = (writeBack_MEMORY_WR ? 3'b110 : 3'b100);
  assign _zz_383 = execute_SRC_LESS;
  assign _zz_384 = 3'b100;
  assign _zz_385 = decode_INSTRUCTION[19 : 15];
  assign _zz_386 = decode_INSTRUCTION[31 : 20];
  assign _zz_387 = {decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]};
  assign _zz_388 = ($signed(_zz_389) + $signed(_zz_392));
  assign _zz_389 = ($signed(_zz_390) + $signed(_zz_391));
  assign _zz_390 = execute_SRC1;
  assign _zz_391 = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign _zz_392 = (execute_SRC_USE_SUB_LESS ? _zz_393 : _zz_394);
  assign _zz_393 = 32'h00000001;
  assign _zz_394 = 32'h0;
  assign _zz_395 = {{14{writeBack_MUL_LOW[51]}}, writeBack_MUL_LOW};
  assign _zz_396 = ({32'd0,writeBack_MUL_HH} <<< 32);
  assign _zz_397 = writeBack_MUL_LOW[31 : 0];
  assign _zz_398 = writeBack_MulPlugin_result[63 : 32];
  assign _zz_399 = memory_MulDivIterativePlugin_div_counter_willIncrement;
  assign _zz_400 = {5'd0, _zz_399};
  assign _zz_401 = {1'd0, memory_MulDivIterativePlugin_rs2};
  assign _zz_402 = memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[31:0];
  assign _zz_403 = memory_MulDivIterativePlugin_div_stage_0_remainderShifted[31:0];
  assign _zz_404 = {_zz_141,(! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32])};
  assign _zz_405 = _zz_406;
  assign _zz_406 = _zz_407;
  assign _zz_407 = ({1'b0,(memory_MulDivIterativePlugin_div_needRevert ? (~ _zz_142) : _zz_142)} + _zz_409);
  assign _zz_408 = memory_MulDivIterativePlugin_div_needRevert;
  assign _zz_409 = {32'd0, _zz_408};
  assign _zz_410 = _zz_144;
  assign _zz_411 = {32'd0, _zz_410};
  assign _zz_412 = _zz_143;
  assign _zz_413 = {31'd0, _zz_412};
  assign _zz_414 = (_zz_153 & (~ _zz_415));
  assign _zz_415 = (_zz_153 - 2'b01);
  assign _zz_416 = execute_INSTRUCTION[31 : 20];
  assign _zz_417 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_418 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_419 = {_zz_159,execute_INSTRUCTION[31 : 20]};
  assign _zz_420 = {{_zz_161,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0};
  assign _zz_421 = {{_zz_163,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_422 = execute_INSTRUCTION[31 : 20];
  assign _zz_423 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_424 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_425 = 3'b100;
  assign _zz_426 = execute_CsrPlugin_writeData[19 : 19];
  assign _zz_427 = execute_CsrPlugin_writeData[18 : 18];
  assign _zz_428 = execute_CsrPlugin_writeData[17 : 17];
  assign _zz_429 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_430 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_431 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_432 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_433 = execute_CsrPlugin_writeData[19 : 19];
  assign _zz_434 = execute_CsrPlugin_writeData[18 : 18];
  assign _zz_435 = execute_CsrPlugin_writeData[17 : 17];
  assign _zz_436 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_437 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_438 = execute_CsrPlugin_writeData[31 : 31];
  assign _zz_439 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_440 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_441 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_442 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_443 = execute_CsrPlugin_writeData[11 : 11];
  assign _zz_444 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_445 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_446 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_447 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_448 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_449 = execute_CsrPlugin_writeData[0 : 0];
  assign _zz_450 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_451 = execute_CsrPlugin_writeData[2 : 2];
  assign _zz_452 = execute_CsrPlugin_writeData[4 : 4];
  assign _zz_453 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_454 = execute_CsrPlugin_writeData[6 : 6];
  assign _zz_455 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_456 = execute_CsrPlugin_writeData[8 : 8];
  assign _zz_457 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_458 = execute_CsrPlugin_writeData[12 : 12];
  assign _zz_459 = execute_CsrPlugin_writeData[13 : 13];
  assign _zz_460 = execute_CsrPlugin_writeData[15 : 15];
  assign _zz_461 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_462 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_463 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_464 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_465 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_466 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_467 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_468 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_469 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_470 = execute_CsrPlugin_writeData[31 : 31];
  assign _zz_471 = {_zz_71,{_zz_73,_zz_72}};
  assign _zz_472 = 32'h0000107f;
  assign _zz_473 = (decode_INSTRUCTION & 32'h0000207f);
  assign _zz_474 = 32'h00002073;
  assign _zz_475 = ((decode_INSTRUCTION & 32'h0000407f) == 32'h00004063);
  assign _zz_476 = ((decode_INSTRUCTION & 32'h0000207f) == 32'h00002013);
  assign _zz_477 = {((decode_INSTRUCTION & 32'h0000603f) == 32'h00000023),{((decode_INSTRUCTION & 32'h0000207f) == 32'h00000003),{((decode_INSTRUCTION & _zz_478) == 32'h00000003),{(_zz_479 == _zz_480),{_zz_481,{_zz_482,_zz_483}}}}}};
  assign _zz_478 = 32'h0000505f;
  assign _zz_479 = (decode_INSTRUCTION & 32'h0000707b);
  assign _zz_480 = 32'h00000063;
  assign _zz_481 = ((decode_INSTRUCTION & 32'h0000607f) == 32'h0000000f);
  assign _zz_482 = ((decode_INSTRUCTION & 32'h1800707f) == 32'h0000202f);
  assign _zz_483 = {((decode_INSTRUCTION & 32'hfc00007f) == 32'h00000033),{((decode_INSTRUCTION & 32'he800707f) == 32'h0800202f),{((decode_INSTRUCTION & _zz_484) == 32'h0000500f),{(_zz_485 == _zz_486),{_zz_487,{_zz_488,_zz_489}}}}}};
  assign _zz_484 = 32'h01f0707f;
  assign _zz_485 = (decode_INSTRUCTION & 32'hbc00707f);
  assign _zz_486 = 32'h00005013;
  assign _zz_487 = ((decode_INSTRUCTION & 32'hfc00307f) == 32'h00001013);
  assign _zz_488 = ((decode_INSTRUCTION & 32'hbe00707f) == 32'h00005033);
  assign _zz_489 = {((decode_INSTRUCTION & 32'hbe00707f) == 32'h00000033),{((decode_INSTRUCTION & 32'hf9f0707f) == 32'h1000202f),{((decode_INSTRUCTION & _zz_490) == 32'h12000073),{(_zz_491 == _zz_492),{_zz_493,_zz_494}}}}};
  assign _zz_490 = 32'hfe007fff;
  assign _zz_491 = (decode_INSTRUCTION & 32'hdfffffff);
  assign _zz_492 = 32'h10200073;
  assign _zz_493 = ((decode_INSTRUCTION & 32'hffefffff) == 32'h00000073);
  assign _zz_494 = ((decode_INSTRUCTION & 32'hffffffff) == 32'h10500073);
  assign _zz_495 = decode_INSTRUCTION[31];
  assign _zz_496 = decode_INSTRUCTION[31];
  assign _zz_497 = decode_INSTRUCTION[7];
  assign _zz_498 = 32'h10103050;
  assign _zz_499 = ((decode_INSTRUCTION & 32'h0000001c) == 32'h00000004);
  assign _zz_500 = ((decode_INSTRUCTION & 32'h00000058) == 32'h00000040);
  assign _zz_501 = {(_zz_506 == _zz_507),(_zz_508 == _zz_509)};
  assign _zz_502 = 2'b00;
  assign _zz_503 = ((_zz_510 == _zz_511) != 1'b0);
  assign _zz_504 = ({_zz_512,_zz_513} != 2'b00);
  assign _zz_505 = {(_zz_514 != _zz_515),{_zz_516,{_zz_517,_zz_518}}};
  assign _zz_506 = (decode_INSTRUCTION & 32'h10103050);
  assign _zz_507 = 32'h00000050;
  assign _zz_508 = (decode_INSTRUCTION & 32'h12203050);
  assign _zz_509 = 32'h10000050;
  assign _zz_510 = (decode_INSTRUCTION & 32'h02103050);
  assign _zz_511 = 32'h00000050;
  assign _zz_512 = ((decode_INSTRUCTION & 32'h00001050) == 32'h00001050);
  assign _zz_513 = ((decode_INSTRUCTION & 32'h00002050) == 32'h00002050);
  assign _zz_514 = _zz_113;
  assign _zz_515 = 1'b0;
  assign _zz_516 = (_zz_113 != 1'b0);
  assign _zz_517 = ((_zz_519 == _zz_520) != 1'b0);
  assign _zz_518 = {(_zz_521 != 1'b0),{(_zz_522 != _zz_523),{_zz_524,{_zz_525,_zz_526}}}};
  assign _zz_519 = (decode_INSTRUCTION & 32'h02004064);
  assign _zz_520 = 32'h02004020;
  assign _zz_521 = ((decode_INSTRUCTION & 32'h02004074) == 32'h02000030);
  assign _zz_522 = {(_zz_527 == _zz_528),(_zz_529 == _zz_530)};
  assign _zz_523 = 2'b00;
  assign _zz_524 = ({_zz_531,{_zz_532,_zz_533}} != 3'b000);
  assign _zz_525 = (_zz_534 != 1'b0);
  assign _zz_526 = {(_zz_535 != _zz_536),{_zz_537,{_zz_538,_zz_539}}};
  assign _zz_527 = (decode_INSTRUCTION & 32'h00007034);
  assign _zz_528 = 32'h00005010;
  assign _zz_529 = (decode_INSTRUCTION & 32'h02007064);
  assign _zz_530 = 32'h00005020;
  assign _zz_531 = ((decode_INSTRUCTION & 32'h40003054) == 32'h40001010);
  assign _zz_532 = ((decode_INSTRUCTION & _zz_540) == 32'h00001010);
  assign _zz_533 = ((decode_INSTRUCTION & _zz_541) == 32'h00001010);
  assign _zz_534 = ((decode_INSTRUCTION & 32'h00001000) == 32'h00001000);
  assign _zz_535 = ((decode_INSTRUCTION & _zz_542) == 32'h00002000);
  assign _zz_536 = 1'b0;
  assign _zz_537 = ({_zz_543,_zz_544} != 2'b00);
  assign _zz_538 = (_zz_545 != 1'b0);
  assign _zz_539 = {(_zz_546 != _zz_547),{_zz_548,{_zz_549,_zz_550}}};
  assign _zz_540 = 32'h00007034;
  assign _zz_541 = 32'h02007054;
  assign _zz_542 = 32'h00003000;
  assign _zz_543 = ((decode_INSTRUCTION & 32'h00002010) == 32'h00002000);
  assign _zz_544 = ((decode_INSTRUCTION & 32'h00005000) == 32'h00001000);
  assign _zz_545 = ((decode_INSTRUCTION & 32'h00003048) == 32'h00000008);
  assign _zz_546 = ((decode_INSTRUCTION & _zz_551) == 32'h00004008);
  assign _zz_547 = 1'b0;
  assign _zz_548 = ((_zz_552 == _zz_553) != 1'b0);
  assign _zz_549 = ({_zz_554,_zz_555} != 4'b0000);
  assign _zz_550 = {(_zz_556 != _zz_557),{_zz_558,{_zz_559,_zz_560}}};
  assign _zz_551 = 32'h00004048;
  assign _zz_552 = (decode_INSTRUCTION & 32'h00000064);
  assign _zz_553 = 32'h00000024;
  assign _zz_554 = ((decode_INSTRUCTION & _zz_561) == 32'h00000020);
  assign _zz_555 = {(_zz_562 == _zz_563),{_zz_564,_zz_565}};
  assign _zz_556 = ((decode_INSTRUCTION & _zz_566) == 32'h00000008);
  assign _zz_557 = 1'b0;
  assign _zz_558 = ((_zz_567 == _zz_568) != 1'b0);
  assign _zz_559 = ({_zz_569,_zz_570} != 6'h0);
  assign _zz_560 = {(_zz_571 != _zz_572),{_zz_573,{_zz_574,_zz_575}}};
  assign _zz_561 = 32'h00000034;
  assign _zz_562 = (decode_INSTRUCTION & 32'h00000064);
  assign _zz_563 = 32'h00000020;
  assign _zz_564 = ((decode_INSTRUCTION & _zz_576) == 32'h08000020);
  assign _zz_565 = ((decode_INSTRUCTION & _zz_577) == 32'h00000020);
  assign _zz_566 = 32'h10000008;
  assign _zz_567 = (decode_INSTRUCTION & 32'h10000008);
  assign _zz_568 = 32'h10000008;
  assign _zz_569 = (_zz_578 == _zz_579);
  assign _zz_570 = {_zz_580,{_zz_581,_zz_582}};
  assign _zz_571 = {_zz_583,{_zz_584,_zz_585}};
  assign _zz_572 = 3'b000;
  assign _zz_573 = ({_zz_586,_zz_587} != 5'h0);
  assign _zz_574 = (_zz_588 != _zz_589);
  assign _zz_575 = {_zz_590,{_zz_591,_zz_592}};
  assign _zz_576 = 32'h08000070;
  assign _zz_577 = 32'h10000070;
  assign _zz_578 = (decode_INSTRUCTION & 32'h00002040);
  assign _zz_579 = 32'h00002040;
  assign _zz_580 = ((decode_INSTRUCTION & _zz_593) == 32'h00001040);
  assign _zz_581 = (_zz_594 == _zz_595);
  assign _zz_582 = {_zz_596,{_zz_597,_zz_598}};
  assign _zz_583 = ((decode_INSTRUCTION & _zz_599) == 32'h08000020);
  assign _zz_584 = (_zz_600 == _zz_601);
  assign _zz_585 = (_zz_602 == _zz_603);
  assign _zz_586 = (_zz_604 == _zz_605);
  assign _zz_587 = {_zz_606,{_zz_607,_zz_608}};
  assign _zz_588 = {_zz_112,{_zz_609,_zz_610}};
  assign _zz_589 = 5'h0;
  assign _zz_590 = ({_zz_611,_zz_612} != 7'h0);
  assign _zz_591 = (_zz_613 != _zz_614);
  assign _zz_592 = {_zz_615,{_zz_616,_zz_617}};
  assign _zz_593 = 32'h00001040;
  assign _zz_594 = (decode_INSTRUCTION & 32'h00000050);
  assign _zz_595 = 32'h00000040;
  assign _zz_596 = ((decode_INSTRUCTION & _zz_618) == 32'h00000040);
  assign _zz_597 = (_zz_619 == _zz_620);
  assign _zz_598 = (_zz_621 == _zz_622);
  assign _zz_599 = 32'h08000020;
  assign _zz_600 = (decode_INSTRUCTION & 32'h10000020);
  assign _zz_601 = 32'h00000020;
  assign _zz_602 = (decode_INSTRUCTION & 32'h00000028);
  assign _zz_603 = 32'h00000020;
  assign _zz_604 = (decode_INSTRUCTION & 32'h00000040);
  assign _zz_605 = 32'h00000040;
  assign _zz_606 = ((decode_INSTRUCTION & _zz_623) == 32'h00004020);
  assign _zz_607 = (_zz_624 == _zz_625);
  assign _zz_608 = {_zz_112,_zz_626};
  assign _zz_609 = (_zz_627 == _zz_628);
  assign _zz_610 = {_zz_629,{_zz_630,_zz_631}};
  assign _zz_611 = _zz_109;
  assign _zz_612 = {_zz_632,{_zz_633,_zz_634}};
  assign _zz_613 = {_zz_111,_zz_635};
  assign _zz_614 = 2'b00;
  assign _zz_615 = ({_zz_636,_zz_637} != 2'b00);
  assign _zz_616 = (_zz_638 != _zz_639);
  assign _zz_617 = {_zz_640,{_zz_641,_zz_642}};
  assign _zz_618 = 32'h02100040;
  assign _zz_619 = (decode_INSTRUCTION & 32'h00000038);
  assign _zz_620 = 32'h0;
  assign _zz_621 = (decode_INSTRUCTION & 32'h18002008);
  assign _zz_622 = 32'h10002008;
  assign _zz_623 = 32'h00004020;
  assign _zz_624 = (decode_INSTRUCTION & 32'h00000030);
  assign _zz_625 = 32'h00000010;
  assign _zz_626 = ((decode_INSTRUCTION & _zz_643) == 32'h00000020);
  assign _zz_627 = (decode_INSTRUCTION & 32'h00002030);
  assign _zz_628 = 32'h00002010;
  assign _zz_629 = ((decode_INSTRUCTION & _zz_644) == 32'h00000010);
  assign _zz_630 = (_zz_645 == _zz_646);
  assign _zz_631 = (_zz_647 == _zz_648);
  assign _zz_632 = ((decode_INSTRUCTION & _zz_649) == 32'h00001010);
  assign _zz_633 = (_zz_650 == _zz_651);
  assign _zz_634 = {_zz_652,{_zz_653,_zz_654}};
  assign _zz_635 = ((decode_INSTRUCTION & _zz_655) == 32'h00000020);
  assign _zz_636 = _zz_111;
  assign _zz_637 = (_zz_656 == _zz_657);
  assign _zz_638 = (_zz_658 == _zz_659);
  assign _zz_639 = 1'b0;
  assign _zz_640 = (_zz_660 != 1'b0);
  assign _zz_641 = (_zz_661 != _zz_662);
  assign _zz_642 = {_zz_663,{_zz_664,_zz_665}};
  assign _zz_643 = 32'h02000028;
  assign _zz_644 = 32'h00001030;
  assign _zz_645 = (decode_INSTRUCTION & 32'h02003020);
  assign _zz_646 = 32'h00000020;
  assign _zz_647 = (decode_INSTRUCTION & 32'h02002068);
  assign _zz_648 = 32'h00002020;
  assign _zz_649 = 32'h00001010;
  assign _zz_650 = (decode_INSTRUCTION & 32'h00002010);
  assign _zz_651 = 32'h00002010;
  assign _zz_652 = ((decode_INSTRUCTION & _zz_666) == 32'h00002008);
  assign _zz_653 = (_zz_667 == _zz_668);
  assign _zz_654 = {_zz_112,_zz_669};
  assign _zz_655 = 32'h00000070;
  assign _zz_656 = (decode_INSTRUCTION & 32'h00000020);
  assign _zz_657 = 32'h0;
  assign _zz_658 = (decode_INSTRUCTION & 32'h00004014);
  assign _zz_659 = 32'h00004010;
  assign _zz_660 = ((decode_INSTRUCTION & _zz_670) == 32'h00002010);
  assign _zz_661 = {_zz_671,{_zz_672,_zz_673}};
  assign _zz_662 = 5'h0;
  assign _zz_663 = ({_zz_674,_zz_675} != 2'b00);
  assign _zz_664 = (_zz_676 != _zz_677);
  assign _zz_665 = {_zz_678,{_zz_679,_zz_680}};
  assign _zz_666 = 32'h00002008;
  assign _zz_667 = (decode_INSTRUCTION & 32'h00000050);
  assign _zz_668 = 32'h00000010;
  assign _zz_669 = ((decode_INSTRUCTION & _zz_681) == 32'h0);
  assign _zz_670 = 32'h00006014;
  assign _zz_671 = ((decode_INSTRUCTION & _zz_682) == 32'h0);
  assign _zz_672 = (_zz_683 == _zz_684);
  assign _zz_673 = {_zz_685,{_zz_686,_zz_687}};
  assign _zz_674 = _zz_110;
  assign _zz_675 = (_zz_688 == _zz_689);
  assign _zz_676 = {_zz_690,{_zz_691,_zz_692}};
  assign _zz_677 = 3'b000;
  assign _zz_678 = ({_zz_693,_zz_694} != 3'b000);
  assign _zz_679 = (_zz_695 != _zz_696);
  assign _zz_680 = {_zz_697,_zz_698};
  assign _zz_681 = 32'h00000028;
  assign _zz_682 = 32'h00000044;
  assign _zz_683 = (decode_INSTRUCTION & 32'h00000018);
  assign _zz_684 = 32'h0;
  assign _zz_685 = ((decode_INSTRUCTION & _zz_699) == 32'h00002000);
  assign _zz_686 = (_zz_700 == _zz_701);
  assign _zz_687 = _zz_110;
  assign _zz_688 = (decode_INSTRUCTION & 32'h00000058);
  assign _zz_689 = 32'h0;
  assign _zz_690 = ((decode_INSTRUCTION & _zz_702) == 32'h00000040);
  assign _zz_691 = (_zz_703 == _zz_704);
  assign _zz_692 = (_zz_705 == _zz_706);
  assign _zz_693 = _zz_109;
  assign _zz_694 = {_zz_108,_zz_707};
  assign _zz_695 = {_zz_108,_zz_708};
  assign _zz_696 = 2'b00;
  assign _zz_697 = (_zz_709 != 1'b0);
  assign _zz_698 = (_zz_710 != 1'b0);
  assign _zz_699 = 32'h00006004;
  assign _zz_700 = (decode_INSTRUCTION & 32'h00005004);
  assign _zz_701 = 32'h00001000;
  assign _zz_702 = 32'h00000044;
  assign _zz_703 = (decode_INSTRUCTION & 32'h00002014);
  assign _zz_704 = 32'h00002010;
  assign _zz_705 = (decode_INSTRUCTION & 32'h40000034);
  assign _zz_706 = 32'h40000030;
  assign _zz_707 = ((decode_INSTRUCTION & 32'h00002014) == 32'h00000004);
  assign _zz_708 = ((decode_INSTRUCTION & 32'h0000004c) == 32'h00000004);
  assign _zz_709 = ((decode_INSTRUCTION & 32'h00005048) == 32'h00001008);
  assign _zz_710 = ((decode_INSTRUCTION & 32'h02003050) == 32'h02000050);
  assign _zz_711 = execute_INSTRUCTION[31];
  assign _zz_712 = execute_INSTRUCTION[31];
  assign _zz_713 = execute_INSTRUCTION[7];
  assign _zz_714 = 32'h0;
  assign _zz_715 = 32'h0;
  assign _zz_716 = 32'h0;
  assign _zz_717 = 32'h0;
  initial begin
    $readmemb("VexRiscvLitexSmpMpCluster_1c.v_toplevel_cluster_cpus_0_core_RegFilePlugin_regFile.bin",RegFilePlugin_regFile);
  end
  assign _zz_229 = RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress1];
  assign _zz_230 = RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress2];
  always @ (posedge clk) begin
    if(_zz_38) begin
      RegFilePlugin_regFile[lastStageRegFileWrite_payload_address] <= lastStageRegFileWrite_payload_data;
    end
  end

  InstructionCache IBusCachedPlugin_cache (
    .io_flush                                 (_zz_195                                                     ), //i
    .io_cpu_prefetch_isValid                  (_zz_196                                                     ), //i
    .io_cpu_prefetch_haltIt                   (IBusCachedPlugin_cache_io_cpu_prefetch_haltIt               ), //o
    .io_cpu_prefetch_pc                       (IBusCachedPlugin_iBusRsp_stages_1_input_payload[31:0]       ), //i
    .io_cpu_fetch_isValid                     (_zz_197                                                     ), //i
    .io_cpu_fetch_isStuck                     (_zz_198                                                     ), //i
    .io_cpu_fetch_isRemoved                   (_zz_199                                                     ), //i
    .io_cpu_fetch_pc                          (IBusCachedPlugin_iBusRsp_stages_2_input_payload[31:0]       ), //i
    .io_cpu_fetch_data                        (IBusCachedPlugin_cache_io_cpu_fetch_data[31:0]              ), //o
    .io_cpu_fetch_mmuRsp_physicalAddress      (IBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]           ), //i
    .io_cpu_fetch_mmuRsp_isIoAccess           (IBusCachedPlugin_mmuBus_rsp_isIoAccess                      ), //i
    .io_cpu_fetch_mmuRsp_allowRead            (IBusCachedPlugin_mmuBus_rsp_allowRead                       ), //i
    .io_cpu_fetch_mmuRsp_allowWrite           (IBusCachedPlugin_mmuBus_rsp_allowWrite                      ), //i
    .io_cpu_fetch_mmuRsp_allowExecute         (IBusCachedPlugin_mmuBus_rsp_allowExecute                    ), //i
    .io_cpu_fetch_mmuRsp_exception            (IBusCachedPlugin_mmuBus_rsp_exception                       ), //i
    .io_cpu_fetch_mmuRsp_refilling            (IBusCachedPlugin_mmuBus_rsp_refilling                       ), //i
    .io_cpu_fetch_mmuRsp_bypassTranslation    (IBusCachedPlugin_mmuBus_rsp_bypassTranslation               ), //i
    .io_cpu_fetch_mmuRsp_ways_0_sel           (IBusCachedPlugin_mmuBus_rsp_ways_0_sel                      ), //i
    .io_cpu_fetch_mmuRsp_ways_0_physical      (IBusCachedPlugin_mmuBus_rsp_ways_0_physical[31:0]           ), //i
    .io_cpu_fetch_mmuRsp_ways_1_sel           (IBusCachedPlugin_mmuBus_rsp_ways_1_sel                      ), //i
    .io_cpu_fetch_mmuRsp_ways_1_physical      (IBusCachedPlugin_mmuBus_rsp_ways_1_physical[31:0]           ), //i
    .io_cpu_fetch_mmuRsp_ways_2_sel           (IBusCachedPlugin_mmuBus_rsp_ways_2_sel                      ), //i
    .io_cpu_fetch_mmuRsp_ways_2_physical      (IBusCachedPlugin_mmuBus_rsp_ways_2_physical[31:0]           ), //i
    .io_cpu_fetch_mmuRsp_ways_3_sel           (IBusCachedPlugin_mmuBus_rsp_ways_3_sel                      ), //i
    .io_cpu_fetch_mmuRsp_ways_3_physical      (IBusCachedPlugin_mmuBus_rsp_ways_3_physical[31:0]           ), //i
    .io_cpu_fetch_physicalAddress             (IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress[31:0]   ), //o
    .io_cpu_decode_isValid                    (_zz_200                                                     ), //i
    .io_cpu_decode_isStuck                    (_zz_201                                                     ), //i
    .io_cpu_decode_pc                         (IBusCachedPlugin_iBusRsp_stages_3_input_payload[31:0]       ), //i
    .io_cpu_decode_physicalAddress            (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]  ), //o
    .io_cpu_decode_data                       (IBusCachedPlugin_cache_io_cpu_decode_data[31:0]             ), //o
    .io_cpu_decode_cacheMiss                  (IBusCachedPlugin_cache_io_cpu_decode_cacheMiss              ), //o
    .io_cpu_decode_error                      (IBusCachedPlugin_cache_io_cpu_decode_error                  ), //o
    .io_cpu_decode_mmuRefilling               (IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling           ), //o
    .io_cpu_decode_mmuException               (IBusCachedPlugin_cache_io_cpu_decode_mmuException           ), //o
    .io_cpu_decode_isUser                     (_zz_202                                                     ), //i
    .io_cpu_fill_valid                        (_zz_203                                                     ), //i
    .io_cpu_fill_payload                      (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]  ), //i
    .io_mem_cmd_valid                         (IBusCachedPlugin_cache_io_mem_cmd_valid                     ), //o
    .io_mem_cmd_ready                         (iBus_cmd_ready                                              ), //i
    .io_mem_cmd_payload_address               (IBusCachedPlugin_cache_io_mem_cmd_payload_address[31:0]     ), //o
    .io_mem_cmd_payload_size                  (IBusCachedPlugin_cache_io_mem_cmd_payload_size[2:0]         ), //o
    .io_mem_rsp_valid                         (iBus_rsp_valid                                              ), //i
    .io_mem_rsp_payload_data                  (iBus_rsp_payload_data[127:0]                                ), //i
    .io_mem_rsp_payload_error                 (iBus_rsp_payload_error                                      ), //i
    ._zz_18                                   (_zz_172[2:0]                                                ), //i
    ._zz_19                                   (IBusCachedPlugin_injectionPort_payload[31:0]                ), //i
    .clk                                      (clk                                                         ), //i
    .reset                                    (reset                                                       )  //i
  );
  DataCache dataCache_1 (
    .io_cpu_execute_isValid                    (_zz_204                                            ), //i
    .io_cpu_execute_address                    (_zz_205[31:0]                                      ), //i
    .io_cpu_execute_haltIt                     (dataCache_1_io_cpu_execute_haltIt                  ), //o
    .io_cpu_execute_args_wr                    (_zz_206                                            ), //i
    .io_cpu_execute_args_data                  (_zz_207[31:0]                                      ), //i
    .io_cpu_execute_args_size                  (_zz_208[1:0]                                       ), //i
    .io_cpu_execute_args_isLrsc                (_zz_209                                            ), //i
    .io_cpu_execute_args_isAmo                 (_zz_210                                            ), //i
    .io_cpu_execute_args_amoCtrl_swap          (_zz_211                                            ), //i
    .io_cpu_execute_args_amoCtrl_alu           (_zz_212[2:0]                                       ), //i
    .io_cpu_execute_args_totalyConsistent      (execute_MEMORY_FORCE_CONSTISTENCY                  ), //i
    .io_cpu_memory_isValid                     (_zz_213                                            ), //i
    .io_cpu_memory_isStuck                     (memory_arbitration_isStuck                         ), //i
    .io_cpu_memory_isWrite                     (dataCache_1_io_cpu_memory_isWrite                  ), //o
    .io_cpu_memory_address                     (memory_MEMORY_VIRTUAL_ADDRESS[31:0]                ), //i
    .io_cpu_memory_mmuRsp_physicalAddress      (DBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]  ), //i
    .io_cpu_memory_mmuRsp_isIoAccess           (_zz_214                                            ), //i
    .io_cpu_memory_mmuRsp_allowRead            (DBusCachedPlugin_mmuBus_rsp_allowRead              ), //i
    .io_cpu_memory_mmuRsp_allowWrite           (DBusCachedPlugin_mmuBus_rsp_allowWrite             ), //i
    .io_cpu_memory_mmuRsp_allowExecute         (DBusCachedPlugin_mmuBus_rsp_allowExecute           ), //i
    .io_cpu_memory_mmuRsp_exception            (DBusCachedPlugin_mmuBus_rsp_exception              ), //i
    .io_cpu_memory_mmuRsp_refilling            (DBusCachedPlugin_mmuBus_rsp_refilling              ), //i
    .io_cpu_memory_mmuRsp_bypassTranslation    (DBusCachedPlugin_mmuBus_rsp_bypassTranslation      ), //i
    .io_cpu_memory_mmuRsp_ways_0_sel           (DBusCachedPlugin_mmuBus_rsp_ways_0_sel             ), //i
    .io_cpu_memory_mmuRsp_ways_0_physical      (DBusCachedPlugin_mmuBus_rsp_ways_0_physical[31:0]  ), //i
    .io_cpu_memory_mmuRsp_ways_1_sel           (DBusCachedPlugin_mmuBus_rsp_ways_1_sel             ), //i
    .io_cpu_memory_mmuRsp_ways_1_physical      (DBusCachedPlugin_mmuBus_rsp_ways_1_physical[31:0]  ), //i
    .io_cpu_memory_mmuRsp_ways_2_sel           (DBusCachedPlugin_mmuBus_rsp_ways_2_sel             ), //i
    .io_cpu_memory_mmuRsp_ways_2_physical      (DBusCachedPlugin_mmuBus_rsp_ways_2_physical[31:0]  ), //i
    .io_cpu_memory_mmuRsp_ways_3_sel           (DBusCachedPlugin_mmuBus_rsp_ways_3_sel             ), //i
    .io_cpu_memory_mmuRsp_ways_3_physical      (DBusCachedPlugin_mmuBus_rsp_ways_3_physical[31:0]  ), //i
    .io_cpu_writeBack_isValid                  (_zz_215                                            ), //i
    .io_cpu_writeBack_isStuck                  (writeBack_arbitration_isStuck                      ), //i
    .io_cpu_writeBack_isUser                   (_zz_216                                            ), //i
    .io_cpu_writeBack_haltIt                   (dataCache_1_io_cpu_writeBack_haltIt                ), //o
    .io_cpu_writeBack_isWrite                  (dataCache_1_io_cpu_writeBack_isWrite               ), //o
    .io_cpu_writeBack_data                     (dataCache_1_io_cpu_writeBack_data[31:0]            ), //o
    .io_cpu_writeBack_address                  (_zz_217[31:0]                                      ), //i
    .io_cpu_writeBack_mmuException             (dataCache_1_io_cpu_writeBack_mmuException          ), //o
    .io_cpu_writeBack_unalignedAccess          (dataCache_1_io_cpu_writeBack_unalignedAccess       ), //o
    .io_cpu_writeBack_accessError              (dataCache_1_io_cpu_writeBack_accessError           ), //o
    .io_cpu_writeBack_keepMemRspData           (dataCache_1_io_cpu_writeBack_keepMemRspData        ), //o
    .io_cpu_writeBack_fence_SW                 (_zz_218                                            ), //i
    .io_cpu_writeBack_fence_SR                 (_zz_219                                            ), //i
    .io_cpu_writeBack_fence_SO                 (_zz_220                                            ), //i
    .io_cpu_writeBack_fence_SI                 (_zz_221                                            ), //i
    .io_cpu_writeBack_fence_PW                 (_zz_222                                            ), //i
    .io_cpu_writeBack_fence_PR                 (_zz_223                                            ), //i
    .io_cpu_writeBack_fence_PO                 (_zz_224                                            ), //i
    .io_cpu_writeBack_fence_PI                 (_zz_225                                            ), //i
    .io_cpu_writeBack_fence_FM                 (_zz_226[3:0]                                       ), //i
    .io_cpu_redo                               (dataCache_1_io_cpu_redo                            ), //o
    .io_cpu_flush_valid                        (_zz_227                                            ), //i
    .io_cpu_flush_ready                        (dataCache_1_io_cpu_flush_ready                     ), //o
    .io_mem_cmd_valid                          (dataCache_1_io_mem_cmd_valid                       ), //o
    .io_mem_cmd_ready                          (_zz_228                                            ), //i
    .io_mem_cmd_payload_wr                     (dataCache_1_io_mem_cmd_payload_wr                  ), //o
    .io_mem_cmd_payload_uncached               (dataCache_1_io_mem_cmd_payload_uncached            ), //o
    .io_mem_cmd_payload_address                (dataCache_1_io_mem_cmd_payload_address[31:0]       ), //o
    .io_mem_cmd_payload_data                   (dataCache_1_io_mem_cmd_payload_data[31:0]          ), //o
    .io_mem_cmd_payload_mask                   (dataCache_1_io_mem_cmd_payload_mask[3:0]           ), //o
    .io_mem_cmd_payload_length                 (dataCache_1_io_mem_cmd_payload_length[3:0]         ), //o
    .io_mem_cmd_payload_exclusive              (dataCache_1_io_mem_cmd_payload_exclusive           ), //o
    .io_mem_cmd_payload_last                   (dataCache_1_io_mem_cmd_payload_last                ), //o
    .io_mem_rsp_valid                          (dBus_rsp_valid_regNext                             ), //i
    .io_mem_rsp_payload_aggregated             (dBus_rsp_payload_aggregated_regNext[2:0]           ), //i
    .io_mem_rsp_payload_last                   (dBus_rsp_payload_last_regNext                      ), //i
    .io_mem_rsp_payload_data                   (dBus_rsp_payload_data_regNextWhen[63:0]            ), //i
    .io_mem_rsp_payload_error                  (dBus_rsp_payload_error_regNext                     ), //i
    .io_mem_rsp_payload_exclusive              (dBus_rsp_payload_exclusive_regNext                 ), //i
    .io_mem_inv_valid                          (dBus_inv_valid                                     ), //i
    .io_mem_inv_ready                          (dataCache_1_io_mem_inv_ready                       ), //o
    .io_mem_inv_payload_enable                 (dBus_inv_payload_enable                            ), //i
    .io_mem_inv_payload_address                (dBus_inv_payload_address[31:0]                     ), //i
    .io_mem_ack_valid                          (dataCache_1_io_mem_ack_valid                       ), //o
    .io_mem_ack_ready                          (dBus_ack_ready                                     ), //i
    .io_mem_ack_payload_hit                    (dataCache_1_io_mem_ack_payload_hit                 ), //o
    .io_mem_sync_valid                         (dBus_sync_valid                                    ), //i
    .io_mem_sync_ready                         (dataCache_1_io_mem_sync_ready                      ), //o
    .io_mem_sync_payload_aggregated            (dBus_sync_payload_aggregated[2:0]                  ), //i
    .clk                                       (clk                                                ), //i
    .reset                                     (reset                                              )  //i
  );
  always @(*) begin
    case(_zz_57)
      2'b00 : begin
        _zz_231 = MmuPlugin_ports_0_cache_0_valid;
        _zz_232 = MmuPlugin_ports_0_cache_0_exception;
        _zz_233 = MmuPlugin_ports_0_cache_0_superPage;
        _zz_234 = MmuPlugin_ports_0_cache_0_virtualAddress_0;
        _zz_235 = MmuPlugin_ports_0_cache_0_virtualAddress_1;
        _zz_236 = MmuPlugin_ports_0_cache_0_physicalAddress_0;
        _zz_237 = MmuPlugin_ports_0_cache_0_physicalAddress_1;
        _zz_238 = MmuPlugin_ports_0_cache_0_allowRead;
        _zz_239 = MmuPlugin_ports_0_cache_0_allowWrite;
        _zz_240 = MmuPlugin_ports_0_cache_0_allowExecute;
        _zz_241 = MmuPlugin_ports_0_cache_0_allowUser;
      end
      2'b01 : begin
        _zz_231 = MmuPlugin_ports_0_cache_1_valid;
        _zz_232 = MmuPlugin_ports_0_cache_1_exception;
        _zz_233 = MmuPlugin_ports_0_cache_1_superPage;
        _zz_234 = MmuPlugin_ports_0_cache_1_virtualAddress_0;
        _zz_235 = MmuPlugin_ports_0_cache_1_virtualAddress_1;
        _zz_236 = MmuPlugin_ports_0_cache_1_physicalAddress_0;
        _zz_237 = MmuPlugin_ports_0_cache_1_physicalAddress_1;
        _zz_238 = MmuPlugin_ports_0_cache_1_allowRead;
        _zz_239 = MmuPlugin_ports_0_cache_1_allowWrite;
        _zz_240 = MmuPlugin_ports_0_cache_1_allowExecute;
        _zz_241 = MmuPlugin_ports_0_cache_1_allowUser;
      end
      2'b10 : begin
        _zz_231 = MmuPlugin_ports_0_cache_2_valid;
        _zz_232 = MmuPlugin_ports_0_cache_2_exception;
        _zz_233 = MmuPlugin_ports_0_cache_2_superPage;
        _zz_234 = MmuPlugin_ports_0_cache_2_virtualAddress_0;
        _zz_235 = MmuPlugin_ports_0_cache_2_virtualAddress_1;
        _zz_236 = MmuPlugin_ports_0_cache_2_physicalAddress_0;
        _zz_237 = MmuPlugin_ports_0_cache_2_physicalAddress_1;
        _zz_238 = MmuPlugin_ports_0_cache_2_allowRead;
        _zz_239 = MmuPlugin_ports_0_cache_2_allowWrite;
        _zz_240 = MmuPlugin_ports_0_cache_2_allowExecute;
        _zz_241 = MmuPlugin_ports_0_cache_2_allowUser;
      end
      default : begin
        _zz_231 = MmuPlugin_ports_0_cache_3_valid;
        _zz_232 = MmuPlugin_ports_0_cache_3_exception;
        _zz_233 = MmuPlugin_ports_0_cache_3_superPage;
        _zz_234 = MmuPlugin_ports_0_cache_3_virtualAddress_0;
        _zz_235 = MmuPlugin_ports_0_cache_3_virtualAddress_1;
        _zz_236 = MmuPlugin_ports_0_cache_3_physicalAddress_0;
        _zz_237 = MmuPlugin_ports_0_cache_3_physicalAddress_1;
        _zz_238 = MmuPlugin_ports_0_cache_3_allowRead;
        _zz_239 = MmuPlugin_ports_0_cache_3_allowWrite;
        _zz_240 = MmuPlugin_ports_0_cache_3_allowExecute;
        _zz_241 = MmuPlugin_ports_0_cache_3_allowUser;
      end
    endcase
  end

  always @(*) begin
    case(_zz_61)
      2'b00 : begin
        _zz_242 = MmuPlugin_ports_1_cache_0_valid;
        _zz_243 = MmuPlugin_ports_1_cache_0_exception;
        _zz_244 = MmuPlugin_ports_1_cache_0_superPage;
        _zz_245 = MmuPlugin_ports_1_cache_0_virtualAddress_0;
        _zz_246 = MmuPlugin_ports_1_cache_0_virtualAddress_1;
        _zz_247 = MmuPlugin_ports_1_cache_0_physicalAddress_0;
        _zz_248 = MmuPlugin_ports_1_cache_0_physicalAddress_1;
        _zz_249 = MmuPlugin_ports_1_cache_0_allowRead;
        _zz_250 = MmuPlugin_ports_1_cache_0_allowWrite;
        _zz_251 = MmuPlugin_ports_1_cache_0_allowExecute;
        _zz_252 = MmuPlugin_ports_1_cache_0_allowUser;
      end
      2'b01 : begin
        _zz_242 = MmuPlugin_ports_1_cache_1_valid;
        _zz_243 = MmuPlugin_ports_1_cache_1_exception;
        _zz_244 = MmuPlugin_ports_1_cache_1_superPage;
        _zz_245 = MmuPlugin_ports_1_cache_1_virtualAddress_0;
        _zz_246 = MmuPlugin_ports_1_cache_1_virtualAddress_1;
        _zz_247 = MmuPlugin_ports_1_cache_1_physicalAddress_0;
        _zz_248 = MmuPlugin_ports_1_cache_1_physicalAddress_1;
        _zz_249 = MmuPlugin_ports_1_cache_1_allowRead;
        _zz_250 = MmuPlugin_ports_1_cache_1_allowWrite;
        _zz_251 = MmuPlugin_ports_1_cache_1_allowExecute;
        _zz_252 = MmuPlugin_ports_1_cache_1_allowUser;
      end
      2'b10 : begin
        _zz_242 = MmuPlugin_ports_1_cache_2_valid;
        _zz_243 = MmuPlugin_ports_1_cache_2_exception;
        _zz_244 = MmuPlugin_ports_1_cache_2_superPage;
        _zz_245 = MmuPlugin_ports_1_cache_2_virtualAddress_0;
        _zz_246 = MmuPlugin_ports_1_cache_2_virtualAddress_1;
        _zz_247 = MmuPlugin_ports_1_cache_2_physicalAddress_0;
        _zz_248 = MmuPlugin_ports_1_cache_2_physicalAddress_1;
        _zz_249 = MmuPlugin_ports_1_cache_2_allowRead;
        _zz_250 = MmuPlugin_ports_1_cache_2_allowWrite;
        _zz_251 = MmuPlugin_ports_1_cache_2_allowExecute;
        _zz_252 = MmuPlugin_ports_1_cache_2_allowUser;
      end
      default : begin
        _zz_242 = MmuPlugin_ports_1_cache_3_valid;
        _zz_243 = MmuPlugin_ports_1_cache_3_exception;
        _zz_244 = MmuPlugin_ports_1_cache_3_superPage;
        _zz_245 = MmuPlugin_ports_1_cache_3_virtualAddress_0;
        _zz_246 = MmuPlugin_ports_1_cache_3_virtualAddress_1;
        _zz_247 = MmuPlugin_ports_1_cache_3_physicalAddress_0;
        _zz_248 = MmuPlugin_ports_1_cache_3_physicalAddress_1;
        _zz_249 = MmuPlugin_ports_1_cache_3_allowRead;
        _zz_250 = MmuPlugin_ports_1_cache_3_allowWrite;
        _zz_251 = MmuPlugin_ports_1_cache_3_allowExecute;
        _zz_252 = MmuPlugin_ports_1_cache_3_allowUser;
      end
    endcase
  end

  always @(*) begin
    case(_zz_471)
      3'b000 : begin
        _zz_253 = DBusCachedPlugin_redoBranch_payload;
      end
      3'b001 : begin
        _zz_253 = CsrPlugin_jumpInterface_payload;
      end
      3'b010 : begin
        _zz_253 = BranchPlugin_jumpInterface_payload;
      end
      3'b011 : begin
        _zz_253 = CsrPlugin_redoInterface_payload;
      end
      default : begin
        _zz_253 = IBusCachedPlugin_predictionJumpInterface_payload;
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(_zz_1)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_1_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_1_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_1_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_1_string = "JALR";
      default : _zz_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_2)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_2_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_2_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_2_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_2_string = "JALR";
      default : _zz_2_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_3)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_3_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_3_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_3_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_3_string = "ECALL";
      default : _zz_3_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_4)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_4_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_4_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_4_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_4_string = "ECALL";
      default : _zz_4_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_5)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_5_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_5_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_5_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_5_string = "ECALL";
      default : _zz_5_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_6)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_6_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_6_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_6_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_6_string = "ECALL";
      default : _zz_6_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : decode_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : decode_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : decode_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : decode_ENV_CTRL_string = "ECALL";
      default : decode_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_7)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_7_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_7_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_7_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_7_string = "ECALL";
      default : _zz_7_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_8)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_8_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_8_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_8_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_8_string = "ECALL";
      default : _zz_8_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_9)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_9_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_9_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_9_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_9_string = "ECALL";
      default : _zz_9_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_10)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_10_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_10_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_10_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_10_string = "SRA_1    ";
      default : _zz_10_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_11)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_11_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_11_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_11_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_11_string = "SRA_1    ";
      default : _zz_11_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : decode_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : decode_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : decode_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : decode_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_12)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_12_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_12_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_12_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_12_string = "SRA_1    ";
      default : _zz_12_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_13)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_13_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_13_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_13_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_13_string = "SRA_1    ";
      default : _zz_13_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_14)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_14_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_14_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_14_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_14_string = "SRA_1    ";
      default : _zz_14_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : decode_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_15)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_15_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_15_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_15_string = "AND_1";
      default : _zz_15_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_16)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_16_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_16_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_16_string = "AND_1";
      default : _zz_16_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_17)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_17_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_17_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_17_string = "AND_1";
      default : _zz_17_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : decode_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : decode_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : decode_ALU_CTRL_string = "BITWISE ";
      default : decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_18)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_18_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_18_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_18_string = "BITWISE ";
      default : _zz_18_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_19)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_19_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_19_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_19_string = "BITWISE ";
      default : _zz_19_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_20)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_20_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_20_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_20_string = "BITWISE ";
      default : _zz_20_string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : execute_BRANCH_CTRL_string = "JALR";
      default : execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_21)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_21_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_21_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_21_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_21_string = "JALR";
      default : _zz_21_string = "????";
    endcase
  end
  always @(*) begin
    case(memory_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : memory_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : memory_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : memory_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : memory_ENV_CTRL_string = "ECALL";
      default : memory_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_22)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_22_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_22_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_22_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_22_string = "ECALL";
      default : _zz_22_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : execute_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : execute_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : execute_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : execute_ENV_CTRL_string = "ECALL";
      default : execute_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_23)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_23_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_23_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_23_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_23_string = "ECALL";
      default : _zz_23_string = "?????";
    endcase
  end
  always @(*) begin
    case(writeBack_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : writeBack_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : writeBack_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : writeBack_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : writeBack_ENV_CTRL_string = "ECALL";
      default : writeBack_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_24)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_24_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_24_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_24_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_24_string = "ECALL";
      default : _zz_24_string = "?????";
    endcase
  end
  always @(*) begin
    case(memory_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : memory_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : memory_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : memory_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : memory_SHIFT_CTRL_string = "SRA_1    ";
      default : memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_27)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_27_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_27_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_27_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_27_string = "SRA_1    ";
      default : _zz_27_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : execute_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_28)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_28_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_28_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_28_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_28_string = "SRA_1    ";
      default : _zz_28_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : decode_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : decode_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : decode_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : decode_SRC2_CTRL_string = "PC ";
      default : decode_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_31)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_31_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_31_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_31_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_31_string = "PC ";
      default : _zz_31_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : decode_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : decode_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : decode_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : decode_SRC1_CTRL_string = "URS1        ";
      default : decode_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_33)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_33_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_33_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_33_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_33_string = "URS1        ";
      default : _zz_33_string = "????????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : execute_ALU_CTRL_string = "BITWISE ";
      default : execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_34)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_34_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_34_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_34_string = "BITWISE ";
      default : _zz_34_string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_35)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_35_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_35_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_35_string = "AND_1";
      default : _zz_35_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_39)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_39_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_39_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_39_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_39_string = "JALR";
      default : _zz_39_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_40)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_40_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_40_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_40_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_40_string = "ECALL";
      default : _zz_40_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_41)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_41_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_41_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_41_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_41_string = "SRA_1    ";
      default : _zz_41_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_42)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_42_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_42_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_42_string = "AND_1";
      default : _zz_42_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_43)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_43_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_43_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_43_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_43_string = "PC ";
      default : _zz_43_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_44)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_44_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_44_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_44_string = "BITWISE ";
      default : _zz_44_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_45)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_45_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_45_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_45_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_45_string = "URS1        ";
      default : _zz_45_string = "????????????";
    endcase
  end
  always @(*) begin
    case(decode_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : decode_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : decode_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : decode_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : decode_BRANCH_CTRL_string = "JALR";
      default : decode_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_49)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_49_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_49_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_49_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_49_string = "JALR";
      default : _zz_49_string = "????";
    endcase
  end
  always @(*) begin
    case(MmuPlugin_shared_state_1)
      `MmuPlugin_shared_State_defaultEncoding_IDLE : MmuPlugin_shared_state_1_string = "IDLE  ";
      `MmuPlugin_shared_State_defaultEncoding_L1_CMD : MmuPlugin_shared_state_1_string = "L1_CMD";
      `MmuPlugin_shared_State_defaultEncoding_L1_RSP : MmuPlugin_shared_state_1_string = "L1_RSP";
      `MmuPlugin_shared_State_defaultEncoding_L0_CMD : MmuPlugin_shared_state_1_string = "L0_CMD";
      `MmuPlugin_shared_State_defaultEncoding_L0_RSP : MmuPlugin_shared_state_1_string = "L0_RSP";
      default : MmuPlugin_shared_state_1_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_114)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_114_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_114_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_114_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_114_string = "URS1        ";
      default : _zz_114_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_115)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_115_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_115_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_115_string = "BITWISE ";
      default : _zz_115_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_116)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_116_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_116_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_116_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_116_string = "PC ";
      default : _zz_116_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_117)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_117_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_117_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_117_string = "AND_1";
      default : _zz_117_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_118)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_118_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_118_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_118_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_118_string = "SRA_1    ";
      default : _zz_118_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_119)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_119_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_119_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_119_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_119_string = "ECALL";
      default : _zz_119_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_120)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_120_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_120_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_120_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_120_string = "JALR";
      default : _zz_120_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : decode_to_execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : decode_to_execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : decode_to_execute_ALU_CTRL_string = "BITWISE ";
      default : decode_to_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_to_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : decode_to_execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : decode_to_execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : decode_to_execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : decode_to_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_to_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : execute_to_memory_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : execute_to_memory_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : execute_to_memory_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : execute_to_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_to_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : decode_to_execute_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : decode_to_execute_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : decode_to_execute_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : decode_to_execute_ENV_CTRL_string = "ECALL";
      default : decode_to_execute_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : execute_to_memory_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : execute_to_memory_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : execute_to_memory_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : execute_to_memory_ENV_CTRL_string = "ECALL";
      default : execute_to_memory_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(memory_to_writeBack_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : memory_to_writeBack_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : memory_to_writeBack_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : memory_to_writeBack_ENV_CTRL_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : memory_to_writeBack_ENV_CTRL_string = "ECALL";
      default : memory_to_writeBack_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : decode_to_execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : decode_to_execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : decode_to_execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : decode_to_execute_BRANCH_CTRL_string = "JALR";
      default : decode_to_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  `endif

  assign memory_MUL_LOW = ($signed(_zz_315) + $signed(_zz_323));
  assign execute_BRANCH_CALC = {execute_BranchPlugin_branchAdder[31 : 1],1'b0};
  assign execute_BRANCH_DO = ((execute_PREDICTION_HAD_BRANCHED2 != execute_BRANCH_COND_RESULT) || execute_BranchPlugin_missAlignedTarget);
  assign memory_MUL_HH = execute_to_memory_MUL_HH;
  assign execute_MUL_HH = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bHigh));
  assign execute_MUL_HL = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bSLow));
  assign execute_MUL_LH = ($signed(execute_MulPlugin_aSLow) * $signed(execute_MulPlugin_bHigh));
  assign execute_MUL_LL = (execute_MulPlugin_aULow * execute_MulPlugin_bULow);
  assign execute_SHIFT_RIGHT = _zz_325;
  assign memory_REGFILE_WRITE_DATA = execute_to_memory_REGFILE_WRITE_DATA;
  assign execute_REGFILE_WRITE_DATA = _zz_121;
  assign execute_MEMORY_VIRTUAL_ADDRESS = _zz_205;
  assign memory_MEMORY_ADDRESS_LOW = execute_to_memory_MEMORY_ADDRESS_LOW;
  assign execute_MEMORY_ADDRESS_LOW = _zz_205[1 : 0];
  assign decode_DO_EBREAK = ((! DebugPlugin_haltIt) && (decode_IS_EBREAK || 1'b0));
  assign decode_PREDICTION_HAD_BRANCHED2 = IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  assign decode_CSR_READ_OPCODE = (decode_INSTRUCTION[13 : 7] != 7'h20);
  assign decode_CSR_WRITE_OPCODE = (! (((decode_INSTRUCTION[14 : 13] == 2'b01) && (decode_INSTRUCTION[19 : 15] == 5'h0)) || ((decode_INSTRUCTION[14 : 13] == 2'b11) && (decode_INSTRUCTION[19 : 15] == 5'h0))));
  assign decode_SRC2 = _zz_127;
  assign decode_SRC1 = _zz_122;
  assign decode_SRC2_FORCE_ZERO = (decode_SRC_ADD_ZERO && (! decode_SRC_USE_SUB_LESS));
  assign _zz_1 = _zz_2;
  assign _zz_3 = _zz_4;
  assign _zz_5 = _zz_6;
  assign decode_ENV_CTRL = _zz_7;
  assign _zz_8 = _zz_9;
  assign decode_IS_CSR = _zz_327[0];
  assign decode_IS_RS2_SIGNED = _zz_328[0];
  assign decode_IS_RS1_SIGNED = _zz_329[0];
  assign decode_IS_DIV = _zz_330[0];
  assign memory_IS_MUL = execute_to_memory_IS_MUL;
  assign execute_IS_MUL = decode_to_execute_IS_MUL;
  assign decode_IS_MUL = _zz_331[0];
  assign _zz_10 = _zz_11;
  assign decode_SHIFT_CTRL = _zz_12;
  assign _zz_13 = _zz_14;
  assign decode_ALU_BITWISE_CTRL = _zz_15;
  assign _zz_16 = _zz_17;
  assign decode_SRC_LESS_UNSIGNED = _zz_332[0];
  assign memory_MEMORY_FENCE = execute_to_memory_MEMORY_FENCE;
  assign execute_MEMORY_FENCE = decode_to_execute_MEMORY_FENCE;
  assign decode_MEMORY_FENCE = _zz_333[0];
  assign decode_MEMORY_MANAGMENT = _zz_334[0];
  assign memory_MEMORY_AMO = execute_to_memory_MEMORY_AMO;
  assign memory_MEMORY_LRSC = execute_to_memory_MEMORY_LRSC;
  assign memory_MEMORY_WR = execute_to_memory_MEMORY_WR;
  assign decode_MEMORY_WR = _zz_335[0];
  assign execute_BYPASSABLE_MEMORY_STAGE = decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  assign decode_BYPASSABLE_MEMORY_STAGE = _zz_336[0];
  assign decode_BYPASSABLE_EXECUTE_STAGE = _zz_337[0];
  assign decode_ALU_CTRL = _zz_18;
  assign _zz_19 = _zz_20;
  assign memory_IS_SFENCE_VMA = execute_to_memory_IS_SFENCE_VMA;
  assign execute_IS_SFENCE_VMA = decode_to_execute_IS_SFENCE_VMA;
  assign decode_IS_SFENCE_VMA = _zz_338[0];
  assign decode_MEMORY_FORCE_CONSTISTENCY = _zz_47;
  assign writeBack_FORMAL_PC_NEXT = memory_to_writeBack_FORMAL_PC_NEXT;
  assign memory_FORMAL_PC_NEXT = execute_to_memory_FORMAL_PC_NEXT;
  assign execute_FORMAL_PC_NEXT = decode_to_execute_FORMAL_PC_NEXT;
  assign decode_FORMAL_PC_NEXT = (decode_PC + 32'h00000004);
  assign memory_PC = execute_to_memory_PC;
  assign execute_DO_EBREAK = decode_to_execute_DO_EBREAK;
  assign decode_IS_EBREAK = _zz_339[0];
  assign memory_BRANCH_CALC = execute_to_memory_BRANCH_CALC;
  assign memory_BRANCH_DO = execute_to_memory_BRANCH_DO;
  assign execute_PC = decode_to_execute_PC;
  assign execute_PREDICTION_HAD_BRANCHED2 = decode_to_execute_PREDICTION_HAD_BRANCHED2;
  assign execute_BRANCH_COND_RESULT = _zz_157;
  assign execute_BRANCH_CTRL = _zz_21;
  assign execute_CSR_READ_OPCODE = decode_to_execute_CSR_READ_OPCODE;
  assign execute_CSR_WRITE_OPCODE = decode_to_execute_CSR_WRITE_OPCODE;
  assign execute_IS_CSR = decode_to_execute_IS_CSR;
  assign memory_ENV_CTRL = _zz_22;
  assign execute_ENV_CTRL = _zz_23;
  assign writeBack_ENV_CTRL = _zz_24;
  assign execute_IS_RS1_SIGNED = decode_to_execute_IS_RS1_SIGNED;
  assign execute_IS_DIV = decode_to_execute_IS_DIV;
  assign execute_IS_RS2_SIGNED = decode_to_execute_IS_RS2_SIGNED;
  assign memory_IS_DIV = execute_to_memory_IS_DIV;
  assign writeBack_IS_MUL = memory_to_writeBack_IS_MUL;
  assign writeBack_MUL_HH = memory_to_writeBack_MUL_HH;
  assign writeBack_MUL_LOW = memory_to_writeBack_MUL_LOW;
  assign memory_MUL_HL = execute_to_memory_MUL_HL;
  assign memory_MUL_LH = execute_to_memory_MUL_LH;
  assign memory_MUL_LL = execute_to_memory_MUL_LL;
  assign execute_RS1 = decode_to_execute_RS1;
  assign decode_RS2_USE = _zz_340[0];
  assign decode_RS1_USE = _zz_341[0];
  always @ (*) begin
    _zz_25 = execute_REGFILE_WRITE_DATA;
    if(_zz_254)begin
      _zz_25 = execute_CsrPlugin_readData;
    end
    if(DBusCachedPlugin_forceDatapath)begin
      _zz_25 = MmuPlugin_dBusAccess_cmd_payload_address;
    end
  end

  assign execute_REGFILE_WRITE_VALID = decode_to_execute_REGFILE_WRITE_VALID;
  assign execute_BYPASSABLE_EXECUTE_STAGE = decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  assign memory_REGFILE_WRITE_VALID = execute_to_memory_REGFILE_WRITE_VALID;
  assign memory_INSTRUCTION = execute_to_memory_INSTRUCTION;
  assign memory_BYPASSABLE_MEMORY_STAGE = execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  assign writeBack_REGFILE_WRITE_VALID = memory_to_writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    decode_RS2 = decode_RegFilePlugin_rs2Data;
    if(_zz_132)begin
      if((_zz_133 == decode_INSTRUCTION[24 : 20]))begin
        decode_RS2 = _zz_134;
      end
    end
    if(_zz_255)begin
      if(_zz_256)begin
        if(_zz_136)begin
          decode_RS2 = _zz_46;
        end
      end
    end
    if(_zz_257)begin
      if(memory_BYPASSABLE_MEMORY_STAGE)begin
        if(_zz_138)begin
          decode_RS2 = _zz_26;
        end
      end
    end
    if(_zz_258)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_140)begin
          decode_RS2 = _zz_25;
        end
      end
    end
  end

  always @ (*) begin
    decode_RS1 = decode_RegFilePlugin_rs1Data;
    if(_zz_132)begin
      if((_zz_133 == decode_INSTRUCTION[19 : 15]))begin
        decode_RS1 = _zz_134;
      end
    end
    if(_zz_255)begin
      if(_zz_256)begin
        if(_zz_135)begin
          decode_RS1 = _zz_46;
        end
      end
    end
    if(_zz_257)begin
      if(memory_BYPASSABLE_MEMORY_STAGE)begin
        if(_zz_137)begin
          decode_RS1 = _zz_26;
        end
      end
    end
    if(_zz_258)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_139)begin
          decode_RS1 = _zz_25;
        end
      end
    end
  end

  assign memory_SHIFT_RIGHT = execute_to_memory_SHIFT_RIGHT;
  always @ (*) begin
    _zz_26 = memory_REGFILE_WRITE_DATA;
    if(memory_arbitration_isValid)begin
      case(memory_SHIFT_CTRL)
        `ShiftCtrlEnum_defaultEncoding_SLL_1 : begin
          _zz_26 = _zz_129;
        end
        `ShiftCtrlEnum_defaultEncoding_SRL_1, `ShiftCtrlEnum_defaultEncoding_SRA_1 : begin
          _zz_26 = memory_SHIFT_RIGHT;
        end
        default : begin
        end
      endcase
    end
    if(_zz_259)begin
      _zz_26 = memory_MulDivIterativePlugin_div_result;
    end
  end

  assign memory_SHIFT_CTRL = _zz_27;
  assign execute_SHIFT_CTRL = _zz_28;
  assign execute_SRC_LESS_UNSIGNED = decode_to_execute_SRC_LESS_UNSIGNED;
  assign execute_SRC2_FORCE_ZERO = decode_to_execute_SRC2_FORCE_ZERO;
  assign execute_SRC_USE_SUB_LESS = decode_to_execute_SRC_USE_SUB_LESS;
  assign _zz_29 = decode_PC;
  assign _zz_30 = decode_RS2;
  assign decode_SRC2_CTRL = _zz_31;
  assign _zz_32 = decode_RS1;
  assign decode_SRC1_CTRL = _zz_33;
  assign decode_SRC_USE_SUB_LESS = _zz_342[0];
  assign decode_SRC_ADD_ZERO = _zz_343[0];
  assign execute_SRC_ADD_SUB = execute_SrcPlugin_addSub;
  assign execute_SRC_LESS = execute_SrcPlugin_less;
  assign execute_ALU_CTRL = _zz_34;
  assign execute_SRC2 = decode_to_execute_SRC2;
  assign execute_SRC1 = decode_to_execute_SRC1;
  assign execute_ALU_BITWISE_CTRL = _zz_35;
  assign _zz_36 = writeBack_INSTRUCTION;
  assign _zz_37 = writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    _zz_38 = 1'b0;
    if(lastStageRegFileWrite_valid)begin
      _zz_38 = 1'b1;
    end
  end

  always @ (*) begin
    decode_REGFILE_WRITE_VALID = _zz_344[0];
    if((decode_INSTRUCTION[11 : 7] == 5'h0))begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = ({((decode_INSTRUCTION & 32'h0000005f) == 32'h00000017),{((decode_INSTRUCTION & 32'h0000007f) == 32'h0000006f),{((decode_INSTRUCTION & 32'h0000106f) == 32'h00000003),{((decode_INSTRUCTION & _zz_472) == 32'h00001073),{(_zz_473 == _zz_474),{_zz_475,{_zz_476,_zz_477}}}}}}} != 25'h0);
  assign writeBack_IS_DBUS_SHARING = memory_to_writeBack_IS_DBUS_SHARING;
  assign execute_IS_DBUS_SHARING = (MmuPlugin_dBusAccess_cmd_valid && MmuPlugin_dBusAccess_cmd_ready);
  assign memory_IS_DBUS_SHARING = execute_to_memory_IS_DBUS_SHARING;
  always @ (*) begin
    _zz_46 = writeBack_REGFILE_WRITE_DATA;
    if((writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE))begin
      _zz_46 = writeBack_DBusCachedPlugin_rspFormated;
    end
    if((writeBack_arbitration_isValid && writeBack_IS_MUL))begin
      case(_zz_313)
        2'b00 : begin
          _zz_46 = _zz_397;
        end
        default : begin
          _zz_46 = _zz_398;
        end
      endcase
    end
  end

  assign writeBack_MEMORY_ADDRESS_LOW = memory_to_writeBack_MEMORY_ADDRESS_LOW;
  assign writeBack_MEMORY_WR = memory_to_writeBack_MEMORY_WR;
  assign writeBack_MEMORY_FENCE = memory_to_writeBack_MEMORY_FENCE;
  assign writeBack_MEMORY_AMO = memory_to_writeBack_MEMORY_AMO;
  assign writeBack_MEMORY_LRSC = memory_to_writeBack_MEMORY_LRSC;
  assign writeBack_REGFILE_WRITE_DATA = memory_to_writeBack_REGFILE_WRITE_DATA;
  assign writeBack_MEMORY_ENABLE = memory_to_writeBack_MEMORY_ENABLE;
  assign memory_MEMORY_ENABLE = execute_to_memory_MEMORY_ENABLE;
  assign memory_MEMORY_VIRTUAL_ADDRESS = execute_to_memory_MEMORY_VIRTUAL_ADDRESS;
  assign execute_MEMORY_AMO = decode_to_execute_MEMORY_AMO;
  assign execute_MEMORY_LRSC = decode_to_execute_MEMORY_LRSC;
  assign execute_MEMORY_FORCE_CONSTISTENCY = decode_to_execute_MEMORY_FORCE_CONSTISTENCY;
  assign execute_MEMORY_MANAGMENT = decode_to_execute_MEMORY_MANAGMENT;
  assign execute_RS2 = decode_to_execute_RS2;
  assign execute_MEMORY_WR = decode_to_execute_MEMORY_WR;
  assign execute_SRC_ADD = execute_SrcPlugin_addSub;
  assign execute_MEMORY_ENABLE = decode_to_execute_MEMORY_ENABLE;
  assign execute_INSTRUCTION = decode_to_execute_INSTRUCTION;
  assign decode_MEMORY_AMO = _zz_345[0];
  assign decode_MEMORY_LRSC = _zz_346[0];
  assign decode_MEMORY_ENABLE = _zz_347[0];
  assign decode_FLUSH_ALL = _zz_348[0];
  always @ (*) begin
    _zz_48 = _zz_48_2;
    if(_zz_260)begin
      _zz_48 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_48_2 = _zz_48_1;
    if(_zz_261)begin
      _zz_48_2 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_48_1 = _zz_48_0;
    if(_zz_262)begin
      _zz_48_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_48_0 = IBusCachedPlugin_rsp_issueDetected;
    if(_zz_263)begin
      _zz_48_0 = 1'b1;
    end
  end

  assign decode_BRANCH_CTRL = _zz_49;
  assign decode_INSTRUCTION = IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  always @ (*) begin
    _zz_50 = memory_FORMAL_PC_NEXT;
    if(BranchPlugin_jumpInterface_valid)begin
      _zz_50 = BranchPlugin_jumpInterface_payload;
    end
  end

  always @ (*) begin
    _zz_51 = execute_FORMAL_PC_NEXT;
    if(CsrPlugin_redoInterface_valid)begin
      _zz_51 = CsrPlugin_redoInterface_payload;
    end
  end

  always @ (*) begin
    _zz_52 = decode_FORMAL_PC_NEXT;
    if(IBusCachedPlugin_predictionJumpInterface_valid)begin
      _zz_52 = IBusCachedPlugin_predictionJumpInterface_payload;
    end
  end

  assign decode_PC = IBusCachedPlugin_iBusRsp_output_payload_pc;
  assign writeBack_IS_SFENCE_VMA = memory_to_writeBack_IS_SFENCE_VMA;
  assign writeBack_PC = memory_to_writeBack_PC;
  assign writeBack_INSTRUCTION = memory_to_writeBack_INSTRUCTION;
  always @ (*) begin
    decode_arbitration_haltItself = 1'b0;
    if(((DBusCachedPlugin_mmuBus_busy && decode_arbitration_isValid) && decode_MEMORY_ENABLE))begin
      decode_arbitration_haltItself = 1'b1;
    end
    case(_zz_172)
      3'b000 : begin
      end
      3'b001 : begin
      end
      3'b010 : begin
        decode_arbitration_haltItself = 1'b1;
      end
      3'b011 : begin
      end
      3'b100 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    decode_arbitration_haltByOther = 1'b0;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if((decode_arbitration_isValid && (_zz_130 || _zz_131)))begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(CsrPlugin_pipelineLiberator_active)begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(({(writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)),{(memory_arbitration_isValid && (memory_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)),(execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET))}} != 3'b000))begin
      decode_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    decode_arbitration_removeIt = 1'b0;
    if(_zz_264)begin
      decode_arbitration_removeIt = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushIt = 1'b0;
  always @ (*) begin
    decode_arbitration_flushNext = 1'b0;
    if(IBusCachedPlugin_predictionJumpInterface_valid)begin
      decode_arbitration_flushNext = 1'b1;
    end
    if(_zz_264)begin
      decode_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_haltItself = 1'b0;
    if(((_zz_227 && (! dataCache_1_io_cpu_flush_ready)) || dataCache_1_io_cpu_execute_haltIt))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(((dataCache_1_io_cpu_redo && execute_arbitration_isValid) && execute_MEMORY_ENABLE))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(_zz_265)begin
      if((! execute_CsrPlugin_wfiWake))begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_254)begin
      if(execute_CsrPlugin_blockedBySideEffects)begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
  end

  always @ (*) begin
    execute_arbitration_haltByOther = 1'b0;
    if(_zz_266)begin
      execute_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_removeIt = 1'b0;
    if(CsrPlugin_selfException_valid)begin
      execute_arbitration_removeIt = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_flushIt = 1'b0;
    if(_zz_266)begin
      if(_zz_267)begin
        execute_arbitration_flushIt = 1'b1;
      end
    end
  end

  always @ (*) begin
    execute_arbitration_flushNext = 1'b0;
    if(CsrPlugin_selfException_valid)begin
      execute_arbitration_flushNext = 1'b1;
    end
    if(_zz_266)begin
      if(_zz_267)begin
        execute_arbitration_flushNext = 1'b1;
      end
    end
    if(execute_CsrPlugin_csr_384)begin
      if(execute_CsrPlugin_writeEnable)begin
        execute_arbitration_flushNext = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_arbitration_haltItself = 1'b0;
    if(_zz_259)begin
      if(((! memory_MulDivIterativePlugin_frontendOk) || (! memory_MulDivIterativePlugin_div_done)))begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_arbitration_haltByOther = 1'b0;
    if((writeBack_arbitration_isValid && (writeBack_MEMORY_FENCE || _zz_102)))begin
      memory_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    memory_arbitration_removeIt = 1'b0;
    if(BranchPlugin_branchExceptionPort_valid)begin
      memory_arbitration_removeIt = 1'b1;
    end
    if(memory_arbitration_isFlushed)begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  assign memory_arbitration_flushIt = 1'b0;
  always @ (*) begin
    memory_arbitration_flushNext = 1'b0;
    if(BranchPlugin_branchExceptionPort_valid)begin
      memory_arbitration_flushNext = 1'b1;
    end
    if(BranchPlugin_jumpInterface_valid)begin
      memory_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_haltItself = 1'b0;
    if(dataCache_1_io_cpu_writeBack_haltIt)begin
      writeBack_arbitration_haltItself = 1'b1;
    end
  end

  assign writeBack_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    writeBack_arbitration_removeIt = 1'b0;
    if(DBusCachedPlugin_exceptionBus_valid)begin
      writeBack_arbitration_removeIt = 1'b1;
    end
    if(writeBack_arbitration_isFlushed)begin
      writeBack_arbitration_removeIt = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_flushIt = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid)begin
      writeBack_arbitration_flushIt = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_flushNext = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(DBusCachedPlugin_exceptionBus_valid)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_268)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_269)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
  end

  assign lastStageInstruction = writeBack_INSTRUCTION;
  assign lastStagePc = writeBack_PC;
  assign lastStageIsValid = writeBack_arbitration_isValid;
  assign lastStageIsFiring = writeBack_arbitration_isFiring;
  always @ (*) begin
    IBusCachedPlugin_fetcherHalt = 1'b0;
    if(({CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValids_memory,{CsrPlugin_exceptionPortCtrl_exceptionValids_execute,CsrPlugin_exceptionPortCtrl_exceptionValids_decode}}} != 4'b0000))begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_268)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_269)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_266)begin
      if(_zz_267)begin
        IBusCachedPlugin_fetcherHalt = 1'b1;
      end
    end
    if(DebugPlugin_haltIt)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_270)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_incomingInstruction = 1'b0;
    if(((IBusCachedPlugin_iBusRsp_stages_1_input_valid || IBusCachedPlugin_iBusRsp_stages_2_input_valid) || IBusCachedPlugin_iBusRsp_stages_3_input_valid))begin
      IBusCachedPlugin_incomingInstruction = 1'b1;
    end
  end

  always @ (*) begin
    _zz_53 = 1'b0;
    if(DebugPlugin_godmode)begin
      _zz_53 = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_inWfi = 1'b0;
    if(_zz_265)begin
      CsrPlugin_inWfi = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_thirdPartyWake = 1'b0;
    if(DebugPlugin_haltIt)begin
      CsrPlugin_thirdPartyWake = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_jumpInterface_valid = 1'b0;
    if(_zz_268)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_269)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_jumpInterface_payload = 32'h0;
    if(_zz_268)begin
      CsrPlugin_jumpInterface_payload = {CsrPlugin_xtvec_base,2'b00};
    end
    if(_zz_269)begin
      case(_zz_271)
        2'b11 : begin
          CsrPlugin_jumpInterface_payload = CsrPlugin_mepc;
        end
        2'b01 : begin
          CsrPlugin_jumpInterface_payload = CsrPlugin_sepc;
        end
        default : begin
        end
      endcase
    end
  end

  always @ (*) begin
    CsrPlugin_forceMachineWire = 1'b0;
    if(DebugPlugin_godmode)begin
      CsrPlugin_forceMachineWire = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_allowInterrupts = 1'b1;
    if((DebugPlugin_haltIt || DebugPlugin_stepIt))begin
      CsrPlugin_allowInterrupts = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_allowException = 1'b1;
    if(DebugPlugin_godmode)begin
      CsrPlugin_allowException = 1'b0;
    end
  end

  always @ (*) begin
    MmuPlugin_ports_0_requireMmuLockupCalc = ((1'b1 && (! IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation)) && MmuPlugin_satp_mode);
    if(((! MmuPlugin_status_mprv) && (CsrPlugin_privilege == 2'b11)))begin
      MmuPlugin_ports_0_requireMmuLockupCalc = 1'b0;
    end
    if((CsrPlugin_privilege == 2'b11))begin
      MmuPlugin_ports_0_requireMmuLockupCalc = 1'b0;
    end
  end

  always @ (*) begin
    MmuPlugin_ports_0_cacheHitsCalc[0] = ((MmuPlugin_ports_0_cache_0_valid && (MmuPlugin_ports_0_cache_0_virtualAddress_1 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_0_cache_0_superPage || (MmuPlugin_ports_0_cache_0_virtualAddress_0 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
    MmuPlugin_ports_0_cacheHitsCalc[1] = ((MmuPlugin_ports_0_cache_1_valid && (MmuPlugin_ports_0_cache_1_virtualAddress_1 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_0_cache_1_superPage || (MmuPlugin_ports_0_cache_1_virtualAddress_0 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
    MmuPlugin_ports_0_cacheHitsCalc[2] = ((MmuPlugin_ports_0_cache_2_valid && (MmuPlugin_ports_0_cache_2_virtualAddress_1 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_0_cache_2_superPage || (MmuPlugin_ports_0_cache_2_virtualAddress_0 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
    MmuPlugin_ports_0_cacheHitsCalc[3] = ((MmuPlugin_ports_0_cache_3_valid && (MmuPlugin_ports_0_cache_3_virtualAddress_1 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_0_cache_3_superPage || (MmuPlugin_ports_0_cache_3_virtualAddress_0 == IBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
  end

  assign MmuPlugin_ports_0_cacheHit = (MmuPlugin_ports_0_cacheHits != 4'b0000);
  assign _zz_54 = MmuPlugin_ports_0_cacheHits[3];
  assign _zz_55 = (MmuPlugin_ports_0_cacheHits[1] || _zz_54);
  assign _zz_56 = (MmuPlugin_ports_0_cacheHits[2] || _zz_54);
  assign _zz_57 = {_zz_56,_zz_55};
  assign MmuPlugin_ports_0_cacheLine_valid = _zz_231;
  assign MmuPlugin_ports_0_cacheLine_exception = _zz_232;
  assign MmuPlugin_ports_0_cacheLine_superPage = _zz_233;
  assign MmuPlugin_ports_0_cacheLine_virtualAddress_0 = _zz_234;
  assign MmuPlugin_ports_0_cacheLine_virtualAddress_1 = _zz_235;
  assign MmuPlugin_ports_0_cacheLine_physicalAddress_0 = _zz_236;
  assign MmuPlugin_ports_0_cacheLine_physicalAddress_1 = _zz_237;
  assign MmuPlugin_ports_0_cacheLine_allowRead = _zz_238;
  assign MmuPlugin_ports_0_cacheLine_allowWrite = _zz_239;
  assign MmuPlugin_ports_0_cacheLine_allowExecute = _zz_240;
  assign MmuPlugin_ports_0_cacheLine_allowUser = _zz_241;
  always @ (*) begin
    MmuPlugin_ports_0_entryToReplace_willIncrement = 1'b0;
    if(_zz_272)begin
      if(_zz_273)begin
        MmuPlugin_ports_0_entryToReplace_willIncrement = 1'b1;
      end
    end
  end

  assign MmuPlugin_ports_0_entryToReplace_willClear = 1'b0;
  assign MmuPlugin_ports_0_entryToReplace_willOverflowIfInc = (MmuPlugin_ports_0_entryToReplace_value == 2'b11);
  assign MmuPlugin_ports_0_entryToReplace_willOverflow = (MmuPlugin_ports_0_entryToReplace_willOverflowIfInc && MmuPlugin_ports_0_entryToReplace_willIncrement);
  always @ (*) begin
    MmuPlugin_ports_0_entryToReplace_valueNext = (MmuPlugin_ports_0_entryToReplace_value + _zz_350);
    if(MmuPlugin_ports_0_entryToReplace_willClear)begin
      MmuPlugin_ports_0_entryToReplace_valueNext = 2'b00;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_0_requireMmuLockup)begin
      IBusCachedPlugin_mmuBus_rsp_physicalAddress = {{MmuPlugin_ports_0_cacheLine_physicalAddress_1,(MmuPlugin_ports_0_cacheLine_superPage ? IBusCachedPlugin_mmuBus_cmd_1_virtualAddress[21 : 12] : MmuPlugin_ports_0_cacheLine_physicalAddress_0)},IBusCachedPlugin_mmuBus_cmd_1_virtualAddress[11 : 0]};
    end else begin
      IBusCachedPlugin_mmuBus_rsp_physicalAddress = IBusCachedPlugin_mmuBus_cmd_1_virtualAddress;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_0_requireMmuLockup)begin
      IBusCachedPlugin_mmuBus_rsp_allowRead = (MmuPlugin_ports_0_cacheLine_allowRead || (MmuPlugin_status_mxr && MmuPlugin_ports_0_cacheLine_allowExecute));
    end else begin
      IBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_0_requireMmuLockup)begin
      IBusCachedPlugin_mmuBus_rsp_allowWrite = MmuPlugin_ports_0_cacheLine_allowWrite;
    end else begin
      IBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_0_requireMmuLockup)begin
      IBusCachedPlugin_mmuBus_rsp_allowExecute = MmuPlugin_ports_0_cacheLine_allowExecute;
    end else begin
      IBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_0_requireMmuLockup)begin
      IBusCachedPlugin_mmuBus_rsp_exception = (MmuPlugin_ports_0_cacheHit && ((MmuPlugin_ports_0_cacheLine_exception || ((MmuPlugin_ports_0_cacheLine_allowUser && (CsrPlugin_privilege == 2'b01)) && (! MmuPlugin_status_sum))) || ((! MmuPlugin_ports_0_cacheLine_allowUser) && (CsrPlugin_privilege == 2'b00))));
    end else begin
      IBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_0_requireMmuLockup)begin
      IBusCachedPlugin_mmuBus_rsp_refilling = (! MmuPlugin_ports_0_cacheHit);
    end else begin
      IBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
    end
  end

  assign IBusCachedPlugin_mmuBus_rsp_isIoAccess = IBusCachedPlugin_mmuBus_rsp_physicalAddress[31];
  assign IBusCachedPlugin_mmuBus_rsp_bypassTranslation = (! MmuPlugin_ports_0_requireMmuLockup);
  assign IBusCachedPlugin_mmuBus_rsp_ways_0_sel = MmuPlugin_ports_0_cacheHits[0];
  assign IBusCachedPlugin_mmuBus_rsp_ways_0_physical = {{MmuPlugin_ports_0_cache_0_physicalAddress_1,(MmuPlugin_ports_0_cache_0_superPage ? IBusCachedPlugin_mmuBus_cmd_1_virtualAddress[21 : 12] : MmuPlugin_ports_0_cache_0_physicalAddress_0)},IBusCachedPlugin_mmuBus_cmd_1_virtualAddress[11 : 0]};
  assign IBusCachedPlugin_mmuBus_rsp_ways_1_sel = MmuPlugin_ports_0_cacheHits[1];
  assign IBusCachedPlugin_mmuBus_rsp_ways_1_physical = {{MmuPlugin_ports_0_cache_1_physicalAddress_1,(MmuPlugin_ports_0_cache_1_superPage ? IBusCachedPlugin_mmuBus_cmd_1_virtualAddress[21 : 12] : MmuPlugin_ports_0_cache_1_physicalAddress_0)},IBusCachedPlugin_mmuBus_cmd_1_virtualAddress[11 : 0]};
  assign IBusCachedPlugin_mmuBus_rsp_ways_2_sel = MmuPlugin_ports_0_cacheHits[2];
  assign IBusCachedPlugin_mmuBus_rsp_ways_2_physical = {{MmuPlugin_ports_0_cache_2_physicalAddress_1,(MmuPlugin_ports_0_cache_2_superPage ? IBusCachedPlugin_mmuBus_cmd_1_virtualAddress[21 : 12] : MmuPlugin_ports_0_cache_2_physicalAddress_0)},IBusCachedPlugin_mmuBus_cmd_1_virtualAddress[11 : 0]};
  assign IBusCachedPlugin_mmuBus_rsp_ways_3_sel = MmuPlugin_ports_0_cacheHits[3];
  assign IBusCachedPlugin_mmuBus_rsp_ways_3_physical = {{MmuPlugin_ports_0_cache_3_physicalAddress_1,(MmuPlugin_ports_0_cache_3_superPage ? IBusCachedPlugin_mmuBus_cmd_1_virtualAddress[21 : 12] : MmuPlugin_ports_0_cache_3_physicalAddress_0)},IBusCachedPlugin_mmuBus_cmd_1_virtualAddress[11 : 0]};
  always @ (*) begin
    MmuPlugin_ports_1_requireMmuLockupCalc = ((1'b1 && (! DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation)) && MmuPlugin_satp_mode);
    if(((! MmuPlugin_status_mprv) && (CsrPlugin_privilege == 2'b11)))begin
      MmuPlugin_ports_1_requireMmuLockupCalc = 1'b0;
    end
    if((CsrPlugin_privilege == 2'b11))begin
      if(((! MmuPlugin_status_mprv) || (CsrPlugin_mstatus_MPP == 2'b11)))begin
        MmuPlugin_ports_1_requireMmuLockupCalc = 1'b0;
      end
    end
  end

  always @ (*) begin
    MmuPlugin_ports_1_cacheHitsCalc[0] = ((MmuPlugin_ports_1_cache_0_valid && (MmuPlugin_ports_1_cache_0_virtualAddress_1 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_1_cache_0_superPage || (MmuPlugin_ports_1_cache_0_virtualAddress_0 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
    MmuPlugin_ports_1_cacheHitsCalc[1] = ((MmuPlugin_ports_1_cache_1_valid && (MmuPlugin_ports_1_cache_1_virtualAddress_1 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_1_cache_1_superPage || (MmuPlugin_ports_1_cache_1_virtualAddress_0 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
    MmuPlugin_ports_1_cacheHitsCalc[2] = ((MmuPlugin_ports_1_cache_2_valid && (MmuPlugin_ports_1_cache_2_virtualAddress_1 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_1_cache_2_superPage || (MmuPlugin_ports_1_cache_2_virtualAddress_0 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
    MmuPlugin_ports_1_cacheHitsCalc[3] = ((MmuPlugin_ports_1_cache_3_valid && (MmuPlugin_ports_1_cache_3_virtualAddress_1 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[31 : 22])) && (MmuPlugin_ports_1_cache_3_superPage || (MmuPlugin_ports_1_cache_3_virtualAddress_0 == DBusCachedPlugin_mmuBus_cmd_0_virtualAddress[21 : 12])));
  end

  assign MmuPlugin_ports_1_cacheHit = (MmuPlugin_ports_1_cacheHits != 4'b0000);
  assign _zz_58 = MmuPlugin_ports_1_cacheHits[3];
  assign _zz_59 = (MmuPlugin_ports_1_cacheHits[1] || _zz_58);
  assign _zz_60 = (MmuPlugin_ports_1_cacheHits[2] || _zz_58);
  assign _zz_61 = {_zz_60,_zz_59};
  assign MmuPlugin_ports_1_cacheLine_valid = _zz_242;
  assign MmuPlugin_ports_1_cacheLine_exception = _zz_243;
  assign MmuPlugin_ports_1_cacheLine_superPage = _zz_244;
  assign MmuPlugin_ports_1_cacheLine_virtualAddress_0 = _zz_245;
  assign MmuPlugin_ports_1_cacheLine_virtualAddress_1 = _zz_246;
  assign MmuPlugin_ports_1_cacheLine_physicalAddress_0 = _zz_247;
  assign MmuPlugin_ports_1_cacheLine_physicalAddress_1 = _zz_248;
  assign MmuPlugin_ports_1_cacheLine_allowRead = _zz_249;
  assign MmuPlugin_ports_1_cacheLine_allowWrite = _zz_250;
  assign MmuPlugin_ports_1_cacheLine_allowExecute = _zz_251;
  assign MmuPlugin_ports_1_cacheLine_allowUser = _zz_252;
  always @ (*) begin
    MmuPlugin_ports_1_entryToReplace_willIncrement = 1'b0;
    if(_zz_272)begin
      if(_zz_274)begin
        MmuPlugin_ports_1_entryToReplace_willIncrement = 1'b1;
      end
    end
  end

  assign MmuPlugin_ports_1_entryToReplace_willClear = 1'b0;
  assign MmuPlugin_ports_1_entryToReplace_willOverflowIfInc = (MmuPlugin_ports_1_entryToReplace_value == 2'b11);
  assign MmuPlugin_ports_1_entryToReplace_willOverflow = (MmuPlugin_ports_1_entryToReplace_willOverflowIfInc && MmuPlugin_ports_1_entryToReplace_willIncrement);
  always @ (*) begin
    MmuPlugin_ports_1_entryToReplace_valueNext = (MmuPlugin_ports_1_entryToReplace_value + _zz_352);
    if(MmuPlugin_ports_1_entryToReplace_willClear)begin
      MmuPlugin_ports_1_entryToReplace_valueNext = 2'b00;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_1_requireMmuLockup)begin
      DBusCachedPlugin_mmuBus_rsp_physicalAddress = {{MmuPlugin_ports_1_cacheLine_physicalAddress_1,(MmuPlugin_ports_1_cacheLine_superPage ? DBusCachedPlugin_mmuBus_cmd_1_virtualAddress[21 : 12] : MmuPlugin_ports_1_cacheLine_physicalAddress_0)},DBusCachedPlugin_mmuBus_cmd_1_virtualAddress[11 : 0]};
    end else begin
      DBusCachedPlugin_mmuBus_rsp_physicalAddress = DBusCachedPlugin_mmuBus_cmd_1_virtualAddress;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_1_requireMmuLockup)begin
      DBusCachedPlugin_mmuBus_rsp_allowRead = (MmuPlugin_ports_1_cacheLine_allowRead || (MmuPlugin_status_mxr && MmuPlugin_ports_1_cacheLine_allowExecute));
    end else begin
      DBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_1_requireMmuLockup)begin
      DBusCachedPlugin_mmuBus_rsp_allowWrite = MmuPlugin_ports_1_cacheLine_allowWrite;
    end else begin
      DBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_1_requireMmuLockup)begin
      DBusCachedPlugin_mmuBus_rsp_allowExecute = MmuPlugin_ports_1_cacheLine_allowExecute;
    end else begin
      DBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_1_requireMmuLockup)begin
      DBusCachedPlugin_mmuBus_rsp_exception = (MmuPlugin_ports_1_cacheHit && ((MmuPlugin_ports_1_cacheLine_exception || ((MmuPlugin_ports_1_cacheLine_allowUser && (CsrPlugin_privilege == 2'b01)) && (! MmuPlugin_status_sum))) || ((! MmuPlugin_ports_1_cacheLine_allowUser) && (CsrPlugin_privilege == 2'b00))));
    end else begin
      DBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_1_requireMmuLockup)begin
      DBusCachedPlugin_mmuBus_rsp_refilling = (! MmuPlugin_ports_1_cacheHit);
    end else begin
      DBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
    end
  end

  assign DBusCachedPlugin_mmuBus_rsp_isIoAccess = DBusCachedPlugin_mmuBus_rsp_physicalAddress[31];
  assign DBusCachedPlugin_mmuBus_rsp_bypassTranslation = (! MmuPlugin_ports_1_requireMmuLockup);
  assign DBusCachedPlugin_mmuBus_rsp_ways_0_sel = MmuPlugin_ports_1_cacheHits[0];
  assign DBusCachedPlugin_mmuBus_rsp_ways_0_physical = {{MmuPlugin_ports_1_cache_0_physicalAddress_1,(MmuPlugin_ports_1_cache_0_superPage ? DBusCachedPlugin_mmuBus_cmd_1_virtualAddress[21 : 12] : MmuPlugin_ports_1_cache_0_physicalAddress_0)},DBusCachedPlugin_mmuBus_cmd_1_virtualAddress[11 : 0]};
  assign DBusCachedPlugin_mmuBus_rsp_ways_1_sel = MmuPlugin_ports_1_cacheHits[1];
  assign DBusCachedPlugin_mmuBus_rsp_ways_1_physical = {{MmuPlugin_ports_1_cache_1_physicalAddress_1,(MmuPlugin_ports_1_cache_1_superPage ? DBusCachedPlugin_mmuBus_cmd_1_virtualAddress[21 : 12] : MmuPlugin_ports_1_cache_1_physicalAddress_0)},DBusCachedPlugin_mmuBus_cmd_1_virtualAddress[11 : 0]};
  assign DBusCachedPlugin_mmuBus_rsp_ways_2_sel = MmuPlugin_ports_1_cacheHits[2];
  assign DBusCachedPlugin_mmuBus_rsp_ways_2_physical = {{MmuPlugin_ports_1_cache_2_physicalAddress_1,(MmuPlugin_ports_1_cache_2_superPage ? DBusCachedPlugin_mmuBus_cmd_1_virtualAddress[21 : 12] : MmuPlugin_ports_1_cache_2_physicalAddress_0)},DBusCachedPlugin_mmuBus_cmd_1_virtualAddress[11 : 0]};
  assign DBusCachedPlugin_mmuBus_rsp_ways_3_sel = MmuPlugin_ports_1_cacheHits[3];
  assign DBusCachedPlugin_mmuBus_rsp_ways_3_physical = {{MmuPlugin_ports_1_cache_3_physicalAddress_1,(MmuPlugin_ports_1_cache_3_superPage ? DBusCachedPlugin_mmuBus_cmd_1_virtualAddress[21 : 12] : MmuPlugin_ports_1_cache_3_physicalAddress_0)},DBusCachedPlugin_mmuBus_cmd_1_virtualAddress[11 : 0]};
  assign MmuPlugin_shared_dBusRsp_pte_V = _zz_353[0];
  assign MmuPlugin_shared_dBusRsp_pte_R = _zz_354[0];
  assign MmuPlugin_shared_dBusRsp_pte_W = _zz_355[0];
  assign MmuPlugin_shared_dBusRsp_pte_X = _zz_356[0];
  assign MmuPlugin_shared_dBusRsp_pte_U = _zz_357[0];
  assign MmuPlugin_shared_dBusRsp_pte_G = _zz_358[0];
  assign MmuPlugin_shared_dBusRsp_pte_A = _zz_359[0];
  assign MmuPlugin_shared_dBusRsp_pte_D = _zz_360[0];
  assign MmuPlugin_shared_dBusRsp_pte_RSW = MmuPlugin_shared_dBusRspStaged_payload_data[9 : 8];
  assign MmuPlugin_shared_dBusRsp_pte_PPN0 = MmuPlugin_shared_dBusRspStaged_payload_data[19 : 10];
  assign MmuPlugin_shared_dBusRsp_pte_PPN1 = MmuPlugin_shared_dBusRspStaged_payload_data[31 : 20];
  assign MmuPlugin_shared_dBusRsp_exception = (((! MmuPlugin_shared_dBusRsp_pte_V) || ((! MmuPlugin_shared_dBusRsp_pte_R) && MmuPlugin_shared_dBusRsp_pte_W)) || MmuPlugin_shared_dBusRspStaged_payload_error);
  assign MmuPlugin_shared_dBusRsp_leaf = (MmuPlugin_shared_dBusRsp_pte_R || MmuPlugin_shared_dBusRsp_pte_X);
  always @ (*) begin
    MmuPlugin_dBusAccess_cmd_valid = 1'b0;
    case(MmuPlugin_shared_state_1)
      `MmuPlugin_shared_State_defaultEncoding_IDLE : begin
      end
      `MmuPlugin_shared_State_defaultEncoding_L1_CMD : begin
        MmuPlugin_dBusAccess_cmd_valid = 1'b1;
      end
      `MmuPlugin_shared_State_defaultEncoding_L1_RSP : begin
      end
      `MmuPlugin_shared_State_defaultEncoding_L0_CMD : begin
        MmuPlugin_dBusAccess_cmd_valid = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign MmuPlugin_dBusAccess_cmd_payload_write = 1'b0;
  assign MmuPlugin_dBusAccess_cmd_payload_size = 2'b10;
  always @ (*) begin
    MmuPlugin_dBusAccess_cmd_payload_address = 32'h0;
    case(MmuPlugin_shared_state_1)
      `MmuPlugin_shared_State_defaultEncoding_IDLE : begin
      end
      `MmuPlugin_shared_State_defaultEncoding_L1_CMD : begin
        MmuPlugin_dBusAccess_cmd_payload_address = {{MmuPlugin_satp_ppn,MmuPlugin_shared_vpn_1},2'b00};
      end
      `MmuPlugin_shared_State_defaultEncoding_L1_RSP : begin
      end
      `MmuPlugin_shared_State_defaultEncoding_L0_CMD : begin
        MmuPlugin_dBusAccess_cmd_payload_address = {{{MmuPlugin_shared_pteBuffer_PPN1[9 : 0],MmuPlugin_shared_pteBuffer_PPN0},MmuPlugin_shared_vpn_0},2'b00};
      end
      default : begin
      end
    endcase
  end

  assign MmuPlugin_dBusAccess_cmd_payload_data = 32'h0;
  assign MmuPlugin_dBusAccess_cmd_payload_writeMask = 4'bxxxx;
  always @ (*) begin
    _zz_62[0] = (IBusCachedPlugin_mmuBus_cmd_1_isValid && IBusCachedPlugin_mmuBus_rsp_refilling);
    _zz_62[1] = (DBusCachedPlugin_mmuBus_cmd_1_isValid && DBusCachedPlugin_mmuBus_rsp_refilling);
  end

  assign _zz_63 = _zz_62;
  always @ (*) begin
    _zz_64[0] = _zz_63[1];
    _zz_64[1] = _zz_63[0];
  end

  assign _zz_65 = (_zz_64 & (~ _zz_361));
  always @ (*) begin
    _zz_66[0] = _zz_65[1];
    _zz_66[1] = _zz_65[0];
  end

  assign MmuPlugin_shared_refills = _zz_66;
  assign _zz_67 = (MmuPlugin_shared_refills[0] ? IBusCachedPlugin_mmuBus_cmd_1_virtualAddress : DBusCachedPlugin_mmuBus_cmd_1_virtualAddress);
  assign IBusCachedPlugin_mmuBus_busy = ((MmuPlugin_shared_state_1 != `MmuPlugin_shared_State_defaultEncoding_IDLE) && MmuPlugin_shared_portSortedOh[0]);
  assign DBusCachedPlugin_mmuBus_busy = ((MmuPlugin_shared_state_1 != `MmuPlugin_shared_State_defaultEncoding_IDLE) && MmuPlugin_shared_portSortedOh[1]);
  assign IBusCachedPlugin_externalFlush = ({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,{execute_arbitration_flushNext,decode_arbitration_flushNext}}} != 4'b0000);
  assign IBusCachedPlugin_jump_pcLoad_valid = ({BranchPlugin_jumpInterface_valid,{CsrPlugin_redoInterface_valid,{CsrPlugin_jumpInterface_valid,{DBusCachedPlugin_redoBranch_valid,IBusCachedPlugin_predictionJumpInterface_valid}}}} != 5'h0);
  assign _zz_68 = {IBusCachedPlugin_predictionJumpInterface_valid,{CsrPlugin_redoInterface_valid,{BranchPlugin_jumpInterface_valid,{CsrPlugin_jumpInterface_valid,DBusCachedPlugin_redoBranch_valid}}}};
  assign _zz_69 = (_zz_68 & (~ _zz_362));
  assign _zz_70 = _zz_69[3];
  assign _zz_71 = _zz_69[4];
  assign _zz_72 = (_zz_69[1] || _zz_70);
  assign _zz_73 = (_zz_69[2] || _zz_70);
  assign IBusCachedPlugin_jump_pcLoad_payload = _zz_253;
  always @ (*) begin
    IBusCachedPlugin_fetchPc_correction = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_corrected = (IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_correctionReg);
  always @ (*) begin
    IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b0;
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready)begin
      IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_fetchPc_pc = (IBusCachedPlugin_fetchPc_pcReg + _zz_364);
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_fetchPc_redo_payload;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_jump_pcLoad_payload;
    end
    IBusCachedPlugin_fetchPc_pc[0] = 1'b0;
    IBusCachedPlugin_fetchPc_pc[1] = 1'b0;
  end

  always @ (*) begin
    IBusCachedPlugin_fetchPc_flushed = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_output_valid = ((! IBusCachedPlugin_fetcherHalt) && IBusCachedPlugin_fetchPc_booted);
  assign IBusCachedPlugin_fetchPc_output_payload = IBusCachedPlugin_fetchPc_pc;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_redoFetch = 1'b0;
    if(IBusCachedPlugin_rsp_redoFetch)begin
      IBusCachedPlugin_iBusRsp_redoFetch = 1'b1;
    end
  end

  assign IBusCachedPlugin_iBusRsp_stages_0_input_valid = IBusCachedPlugin_fetchPc_output_valid;
  assign IBusCachedPlugin_fetchPc_output_ready = IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  assign IBusCachedPlugin_iBusRsp_stages_0_input_payload = IBusCachedPlugin_fetchPc_output_payload;
  assign IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b0;
  assign _zz_74 = (! IBusCachedPlugin_iBusRsp_stages_0_halt);
  assign IBusCachedPlugin_iBusRsp_stages_0_input_ready = (IBusCachedPlugin_iBusRsp_stages_0_output_ready && _zz_74);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_valid = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && _zz_74);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_payload = IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b0;
    if(IBusCachedPlugin_cache_io_cpu_prefetch_haltIt)begin
      IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b1;
    end
    if(IBusCachedPlugin_mmuBus_busy)begin
      IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b1;
    end
  end

  assign _zz_75 = (! IBusCachedPlugin_iBusRsp_stages_1_halt);
  assign IBusCachedPlugin_iBusRsp_stages_1_input_ready = (IBusCachedPlugin_iBusRsp_stages_1_output_ready && _zz_75);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_valid = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && _zz_75);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_payload = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  assign IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b0;
  assign _zz_76 = (! IBusCachedPlugin_iBusRsp_stages_2_halt);
  assign IBusCachedPlugin_iBusRsp_stages_2_input_ready = (IBusCachedPlugin_iBusRsp_stages_2_output_ready && _zz_76);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_valid = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && _zz_76);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_3_halt = 1'b0;
    if((_zz_48 || IBusCachedPlugin_rsp_iBusRspOutputHalt))begin
      IBusCachedPlugin_iBusRsp_stages_3_halt = 1'b1;
    end
  end

  assign _zz_77 = (! IBusCachedPlugin_iBusRsp_stages_3_halt);
  assign IBusCachedPlugin_iBusRsp_stages_3_input_ready = (IBusCachedPlugin_iBusRsp_stages_3_output_ready && _zz_77);
  assign IBusCachedPlugin_iBusRsp_stages_3_output_valid = (IBusCachedPlugin_iBusRsp_stages_3_input_valid && _zz_77);
  assign IBusCachedPlugin_iBusRsp_stages_3_output_payload = IBusCachedPlugin_iBusRsp_stages_3_input_payload;
  assign IBusCachedPlugin_fetchPc_redo_valid = IBusCachedPlugin_iBusRsp_redoFetch;
  assign IBusCachedPlugin_fetchPc_redo_payload = IBusCachedPlugin_iBusRsp_stages_3_input_payload;
  assign IBusCachedPlugin_iBusRsp_flush = ((decode_arbitration_removeIt || (decode_arbitration_flushNext && (! decode_arbitration_isStuck))) || IBusCachedPlugin_iBusRsp_redoFetch);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_ready = _zz_78;
  assign _zz_78 = ((1'b0 && (! _zz_79)) || IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_79 = _zz_80;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_valid = _zz_79;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_payload = IBusCachedPlugin_fetchPc_pcReg;
  assign IBusCachedPlugin_iBusRsp_stages_1_output_ready = ((1'b0 && (! _zz_81)) || IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign _zz_81 = _zz_82;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_valid = _zz_81;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_payload = _zz_83;
  assign IBusCachedPlugin_iBusRsp_stages_2_output_ready = ((1'b0 && (! _zz_84)) || IBusCachedPlugin_iBusRsp_stages_3_input_ready);
  assign _zz_84 = _zz_85;
  assign IBusCachedPlugin_iBusRsp_stages_3_input_valid = _zz_84;
  assign IBusCachedPlugin_iBusRsp_stages_3_input_payload = _zz_86;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_readyForError = 1'b1;
    if((! IBusCachedPlugin_pcValids_0))begin
      IBusCachedPlugin_iBusRsp_readyForError = 1'b0;
    end
  end

  assign IBusCachedPlugin_pcValids_0 = IBusCachedPlugin_injector_nextPcCalc_valids_2;
  assign IBusCachedPlugin_pcValids_1 = IBusCachedPlugin_injector_nextPcCalc_valids_3;
  assign IBusCachedPlugin_pcValids_2 = IBusCachedPlugin_injector_nextPcCalc_valids_4;
  assign IBusCachedPlugin_pcValids_3 = IBusCachedPlugin_injector_nextPcCalc_valids_5;
  assign IBusCachedPlugin_iBusRsp_output_ready = (! decode_arbitration_isStuck);
  always @ (*) begin
    decode_arbitration_isValid = IBusCachedPlugin_iBusRsp_output_valid;
    case(_zz_172)
      3'b000 : begin
      end
      3'b001 : begin
      end
      3'b010 : begin
        decode_arbitration_isValid = 1'b1;
      end
      3'b011 : begin
        decode_arbitration_isValid = 1'b1;
      end
      3'b100 : begin
      end
      default : begin
      end
    endcase
  end

  assign _zz_87 = _zz_365[11];
  always @ (*) begin
    _zz_88[18] = _zz_87;
    _zz_88[17] = _zz_87;
    _zz_88[16] = _zz_87;
    _zz_88[15] = _zz_87;
    _zz_88[14] = _zz_87;
    _zz_88[13] = _zz_87;
    _zz_88[12] = _zz_87;
    _zz_88[11] = _zz_87;
    _zz_88[10] = _zz_87;
    _zz_88[9] = _zz_87;
    _zz_88[8] = _zz_87;
    _zz_88[7] = _zz_87;
    _zz_88[6] = _zz_87;
    _zz_88[5] = _zz_87;
    _zz_88[4] = _zz_87;
    _zz_88[3] = _zz_87;
    _zz_88[2] = _zz_87;
    _zz_88[1] = _zz_87;
    _zz_88[0] = _zz_87;
  end

  always @ (*) begin
    IBusCachedPlugin_decodePrediction_cmd_hadBranch = ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) || ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_B) && _zz_366[31]));
    if(_zz_93)begin
      IBusCachedPlugin_decodePrediction_cmd_hadBranch = 1'b0;
    end
  end

  assign _zz_89 = _zz_367[19];
  always @ (*) begin
    _zz_90[10] = _zz_89;
    _zz_90[9] = _zz_89;
    _zz_90[8] = _zz_89;
    _zz_90[7] = _zz_89;
    _zz_90[6] = _zz_89;
    _zz_90[5] = _zz_89;
    _zz_90[4] = _zz_89;
    _zz_90[3] = _zz_89;
    _zz_90[2] = _zz_89;
    _zz_90[1] = _zz_89;
    _zz_90[0] = _zz_89;
  end

  assign _zz_91 = _zz_368[11];
  always @ (*) begin
    _zz_92[18] = _zz_91;
    _zz_92[17] = _zz_91;
    _zz_92[16] = _zz_91;
    _zz_92[15] = _zz_91;
    _zz_92[14] = _zz_91;
    _zz_92[13] = _zz_91;
    _zz_92[12] = _zz_91;
    _zz_92[11] = _zz_91;
    _zz_92[10] = _zz_91;
    _zz_92[9] = _zz_91;
    _zz_92[8] = _zz_91;
    _zz_92[7] = _zz_91;
    _zz_92[6] = _zz_91;
    _zz_92[5] = _zz_91;
    _zz_92[4] = _zz_91;
    _zz_92[3] = _zz_91;
    _zz_92[2] = _zz_91;
    _zz_92[1] = _zz_91;
    _zz_92[0] = _zz_91;
  end

  always @ (*) begin
    case(decode_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_93 = _zz_369[1];
      end
      default : begin
        _zz_93 = _zz_370[1];
      end
    endcase
  end

  assign IBusCachedPlugin_predictionJumpInterface_valid = (decode_arbitration_isValid && IBusCachedPlugin_decodePrediction_cmd_hadBranch);
  assign _zz_94 = _zz_371[19];
  always @ (*) begin
    _zz_95[10] = _zz_94;
    _zz_95[9] = _zz_94;
    _zz_95[8] = _zz_94;
    _zz_95[7] = _zz_94;
    _zz_95[6] = _zz_94;
    _zz_95[5] = _zz_94;
    _zz_95[4] = _zz_94;
    _zz_95[3] = _zz_94;
    _zz_95[2] = _zz_94;
    _zz_95[1] = _zz_94;
    _zz_95[0] = _zz_94;
  end

  assign _zz_96 = _zz_372[11];
  always @ (*) begin
    _zz_97[18] = _zz_96;
    _zz_97[17] = _zz_96;
    _zz_97[16] = _zz_96;
    _zz_97[15] = _zz_96;
    _zz_97[14] = _zz_96;
    _zz_97[13] = _zz_96;
    _zz_97[12] = _zz_96;
    _zz_97[11] = _zz_96;
    _zz_97[10] = _zz_96;
    _zz_97[9] = _zz_96;
    _zz_97[8] = _zz_96;
    _zz_97[7] = _zz_96;
    _zz_97[6] = _zz_96;
    _zz_97[5] = _zz_96;
    _zz_97[4] = _zz_96;
    _zz_97[3] = _zz_96;
    _zz_97[2] = _zz_96;
    _zz_97[1] = _zz_96;
    _zz_97[0] = _zz_96;
  end

  assign IBusCachedPlugin_predictionJumpInterface_payload = (decode_PC + ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) ? {{_zz_95,{{{_zz_495,decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_97,{{{_zz_496,_zz_497},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0}));
  assign iBus_cmd_valid = IBusCachedPlugin_cache_io_mem_cmd_valid;
  always @ (*) begin
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  end

  assign iBus_cmd_payload_size = IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  assign IBusCachedPlugin_s0_tightlyCoupledHit = 1'b0;
  assign _zz_196 = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && (! IBusCachedPlugin_s0_tightlyCoupledHit));
  assign IBusCachedPlugin_mmuBus_cmd_0_isValid = _zz_196;
  assign IBusCachedPlugin_mmuBus_cmd_0_isStuck = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_0_virtualAddress = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  assign IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
  assign _zz_197 = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && (! IBusCachedPlugin_s1_tightlyCoupledHit));
  assign _zz_198 = (! IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_1_isValid = _zz_197;
  assign IBusCachedPlugin_mmuBus_cmd_1_isStuck = (! IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_1_virtualAddress = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_mmuBus_cmd_1_bypassTranslation = 1'b0;
  assign IBusCachedPlugin_mmuBus_end = (IBusCachedPlugin_iBusRsp_stages_2_input_ready || IBusCachedPlugin_externalFlush);
  assign _zz_200 = (IBusCachedPlugin_iBusRsp_stages_3_input_valid && (! IBusCachedPlugin_s2_tightlyCoupledHit));
  assign _zz_201 = (! IBusCachedPlugin_iBusRsp_stages_3_input_ready);
  assign _zz_202 = (CsrPlugin_privilege == 2'b00);
  assign IBusCachedPlugin_rsp_iBusRspOutputHalt = 1'b0;
  assign IBusCachedPlugin_rsp_issueDetected = 1'b0;
  always @ (*) begin
    IBusCachedPlugin_rsp_redoFetch = 1'b0;
    if(_zz_263)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
    if(_zz_261)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
  end

  always @ (*) begin
    _zz_203 = (IBusCachedPlugin_rsp_redoFetch && (! IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling));
    if(_zz_261)begin
      _zz_203 = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_valid = 1'b0;
    if(_zz_262)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
    if(_zz_260)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_payload_code = 4'bxxxx;
    if(_zz_262)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b1100;
    end
    if(_zz_260)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b0001;
    end
  end

  assign IBusCachedPlugin_decodeExceptionPort_payload_badAddr = {IBusCachedPlugin_iBusRsp_stages_3_input_payload[31 : 2],2'b00};
  assign IBusCachedPlugin_iBusRsp_output_valid = IBusCachedPlugin_iBusRsp_stages_3_output_valid;
  assign IBusCachedPlugin_iBusRsp_stages_3_output_ready = IBusCachedPlugin_iBusRsp_output_ready;
  assign IBusCachedPlugin_iBusRsp_output_payload_rsp_inst = IBusCachedPlugin_cache_io_cpu_decode_data;
  assign IBusCachedPlugin_iBusRsp_output_payload_pc = IBusCachedPlugin_iBusRsp_stages_3_output_payload;
  assign _zz_195 = (decode_arbitration_isValid && decode_FLUSH_ALL);
  assign dataCache_1_io_mem_cmd_s2mPipe_valid = (dataCache_1_io_mem_cmd_valid || dataCache_1_io_mem_cmd_s2mPipe_rValid);
  assign _zz_228 = (! dataCache_1_io_mem_cmd_s2mPipe_rValid);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_wr = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_wr : dataCache_1_io_mem_cmd_payload_wr);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_uncached = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_uncached : dataCache_1_io_mem_cmd_payload_uncached);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_address = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_address : dataCache_1_io_mem_cmd_payload_address);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_data = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_data : dataCache_1_io_mem_cmd_payload_data);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_mask = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_mask : dataCache_1_io_mem_cmd_payload_mask);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_length = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_length : dataCache_1_io_mem_cmd_payload_length);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_exclusive = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_exclusive : dataCache_1_io_mem_cmd_payload_exclusive);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_last = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_last : dataCache_1_io_mem_cmd_payload_last);
  assign dBus_cmd_valid = dataCache_1_io_mem_cmd_s2mPipe_valid;
  assign dataCache_1_io_mem_cmd_s2mPipe_ready = dBus_cmd_ready;
  assign dBus_cmd_payload_wr = dataCache_1_io_mem_cmd_s2mPipe_payload_wr;
  assign dBus_cmd_payload_uncached = dataCache_1_io_mem_cmd_s2mPipe_payload_uncached;
  assign dBus_cmd_payload_address = dataCache_1_io_mem_cmd_s2mPipe_payload_address;
  assign dBus_cmd_payload_data = dataCache_1_io_mem_cmd_s2mPipe_payload_data;
  assign dBus_cmd_payload_mask = dataCache_1_io_mem_cmd_s2mPipe_payload_mask;
  assign dBus_cmd_payload_length = dataCache_1_io_mem_cmd_s2mPipe_payload_length;
  assign dBus_cmd_payload_exclusive = dataCache_1_io_mem_cmd_s2mPipe_payload_exclusive;
  assign dBus_cmd_payload_last = dataCache_1_io_mem_cmd_s2mPipe_payload_last;
  assign dBus_inv_ready = dataCache_1_io_mem_inv_ready;
  assign dBus_ack_valid = dataCache_1_io_mem_ack_valid;
  assign dBus_ack_payload_hit = dataCache_1_io_mem_ack_payload_hit;
  assign dBus_sync_ready = dataCache_1_io_mem_sync_ready;
  always @ (*) begin
    _zz_47 = 1'b0;
    if(decode_INSTRUCTION[25])begin
      if(decode_MEMORY_LRSC)begin
        _zz_47 = 1'b1;
      end
      if(decode_MEMORY_AMO)begin
        _zz_47 = 1'b1;
      end
    end
  end

  assign execute_DBusCachedPlugin_size = execute_INSTRUCTION[13 : 12];
  always @ (*) begin
    _zz_204 = (execute_arbitration_isValid && execute_MEMORY_ENABLE);
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_275)begin
        if(_zz_276)begin
          _zz_204 = 1'b1;
        end
      end
    end
  end

  always @ (*) begin
    _zz_205 = execute_SRC_ADD;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_275)begin
        _zz_205 = MmuPlugin_dBusAccess_cmd_payload_address;
      end
    end
  end

  always @ (*) begin
    _zz_206 = execute_MEMORY_WR;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_275)begin
        _zz_206 = MmuPlugin_dBusAccess_cmd_payload_write;
      end
    end
  end

  always @ (*) begin
    case(execute_DBusCachedPlugin_size)
      2'b00 : begin
        _zz_100 = {{{execute_RS2[7 : 0],execute_RS2[7 : 0]},execute_RS2[7 : 0]},execute_RS2[7 : 0]};
      end
      2'b01 : begin
        _zz_100 = {execute_RS2[15 : 0],execute_RS2[15 : 0]};
      end
      default : begin
        _zz_100 = execute_RS2[31 : 0];
      end
    endcase
  end

  always @ (*) begin
    _zz_207 = _zz_100;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_275)begin
        _zz_207 = MmuPlugin_dBusAccess_cmd_payload_data;
      end
    end
  end

  always @ (*) begin
    _zz_208 = execute_DBusCachedPlugin_size;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_275)begin
        _zz_208 = MmuPlugin_dBusAccess_cmd_payload_size;
      end
    end
  end

  assign DBusCachedPlugin_mmuBus_cmd_0_isValid = _zz_204;
  assign DBusCachedPlugin_mmuBus_cmd_0_isStuck = execute_arbitration_isStuck;
  assign DBusCachedPlugin_mmuBus_cmd_0_virtualAddress = _zz_205;
  always @ (*) begin
    DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
    if(execute_IS_DBUS_SHARING)begin
      DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b1;
    end
  end

  assign _zz_227 = (execute_arbitration_isValid && execute_MEMORY_MANAGMENT);
  always @ (*) begin
    _zz_209 = 1'b0;
    if(execute_MEMORY_LRSC)begin
      _zz_209 = 1'b1;
    end
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_275)begin
        _zz_209 = 1'b0;
      end
    end
  end

  always @ (*) begin
    _zz_210 = execute_MEMORY_AMO;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_275)begin
        _zz_210 = 1'b0;
      end
    end
  end

  assign _zz_212 = execute_INSTRUCTION[31 : 29];
  assign _zz_211 = execute_INSTRUCTION[27];
  always @ (*) begin
    _zz_213 = (memory_arbitration_isValid && memory_MEMORY_ENABLE);
    if(memory_IS_DBUS_SHARING)begin
      _zz_213 = 1'b1;
    end
  end

  assign DBusCachedPlugin_mmuBus_cmd_1_isValid = _zz_213;
  assign DBusCachedPlugin_mmuBus_cmd_1_isStuck = memory_arbitration_isStuck;
  assign DBusCachedPlugin_mmuBus_cmd_1_virtualAddress = memory_MEMORY_VIRTUAL_ADDRESS;
  always @ (*) begin
    DBusCachedPlugin_mmuBus_cmd_1_bypassTranslation = 1'b0;
    if(memory_IS_DBUS_SHARING)begin
      DBusCachedPlugin_mmuBus_cmd_1_bypassTranslation = 1'b1;
    end
  end

  assign DBusCachedPlugin_mmuBus_end = ((! memory_arbitration_isStuck) || memory_arbitration_removeIt);
  always @ (*) begin
    _zz_214 = DBusCachedPlugin_mmuBus_rsp_isIoAccess;
    if((_zz_53 && (! dataCache_1_io_cpu_memory_isWrite)))begin
      _zz_214 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_215 = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
    if(writeBack_IS_DBUS_SHARING)begin
      _zz_215 = 1'b1;
    end
  end

  assign _zz_216 = (CsrPlugin_privilege == 2'b00);
  assign _zz_217 = writeBack_REGFILE_WRITE_DATA;
  assign _zz_101 = writeBack_INSTRUCTION[31 : 20];
  always @ (*) begin
    _zz_218 = _zz_373[0];
    if(_zz_102)begin
      _zz_218 = 1'b1;
    end
    if(_zz_277)begin
      _zz_218 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_219 = _zz_374[0];
    if(_zz_102)begin
      _zz_219 = 1'b1;
    end
    if(_zz_277)begin
      _zz_219 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_220 = _zz_375[0];
    if(_zz_102)begin
      _zz_220 = 1'b1;
    end
    if(_zz_277)begin
      _zz_220 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_221 = _zz_376[0];
    if(_zz_102)begin
      _zz_221 = 1'b1;
    end
    if(_zz_277)begin
      _zz_221 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_222 = _zz_377[0];
    if(_zz_102)begin
      _zz_222 = 1'b1;
    end
    if(_zz_277)begin
      _zz_222 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_223 = _zz_378[0];
    if(_zz_102)begin
      _zz_223 = 1'b1;
    end
    if(_zz_277)begin
      _zz_223 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_224 = _zz_379[0];
    if(_zz_102)begin
      _zz_224 = 1'b1;
    end
    if(_zz_277)begin
      _zz_224 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_225 = _zz_380[0];
    if(_zz_102)begin
      _zz_225 = 1'b1;
    end
    if(_zz_277)begin
      _zz_225 = 1'b0;
    end
  end

  assign _zz_226 = _zz_101[11 : 8];
  always @ (*) begin
    _zz_102 = 1'b0;
    if(writeBack_INSTRUCTION[26])begin
      if(writeBack_MEMORY_LRSC)begin
        _zz_102 = 1'b1;
      end
      if(writeBack_MEMORY_AMO)begin
        _zz_102 = 1'b1;
      end
    end
  end

  always @ (*) begin
    DBusCachedPlugin_redoBranch_valid = 1'b0;
    if(_zz_278)begin
      if(dataCache_1_io_cpu_redo)begin
        DBusCachedPlugin_redoBranch_valid = 1'b1;
      end
    end
  end

  assign DBusCachedPlugin_redoBranch_payload = writeBack_PC;
  always @ (*) begin
    DBusCachedPlugin_exceptionBus_valid = 1'b0;
    if(_zz_278)begin
      if(dataCache_1_io_cpu_writeBack_accessError)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_writeBack_unalignedAccess)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_writeBack_mmuException)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_redo)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b0;
      end
    end
  end

  assign DBusCachedPlugin_exceptionBus_payload_badAddr = writeBack_REGFILE_WRITE_DATA;
  always @ (*) begin
    DBusCachedPlugin_exceptionBus_payload_code = 4'bxxxx;
    if(_zz_278)begin
      if(dataCache_1_io_cpu_writeBack_accessError)begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_381};
      end
      if(dataCache_1_io_cpu_writeBack_unalignedAccess)begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_382};
      end
      if(dataCache_1_io_cpu_writeBack_mmuException)begin
        DBusCachedPlugin_exceptionBus_payload_code = (writeBack_MEMORY_WR ? 4'b1111 : 4'b1101);
      end
    end
  end

  always @ (*) begin
    writeBack_DBusCachedPlugin_rspShifted = dataCache_1_io_cpu_writeBack_data;
    case(writeBack_MEMORY_ADDRESS_LOW)
      2'b01 : begin
        writeBack_DBusCachedPlugin_rspShifted[7 : 0] = dataCache_1_io_cpu_writeBack_data[15 : 8];
      end
      2'b10 : begin
        writeBack_DBusCachedPlugin_rspShifted[15 : 0] = dataCache_1_io_cpu_writeBack_data[31 : 16];
      end
      2'b11 : begin
        writeBack_DBusCachedPlugin_rspShifted[7 : 0] = dataCache_1_io_cpu_writeBack_data[31 : 24];
      end
      default : begin
      end
    endcase
  end

  assign _zz_103 = (writeBack_DBusCachedPlugin_rspShifted[7] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_104[31] = _zz_103;
    _zz_104[30] = _zz_103;
    _zz_104[29] = _zz_103;
    _zz_104[28] = _zz_103;
    _zz_104[27] = _zz_103;
    _zz_104[26] = _zz_103;
    _zz_104[25] = _zz_103;
    _zz_104[24] = _zz_103;
    _zz_104[23] = _zz_103;
    _zz_104[22] = _zz_103;
    _zz_104[21] = _zz_103;
    _zz_104[20] = _zz_103;
    _zz_104[19] = _zz_103;
    _zz_104[18] = _zz_103;
    _zz_104[17] = _zz_103;
    _zz_104[16] = _zz_103;
    _zz_104[15] = _zz_103;
    _zz_104[14] = _zz_103;
    _zz_104[13] = _zz_103;
    _zz_104[12] = _zz_103;
    _zz_104[11] = _zz_103;
    _zz_104[10] = _zz_103;
    _zz_104[9] = _zz_103;
    _zz_104[8] = _zz_103;
    _zz_104[7 : 0] = writeBack_DBusCachedPlugin_rspShifted[7 : 0];
  end

  assign _zz_105 = (writeBack_DBusCachedPlugin_rspShifted[15] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_106[31] = _zz_105;
    _zz_106[30] = _zz_105;
    _zz_106[29] = _zz_105;
    _zz_106[28] = _zz_105;
    _zz_106[27] = _zz_105;
    _zz_106[26] = _zz_105;
    _zz_106[25] = _zz_105;
    _zz_106[24] = _zz_105;
    _zz_106[23] = _zz_105;
    _zz_106[22] = _zz_105;
    _zz_106[21] = _zz_105;
    _zz_106[20] = _zz_105;
    _zz_106[19] = _zz_105;
    _zz_106[18] = _zz_105;
    _zz_106[17] = _zz_105;
    _zz_106[16] = _zz_105;
    _zz_106[15 : 0] = writeBack_DBusCachedPlugin_rspShifted[15 : 0];
  end

  always @ (*) begin
    case(_zz_312)
      2'b00 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_104;
      end
      2'b01 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_106;
      end
      default : begin
        writeBack_DBusCachedPlugin_rspFormated = writeBack_DBusCachedPlugin_rspShifted;
      end
    endcase
  end

  always @ (*) begin
    MmuPlugin_dBusAccess_cmd_ready = 1'b0;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_275)begin
        if(_zz_276)begin
          MmuPlugin_dBusAccess_cmd_ready = (! execute_arbitration_isStuck);
        end
      end
    end
  end

  always @ (*) begin
    DBusCachedPlugin_forceDatapath = 1'b0;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_275)begin
        DBusCachedPlugin_forceDatapath = 1'b1;
      end
    end
  end

  assign MmuPlugin_dBusAccess_rsp_valid = ((writeBack_IS_DBUS_SHARING && (! dataCache_1_io_cpu_writeBack_isWrite)) && (dataCache_1_io_cpu_redo || (! dataCache_1_io_cpu_writeBack_haltIt)));
  assign MmuPlugin_dBusAccess_rsp_payload_data = dataCache_1_io_cpu_writeBack_data;
  assign MmuPlugin_dBusAccess_rsp_payload_error = (dataCache_1_io_cpu_writeBack_unalignedAccess || dataCache_1_io_cpu_writeBack_accessError);
  assign MmuPlugin_dBusAccess_rsp_payload_redo = dataCache_1_io_cpu_redo;
  assign _zz_108 = ((decode_INSTRUCTION & 32'h00004050) == 32'h00004050);
  assign _zz_109 = ((decode_INSTRUCTION & 32'h00000048) == 32'h00000048);
  assign _zz_110 = ((decode_INSTRUCTION & 32'h00002050) == 32'h00002000);
  assign _zz_111 = ((decode_INSTRUCTION & 32'h00000004) == 32'h00000004);
  assign _zz_112 = ((decode_INSTRUCTION & 32'h0000000c) == 32'h00000004);
  assign _zz_113 = ((decode_INSTRUCTION & 32'h00001000) == 32'h0);
  assign _zz_107 = {(((decode_INSTRUCTION & _zz_498) == 32'h00100050) != 1'b0),{({_zz_109,_zz_499} != 2'b00),{(_zz_500 != 1'b0),{(_zz_501 != _zz_502),{_zz_503,{_zz_504,_zz_505}}}}}};
  assign _zz_114 = _zz_107[3 : 2];
  assign _zz_45 = _zz_114;
  assign _zz_115 = _zz_107[8 : 7];
  assign _zz_44 = _zz_115;
  assign _zz_116 = _zz_107[10 : 9];
  assign _zz_43 = _zz_116;
  assign _zz_117 = _zz_107[24 : 23];
  assign _zz_42 = _zz_117;
  assign _zz_118 = _zz_107[26 : 25];
  assign _zz_41 = _zz_118;
  assign _zz_119 = _zz_107[33 : 32];
  assign _zz_40 = _zz_119;
  assign _zz_120 = _zz_107[35 : 34];
  assign _zz_39 = _zz_120;
  assign decodeExceptionPort_valid = (decode_arbitration_isValid && (! decode_LEGAL_INSTRUCTION));
  assign decodeExceptionPort_payload_code = 4'b0010;
  assign decodeExceptionPort_payload_badAddr = decode_INSTRUCTION;
  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION[19 : 15];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION[24 : 20];
  assign decode_RegFilePlugin_rs1Data = _zz_229;
  assign decode_RegFilePlugin_rs2Data = _zz_230;
  always @ (*) begin
    lastStageRegFileWrite_valid = (_zz_37 && writeBack_arbitration_isFiring);
    if((lastStageRegFileWrite_payload_address == 5'h0))begin
      lastStageRegFileWrite_valid = 1'b0;
    end
  end

  assign lastStageRegFileWrite_payload_address = _zz_36[11 : 7];
  assign lastStageRegFileWrite_payload_data = _zz_46;
  always @ (*) begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 & execute_SRC2);
      end
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 | execute_SRC2);
      end
      default : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 ^ execute_SRC2);
      end
    endcase
  end

  always @ (*) begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_BITWISE : begin
        _zz_121 = execute_IntAluPlugin_bitwise;
      end
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : begin
        _zz_121 = {31'd0, _zz_383};
      end
      default : begin
        _zz_121 = execute_SRC_ADD_SUB;
      end
    endcase
  end

  always @ (*) begin
    case(decode_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : begin
        _zz_122 = _zz_32;
      end
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : begin
        _zz_122 = {29'd0, _zz_384};
      end
      `Src1CtrlEnum_defaultEncoding_IMU : begin
        _zz_122 = {decode_INSTRUCTION[31 : 12],12'h0};
      end
      default : begin
        _zz_122 = {27'd0, _zz_385};
      end
    endcase
  end

  assign _zz_123 = _zz_386[11];
  always @ (*) begin
    _zz_124[19] = _zz_123;
    _zz_124[18] = _zz_123;
    _zz_124[17] = _zz_123;
    _zz_124[16] = _zz_123;
    _zz_124[15] = _zz_123;
    _zz_124[14] = _zz_123;
    _zz_124[13] = _zz_123;
    _zz_124[12] = _zz_123;
    _zz_124[11] = _zz_123;
    _zz_124[10] = _zz_123;
    _zz_124[9] = _zz_123;
    _zz_124[8] = _zz_123;
    _zz_124[7] = _zz_123;
    _zz_124[6] = _zz_123;
    _zz_124[5] = _zz_123;
    _zz_124[4] = _zz_123;
    _zz_124[3] = _zz_123;
    _zz_124[2] = _zz_123;
    _zz_124[1] = _zz_123;
    _zz_124[0] = _zz_123;
  end

  assign _zz_125 = _zz_387[11];
  always @ (*) begin
    _zz_126[19] = _zz_125;
    _zz_126[18] = _zz_125;
    _zz_126[17] = _zz_125;
    _zz_126[16] = _zz_125;
    _zz_126[15] = _zz_125;
    _zz_126[14] = _zz_125;
    _zz_126[13] = _zz_125;
    _zz_126[12] = _zz_125;
    _zz_126[11] = _zz_125;
    _zz_126[10] = _zz_125;
    _zz_126[9] = _zz_125;
    _zz_126[8] = _zz_125;
    _zz_126[7] = _zz_125;
    _zz_126[6] = _zz_125;
    _zz_126[5] = _zz_125;
    _zz_126[4] = _zz_125;
    _zz_126[3] = _zz_125;
    _zz_126[2] = _zz_125;
    _zz_126[1] = _zz_125;
    _zz_126[0] = _zz_125;
  end

  always @ (*) begin
    case(decode_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : begin
        _zz_127 = _zz_30;
      end
      `Src2CtrlEnum_defaultEncoding_IMI : begin
        _zz_127 = {_zz_124,decode_INSTRUCTION[31 : 20]};
      end
      `Src2CtrlEnum_defaultEncoding_IMS : begin
        _zz_127 = {_zz_126,{decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]}};
      end
      default : begin
        _zz_127 = _zz_29;
      end
    endcase
  end

  always @ (*) begin
    execute_SrcPlugin_addSub = _zz_388;
    if(execute_SRC2_FORCE_ZERO)begin
      execute_SrcPlugin_addSub = execute_SRC1;
    end
  end

  assign execute_SrcPlugin_less = ((execute_SRC1[31] == execute_SRC2[31]) ? execute_SrcPlugin_addSub[31] : (execute_SRC_LESS_UNSIGNED ? execute_SRC2[31] : execute_SRC1[31]));
  assign execute_FullBarrelShifterPlugin_amplitude = execute_SRC2[4 : 0];
  always @ (*) begin
    _zz_128[0] = execute_SRC1[31];
    _zz_128[1] = execute_SRC1[30];
    _zz_128[2] = execute_SRC1[29];
    _zz_128[3] = execute_SRC1[28];
    _zz_128[4] = execute_SRC1[27];
    _zz_128[5] = execute_SRC1[26];
    _zz_128[6] = execute_SRC1[25];
    _zz_128[7] = execute_SRC1[24];
    _zz_128[8] = execute_SRC1[23];
    _zz_128[9] = execute_SRC1[22];
    _zz_128[10] = execute_SRC1[21];
    _zz_128[11] = execute_SRC1[20];
    _zz_128[12] = execute_SRC1[19];
    _zz_128[13] = execute_SRC1[18];
    _zz_128[14] = execute_SRC1[17];
    _zz_128[15] = execute_SRC1[16];
    _zz_128[16] = execute_SRC1[15];
    _zz_128[17] = execute_SRC1[14];
    _zz_128[18] = execute_SRC1[13];
    _zz_128[19] = execute_SRC1[12];
    _zz_128[20] = execute_SRC1[11];
    _zz_128[21] = execute_SRC1[10];
    _zz_128[22] = execute_SRC1[9];
    _zz_128[23] = execute_SRC1[8];
    _zz_128[24] = execute_SRC1[7];
    _zz_128[25] = execute_SRC1[6];
    _zz_128[26] = execute_SRC1[5];
    _zz_128[27] = execute_SRC1[4];
    _zz_128[28] = execute_SRC1[3];
    _zz_128[29] = execute_SRC1[2];
    _zz_128[30] = execute_SRC1[1];
    _zz_128[31] = execute_SRC1[0];
  end

  assign execute_FullBarrelShifterPlugin_reversed = ((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SLL_1) ? _zz_128 : execute_SRC1);
  always @ (*) begin
    _zz_129[0] = memory_SHIFT_RIGHT[31];
    _zz_129[1] = memory_SHIFT_RIGHT[30];
    _zz_129[2] = memory_SHIFT_RIGHT[29];
    _zz_129[3] = memory_SHIFT_RIGHT[28];
    _zz_129[4] = memory_SHIFT_RIGHT[27];
    _zz_129[5] = memory_SHIFT_RIGHT[26];
    _zz_129[6] = memory_SHIFT_RIGHT[25];
    _zz_129[7] = memory_SHIFT_RIGHT[24];
    _zz_129[8] = memory_SHIFT_RIGHT[23];
    _zz_129[9] = memory_SHIFT_RIGHT[22];
    _zz_129[10] = memory_SHIFT_RIGHT[21];
    _zz_129[11] = memory_SHIFT_RIGHT[20];
    _zz_129[12] = memory_SHIFT_RIGHT[19];
    _zz_129[13] = memory_SHIFT_RIGHT[18];
    _zz_129[14] = memory_SHIFT_RIGHT[17];
    _zz_129[15] = memory_SHIFT_RIGHT[16];
    _zz_129[16] = memory_SHIFT_RIGHT[15];
    _zz_129[17] = memory_SHIFT_RIGHT[14];
    _zz_129[18] = memory_SHIFT_RIGHT[13];
    _zz_129[19] = memory_SHIFT_RIGHT[12];
    _zz_129[20] = memory_SHIFT_RIGHT[11];
    _zz_129[21] = memory_SHIFT_RIGHT[10];
    _zz_129[22] = memory_SHIFT_RIGHT[9];
    _zz_129[23] = memory_SHIFT_RIGHT[8];
    _zz_129[24] = memory_SHIFT_RIGHT[7];
    _zz_129[25] = memory_SHIFT_RIGHT[6];
    _zz_129[26] = memory_SHIFT_RIGHT[5];
    _zz_129[27] = memory_SHIFT_RIGHT[4];
    _zz_129[28] = memory_SHIFT_RIGHT[3];
    _zz_129[29] = memory_SHIFT_RIGHT[2];
    _zz_129[30] = memory_SHIFT_RIGHT[1];
    _zz_129[31] = memory_SHIFT_RIGHT[0];
  end

  always @ (*) begin
    _zz_130 = 1'b0;
    if(_zz_279)begin
      if(_zz_280)begin
        if(_zz_135)begin
          _zz_130 = 1'b1;
        end
      end
    end
    if(_zz_281)begin
      if(_zz_282)begin
        if(_zz_137)begin
          _zz_130 = 1'b1;
        end
      end
    end
    if(_zz_283)begin
      if(_zz_284)begin
        if(_zz_139)begin
          _zz_130 = 1'b1;
        end
      end
    end
    if((! decode_RS1_USE))begin
      _zz_130 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_131 = 1'b0;
    if(_zz_279)begin
      if(_zz_280)begin
        if(_zz_136)begin
          _zz_131 = 1'b1;
        end
      end
    end
    if(_zz_281)begin
      if(_zz_282)begin
        if(_zz_138)begin
          _zz_131 = 1'b1;
        end
      end
    end
    if(_zz_283)begin
      if(_zz_284)begin
        if(_zz_140)begin
          _zz_131 = 1'b1;
        end
      end
    end
    if((! decode_RS2_USE))begin
      _zz_131 = 1'b0;
    end
  end

  assign _zz_135 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_136 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_137 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_138 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_139 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_140 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign execute_MulPlugin_a = execute_RS1;
  assign execute_MulPlugin_b = execute_RS2;
  always @ (*) begin
    case(_zz_285)
      2'b01 : begin
        execute_MulPlugin_aSigned = 1'b1;
      end
      2'b10 : begin
        execute_MulPlugin_aSigned = 1'b1;
      end
      default : begin
        execute_MulPlugin_aSigned = 1'b0;
      end
    endcase
  end

  always @ (*) begin
    case(_zz_285)
      2'b01 : begin
        execute_MulPlugin_bSigned = 1'b1;
      end
      2'b10 : begin
        execute_MulPlugin_bSigned = 1'b0;
      end
      default : begin
        execute_MulPlugin_bSigned = 1'b0;
      end
    endcase
  end

  assign execute_MulPlugin_aULow = execute_MulPlugin_a[15 : 0];
  assign execute_MulPlugin_bULow = execute_MulPlugin_b[15 : 0];
  assign execute_MulPlugin_aSLow = {1'b0,execute_MulPlugin_a[15 : 0]};
  assign execute_MulPlugin_bSLow = {1'b0,execute_MulPlugin_b[15 : 0]};
  assign execute_MulPlugin_aHigh = {(execute_MulPlugin_aSigned && execute_MulPlugin_a[31]),execute_MulPlugin_a[31 : 16]};
  assign execute_MulPlugin_bHigh = {(execute_MulPlugin_bSigned && execute_MulPlugin_b[31]),execute_MulPlugin_b[31 : 16]};
  assign writeBack_MulPlugin_result = ($signed(_zz_395) + $signed(_zz_396));
  assign memory_MulDivIterativePlugin_frontendOk = 1'b1;
  always @ (*) begin
    memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b0;
    if(_zz_259)begin
      if(_zz_286)begin
        memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_MulDivIterativePlugin_div_counter_willClear = 1'b0;
    if(_zz_287)begin
      memory_MulDivIterativePlugin_div_counter_willClear = 1'b1;
    end
  end

  assign memory_MulDivIterativePlugin_div_counter_willOverflowIfInc = (memory_MulDivIterativePlugin_div_counter_value == 6'h21);
  assign memory_MulDivIterativePlugin_div_counter_willOverflow = (memory_MulDivIterativePlugin_div_counter_willOverflowIfInc && memory_MulDivIterativePlugin_div_counter_willIncrement);
  always @ (*) begin
    if(memory_MulDivIterativePlugin_div_counter_willOverflow)begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end else begin
      memory_MulDivIterativePlugin_div_counter_valueNext = (memory_MulDivIterativePlugin_div_counter_value + _zz_400);
    end
    if(memory_MulDivIterativePlugin_div_counter_willClear)begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end
  end

  assign _zz_141 = memory_MulDivIterativePlugin_rs1[31 : 0];
  assign memory_MulDivIterativePlugin_div_stage_0_remainderShifted = {memory_MulDivIterativePlugin_accumulator[31 : 0],_zz_141[31]};
  assign memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator = (memory_MulDivIterativePlugin_div_stage_0_remainderShifted - _zz_401);
  assign memory_MulDivIterativePlugin_div_stage_0_outRemainder = ((! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32]) ? _zz_402 : _zz_403);
  assign memory_MulDivIterativePlugin_div_stage_0_outNumerator = _zz_404[31:0];
  assign _zz_142 = (memory_INSTRUCTION[13] ? memory_MulDivIterativePlugin_accumulator[31 : 0] : memory_MulDivIterativePlugin_rs1[31 : 0]);
  assign _zz_143 = (execute_RS2[31] && execute_IS_RS2_SIGNED);
  assign _zz_144 = (1'b0 || ((execute_IS_DIV && execute_RS1[31]) && execute_IS_RS1_SIGNED));
  always @ (*) begin
    _zz_145[32] = (execute_IS_RS1_SIGNED && execute_RS1[31]);
    _zz_145[31 : 0] = execute_RS1;
  end

  always @ (*) begin
    CsrPlugin_privilege = _zz_146;
    if(CsrPlugin_forceMachineWire)begin
      CsrPlugin_privilege = 2'b11;
    end
  end

  assign CsrPlugin_misa_base = 2'b01;
  assign CsrPlugin_misa_extensions = 26'h0041101;
  assign CsrPlugin_sip_SEIP_OR = (CsrPlugin_sip_SEIP_SOFT || CsrPlugin_sip_SEIP_INPUT);
  always @ (*) begin
    CsrPlugin_redoInterface_valid = 1'b0;
    if(execute_CsrPlugin_csr_384)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_redoInterface_valid = 1'b1;
      end
    end
  end

  assign CsrPlugin_redoInterface_payload = decode_PC;
  assign _zz_147 = (CsrPlugin_sip_STIP && CsrPlugin_sie_STIE);
  assign _zz_148 = (CsrPlugin_sip_SSIP && CsrPlugin_sie_SSIE);
  assign _zz_149 = (CsrPlugin_sip_SEIP_OR && CsrPlugin_sie_SEIE);
  assign _zz_150 = (CsrPlugin_mip_MTIP && CsrPlugin_mie_MTIE);
  assign _zz_151 = (CsrPlugin_mip_MSIP && CsrPlugin_mie_MSIE);
  assign _zz_152 = (CsrPlugin_mip_MEIP && CsrPlugin_mie_MEIE);
  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b11;
    case(CsrPlugin_exceptionPortCtrl_exceptionContext_code)
      4'b0000 : begin
        if(((1'b1 && CsrPlugin_medeleg_IAM) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b0001 : begin
        if(((1'b1 && CsrPlugin_medeleg_IAF) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b0010 : begin
        if(((1'b1 && CsrPlugin_medeleg_II) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b0100 : begin
        if(((1'b1 && CsrPlugin_medeleg_LAM) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b0101 : begin
        if(((1'b1 && CsrPlugin_medeleg_LAF) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b0110 : begin
        if(((1'b1 && CsrPlugin_medeleg_SAM) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b0111 : begin
        if(((1'b1 && CsrPlugin_medeleg_SAF) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b1000 : begin
        if(((1'b1 && CsrPlugin_medeleg_EU) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b1001 : begin
        if(((1'b1 && CsrPlugin_medeleg_ES) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b1100 : begin
        if(((1'b1 && CsrPlugin_medeleg_IPF) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b1101 : begin
        if(((1'b1 && CsrPlugin_medeleg_LPF) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      4'b1111 : begin
        if(((1'b1 && CsrPlugin_medeleg_SPF) && (! 1'b0)))begin
          CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b01;
        end
      end
      default : begin
      end
    endcase
  end

  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege = ((CsrPlugin_privilege < CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped) ? CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped : CsrPlugin_privilege);
  assign _zz_153 = {decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid};
  assign _zz_154 = _zz_414[0];
  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_decode = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
    if(_zz_264)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_execute = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
    if(CsrPlugin_selfException_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_memory = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
    if(BranchPlugin_branchExceptionPort_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b1;
    end
    if(memory_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
    if(DBusCachedPlugin_exceptionBus_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b1;
    end
    if(writeBack_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b0;
    end
  end

  assign CsrPlugin_exceptionPendings_0 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  assign CsrPlugin_exceptionPendings_1 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  assign CsrPlugin_exceptionPendings_2 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  assign CsrPlugin_exceptionPendings_3 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  assign CsrPlugin_exception = (CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack && CsrPlugin_allowException);
  assign CsrPlugin_pipelineLiberator_active = ((CsrPlugin_interrupt_valid && CsrPlugin_allowInterrupts) && decode_arbitration_isValid);
  always @ (*) begin
    CsrPlugin_pipelineLiberator_done = CsrPlugin_pipelineLiberator_pcValids_2;
    if(({CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory,CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute}} != 3'b000))begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
    if(CsrPlugin_hadException)begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
  end

  assign CsrPlugin_interruptJump = ((CsrPlugin_interrupt_valid && CsrPlugin_pipelineLiberator_done) && CsrPlugin_allowInterrupts);
  always @ (*) begin
    CsrPlugin_targetPrivilege = CsrPlugin_interrupt_targetPrivilege;
    if(CsrPlugin_hadException)begin
      CsrPlugin_targetPrivilege = CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
    end
  end

  always @ (*) begin
    CsrPlugin_trapCause = CsrPlugin_interrupt_code;
    if(CsrPlugin_hadException)begin
      CsrPlugin_trapCause = CsrPlugin_exceptionPortCtrl_exceptionContext_code;
    end
  end

  always @ (*) begin
    CsrPlugin_xtvec_mode = 2'bxx;
    case(CsrPlugin_targetPrivilege)
      2'b01 : begin
        CsrPlugin_xtvec_mode = CsrPlugin_stvec_mode;
      end
      2'b11 : begin
        CsrPlugin_xtvec_mode = CsrPlugin_mtvec_mode;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    CsrPlugin_xtvec_base = 30'h0;
    case(CsrPlugin_targetPrivilege)
      2'b01 : begin
        CsrPlugin_xtvec_base = CsrPlugin_stvec_base;
      end
      2'b11 : begin
        CsrPlugin_xtvec_base = CsrPlugin_mtvec_base;
      end
      default : begin
      end
    endcase
  end

  assign contextSwitching = CsrPlugin_jumpInterface_valid;
  assign execute_CsrPlugin_blockedBySideEffects = ({writeBack_arbitration_isValid,memory_arbitration_isValid} != 2'b00);
  always @ (*) begin
    execute_CsrPlugin_illegalAccess = 1'b1;
    if(execute_CsrPlugin_csr_768)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_256)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_384)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_3857)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3858)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3859)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3860)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_769)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_836)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_772)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_773)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_833)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_832)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_834)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_835)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_770)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_771)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_3073)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3201)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_324)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_260)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_261)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_321)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_320)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_322)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_323)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if((CsrPlugin_privilege < execute_CsrPlugin_csrAddress[9 : 8]))begin
      execute_CsrPlugin_illegalAccess = 1'b1;
    end
    if(((! execute_arbitration_isValid) || (! execute_IS_CSR)))begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
  end

  always @ (*) begin
    execute_CsrPlugin_illegalInstruction = 1'b0;
    if((execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)))begin
      if((CsrPlugin_privilege < execute_INSTRUCTION[29 : 28]))begin
        execute_CsrPlugin_illegalInstruction = 1'b1;
      end
    end
  end

  always @ (*) begin
    CsrPlugin_selfException_valid = 1'b0;
    if(_zz_288)begin
      CsrPlugin_selfException_valid = 1'b1;
    end
    if(_zz_289)begin
      CsrPlugin_selfException_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_selfException_payload_code = 4'bxxxx;
    if(_zz_288)begin
      CsrPlugin_selfException_payload_code = 4'b0010;
    end
    if(_zz_289)begin
      case(CsrPlugin_privilege)
        2'b00 : begin
          CsrPlugin_selfException_payload_code = 4'b1000;
        end
        2'b01 : begin
          CsrPlugin_selfException_payload_code = 4'b1001;
        end
        default : begin
          CsrPlugin_selfException_payload_code = 4'b1011;
        end
      endcase
    end
  end

  assign CsrPlugin_selfException_payload_badAddr = execute_INSTRUCTION;
  assign execute_CsrPlugin_writeInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_WRITE_OPCODE);
  assign execute_CsrPlugin_readInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_READ_OPCODE);
  assign execute_CsrPlugin_writeEnable = ((execute_CsrPlugin_writeInstruction && (! execute_CsrPlugin_blockedBySideEffects)) && (! execute_arbitration_isStuckByOthers));
  assign execute_CsrPlugin_readEnable = ((execute_CsrPlugin_readInstruction && (! execute_CsrPlugin_blockedBySideEffects)) && (! execute_arbitration_isStuckByOthers));
  always @ (*) begin
    execute_CsrPlugin_readToWriteData = execute_CsrPlugin_readData;
    if(execute_CsrPlugin_csr_836)begin
      execute_CsrPlugin_readToWriteData[9 : 9] = CsrPlugin_sip_SEIP_SOFT;
    end
    if(execute_CsrPlugin_csr_324)begin
      execute_CsrPlugin_readToWriteData[9 : 9] = CsrPlugin_sip_SEIP_SOFT;
    end
  end

  always @ (*) begin
    case(_zz_314)
      1'b0 : begin
        execute_CsrPlugin_writeData = execute_SRC1;
      end
      default : begin
        execute_CsrPlugin_writeData = (execute_INSTRUCTION[12] ? (execute_CsrPlugin_readToWriteData & (~ execute_SRC1)) : (execute_CsrPlugin_readToWriteData | execute_SRC1));
      end
    endcase
  end

  assign execute_CsrPlugin_csrAddress = execute_INSTRUCTION[31 : 20];
  assign execute_BranchPlugin_eq = (execute_SRC1 == execute_SRC2);
  assign _zz_155 = execute_INSTRUCTION[14 : 12];
  always @ (*) begin
    if((_zz_155 == 3'b000)) begin
        _zz_156 = execute_BranchPlugin_eq;
    end else if((_zz_155 == 3'b001)) begin
        _zz_156 = (! execute_BranchPlugin_eq);
    end else if((((_zz_155 & 3'b101) == 3'b101))) begin
        _zz_156 = (! execute_SRC_LESS);
    end else begin
        _zz_156 = execute_SRC_LESS;
    end
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : begin
        _zz_157 = 1'b0;
      end
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_157 = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_157 = 1'b1;
      end
      default : begin
        _zz_157 = _zz_156;
      end
    endcase
  end

  assign _zz_158 = _zz_416[11];
  always @ (*) begin
    _zz_159[19] = _zz_158;
    _zz_159[18] = _zz_158;
    _zz_159[17] = _zz_158;
    _zz_159[16] = _zz_158;
    _zz_159[15] = _zz_158;
    _zz_159[14] = _zz_158;
    _zz_159[13] = _zz_158;
    _zz_159[12] = _zz_158;
    _zz_159[11] = _zz_158;
    _zz_159[10] = _zz_158;
    _zz_159[9] = _zz_158;
    _zz_159[8] = _zz_158;
    _zz_159[7] = _zz_158;
    _zz_159[6] = _zz_158;
    _zz_159[5] = _zz_158;
    _zz_159[4] = _zz_158;
    _zz_159[3] = _zz_158;
    _zz_159[2] = _zz_158;
    _zz_159[1] = _zz_158;
    _zz_159[0] = _zz_158;
  end

  assign _zz_160 = _zz_417[19];
  always @ (*) begin
    _zz_161[10] = _zz_160;
    _zz_161[9] = _zz_160;
    _zz_161[8] = _zz_160;
    _zz_161[7] = _zz_160;
    _zz_161[6] = _zz_160;
    _zz_161[5] = _zz_160;
    _zz_161[4] = _zz_160;
    _zz_161[3] = _zz_160;
    _zz_161[2] = _zz_160;
    _zz_161[1] = _zz_160;
    _zz_161[0] = _zz_160;
  end

  assign _zz_162 = _zz_418[11];
  always @ (*) begin
    _zz_163[18] = _zz_162;
    _zz_163[17] = _zz_162;
    _zz_163[16] = _zz_162;
    _zz_163[15] = _zz_162;
    _zz_163[14] = _zz_162;
    _zz_163[13] = _zz_162;
    _zz_163[12] = _zz_162;
    _zz_163[11] = _zz_162;
    _zz_163[10] = _zz_162;
    _zz_163[9] = _zz_162;
    _zz_163[8] = _zz_162;
    _zz_163[7] = _zz_162;
    _zz_163[6] = _zz_162;
    _zz_163[5] = _zz_162;
    _zz_163[4] = _zz_162;
    _zz_163[3] = _zz_162;
    _zz_163[2] = _zz_162;
    _zz_163[1] = _zz_162;
    _zz_163[0] = _zz_162;
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_164 = (_zz_419[1] ^ execute_RS1[1]);
      end
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_164 = _zz_420[1];
      end
      default : begin
        _zz_164 = _zz_421[1];
      end
    endcase
  end

  assign execute_BranchPlugin_missAlignedTarget = (execute_BRANCH_COND_RESULT && _zz_164);
  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        execute_BranchPlugin_branch_src1 = execute_RS1;
      end
      default : begin
        execute_BranchPlugin_branch_src1 = execute_PC;
      end
    endcase
  end

  assign _zz_165 = _zz_422[11];
  always @ (*) begin
    _zz_166[19] = _zz_165;
    _zz_166[18] = _zz_165;
    _zz_166[17] = _zz_165;
    _zz_166[16] = _zz_165;
    _zz_166[15] = _zz_165;
    _zz_166[14] = _zz_165;
    _zz_166[13] = _zz_165;
    _zz_166[12] = _zz_165;
    _zz_166[11] = _zz_165;
    _zz_166[10] = _zz_165;
    _zz_166[9] = _zz_165;
    _zz_166[8] = _zz_165;
    _zz_166[7] = _zz_165;
    _zz_166[6] = _zz_165;
    _zz_166[5] = _zz_165;
    _zz_166[4] = _zz_165;
    _zz_166[3] = _zz_165;
    _zz_166[2] = _zz_165;
    _zz_166[1] = _zz_165;
    _zz_166[0] = _zz_165;
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        execute_BranchPlugin_branch_src2 = {_zz_166,execute_INSTRUCTION[31 : 20]};
      end
      default : begin
        execute_BranchPlugin_branch_src2 = ((execute_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) ? {{_zz_168,{{{_zz_711,execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_170,{{{_zz_712,_zz_713},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0});
        if(execute_PREDICTION_HAD_BRANCHED2)begin
          execute_BranchPlugin_branch_src2 = {29'd0, _zz_425};
        end
      end
    endcase
  end

  assign _zz_167 = _zz_423[19];
  always @ (*) begin
    _zz_168[10] = _zz_167;
    _zz_168[9] = _zz_167;
    _zz_168[8] = _zz_167;
    _zz_168[7] = _zz_167;
    _zz_168[6] = _zz_167;
    _zz_168[5] = _zz_167;
    _zz_168[4] = _zz_167;
    _zz_168[3] = _zz_167;
    _zz_168[2] = _zz_167;
    _zz_168[1] = _zz_167;
    _zz_168[0] = _zz_167;
  end

  assign _zz_169 = _zz_424[11];
  always @ (*) begin
    _zz_170[18] = _zz_169;
    _zz_170[17] = _zz_169;
    _zz_170[16] = _zz_169;
    _zz_170[15] = _zz_169;
    _zz_170[14] = _zz_169;
    _zz_170[13] = _zz_169;
    _zz_170[12] = _zz_169;
    _zz_170[11] = _zz_169;
    _zz_170[10] = _zz_169;
    _zz_170[9] = _zz_169;
    _zz_170[8] = _zz_169;
    _zz_170[7] = _zz_169;
    _zz_170[6] = _zz_169;
    _zz_170[5] = _zz_169;
    _zz_170[4] = _zz_169;
    _zz_170[3] = _zz_169;
    _zz_170[2] = _zz_169;
    _zz_170[1] = _zz_169;
    _zz_170[0] = _zz_169;
  end

  assign execute_BranchPlugin_branchAdder = (execute_BranchPlugin_branch_src1 + execute_BranchPlugin_branch_src2);
  assign BranchPlugin_jumpInterface_valid = ((memory_arbitration_isValid && memory_BRANCH_DO) && (! 1'b0));
  assign BranchPlugin_jumpInterface_payload = memory_BRANCH_CALC;
  assign BranchPlugin_branchExceptionPort_valid = (memory_arbitration_isValid && (memory_BRANCH_DO && memory_BRANCH_CALC[1]));
  assign BranchPlugin_branchExceptionPort_payload_code = 4'b0000;
  assign BranchPlugin_branchExceptionPort_payload_badAddr = memory_BRANCH_CALC;
  assign IBusCachedPlugin_decodePrediction_rsp_wasWrong = BranchPlugin_jumpInterface_valid;
  always @ (*) begin
    debug_bus_cmd_ready = 1'b1;
    if(debug_bus_cmd_valid)begin
      case(_zz_290)
        6'h0 : begin
        end
        6'h01 : begin
          if(debug_bus_cmd_payload_wr)begin
            debug_bus_cmd_ready = IBusCachedPlugin_injectionPort_ready;
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (*) begin
    debug_bus_rsp_data = DebugPlugin_busReadDataReg;
    if((! _zz_171))begin
      debug_bus_rsp_data[0] = DebugPlugin_resetIt;
      debug_bus_rsp_data[1] = DebugPlugin_haltIt;
      debug_bus_rsp_data[2] = DebugPlugin_isPipBusy;
      debug_bus_rsp_data[3] = DebugPlugin_haltedByBreak;
      debug_bus_rsp_data[4] = DebugPlugin_stepIt;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_injectionPort_valid = 1'b0;
    if(debug_bus_cmd_valid)begin
      case(_zz_290)
        6'h0 : begin
        end
        6'h01 : begin
          if(debug_bus_cmd_payload_wr)begin
            IBusCachedPlugin_injectionPort_valid = 1'b1;
          end
        end
        default : begin
        end
      endcase
    end
  end

  assign IBusCachedPlugin_injectionPort_payload = debug_bus_cmd_payload_data;
  assign debug_resetOut = DebugPlugin_resetIt_regNext;
  assign _zz_33 = _zz_45;
  assign _zz_20 = decode_ALU_CTRL;
  assign _zz_18 = _zz_44;
  assign _zz_34 = decode_to_execute_ALU_CTRL;
  assign _zz_31 = _zz_43;
  assign _zz_17 = decode_ALU_BITWISE_CTRL;
  assign _zz_15 = _zz_42;
  assign _zz_35 = decode_to_execute_ALU_BITWISE_CTRL;
  assign _zz_14 = decode_SHIFT_CTRL;
  assign _zz_11 = execute_SHIFT_CTRL;
  assign _zz_12 = _zz_41;
  assign _zz_28 = decode_to_execute_SHIFT_CTRL;
  assign _zz_27 = execute_to_memory_SHIFT_CTRL;
  assign _zz_9 = decode_ENV_CTRL;
  assign _zz_6 = execute_ENV_CTRL;
  assign _zz_4 = memory_ENV_CTRL;
  assign _zz_7 = _zz_40;
  assign _zz_23 = decode_to_execute_ENV_CTRL;
  assign _zz_22 = execute_to_memory_ENV_CTRL;
  assign _zz_24 = memory_to_writeBack_ENV_CTRL;
  assign _zz_2 = decode_BRANCH_CTRL;
  assign _zz_49 = _zz_39;
  assign _zz_21 = decode_to_execute_BRANCH_CTRL;
  assign decode_arbitration_isFlushed = (({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,execute_arbitration_flushNext}} != 3'b000) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,{execute_arbitration_flushIt,decode_arbitration_flushIt}}} != 4'b0000));
  assign execute_arbitration_isFlushed = (({writeBack_arbitration_flushNext,memory_arbitration_flushNext} != 2'b00) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,execute_arbitration_flushIt}} != 3'b000));
  assign memory_arbitration_isFlushed = ((writeBack_arbitration_flushNext != 1'b0) || ({writeBack_arbitration_flushIt,memory_arbitration_flushIt} != 2'b00));
  assign writeBack_arbitration_isFlushed = (1'b0 || (writeBack_arbitration_flushIt != 1'b0));
  assign decode_arbitration_isStuckByOthers = (decode_arbitration_haltByOther || (((1'b0 || execute_arbitration_isStuck) || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign decode_arbitration_isStuck = (decode_arbitration_haltItself || decode_arbitration_isStuckByOthers);
  assign decode_arbitration_isMoving = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign decode_arbitration_isFiring = ((decode_arbitration_isValid && (! decode_arbitration_isStuck)) && (! decode_arbitration_removeIt));
  assign execute_arbitration_isStuckByOthers = (execute_arbitration_haltByOther || ((1'b0 || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign execute_arbitration_isStuck = (execute_arbitration_haltItself || execute_arbitration_isStuckByOthers);
  assign execute_arbitration_isMoving = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign execute_arbitration_isFiring = ((execute_arbitration_isValid && (! execute_arbitration_isStuck)) && (! execute_arbitration_removeIt));
  assign memory_arbitration_isStuckByOthers = (memory_arbitration_haltByOther || (1'b0 || writeBack_arbitration_isStuck));
  assign memory_arbitration_isStuck = (memory_arbitration_haltItself || memory_arbitration_isStuckByOthers);
  assign memory_arbitration_isMoving = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  assign memory_arbitration_isFiring = ((memory_arbitration_isValid && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  assign writeBack_arbitration_isStuckByOthers = (writeBack_arbitration_haltByOther || 1'b0);
  assign writeBack_arbitration_isStuck = (writeBack_arbitration_haltItself || writeBack_arbitration_isStuckByOthers);
  assign writeBack_arbitration_isMoving = ((! writeBack_arbitration_isStuck) && (! writeBack_arbitration_removeIt));
  assign writeBack_arbitration_isFiring = ((writeBack_arbitration_isValid && (! writeBack_arbitration_isStuck)) && (! writeBack_arbitration_removeIt));
  always @ (*) begin
    IBusCachedPlugin_injectionPort_ready = 1'b0;
    case(_zz_172)
      3'b000 : begin
      end
      3'b001 : begin
      end
      3'b010 : begin
      end
      3'b011 : begin
      end
      3'b100 : begin
        IBusCachedPlugin_injectionPort_ready = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_173 = 32'h0;
    if(execute_CsrPlugin_csr_768)begin
      _zz_173[19 : 19] = MmuPlugin_status_mxr;
      _zz_173[18 : 18] = MmuPlugin_status_sum;
      _zz_173[17 : 17] = MmuPlugin_status_mprv;
      _zz_173[12 : 11] = CsrPlugin_mstatus_MPP;
      _zz_173[7 : 7] = CsrPlugin_mstatus_MPIE;
      _zz_173[3 : 3] = CsrPlugin_mstatus_MIE;
      _zz_173[8 : 8] = CsrPlugin_sstatus_SPP;
      _zz_173[5 : 5] = CsrPlugin_sstatus_SPIE;
      _zz_173[1 : 1] = CsrPlugin_sstatus_SIE;
    end
  end

  always @ (*) begin
    _zz_174 = 32'h0;
    if(execute_CsrPlugin_csr_256)begin
      _zz_174[19 : 19] = MmuPlugin_status_mxr;
      _zz_174[18 : 18] = MmuPlugin_status_sum;
      _zz_174[17 : 17] = MmuPlugin_status_mprv;
      _zz_174[8 : 8] = CsrPlugin_sstatus_SPP;
      _zz_174[5 : 5] = CsrPlugin_sstatus_SPIE;
      _zz_174[1 : 1] = CsrPlugin_sstatus_SIE;
    end
  end

  always @ (*) begin
    _zz_175 = 32'h0;
    if(execute_CsrPlugin_csr_384)begin
      _zz_175[31 : 31] = MmuPlugin_satp_mode;
      _zz_175[19 : 0] = MmuPlugin_satp_ppn;
    end
  end

  always @ (*) begin
    _zz_176 = 32'h0;
    if(execute_CsrPlugin_csr_769)begin
      _zz_176[31 : 30] = CsrPlugin_misa_base;
      _zz_176[25 : 0] = CsrPlugin_misa_extensions;
    end
  end

  always @ (*) begin
    _zz_177 = 32'h0;
    if(execute_CsrPlugin_csr_836)begin
      _zz_177[11 : 11] = CsrPlugin_mip_MEIP;
      _zz_177[7 : 7] = CsrPlugin_mip_MTIP;
      _zz_177[3 : 3] = CsrPlugin_mip_MSIP;
      _zz_177[5 : 5] = CsrPlugin_sip_STIP;
      _zz_177[1 : 1] = CsrPlugin_sip_SSIP;
      _zz_177[9 : 9] = CsrPlugin_sip_SEIP_OR;
    end
  end

  always @ (*) begin
    _zz_178 = 32'h0;
    if(execute_CsrPlugin_csr_772)begin
      _zz_178[11 : 11] = CsrPlugin_mie_MEIE;
      _zz_178[7 : 7] = CsrPlugin_mie_MTIE;
      _zz_178[3 : 3] = CsrPlugin_mie_MSIE;
      _zz_178[9 : 9] = CsrPlugin_sie_SEIE;
      _zz_178[5 : 5] = CsrPlugin_sie_STIE;
      _zz_178[1 : 1] = CsrPlugin_sie_SSIE;
    end
  end

  always @ (*) begin
    _zz_179 = 32'h0;
    if(execute_CsrPlugin_csr_773)begin
      _zz_179[31 : 2] = CsrPlugin_mtvec_base;
      _zz_179[1 : 0] = CsrPlugin_mtvec_mode;
    end
  end

  always @ (*) begin
    _zz_180 = 32'h0;
    if(execute_CsrPlugin_csr_833)begin
      _zz_180[31 : 0] = CsrPlugin_mepc;
    end
  end

  always @ (*) begin
    _zz_181 = 32'h0;
    if(execute_CsrPlugin_csr_832)begin
      _zz_181[31 : 0] = CsrPlugin_mscratch;
    end
  end

  always @ (*) begin
    _zz_182 = 32'h0;
    if(execute_CsrPlugin_csr_834)begin
      _zz_182[31 : 31] = CsrPlugin_mcause_interrupt;
      _zz_182[3 : 0] = CsrPlugin_mcause_exceptionCode;
    end
  end

  always @ (*) begin
    _zz_183 = 32'h0;
    if(execute_CsrPlugin_csr_835)begin
      _zz_183[31 : 0] = CsrPlugin_mtval;
    end
  end

  always @ (*) begin
    _zz_184 = 32'h0;
    if(execute_CsrPlugin_csr_770)begin
      _zz_184[0 : 0] = CsrPlugin_medeleg_IAM;
      _zz_184[1 : 1] = CsrPlugin_medeleg_IAF;
      _zz_184[2 : 2] = CsrPlugin_medeleg_II;
      _zz_184[4 : 4] = CsrPlugin_medeleg_LAM;
      _zz_184[5 : 5] = CsrPlugin_medeleg_LAF;
      _zz_184[6 : 6] = CsrPlugin_medeleg_SAM;
      _zz_184[7 : 7] = CsrPlugin_medeleg_SAF;
      _zz_184[8 : 8] = CsrPlugin_medeleg_EU;
      _zz_184[9 : 9] = CsrPlugin_medeleg_ES;
      _zz_184[12 : 12] = CsrPlugin_medeleg_IPF;
      _zz_184[13 : 13] = CsrPlugin_medeleg_LPF;
      _zz_184[15 : 15] = CsrPlugin_medeleg_SPF;
    end
  end

  always @ (*) begin
    _zz_185 = 32'h0;
    if(execute_CsrPlugin_csr_771)begin
      _zz_185[9 : 9] = CsrPlugin_mideleg_SE;
      _zz_185[5 : 5] = CsrPlugin_mideleg_ST;
      _zz_185[1 : 1] = CsrPlugin_mideleg_SS;
    end
  end

  always @ (*) begin
    _zz_186 = 32'h0;
    if(execute_CsrPlugin_csr_3073)begin
      _zz_186[31 : 0] = utime[31 : 0];
    end
  end

  always @ (*) begin
    _zz_187 = 32'h0;
    if(execute_CsrPlugin_csr_3201)begin
      _zz_187[31 : 0] = utime[63 : 32];
    end
  end

  always @ (*) begin
    _zz_188 = 32'h0;
    if(execute_CsrPlugin_csr_324)begin
      _zz_188[5 : 5] = CsrPlugin_sip_STIP;
      _zz_188[1 : 1] = CsrPlugin_sip_SSIP;
      _zz_188[9 : 9] = CsrPlugin_sip_SEIP_OR;
    end
  end

  always @ (*) begin
    _zz_189 = 32'h0;
    if(execute_CsrPlugin_csr_260)begin
      _zz_189[9 : 9] = CsrPlugin_sie_SEIE;
      _zz_189[5 : 5] = CsrPlugin_sie_STIE;
      _zz_189[1 : 1] = CsrPlugin_sie_SSIE;
    end
  end

  always @ (*) begin
    _zz_190 = 32'h0;
    if(execute_CsrPlugin_csr_261)begin
      _zz_190[31 : 2] = CsrPlugin_stvec_base;
      _zz_190[1 : 0] = CsrPlugin_stvec_mode;
    end
  end

  always @ (*) begin
    _zz_191 = 32'h0;
    if(execute_CsrPlugin_csr_321)begin
      _zz_191[31 : 0] = CsrPlugin_sepc;
    end
  end

  always @ (*) begin
    _zz_192 = 32'h0;
    if(execute_CsrPlugin_csr_320)begin
      _zz_192[31 : 0] = CsrPlugin_sscratch;
    end
  end

  always @ (*) begin
    _zz_193 = 32'h0;
    if(execute_CsrPlugin_csr_322)begin
      _zz_193[31 : 31] = CsrPlugin_scause_interrupt;
      _zz_193[3 : 0] = CsrPlugin_scause_exceptionCode;
    end
  end

  always @ (*) begin
    _zz_194 = 32'h0;
    if(execute_CsrPlugin_csr_323)begin
      _zz_194[31 : 0] = CsrPlugin_stval;
    end
  end

  assign execute_CsrPlugin_readData = (((((_zz_173 | _zz_174) | (_zz_175 | _zz_714)) | ((_zz_715 | _zz_716) | (_zz_717 | _zz_176))) | (((_zz_177 | _zz_178) | (_zz_179 | _zz_180)) | ((_zz_181 | _zz_182) | (_zz_183 | _zz_184)))) | ((((_zz_185 | _zz_186) | (_zz_187 | _zz_188)) | ((_zz_189 | _zz_190) | (_zz_191 | _zz_192))) | (_zz_193 | _zz_194)));
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      MmuPlugin_status_sum <= 1'b0;
      MmuPlugin_status_mxr <= 1'b0;
      MmuPlugin_status_mprv <= 1'b0;
      MmuPlugin_satp_mode <= 1'b0;
      MmuPlugin_ports_0_cache_0_valid <= 1'b0;
      MmuPlugin_ports_0_cache_1_valid <= 1'b0;
      MmuPlugin_ports_0_cache_2_valid <= 1'b0;
      MmuPlugin_ports_0_cache_3_valid <= 1'b0;
      MmuPlugin_ports_0_entryToReplace_value <= 2'b00;
      MmuPlugin_ports_1_cache_0_valid <= 1'b0;
      MmuPlugin_ports_1_cache_1_valid <= 1'b0;
      MmuPlugin_ports_1_cache_2_valid <= 1'b0;
      MmuPlugin_ports_1_cache_3_valid <= 1'b0;
      MmuPlugin_ports_1_entryToReplace_value <= 2'b00;
      MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_IDLE;
      MmuPlugin_shared_dBusRspStaged_valid <= 1'b0;
      IBusCachedPlugin_fetchPc_pcReg <= 32'h0;
      IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      IBusCachedPlugin_fetchPc_booted <= 1'b0;
      IBusCachedPlugin_fetchPc_inc <= 1'b0;
      _zz_80 <= 1'b0;
      _zz_82 <= 1'b0;
      _zz_85 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_5 <= 1'b0;
      IBusCachedPlugin_rspCounter <= _zz_98;
      IBusCachedPlugin_rspCounter <= 32'h0;
      dataCache_1_io_mem_cmd_s2mPipe_rValid <= 1'b0;
      dBus_rsp_valid_regNext <= 1'b0;
      DBusCachedPlugin_rspCounter <= _zz_99;
      DBusCachedPlugin_rspCounter <= 32'h0;
      _zz_132 <= 1'b0;
      memory_MulDivIterativePlugin_div_counter_value <= 6'h0;
      _zz_146 <= 2'b11;
      CsrPlugin_mstatus_MIE <= 1'b0;
      CsrPlugin_mstatus_MPIE <= 1'b0;
      CsrPlugin_mstatus_MPP <= 2'b11;
      CsrPlugin_mie_MEIE <= 1'b0;
      CsrPlugin_mie_MTIE <= 1'b0;
      CsrPlugin_mie_MSIE <= 1'b0;
      CsrPlugin_medeleg_IAM <= 1'b0;
      CsrPlugin_medeleg_IAF <= 1'b0;
      CsrPlugin_medeleg_II <= 1'b0;
      CsrPlugin_medeleg_LAM <= 1'b0;
      CsrPlugin_medeleg_LAF <= 1'b0;
      CsrPlugin_medeleg_SAM <= 1'b0;
      CsrPlugin_medeleg_SAF <= 1'b0;
      CsrPlugin_medeleg_EU <= 1'b0;
      CsrPlugin_medeleg_ES <= 1'b0;
      CsrPlugin_medeleg_IPF <= 1'b0;
      CsrPlugin_medeleg_LPF <= 1'b0;
      CsrPlugin_medeleg_SPF <= 1'b0;
      CsrPlugin_mideleg_ST <= 1'b0;
      CsrPlugin_mideleg_SE <= 1'b0;
      CsrPlugin_mideleg_SS <= 1'b0;
      CsrPlugin_sstatus_SIE <= 1'b0;
      CsrPlugin_sstatus_SPIE <= 1'b0;
      CsrPlugin_sstatus_SPP <= 1'b1;
      CsrPlugin_sip_SEIP_SOFT <= 1'b0;
      CsrPlugin_sip_STIP <= 1'b0;
      CsrPlugin_sip_SSIP <= 1'b0;
      CsrPlugin_sie_SEIE <= 1'b0;
      CsrPlugin_sie_STIE <= 1'b0;
      CsrPlugin_sie_SSIE <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      CsrPlugin_interrupt_valid <= 1'b0;
      CsrPlugin_lastStageWasWfi <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      CsrPlugin_hadException <= 1'b0;
      execute_CsrPlugin_wfiWake <= 1'b0;
      execute_arbitration_isValid <= 1'b0;
      memory_arbitration_isValid <= 1'b0;
      writeBack_arbitration_isValid <= 1'b0;
      _zz_172 <= 3'b000;
      execute_to_memory_IS_DBUS_SHARING <= 1'b0;
      memory_to_writeBack_IS_DBUS_SHARING <= 1'b0;
    end else begin
      MmuPlugin_ports_0_entryToReplace_value <= MmuPlugin_ports_0_entryToReplace_valueNext;
      if(contextSwitching)begin
        if(MmuPlugin_ports_0_cache_0_exception)begin
          MmuPlugin_ports_0_cache_0_valid <= 1'b0;
        end
        if(MmuPlugin_ports_0_cache_1_exception)begin
          MmuPlugin_ports_0_cache_1_valid <= 1'b0;
        end
        if(MmuPlugin_ports_0_cache_2_exception)begin
          MmuPlugin_ports_0_cache_2_valid <= 1'b0;
        end
        if(MmuPlugin_ports_0_cache_3_exception)begin
          MmuPlugin_ports_0_cache_3_valid <= 1'b0;
        end
      end
      MmuPlugin_ports_1_entryToReplace_value <= MmuPlugin_ports_1_entryToReplace_valueNext;
      if(contextSwitching)begin
        if(MmuPlugin_ports_1_cache_0_exception)begin
          MmuPlugin_ports_1_cache_0_valid <= 1'b0;
        end
        if(MmuPlugin_ports_1_cache_1_exception)begin
          MmuPlugin_ports_1_cache_1_valid <= 1'b0;
        end
        if(MmuPlugin_ports_1_cache_2_exception)begin
          MmuPlugin_ports_1_cache_2_valid <= 1'b0;
        end
        if(MmuPlugin_ports_1_cache_3_exception)begin
          MmuPlugin_ports_1_cache_3_valid <= 1'b0;
        end
      end
      MmuPlugin_shared_dBusRspStaged_valid <= MmuPlugin_dBusAccess_rsp_valid;
      case(MmuPlugin_shared_state_1)
        `MmuPlugin_shared_State_defaultEncoding_IDLE : begin
          if(_zz_291)begin
            MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_L1_CMD;
          end
        end
        `MmuPlugin_shared_State_defaultEncoding_L1_CMD : begin
          if(MmuPlugin_dBusAccess_cmd_ready)begin
            MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_L1_RSP;
          end
        end
        `MmuPlugin_shared_State_defaultEncoding_L1_RSP : begin
          if(MmuPlugin_shared_dBusRspStaged_valid)begin
            MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_L0_CMD;
            if((MmuPlugin_shared_dBusRsp_leaf || MmuPlugin_shared_dBusRsp_exception))begin
              MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_IDLE;
            end
            if(MmuPlugin_shared_dBusRspStaged_payload_redo)begin
              MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_L1_CMD;
            end
          end
        end
        `MmuPlugin_shared_State_defaultEncoding_L0_CMD : begin
          if(MmuPlugin_dBusAccess_cmd_ready)begin
            MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_L0_RSP;
          end
        end
        default : begin
          if(MmuPlugin_shared_dBusRspStaged_valid)begin
            MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_IDLE;
            if(MmuPlugin_shared_dBusRspStaged_payload_redo)begin
              MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_L0_CMD;
            end
          end
        end
      endcase
      if(_zz_272)begin
        if(_zz_273)begin
          if(_zz_292)begin
            MmuPlugin_ports_0_cache_0_valid <= 1'b1;
          end
          if(_zz_293)begin
            MmuPlugin_ports_0_cache_1_valid <= 1'b1;
          end
          if(_zz_294)begin
            MmuPlugin_ports_0_cache_2_valid <= 1'b1;
          end
          if(_zz_295)begin
            MmuPlugin_ports_0_cache_3_valid <= 1'b1;
          end
        end
        if(_zz_274)begin
          if(_zz_296)begin
            MmuPlugin_ports_1_cache_0_valid <= 1'b1;
          end
          if(_zz_297)begin
            MmuPlugin_ports_1_cache_1_valid <= 1'b1;
          end
          if(_zz_298)begin
            MmuPlugin_ports_1_cache_2_valid <= 1'b1;
          end
          if(_zz_299)begin
            MmuPlugin_ports_1_cache_3_valid <= 1'b1;
          end
        end
      end
      if((writeBack_arbitration_isValid && writeBack_IS_SFENCE_VMA))begin
        MmuPlugin_ports_0_cache_0_valid <= 1'b0;
        MmuPlugin_ports_0_cache_1_valid <= 1'b0;
        MmuPlugin_ports_0_cache_2_valid <= 1'b0;
        MmuPlugin_ports_0_cache_3_valid <= 1'b0;
        MmuPlugin_ports_1_cache_0_valid <= 1'b0;
        MmuPlugin_ports_1_cache_1_valid <= 1'b0;
        MmuPlugin_ports_1_cache_2_valid <= 1'b0;
        MmuPlugin_ports_1_cache_3_valid <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_correction)begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b1;
      end
      if((IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      end
      IBusCachedPlugin_fetchPc_booted <= 1'b1;
      if((IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_pcRegPropagate))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b1;
      end
      if(((! IBusCachedPlugin_fetchPc_output_valid) && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusCachedPlugin_fetchPc_booted && ((IBusCachedPlugin_fetchPc_output_ready || IBusCachedPlugin_fetchPc_correction) || IBusCachedPlugin_fetchPc_pcRegPropagate)))begin
        IBusCachedPlugin_fetchPc_pcReg <= IBusCachedPlugin_fetchPc_pc;
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_80 <= 1'b0;
      end
      if(_zz_78)begin
        _zz_80 <= (IBusCachedPlugin_iBusRsp_stages_0_output_valid && (! 1'b0));
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_82 <= 1'b0;
      end
      if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
        _zz_82 <= (IBusCachedPlugin_iBusRsp_stages_1_output_valid && (! IBusCachedPlugin_iBusRsp_flush));
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_85 <= 1'b0;
      end
      if(IBusCachedPlugin_iBusRsp_stages_2_output_ready)begin
        _zz_85 <= (IBusCachedPlugin_iBusRsp_stages_2_output_valid && (! IBusCachedPlugin_iBusRsp_flush));
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_iBusRsp_stages_1_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b1;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_iBusRsp_stages_2_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= IBusCachedPlugin_injector_nextPcCalc_valids_0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_iBusRsp_stages_3_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= IBusCachedPlugin_injector_nextPcCalc_valids_1;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if((! execute_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= IBusCachedPlugin_injector_nextPcCalc_valids_2;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if((! memory_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= IBusCachedPlugin_injector_nextPcCalc_valids_3;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_5 <= 1'b0;
      end
      if((! writeBack_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_5 <= IBusCachedPlugin_injector_nextPcCalc_valids_4;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_5 <= 1'b0;
      end
      if(iBus_rsp_valid)begin
        IBusCachedPlugin_rspCounter <= (IBusCachedPlugin_rspCounter + 32'h00000001);
      end
      if(dataCache_1_io_mem_cmd_s2mPipe_ready)begin
        dataCache_1_io_mem_cmd_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_300)begin
        dataCache_1_io_mem_cmd_s2mPipe_rValid <= dataCache_1_io_mem_cmd_valid;
      end
      dBus_rsp_valid_regNext <= dBus_rsp_valid;
      if(dBus_rsp_valid)begin
        DBusCachedPlugin_rspCounter <= (DBusCachedPlugin_rspCounter + 32'h00000001);
      end
      _zz_132 <= (_zz_37 && writeBack_arbitration_isFiring);
      memory_MulDivIterativePlugin_div_counter_value <= memory_MulDivIterativePlugin_div_counter_valueNext;
      if((! decode_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
      end
      if((! execute_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= (CsrPlugin_exceptionPortCtrl_exceptionValids_decode && (! decode_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
      end
      if((! memory_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= (CsrPlugin_exceptionPortCtrl_exceptionValids_execute && (! execute_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
      end
      if((! writeBack_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= (CsrPlugin_exceptionPortCtrl_exceptionValids_memory && (! memory_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      end
      CsrPlugin_interrupt_valid <= 1'b0;
      if(_zz_301)begin
        if(_zz_302)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_303)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_304)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
      end
      if(_zz_305)begin
        if(_zz_306)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_307)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_308)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_309)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_310)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_311)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
      end
      CsrPlugin_lastStageWasWfi <= (writeBack_arbitration_isFiring && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_WFI));
      if(CsrPlugin_pipelineLiberator_active)begin
        if((! execute_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b1;
        end
        if((! memory_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_1 <= CsrPlugin_pipelineLiberator_pcValids_0;
        end
        if((! writeBack_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_2 <= CsrPlugin_pipelineLiberator_pcValids_1;
        end
      end
      if(((! CsrPlugin_pipelineLiberator_active) || decode_arbitration_removeIt))begin
        CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      end
      if(CsrPlugin_interruptJump)begin
        CsrPlugin_interrupt_valid <= 1'b0;
      end
      CsrPlugin_hadException <= CsrPlugin_exception;
      if(_zz_268)begin
        _zz_146 <= CsrPlugin_targetPrivilege;
        case(CsrPlugin_targetPrivilege)
          2'b01 : begin
            CsrPlugin_sstatus_SIE <= 1'b0;
            CsrPlugin_sstatus_SPIE <= CsrPlugin_sstatus_SIE;
            CsrPlugin_sstatus_SPP <= CsrPlugin_privilege[0 : 0];
          end
          2'b11 : begin
            CsrPlugin_mstatus_MIE <= 1'b0;
            CsrPlugin_mstatus_MPIE <= CsrPlugin_mstatus_MIE;
            CsrPlugin_mstatus_MPP <= CsrPlugin_privilege;
          end
          default : begin
          end
        endcase
      end
      if(_zz_269)begin
        case(_zz_271)
          2'b11 : begin
            CsrPlugin_mstatus_MPP <= 2'b00;
            CsrPlugin_mstatus_MIE <= CsrPlugin_mstatus_MPIE;
            CsrPlugin_mstatus_MPIE <= 1'b1;
            _zz_146 <= CsrPlugin_mstatus_MPP;
          end
          2'b01 : begin
            CsrPlugin_sstatus_SPP <= 1'b0;
            CsrPlugin_sstatus_SIE <= CsrPlugin_sstatus_SPIE;
            CsrPlugin_sstatus_SPIE <= 1'b1;
            _zz_146 <= {1'b0,CsrPlugin_sstatus_SPP};
          end
          default : begin
          end
        endcase
      end
      execute_CsrPlugin_wfiWake <= (({_zz_152,{_zz_151,{_zz_150,{_zz_149,{_zz_148,_zz_147}}}}} != 6'h0) || CsrPlugin_thirdPartyWake);
      if((! memory_arbitration_isStuck))begin
        execute_to_memory_IS_DBUS_SHARING <= execute_IS_DBUS_SHARING;
      end
      if((! writeBack_arbitration_isStuck))begin
        memory_to_writeBack_IS_DBUS_SHARING <= memory_IS_DBUS_SHARING;
      end
      if(((! execute_arbitration_isStuck) || execute_arbitration_removeIt))begin
        execute_arbitration_isValid <= 1'b0;
      end
      if(((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt)))begin
        execute_arbitration_isValid <= decode_arbitration_isValid;
      end
      if(((! memory_arbitration_isStuck) || memory_arbitration_removeIt))begin
        memory_arbitration_isValid <= 1'b0;
      end
      if(((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt)))begin
        memory_arbitration_isValid <= execute_arbitration_isValid;
      end
      if(((! writeBack_arbitration_isStuck) || writeBack_arbitration_removeIt))begin
        writeBack_arbitration_isValid <= 1'b0;
      end
      if(((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt)))begin
        writeBack_arbitration_isValid <= memory_arbitration_isValid;
      end
      case(_zz_172)
        3'b000 : begin
          if(IBusCachedPlugin_injectionPort_valid)begin
            _zz_172 <= 3'b001;
          end
        end
        3'b001 : begin
          _zz_172 <= 3'b010;
        end
        3'b010 : begin
          _zz_172 <= 3'b011;
        end
        3'b011 : begin
          if((! decode_arbitration_isStuck))begin
            _zz_172 <= 3'b100;
          end
        end
        3'b100 : begin
          _zz_172 <= 3'b000;
        end
        default : begin
        end
      endcase
      if(MmuPlugin_dBusAccess_rsp_valid)begin
        memory_to_writeBack_IS_DBUS_SHARING <= 1'b0;
      end
      if(execute_CsrPlugin_csr_768)begin
        if(execute_CsrPlugin_writeEnable)begin
          MmuPlugin_status_mxr <= _zz_426[0];
          MmuPlugin_status_sum <= _zz_427[0];
          MmuPlugin_status_mprv <= _zz_428[0];
          CsrPlugin_mstatus_MPP <= execute_CsrPlugin_writeData[12 : 11];
          CsrPlugin_mstatus_MPIE <= _zz_429[0];
          CsrPlugin_mstatus_MIE <= _zz_430[0];
          CsrPlugin_sstatus_SPP <= execute_CsrPlugin_writeData[8 : 8];
          CsrPlugin_sstatus_SPIE <= _zz_431[0];
          CsrPlugin_sstatus_SIE <= _zz_432[0];
        end
      end
      if(execute_CsrPlugin_csr_256)begin
        if(execute_CsrPlugin_writeEnable)begin
          MmuPlugin_status_mxr <= _zz_433[0];
          MmuPlugin_status_sum <= _zz_434[0];
          MmuPlugin_status_mprv <= _zz_435[0];
          CsrPlugin_sstatus_SPP <= execute_CsrPlugin_writeData[8 : 8];
          CsrPlugin_sstatus_SPIE <= _zz_436[0];
          CsrPlugin_sstatus_SIE <= _zz_437[0];
        end
      end
      if(execute_CsrPlugin_csr_384)begin
        if(execute_CsrPlugin_writeEnable)begin
          MmuPlugin_satp_mode <= _zz_438[0];
        end
      end
      if(execute_CsrPlugin_csr_836)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_sip_STIP <= _zz_440[0];
          CsrPlugin_sip_SSIP <= _zz_441[0];
          CsrPlugin_sip_SEIP_SOFT <= _zz_442[0];
        end
      end
      if(execute_CsrPlugin_csr_772)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mie_MEIE <= _zz_443[0];
          CsrPlugin_mie_MTIE <= _zz_444[0];
          CsrPlugin_mie_MSIE <= _zz_445[0];
          CsrPlugin_sie_SEIE <= _zz_446[0];
          CsrPlugin_sie_STIE <= _zz_447[0];
          CsrPlugin_sie_SSIE <= _zz_448[0];
        end
      end
      if(execute_CsrPlugin_csr_770)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_medeleg_IAM <= _zz_449[0];
          CsrPlugin_medeleg_IAF <= _zz_450[0];
          CsrPlugin_medeleg_II <= _zz_451[0];
          CsrPlugin_medeleg_LAM <= _zz_452[0];
          CsrPlugin_medeleg_LAF <= _zz_453[0];
          CsrPlugin_medeleg_SAM <= _zz_454[0];
          CsrPlugin_medeleg_SAF <= _zz_455[0];
          CsrPlugin_medeleg_EU <= _zz_456[0];
          CsrPlugin_medeleg_ES <= _zz_457[0];
          CsrPlugin_medeleg_IPF <= _zz_458[0];
          CsrPlugin_medeleg_LPF <= _zz_459[0];
          CsrPlugin_medeleg_SPF <= _zz_460[0];
        end
      end
      if(execute_CsrPlugin_csr_771)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mideleg_SE <= _zz_461[0];
          CsrPlugin_mideleg_ST <= _zz_462[0];
          CsrPlugin_mideleg_SS <= _zz_463[0];
        end
      end
      if(execute_CsrPlugin_csr_324)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_sip_STIP <= _zz_464[0];
          CsrPlugin_sip_SSIP <= _zz_465[0];
          CsrPlugin_sip_SEIP_SOFT <= _zz_466[0];
        end
      end
      if(execute_CsrPlugin_csr_260)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_sie_SEIE <= _zz_467[0];
          CsrPlugin_sie_STIE <= _zz_468[0];
          CsrPlugin_sie_SSIE <= _zz_469[0];
        end
      end
    end
  end

  always @ (posedge clk) begin
    if((! IBusCachedPlugin_mmuBus_cmd_1_isStuck))begin
      MmuPlugin_ports_0_requireMmuLockup <= MmuPlugin_ports_0_requireMmuLockupCalc;
    end
    if((! IBusCachedPlugin_mmuBus_cmd_1_isStuck))begin
      MmuPlugin_ports_0_cacheHits <= MmuPlugin_ports_0_cacheHitsCalc;
    end
    if((! DBusCachedPlugin_mmuBus_cmd_1_isStuck))begin
      MmuPlugin_ports_1_requireMmuLockup <= MmuPlugin_ports_1_requireMmuLockupCalc;
    end
    if((! DBusCachedPlugin_mmuBus_cmd_1_isStuck))begin
      MmuPlugin_ports_1_cacheHits <= MmuPlugin_ports_1_cacheHitsCalc;
    end
    MmuPlugin_shared_dBusRspStaged_payload_data <= MmuPlugin_dBusAccess_rsp_payload_data;
    MmuPlugin_shared_dBusRspStaged_payload_error <= MmuPlugin_dBusAccess_rsp_payload_error;
    MmuPlugin_shared_dBusRspStaged_payload_redo <= MmuPlugin_dBusAccess_rsp_payload_redo;
    if((MmuPlugin_shared_dBusRspStaged_valid && (! MmuPlugin_shared_dBusRspStaged_payload_redo)))begin
      MmuPlugin_shared_pteBuffer_V <= MmuPlugin_shared_dBusRsp_pte_V;
      MmuPlugin_shared_pteBuffer_R <= MmuPlugin_shared_dBusRsp_pte_R;
      MmuPlugin_shared_pteBuffer_W <= MmuPlugin_shared_dBusRsp_pte_W;
      MmuPlugin_shared_pteBuffer_X <= MmuPlugin_shared_dBusRsp_pte_X;
      MmuPlugin_shared_pteBuffer_U <= MmuPlugin_shared_dBusRsp_pte_U;
      MmuPlugin_shared_pteBuffer_G <= MmuPlugin_shared_dBusRsp_pte_G;
      MmuPlugin_shared_pteBuffer_A <= MmuPlugin_shared_dBusRsp_pte_A;
      MmuPlugin_shared_pteBuffer_D <= MmuPlugin_shared_dBusRsp_pte_D;
      MmuPlugin_shared_pteBuffer_RSW <= MmuPlugin_shared_dBusRsp_pte_RSW;
      MmuPlugin_shared_pteBuffer_PPN0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
      MmuPlugin_shared_pteBuffer_PPN1 <= MmuPlugin_shared_dBusRsp_pte_PPN1;
    end
    case(MmuPlugin_shared_state_1)
      `MmuPlugin_shared_State_defaultEncoding_IDLE : begin
        if(_zz_291)begin
          MmuPlugin_shared_portSortedOh <= MmuPlugin_shared_refills;
          MmuPlugin_shared_vpn_1 <= _zz_67[31 : 22];
          MmuPlugin_shared_vpn_0 <= _zz_67[21 : 12];
        end
      end
      `MmuPlugin_shared_State_defaultEncoding_L1_CMD : begin
      end
      `MmuPlugin_shared_State_defaultEncoding_L1_RSP : begin
      end
      `MmuPlugin_shared_State_defaultEncoding_L0_CMD : begin
      end
      default : begin
      end
    endcase
    if(_zz_272)begin
      if(_zz_273)begin
        if(_zz_292)begin
          MmuPlugin_ports_0_cache_0_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_0_cache_0_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_0_cache_0_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_0_cache_0_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_0_cache_0_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_0_cache_0_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_0_cache_0_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_0_cache_0_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_0_cache_0_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_0_cache_0_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
        if(_zz_293)begin
          MmuPlugin_ports_0_cache_1_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_0_cache_1_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_0_cache_1_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_0_cache_1_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_0_cache_1_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_0_cache_1_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_0_cache_1_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_0_cache_1_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_0_cache_1_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_0_cache_1_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
        if(_zz_294)begin
          MmuPlugin_ports_0_cache_2_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_0_cache_2_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_0_cache_2_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_0_cache_2_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_0_cache_2_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_0_cache_2_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_0_cache_2_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_0_cache_2_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_0_cache_2_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_0_cache_2_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
        if(_zz_295)begin
          MmuPlugin_ports_0_cache_3_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_0_cache_3_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_0_cache_3_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_0_cache_3_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_0_cache_3_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_0_cache_3_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_0_cache_3_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_0_cache_3_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_0_cache_3_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_0_cache_3_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
      end
      if(_zz_274)begin
        if(_zz_296)begin
          MmuPlugin_ports_1_cache_0_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_1_cache_0_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_1_cache_0_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_1_cache_0_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_1_cache_0_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_1_cache_0_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_1_cache_0_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_1_cache_0_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_1_cache_0_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_1_cache_0_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
        if(_zz_297)begin
          MmuPlugin_ports_1_cache_1_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_1_cache_1_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_1_cache_1_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_1_cache_1_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_1_cache_1_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_1_cache_1_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_1_cache_1_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_1_cache_1_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_1_cache_1_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_1_cache_1_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
        if(_zz_298)begin
          MmuPlugin_ports_1_cache_2_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_1_cache_2_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_1_cache_2_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_1_cache_2_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_1_cache_2_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_1_cache_2_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_1_cache_2_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_1_cache_2_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_1_cache_2_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_1_cache_2_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
        if(_zz_299)begin
          MmuPlugin_ports_1_cache_3_exception <= (MmuPlugin_shared_dBusRsp_exception || ((MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP) && (MmuPlugin_shared_dBusRsp_pte_PPN0 != 10'h0)));
          MmuPlugin_ports_1_cache_3_virtualAddress_0 <= MmuPlugin_shared_vpn_0;
          MmuPlugin_ports_1_cache_3_virtualAddress_1 <= MmuPlugin_shared_vpn_1;
          MmuPlugin_ports_1_cache_3_physicalAddress_0 <= MmuPlugin_shared_dBusRsp_pte_PPN0;
          MmuPlugin_ports_1_cache_3_physicalAddress_1 <= MmuPlugin_shared_dBusRsp_pte_PPN1[9 : 0];
          MmuPlugin_ports_1_cache_3_allowRead <= MmuPlugin_shared_dBusRsp_pte_R;
          MmuPlugin_ports_1_cache_3_allowWrite <= MmuPlugin_shared_dBusRsp_pte_W;
          MmuPlugin_ports_1_cache_3_allowExecute <= MmuPlugin_shared_dBusRsp_pte_X;
          MmuPlugin_ports_1_cache_3_allowUser <= MmuPlugin_shared_dBusRsp_pte_U;
          MmuPlugin_ports_1_cache_3_superPage <= (MmuPlugin_shared_state_1 == `MmuPlugin_shared_State_defaultEncoding_L1_RSP);
        end
      end
    end
    if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
      _zz_83 <= IBusCachedPlugin_iBusRsp_stages_1_output_payload;
    end
    if(IBusCachedPlugin_iBusRsp_stages_2_output_ready)begin
      _zz_86 <= IBusCachedPlugin_iBusRsp_stages_2_output_payload;
    end
    if(IBusCachedPlugin_iBusRsp_stages_2_input_ready)begin
      IBusCachedPlugin_s1_tightlyCoupledHit <= IBusCachedPlugin_s0_tightlyCoupledHit;
    end
    if(IBusCachedPlugin_iBusRsp_stages_3_input_ready)begin
      IBusCachedPlugin_s2_tightlyCoupledHit <= IBusCachedPlugin_s1_tightlyCoupledHit;
    end
    if(_zz_300)begin
      dataCache_1_io_mem_cmd_s2mPipe_rData_wr <= dataCache_1_io_mem_cmd_payload_wr;
      dataCache_1_io_mem_cmd_s2mPipe_rData_uncached <= dataCache_1_io_mem_cmd_payload_uncached;
      dataCache_1_io_mem_cmd_s2mPipe_rData_address <= dataCache_1_io_mem_cmd_payload_address;
      dataCache_1_io_mem_cmd_s2mPipe_rData_data <= dataCache_1_io_mem_cmd_payload_data;
      dataCache_1_io_mem_cmd_s2mPipe_rData_mask <= dataCache_1_io_mem_cmd_payload_mask;
      dataCache_1_io_mem_cmd_s2mPipe_rData_length <= dataCache_1_io_mem_cmd_payload_length;
      dataCache_1_io_mem_cmd_s2mPipe_rData_exclusive <= dataCache_1_io_mem_cmd_payload_exclusive;
      dataCache_1_io_mem_cmd_s2mPipe_rData_last <= dataCache_1_io_mem_cmd_payload_last;
    end
    dBus_rsp_payload_exclusive_regNext <= dBus_rsp_payload_exclusive;
    dBus_rsp_payload_error_regNext <= dBus_rsp_payload_error;
    dBus_rsp_payload_last_regNext <= dBus_rsp_payload_last;
    dBus_rsp_payload_aggregated_regNext <= dBus_rsp_payload_aggregated;
    if((dBus_rsp_valid && (! dataCache_1_io_cpu_writeBack_keepMemRspData)))begin
      dBus_rsp_payload_data_regNextWhen <= dBus_rsp_payload_data;
    end
    _zz_133 <= _zz_36[11 : 7];
    _zz_134 <= _zz_46;
    if((memory_MulDivIterativePlugin_div_counter_value == 6'h20))begin
      memory_MulDivIterativePlugin_div_done <= 1'b1;
    end
    if((! memory_arbitration_isStuck))begin
      memory_MulDivIterativePlugin_div_done <= 1'b0;
    end
    if(_zz_259)begin
      if(_zz_286)begin
        memory_MulDivIterativePlugin_rs1[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outNumerator;
        memory_MulDivIterativePlugin_accumulator[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outRemainder;
        if((memory_MulDivIterativePlugin_div_counter_value == 6'h20))begin
          memory_MulDivIterativePlugin_div_result <= _zz_405[31:0];
        end
      end
    end
    if(_zz_287)begin
      memory_MulDivIterativePlugin_accumulator <= 65'h0;
      memory_MulDivIterativePlugin_rs1 <= ((_zz_144 ? (~ _zz_145) : _zz_145) + _zz_411);
      memory_MulDivIterativePlugin_rs2 <= ((_zz_143 ? (~ execute_RS2) : execute_RS2) + _zz_413);
      memory_MulDivIterativePlugin_div_needRevert <= ((_zz_144 ^ (_zz_143 && (! execute_INSTRUCTION[13]))) && (! (((execute_RS2 == 32'h0) && execute_IS_RS2_SIGNED) && (! execute_INSTRUCTION[13]))));
    end
    CsrPlugin_mip_MEIP <= externalInterrupt;
    CsrPlugin_mip_MTIP <= timerInterrupt;
    CsrPlugin_mip_MSIP <= softwareInterrupt;
    CsrPlugin_sip_SEIP_INPUT <= externalInterruptS;
    CsrPlugin_mcycle <= (CsrPlugin_mcycle + 64'h0000000000000001);
    if(writeBack_arbitration_isFiring)begin
      CsrPlugin_minstret <= (CsrPlugin_minstret + 64'h0000000000000001);
    end
    if(_zz_264)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_154 ? IBusCachedPlugin_decodeExceptionPort_payload_code : decodeExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_154 ? IBusCachedPlugin_decodeExceptionPort_payload_badAddr : decodeExceptionPort_payload_badAddr);
    end
    if(CsrPlugin_selfException_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= CsrPlugin_selfException_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= CsrPlugin_selfException_payload_badAddr;
    end
    if(BranchPlugin_branchExceptionPort_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= BranchPlugin_branchExceptionPort_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= BranchPlugin_branchExceptionPort_payload_badAddr;
    end
    if(DBusCachedPlugin_exceptionBus_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= DBusCachedPlugin_exceptionBus_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= DBusCachedPlugin_exceptionBus_payload_badAddr;
    end
    if(_zz_301)begin
      if(_zz_302)begin
        CsrPlugin_interrupt_code <= 4'b0101;
        CsrPlugin_interrupt_targetPrivilege <= 2'b01;
      end
      if(_zz_303)begin
        CsrPlugin_interrupt_code <= 4'b0001;
        CsrPlugin_interrupt_targetPrivilege <= 2'b01;
      end
      if(_zz_304)begin
        CsrPlugin_interrupt_code <= 4'b1001;
        CsrPlugin_interrupt_targetPrivilege <= 2'b01;
      end
    end
    if(_zz_305)begin
      if(_zz_306)begin
        CsrPlugin_interrupt_code <= 4'b0101;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_307)begin
        CsrPlugin_interrupt_code <= 4'b0001;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_308)begin
        CsrPlugin_interrupt_code <= 4'b1001;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_309)begin
        CsrPlugin_interrupt_code <= 4'b0111;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_310)begin
        CsrPlugin_interrupt_code <= 4'b0011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_311)begin
        CsrPlugin_interrupt_code <= 4'b1011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
    end
    if(_zz_268)begin
      case(CsrPlugin_targetPrivilege)
        2'b01 : begin
          CsrPlugin_scause_interrupt <= (! CsrPlugin_hadException);
          CsrPlugin_scause_exceptionCode <= CsrPlugin_trapCause;
          CsrPlugin_sepc <= writeBack_PC;
          if(CsrPlugin_hadException)begin
            CsrPlugin_stval <= CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
          end
        end
        2'b11 : begin
          CsrPlugin_mcause_interrupt <= (! CsrPlugin_hadException);
          CsrPlugin_mcause_exceptionCode <= CsrPlugin_trapCause;
          CsrPlugin_mepc <= writeBack_PC;
          if(CsrPlugin_hadException)begin
            CsrPlugin_mtval <= CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
          end
        end
        default : begin
        end
      endcase
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PC <= _zz_29;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_PC <= execute_PC;
    end
    if(((! writeBack_arbitration_isStuck) && (! CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack)))begin
      memory_to_writeBack_PC <= memory_PC;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_INSTRUCTION <= decode_INSTRUCTION;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_INSTRUCTION <= execute_INSTRUCTION;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_INSTRUCTION <= memory_INSTRUCTION;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_FORMAL_PC_NEXT <= _zz_52;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_FORMAL_PC_NEXT <= _zz_51;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_FORMAL_PC_NEXT <= _zz_50;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_FORCE_CONSTISTENCY <= decode_MEMORY_FORCE_CONSTISTENCY;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_SFENCE_VMA <= decode_IS_SFENCE_VMA;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_SFENCE_VMA <= execute_IS_SFENCE_VMA;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_IS_SFENCE_VMA <= memory_IS_SFENCE_VMA;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_USE_SUB_LESS <= decode_SRC_USE_SUB_LESS;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_ENABLE <= decode_MEMORY_ENABLE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_ENABLE <= execute_MEMORY_ENABLE;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_ENABLE <= memory_MEMORY_ENABLE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_CTRL <= _zz_19;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_REGFILE_WRITE_VALID <= decode_REGFILE_WRITE_VALID;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_VALID <= execute_REGFILE_WRITE_VALID;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_REGFILE_WRITE_VALID <= memory_REGFILE_WRITE_VALID;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BYPASSABLE_EXECUTE_STAGE <= decode_BYPASSABLE_EXECUTE_STAGE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BYPASSABLE_MEMORY_STAGE <= decode_BYPASSABLE_MEMORY_STAGE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BYPASSABLE_MEMORY_STAGE <= execute_BYPASSABLE_MEMORY_STAGE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_WR <= decode_MEMORY_WR;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_WR <= execute_MEMORY_WR;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_WR <= memory_MEMORY_WR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_LRSC <= decode_MEMORY_LRSC;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_LRSC <= execute_MEMORY_LRSC;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_LRSC <= memory_MEMORY_LRSC;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_AMO <= decode_MEMORY_AMO;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_AMO <= execute_MEMORY_AMO;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_AMO <= memory_MEMORY_AMO;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_MANAGMENT <= decode_MEMORY_MANAGMENT;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_FENCE <= decode_MEMORY_FENCE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_FENCE <= execute_MEMORY_FENCE;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_FENCE <= memory_MEMORY_FENCE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_LESS_UNSIGNED <= decode_SRC_LESS_UNSIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_BITWISE_CTRL <= _zz_16;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SHIFT_CTRL <= _zz_13;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_SHIFT_CTRL <= _zz_10;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_MUL <= decode_IS_MUL;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_MUL <= execute_IS_MUL;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_IS_MUL <= memory_IS_MUL;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_DIV <= decode_IS_DIV;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_DIV <= execute_IS_DIV;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_RS1_SIGNED <= decode_IS_RS1_SIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_RS2_SIGNED <= decode_IS_RS2_SIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_CSR <= decode_IS_CSR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ENV_CTRL <= _zz_8;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_ENV_CTRL <= _zz_5;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_ENV_CTRL <= _zz_3;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BRANCH_CTRL <= _zz_1;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS1 <= _zz_32;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS2 <= _zz_30;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC2_FORCE_ZERO <= decode_SRC2_FORCE_ZERO;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC1 <= decode_SRC1;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC2 <= decode_SRC2;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CSR_WRITE_OPCODE <= decode_CSR_WRITE_OPCODE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CSR_READ_OPCODE <= decode_CSR_READ_OPCODE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PREDICTION_HAD_BRANCHED2 <= decode_PREDICTION_HAD_BRANCHED2;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DO_EBREAK <= decode_DO_EBREAK;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_ADDRESS_LOW <= execute_MEMORY_ADDRESS_LOW;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_ADDRESS_LOW <= memory_MEMORY_ADDRESS_LOW;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_VIRTUAL_ADDRESS <= execute_MEMORY_VIRTUAL_ADDRESS;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_DATA <= _zz_25;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_REGFILE_WRITE_DATA <= _zz_26;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_SHIFT_RIGHT <= execute_SHIFT_RIGHT;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_LL <= execute_MUL_LL;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_LH <= execute_MUL_LH;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_HL <= execute_MUL_HL;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_HH <= execute_MUL_HH;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MUL_HH <= memory_MUL_HH;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BRANCH_DO <= execute_BRANCH_DO;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BRANCH_CALC <= execute_BRANCH_CALC;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MUL_LOW <= memory_MUL_LOW;
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_768 <= (decode_INSTRUCTION[31 : 20] == 12'h300);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_256 <= (decode_INSTRUCTION[31 : 20] == 12'h100);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_384 <= (decode_INSTRUCTION[31 : 20] == 12'h180);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3857 <= (decode_INSTRUCTION[31 : 20] == 12'hf11);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3858 <= (decode_INSTRUCTION[31 : 20] == 12'hf12);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3859 <= (decode_INSTRUCTION[31 : 20] == 12'hf13);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3860 <= (decode_INSTRUCTION[31 : 20] == 12'hf14);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_769 <= (decode_INSTRUCTION[31 : 20] == 12'h301);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_836 <= (decode_INSTRUCTION[31 : 20] == 12'h344);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_772 <= (decode_INSTRUCTION[31 : 20] == 12'h304);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_773 <= (decode_INSTRUCTION[31 : 20] == 12'h305);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_833 <= (decode_INSTRUCTION[31 : 20] == 12'h341);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_832 <= (decode_INSTRUCTION[31 : 20] == 12'h340);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_834 <= (decode_INSTRUCTION[31 : 20] == 12'h342);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_835 <= (decode_INSTRUCTION[31 : 20] == 12'h343);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_770 <= (decode_INSTRUCTION[31 : 20] == 12'h302);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_771 <= (decode_INSTRUCTION[31 : 20] == 12'h303);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3073 <= (decode_INSTRUCTION[31 : 20] == 12'hc01);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3201 <= (decode_INSTRUCTION[31 : 20] == 12'hc81);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_324 <= (decode_INSTRUCTION[31 : 20] == 12'h144);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_260 <= (decode_INSTRUCTION[31 : 20] == 12'h104);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_261 <= (decode_INSTRUCTION[31 : 20] == 12'h105);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_321 <= (decode_INSTRUCTION[31 : 20] == 12'h141);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_320 <= (decode_INSTRUCTION[31 : 20] == 12'h140);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_322 <= (decode_INSTRUCTION[31 : 20] == 12'h142);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_323 <= (decode_INSTRUCTION[31 : 20] == 12'h143);
    end
    if(execute_CsrPlugin_csr_384)begin
      if(execute_CsrPlugin_writeEnable)begin
        MmuPlugin_satp_ppn <= execute_CsrPlugin_writeData[19 : 0];
      end
    end
    if(execute_CsrPlugin_csr_836)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mip_MSIP <= _zz_439[0];
      end
    end
    if(execute_CsrPlugin_csr_773)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mtvec_base <= execute_CsrPlugin_writeData[31 : 2];
        CsrPlugin_mtvec_mode <= execute_CsrPlugin_writeData[1 : 0];
      end
    end
    if(execute_CsrPlugin_csr_833)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mepc <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_832)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mscratch <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_261)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_stvec_base <= execute_CsrPlugin_writeData[31 : 2];
        CsrPlugin_stvec_mode <= execute_CsrPlugin_writeData[1 : 0];
      end
    end
    if(execute_CsrPlugin_csr_321)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_sepc <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_320)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_sscratch <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_322)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_scause_interrupt <= _zz_470[0];
        CsrPlugin_scause_exceptionCode <= execute_CsrPlugin_writeData[3 : 0];
      end
    end
    if(execute_CsrPlugin_csr_323)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_stval <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
  end

  always @ (posedge clk) begin
    DebugPlugin_firstCycle <= 1'b0;
    if(debug_bus_cmd_ready)begin
      DebugPlugin_firstCycle <= 1'b1;
    end
    DebugPlugin_secondCycle <= DebugPlugin_firstCycle;
    DebugPlugin_isPipBusy <= (({writeBack_arbitration_isValid,{memory_arbitration_isValid,{execute_arbitration_isValid,decode_arbitration_isValid}}} != 4'b0000) || IBusCachedPlugin_incomingInstruction);
    if(writeBack_arbitration_isValid)begin
      DebugPlugin_busReadDataReg <= _zz_46;
    end
    _zz_171 <= debug_bus_cmd_payload_address[2];
    if(_zz_266)begin
      DebugPlugin_busReadDataReg <= execute_PC;
    end
    DebugPlugin_resetIt_regNext <= DebugPlugin_resetIt;
  end

  always @ (posedge clk or posedge debugResetIn) begin
    if (debugResetIn) begin
      DebugPlugin_resetIt <= 1'b0;
      DebugPlugin_haltIt <= 1'b0;
      DebugPlugin_stepIt <= 1'b0;
      DebugPlugin_godmode <= 1'b0;
      DebugPlugin_haltedByBreak <= 1'b0;
    end else begin
      if((DebugPlugin_haltIt && (! DebugPlugin_isPipBusy)))begin
        DebugPlugin_godmode <= 1'b1;
      end
      if(debug_bus_cmd_valid)begin
        case(_zz_290)
          6'h0 : begin
            if(debug_bus_cmd_payload_wr)begin
              DebugPlugin_stepIt <= debug_bus_cmd_payload_data[4];
              if(debug_bus_cmd_payload_data[16])begin
                DebugPlugin_resetIt <= 1'b1;
              end
              if(debug_bus_cmd_payload_data[24])begin
                DebugPlugin_resetIt <= 1'b0;
              end
              if(debug_bus_cmd_payload_data[17])begin
                DebugPlugin_haltIt <= 1'b1;
              end
              if(debug_bus_cmd_payload_data[25])begin
                DebugPlugin_haltIt <= 1'b0;
              end
              if(debug_bus_cmd_payload_data[25])begin
                DebugPlugin_haltedByBreak <= 1'b0;
              end
              if(debug_bus_cmd_payload_data[25])begin
                DebugPlugin_godmode <= 1'b0;
              end
            end
          end
          6'h01 : begin
          end
          default : begin
          end
        endcase
      end
      if(_zz_266)begin
        if(_zz_267)begin
          DebugPlugin_haltIt <= 1'b1;
          DebugPlugin_haltedByBreak <= 1'b1;
        end
      end
      if(_zz_270)begin
        if(decode_arbitration_isValid)begin
          DebugPlugin_haltIt <= 1'b1;
        end
      end
    end
  end


endmodule

module BufferCC (
  input               io_dataIn,
  output              io_dataOut,
  input               clk,
  input               debugResetIn
);
  reg                 buffers_0;
  reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge clk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module StreamFifo (
  input               io_push_valid,
  output              io_push_ready,
  output              io_pop_valid,
  input               io_pop_ready,
  input               io_flush,
  output     [4:0]    io_occupancy,
  output     [4:0]    io_availability,
  input               clk,
  input               reset
);
  wire       [0:0]    _zz_2;
  wire       [3:0]    _zz_3;
  wire       [0:0]    _zz_4;
  wire       [3:0]    _zz_5;
  wire       [3:0]    _zz_6;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [3:0]    logic_pushPtr_valueNext;
  reg        [3:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [3:0]    logic_popPtr_valueNext;
  reg        [3:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_1;
  wire       [3:0]    logic_ptrDif;

  assign _zz_2 = logic_pushPtr_willIncrement;
  assign _zz_3 = {3'd0, _zz_2};
  assign _zz_4 = logic_popPtr_willIncrement;
  assign _zz_5 = {3'd0, _zz_4};
  assign _zz_6 = (logic_popPtr_value - logic_pushPtr_value);
  always @ (*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing)begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_pushPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 4'b1111);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @ (*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_3);
    if(logic_pushPtr_willClear)begin
      logic_pushPtr_valueNext = 4'b0000;
    end
  end

  always @ (*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping)begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_popPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 4'b1111);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @ (*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_5);
    if(logic_popPtr_willClear)begin
      logic_popPtr_valueNext = 4'b0000;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_1 && (! logic_full))));
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_6};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      logic_pushPtr_value <= 4'b0000;
      logic_popPtr_value <= 4'b0000;
      logic_risingOccupancy <= 1'b0;
      _zz_1 <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_1 <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if((logic_pushing != logic_popping))begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(io_flush)begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamFork (
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_last,
  input      [0:0]    io_input_payload_fragment_opcode,
  input      [63:0]   io_input_payload_fragment_data,
  input      [42:0]   io_input_payload_fragment_context,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output              io_outputs_0_payload_last,
  output     [0:0]    io_outputs_0_payload_fragment_opcode,
  output     [63:0]   io_outputs_0_payload_fragment_data,
  output     [42:0]   io_outputs_0_payload_fragment_context,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output              io_outputs_1_payload_last,
  output     [0:0]    io_outputs_1_payload_fragment_opcode,
  output     [63:0]   io_outputs_1_payload_fragment_data,
  output     [42:0]   io_outputs_1_payload_fragment_context,
  output              io_outputs_2_valid,
  input               io_outputs_2_ready,
  output              io_outputs_2_payload_last,
  output     [0:0]    io_outputs_2_payload_fragment_opcode,
  output     [63:0]   io_outputs_2_payload_fragment_data,
  output     [42:0]   io_outputs_2_payload_fragment_context,
  input               clk,
  input               reset
);
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 _zz_3;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_2_ready) && _zz_3))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1);
  assign io_outputs_0_payload_last = io_input_payload_last;
  assign io_outputs_0_payload_fragment_opcode = io_input_payload_fragment_opcode;
  assign io_outputs_0_payload_fragment_data = io_input_payload_fragment_data;
  assign io_outputs_0_payload_fragment_context = io_input_payload_fragment_context;
  assign io_outputs_1_valid = (io_input_valid && _zz_2);
  assign io_outputs_1_payload_last = io_input_payload_last;
  assign io_outputs_1_payload_fragment_opcode = io_input_payload_fragment_opcode;
  assign io_outputs_1_payload_fragment_data = io_input_payload_fragment_data;
  assign io_outputs_1_payload_fragment_context = io_input_payload_fragment_context;
  assign io_outputs_2_valid = (io_input_valid && _zz_3);
  assign io_outputs_2_payload_last = io_input_payload_last;
  assign io_outputs_2_payload_fragment_opcode = io_input_payload_fragment_opcode;
  assign io_outputs_2_payload_fragment_data = io_input_payload_fragment_data;
  assign io_outputs_2_payload_fragment_context = io_input_payload_fragment_context;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_1 <= 1'b1;
      _zz_2 <= 1'b1;
      _zz_3 <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1 <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2 <= 1'b0;
      end
      if((io_outputs_2_valid && io_outputs_2_ready))begin
        _zz_3 <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1 <= 1'b1;
        _zz_2 <= 1'b1;
        _zz_3 <= 1'b1;
      end
    end
  end


endmodule

module StreamArbiter_1 (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input               io_inputs_0_payload_last,
  input      [0:0]    io_inputs_0_payload_fragment_opcode,
  input               io_inputs_0_payload_fragment_exclusive,
  input      [31:0]   io_inputs_0_payload_fragment_address,
  input      [5:0]    io_inputs_0_payload_fragment_length,
  input      [2:0]    io_inputs_0_payload_fragment_context,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input               io_inputs_1_payload_last,
  input      [0:0]    io_inputs_1_payload_fragment_opcode,
  input               io_inputs_1_payload_fragment_exclusive,
  input      [31:0]   io_inputs_1_payload_fragment_address,
  input      [5:0]    io_inputs_1_payload_fragment_length,
  input      [2:0]    io_inputs_1_payload_fragment_context,
  output              io_output_valid,
  input               io_output_ready,
  output              io_output_payload_last,
  output     [0:0]    io_output_payload_fragment_opcode,
  output              io_output_payload_fragment_exclusive,
  output     [31:0]   io_output_payload_fragment_address,
  output     [5:0]    io_output_payload_fragment_length,
  output     [2:0]    io_output_payload_fragment_context,
  output     [0:0]    io_chosen,
  output     [1:0]    io_chosenOH,
  input               clk,
  input               reset
);
  wire       [1:0]    _zz_3;
  wire       [1:0]    _zz_4;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire       [1:0]    _zz_1;
  wire                _zz_2;

  assign _zz_3 = (_zz_1 & (~ _zz_4));
  assign _zz_4 = (_zz_1 - 2'b01);
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign _zz_1 = {io_inputs_1_valid,io_inputs_0_valid};
  assign maskProposal_0 = io_inputs_0_valid;
  assign maskProposal_1 = _zz_3[1];
  assign io_output_valid = ((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1));
  assign io_output_payload_last = (maskRouted_0 ? io_inputs_0_payload_last : io_inputs_1_payload_last);
  assign io_output_payload_fragment_opcode = (maskRouted_0 ? io_inputs_0_payload_fragment_opcode : io_inputs_1_payload_fragment_opcode);
  assign io_output_payload_fragment_exclusive = (maskRouted_0 ? io_inputs_0_payload_fragment_exclusive : io_inputs_1_payload_fragment_exclusive);
  assign io_output_payload_fragment_address = (maskRouted_0 ? io_inputs_0_payload_fragment_address : io_inputs_1_payload_fragment_address);
  assign io_output_payload_fragment_length = (maskRouted_0 ? io_inputs_0_payload_fragment_length : io_inputs_1_payload_fragment_length);
  assign io_output_payload_fragment_context = (maskRouted_0 ? io_inputs_0_payload_fragment_context : io_inputs_1_payload_fragment_context);
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_chosenOH = {maskRouted_1,maskRouted_0};
  assign _zz_2 = io_chosenOH[1];
  assign io_chosen = _zz_2;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      locked <= 1'b0;
    end else begin
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if(((io_output_valid && io_output_ready) && io_output_payload_last))begin
        locked <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(io_output_valid)begin
      maskLocked_0 <= maskRouted_0;
      maskLocked_1 <= maskRouted_1;
    end
  end


endmodule

module StreamArbiter (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input               io_inputs_0_payload_last,
  input      [0:0]    io_inputs_0_payload_fragment_opcode,
  input               io_inputs_0_payload_fragment_exclusive,
  input      [31:0]   io_inputs_0_payload_fragment_address,
  input      [5:0]    io_inputs_0_payload_fragment_length,
  input      [2:0]    io_inputs_0_payload_fragment_context,
  output              io_output_valid,
  input               io_output_ready,
  output              io_output_payload_last,
  output     [0:0]    io_output_payload_fragment_opcode,
  output              io_output_payload_fragment_exclusive,
  output     [31:0]   io_output_payload_fragment_address,
  output     [5:0]    io_output_payload_fragment_length,
  output     [2:0]    io_output_payload_fragment_context,
  output     [0:0]    io_chosenOH,
  input               clk,
  input               reset
);
  wire       [1:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [1:0]    _zz_6;
  wire       [0:0]    _zz_7;
  wire       [0:0]    _zz_8;
  reg                 locked;
  wire                maskProposal_0;
  reg                 maskLocked_0;
  wire                maskRouted_0;
  wire       [0:0]    _zz_1;
  wire       [1:0]    _zz_2;
  wire       [1:0]    _zz_3;

  assign _zz_4 = (_zz_2 - _zz_6);
  assign _zz_5 = maskLocked_0;
  assign _zz_6 = {1'd0, _zz_5};
  assign _zz_7 = _zz_8[0 : 0];
  assign _zz_8 = (_zz_3[1 : 1] | _zz_3[0 : 0]);
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign _zz_1 = io_inputs_0_valid;
  assign _zz_2 = {_zz_1,_zz_1};
  assign _zz_3 = (_zz_2 & (~ _zz_4));
  assign maskProposal_0 = _zz_7[0];
  assign io_output_valid = (io_inputs_0_valid && maskRouted_0);
  assign io_output_payload_last = io_inputs_0_payload_last;
  assign io_output_payload_fragment_opcode = io_inputs_0_payload_fragment_opcode;
  assign io_output_payload_fragment_exclusive = io_inputs_0_payload_fragment_exclusive;
  assign io_output_payload_fragment_address = io_inputs_0_payload_fragment_address;
  assign io_output_payload_fragment_length = io_inputs_0_payload_fragment_length;
  assign io_output_payload_fragment_context = io_inputs_0_payload_fragment_context;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_chosenOH = maskRouted_0;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b1;
    end else begin
      if(io_output_valid)begin
        maskLocked_0 <= maskRouted_0;
      end
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if((io_output_valid && io_output_ready))begin
        locked <= 1'b0;
      end
    end
  end


endmodule

module DataCache (
  input               io_cpu_execute_isValid,
  input      [31:0]   io_cpu_execute_address,
  output reg          io_cpu_execute_haltIt,
  input               io_cpu_execute_args_wr,
  input      [31:0]   io_cpu_execute_args_data,
  input      [1:0]    io_cpu_execute_args_size,
  input               io_cpu_execute_args_isLrsc,
  input               io_cpu_execute_args_isAmo,
  input               io_cpu_execute_args_amoCtrl_swap,
  input      [2:0]    io_cpu_execute_args_amoCtrl_alu,
  input               io_cpu_execute_args_totalyConsistent,
  input               io_cpu_memory_isValid,
  input               io_cpu_memory_isStuck,
  output              io_cpu_memory_isWrite,
  input      [31:0]   io_cpu_memory_address,
  input      [31:0]   io_cpu_memory_mmuRsp_physicalAddress,
  input               io_cpu_memory_mmuRsp_isIoAccess,
  input               io_cpu_memory_mmuRsp_allowRead,
  input               io_cpu_memory_mmuRsp_allowWrite,
  input               io_cpu_memory_mmuRsp_allowExecute,
  input               io_cpu_memory_mmuRsp_exception,
  input               io_cpu_memory_mmuRsp_refilling,
  input               io_cpu_memory_mmuRsp_bypassTranslation,
  input               io_cpu_memory_mmuRsp_ways_0_sel,
  input      [31:0]   io_cpu_memory_mmuRsp_ways_0_physical,
  input               io_cpu_memory_mmuRsp_ways_1_sel,
  input      [31:0]   io_cpu_memory_mmuRsp_ways_1_physical,
  input               io_cpu_memory_mmuRsp_ways_2_sel,
  input      [31:0]   io_cpu_memory_mmuRsp_ways_2_physical,
  input               io_cpu_memory_mmuRsp_ways_3_sel,
  input      [31:0]   io_cpu_memory_mmuRsp_ways_3_physical,
  input               io_cpu_writeBack_isValid,
  input               io_cpu_writeBack_isStuck,
  input               io_cpu_writeBack_isUser,
  output reg          io_cpu_writeBack_haltIt,
  output              io_cpu_writeBack_isWrite,
  output reg [31:0]   io_cpu_writeBack_data,
  input      [31:0]   io_cpu_writeBack_address,
  output              io_cpu_writeBack_mmuException,
  output              io_cpu_writeBack_unalignedAccess,
  output reg          io_cpu_writeBack_accessError,
  output reg          io_cpu_writeBack_keepMemRspData,
  input               io_cpu_writeBack_fence_SW,
  input               io_cpu_writeBack_fence_SR,
  input               io_cpu_writeBack_fence_SO,
  input               io_cpu_writeBack_fence_SI,
  input               io_cpu_writeBack_fence_PW,
  input               io_cpu_writeBack_fence_PR,
  input               io_cpu_writeBack_fence_PO,
  input               io_cpu_writeBack_fence_PI,
  input      [3:0]    io_cpu_writeBack_fence_FM,
  output reg          io_cpu_redo,
  input               io_cpu_flush_valid,
  output reg          io_cpu_flush_ready,
  output reg          io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output reg          io_mem_cmd_payload_wr,
  output              io_mem_cmd_payload_uncached,
  output reg [31:0]   io_mem_cmd_payload_address,
  output     [31:0]   io_mem_cmd_payload_data,
  output     [3:0]    io_mem_cmd_payload_mask,
  output reg [3:0]    io_mem_cmd_payload_length,
  output              io_mem_cmd_payload_exclusive,
  output              io_mem_cmd_payload_last,
  input               io_mem_rsp_valid,
  input      [2:0]    io_mem_rsp_payload_aggregated,
  input               io_mem_rsp_payload_last,
  input      [63:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input               io_mem_rsp_payload_exclusive,
  input               io_mem_inv_valid,
  output              io_mem_inv_ready,
  input               io_mem_inv_payload_enable,
  input      [31:0]   io_mem_inv_payload_address,
  output              io_mem_ack_valid,
  input               io_mem_ack_ready,
  output              io_mem_ack_payload_hit,
  input               io_mem_sync_valid,
  output              io_mem_sync_ready,
  input      [2:0]    io_mem_sync_payload_aggregated,
  input               clk,
  input               reset
);
  wire                _zz_29;
  wire                _zz_30;
  wire                _zz_31;
  wire                _zz_32;
  reg        [21:0]   _zz_33;
  reg        [21:0]   _zz_34;
  reg        [21:0]   _zz_35;
  reg        [21:0]   _zz_36;
  wire       [0:0]    _zz_37;
  reg        [31:0]   _zz_38;
  reg        [31:0]   _zz_39;
  reg        [3:0]    _zz_40;
  reg        [3:0]    _zz_41;
  reg        [31:0]   _zz_42;
  wire       [63:0]   ways_0_data_rd_data;
  wire       [63:0]   ways_1_data_rd_data;
  wire                _zz_43;
  wire                _zz_44;
  wire                _zz_45;
  wire                _zz_46;
  wire                _zz_47;
  wire                _zz_48;
  wire                _zz_49;
  wire                _zz_50;
  wire                _zz_51;
  wire                _zz_52;
  wire                _zz_53;
  wire                _zz_54;
  wire       [2:0]    _zz_55;
  wire       [0:0]    _zz_56;
  wire       [0:0]    _zz_57;
  wire       [0:0]    _zz_58;
  wire       [0:0]    _zz_59;
  wire       [0:0]    _zz_60;
  wire       [0:0]    _zz_61;
  wire       [0:0]    _zz_62;
  wire       [0:0]    _zz_63;
  wire       [5:0]    _zz_64;
  wire       [0:0]    _zz_65;
  wire       [5:0]    _zz_66;
  wire       [3:0]    _zz_67;
  wire       [5:0]    _zz_68;
  wire       [3:0]    _zz_69;
  wire       [1:0]    _zz_70;
  wire       [3:0]    _zz_71;
  wire       [1:0]    _zz_72;
  wire       [3:0]    _zz_73;
  wire       [4:0]    _zz_74;
  wire       [5:0]    _zz_75;
  wire       [4:0]    _zz_76;
  wire       [5:0]    _zz_77;
  wire       [5:0]    _zz_78;
  wire       [0:0]    _zz_79;
  wire       [5:0]    _zz_80;
  wire       [3:0]    _zz_81;
  wire       [5:0]    _zz_82;
  wire       [5:0]    _zz_83;
  wire       [0:0]    _zz_84;
  wire       [5:0]    _zz_85;
  wire       [3:0]    _zz_86;
  wire       [5:0]    _zz_87;
  wire       [3:0]    _zz_88;
  wire       [5:0]    _zz_89;
  wire       [3:0]    _zz_90;
  wire       [5:0]    _zz_91;
  wire       [3:0]    _zz_92;
  wire       [5:0]    _zz_93;
  wire       [3:0]    _zz_94;
  wire       [5:0]    _zz_95;
  wire       [3:0]    _zz_96;
  wire       [5:0]    _zz_97;
  wire       [3:0]    _zz_98;
  wire       [5:0]    _zz_99;
  wire       [31:0]   _zz_100;
  wire       [31:0]   _zz_101;
  wire       [31:0]   _zz_102;
  wire       [31:0]   _zz_103;
  wire       [1:0]    _zz_104;
  wire       [31:0]   _zz_105;
  wire       [1:0]    _zz_106;
  wire       [1:0]    _zz_107;
  wire       [0:0]    _zz_108;
  wire       [0:0]    _zz_109;
  wire       [2:0]    _zz_110;
  wire       [2:0]    _zz_111;
  wire       [21:0]   _zz_112;
  wire       [21:0]   _zz_113;
  wire       [0:0]    _zz_114;
  wire       [0:0]    _zz_115;
  wire       [0:0]    _zz_116;
  wire       [0:0]    _zz_117;
  wire       [0:0]    _zz_118;
  wire       [0:0]    _zz_119;
  reg        [1:0]    _zz_1;
  reg                 _zz_2;
  reg                 _zz_3;
  reg                 _zz_4;
  reg                 _zz_5;
  reg                 _zz_6;
  wire                haltCpu;
  reg                 tagsReadCmd_valid;
  reg        [5:0]    tagsReadCmd_payload;
  wire                tagsInvReadCmd_valid;
  wire       [5:0]    tagsInvReadCmd_payload;
  reg                 tagsWriteCmd_valid;
  reg        [1:0]    tagsWriteCmd_payload_way;
  reg        [5:0]    tagsWriteCmd_payload_address;
  reg                 tagsWriteCmd_payload_data_valid;
  reg                 tagsWriteCmd_payload_data_error;
  reg        [19:0]   tagsWriteCmd_payload_data_address;
  reg                 tagsWriteLastCmd_valid;
  reg        [1:0]    tagsWriteLastCmd_payload_way;
  reg        [5:0]    tagsWriteLastCmd_payload_address;
  reg                 tagsWriteLastCmd_payload_data_valid;
  reg                 tagsWriteLastCmd_payload_data_error;
  reg        [19:0]   tagsWriteLastCmd_payload_data_address;
  reg                 dataReadCmd_valid;
  reg        [8:0]    dataReadCmd_payload;
  reg                 dataWriteCmd_valid;
  reg        [1:0]    dataWriteCmd_payload_way;
  reg        [8:0]    dataWriteCmd_payload_address;
  reg        [63:0]   dataWriteCmd_payload_data;
  reg        [7:0]    dataWriteCmd_payload_mask;
  wire                _zz_7;
  wire                ways_0_tagsReadRsp_valid;
  wire                ways_0_tagsReadRsp_error;
  wire       [19:0]   ways_0_tagsReadRsp_address;
  wire       [21:0]   _zz_8;
  wire       [63:0]   ways_0_dataReadRspMem;
  wire       [31:0]   ways_0_dataReadRsp;
  wire                ways_0_tagsInvReadRsp_valid;
  wire                ways_0_tagsInvReadRsp_error;
  wire       [19:0]   ways_0_tagsInvReadRsp_address;
  wire       [21:0]   _zz_9;
  wire                _zz_10;
  wire                ways_1_tagsReadRsp_valid;
  wire                ways_1_tagsReadRsp_error;
  wire       [19:0]   ways_1_tagsReadRsp_address;
  wire       [21:0]   _zz_11;
  wire       [63:0]   ways_1_dataReadRspMem;
  wire       [31:0]   ways_1_dataReadRsp;
  wire                ways_1_tagsInvReadRsp_valid;
  wire                ways_1_tagsInvReadRsp_error;
  wire       [19:0]   ways_1_tagsInvReadRsp_address;
  wire       [21:0]   _zz_12;
  reg                 rspSync;
  reg                 rspLast;
  reg                 memCmdSent;
  reg        [5:0]    pending_counter;
  wire       [5:0]    pending_counterNext;
  reg                 pending_done;
  reg                 pending_full;
  reg                 pending_last;
  wire       [3:0]    sync_syncCount;
  reg        [5:0]    sync_syncContext_wPtr;
  reg        [5:0]    sync_syncContext_rPtr;
  wire       [5:0]    _zz_13;
  wire                sync_syncContext_uncached;
  reg                 sync_syncContext_full;
  reg        [5:0]    sync_writeCached_pendingSync;
  wire       [5:0]    sync_writeCached_pendingSyncNext;
  reg        [5:0]    sync_writeUncached_pendingSync;
  wire       [5:0]    sync_writeUncached_pendingSyncNext;
  reg        [5:0]    sync_w2w_counter;
  wire                sync_w2w_busy;
  reg        [5:0]    sync_w2r_counter;
  wire                sync_w2r_busy;
  reg        [5:0]    sync_w2i_counter;
  wire                sync_w2i_busy;
  reg        [5:0]    sync_w2o_counter;
  wire                sync_w2o_busy;
  reg        [5:0]    sync_o2w_counter;
  wire                sync_o2w_busy;
  reg        [5:0]    sync_o2r_counter;
  wire                sync_o2r_busy;
  wire                sync_notTotalyConsistent;
  reg        [3:0]    _zz_14;
  wire       [3:0]    stage0_mask;
  wire       [9:0]    _zz_15;
  reg        [1:0]    stage0_dataColisions;
  wire       [8:0]    _zz_16;
  wire       [3:0]    _zz_17;
  reg        [1:0]    stage0_wayInvalidate;
  reg                 stageA_request_wr;
  reg        [31:0]   stageA_request_data;
  reg        [1:0]    stageA_request_size;
  reg                 stageA_request_isLrsc;
  reg                 stageA_request_isAmo;
  reg                 stageA_request_amoCtrl_swap;
  reg        [2:0]    stageA_request_amoCtrl_alu;
  reg                 stageA_request_totalyConsistent;
  reg        [3:0]    stageA_mask;
  reg                 stageA_consistancyCheck_hazard;
  wire                stageA_consistancyCheck_w;
  reg                 _zz_18;
  wire                stageA_consistancyCheck_r;
  wire                stageA_consistancyCheck_o;
  wire                stageA_consistancyCheck_i;
  wire                stageA_consistancyCheck_s;
  wire                stageA_consistancyCheck_l;
  wire       [1:0]    stageA_wayHits;
  reg        [1:0]    _zz_19;
  reg        [1:0]    stageA_wayInvalidate;
  reg        [1:0]    stage0_dataColisions_regNextWhen;
  wire       [9:0]    _zz_20;
  reg        [1:0]    _zz_21;
  wire       [8:0]    _zz_22;
  wire       [3:0]    _zz_23;
  wire       [1:0]    stageA_dataColisions;
  reg                 stageB_request_wr;
  reg        [31:0]   stageB_request_data;
  reg        [1:0]    stageB_request_size;
  reg                 stageB_request_isLrsc;
  reg                 stageB_request_isAmo;
  reg                 stageB_request_amoCtrl_swap;
  reg        [2:0]    stageB_request_amoCtrl_alu;
  reg                 stageB_request_totalyConsistent;
  reg                 stageB_mmuRspFreeze;
  reg        [31:0]   stageB_mmuRsp_physicalAddress;
  reg                 stageB_mmuRsp_isIoAccess;
  reg                 stageB_mmuRsp_allowRead;
  reg                 stageB_mmuRsp_allowWrite;
  reg                 stageB_mmuRsp_allowExecute;
  reg                 stageB_mmuRsp_exception;
  reg                 stageB_mmuRsp_refilling;
  reg                 stageB_mmuRsp_bypassTranslation;
  reg                 stageB_mmuRsp_ways_0_sel;
  reg        [31:0]   stageB_mmuRsp_ways_0_physical;
  reg                 stageB_mmuRsp_ways_1_sel;
  reg        [31:0]   stageB_mmuRsp_ways_1_physical;
  reg                 stageB_mmuRsp_ways_2_sel;
  reg        [31:0]   stageB_mmuRsp_ways_2_physical;
  reg                 stageB_mmuRsp_ways_3_sel;
  reg        [31:0]   stageB_mmuRsp_ways_3_physical;
  reg                 stageB_tagsReadRsp_0_valid;
  reg                 stageB_tagsReadRsp_0_error;
  reg        [19:0]   stageB_tagsReadRsp_0_address;
  reg                 stageB_tagsReadRsp_1_valid;
  reg                 stageB_tagsReadRsp_1_error;
  reg        [19:0]   stageB_tagsReadRsp_1_address;
  reg        [31:0]   stageB_dataReadRsp_0;
  reg        [31:0]   stageB_dataReadRsp_1;
  reg        [1:0]    stageB_wayInvalidate;
  reg                 stageB_consistancyHazard;
  reg        [1:0]    stageB_dataColisions;
  reg        [1:0]    stageB_waysHitsBeforeInvalidate;
  wire       [1:0]    stageB_waysHits;
  wire                stageB_waysHit;
  wire       [31:0]   stageB_dataMux;
  reg        [3:0]    stageB_mask;
  reg                 stageB_loaderValid;
  wire       [31:0]   stageB_ioMemRspMuxed;
  reg                 stageB_flusher_valid;
  reg                 stageB_flusher_hold;
  reg                 stageB_flusher_start;
  wire                stageB_isAmoCached;
  reg        [31:0]   stageB_requestDataBypass;
  wire                stageB_amo_compare;
  wire                stageB_amo_unsigned;
  wire       [31:0]   stageB_amo_addSub;
  wire                stageB_amo_less;
  wire                stageB_amo_selectRf;
  reg        [31:0]   stageB_amo_result;
  reg        [31:0]   stageB_amo_resultReg;
  reg        `DataCacheExternalAmoStates_defaultEncoding_type stageB_amo_external_state;
  reg                 stageB_cpuWriteToCache;
  wire       [1:0]    _zz_24;
  wire                stageB_bypassCache;
  reg                 _zz_25;
  reg        [1:0]    _zz_26;
  reg                 loader_valid;
  reg                 loader_counter_willIncrement;
  wire                loader_counter_willClear;
  reg        [2:0]    loader_counter_valueNext;
  reg        [2:0]    loader_counter_value;
  wire                loader_counter_willOverflowIfInc;
  wire                loader_counter_willOverflow;
  reg        [1:0]    loader_waysAllocator;
  reg                 loader_error;
  reg                 loader_kill;
  reg                 loader_killReg;
  reg                 loader_done;
  wire                invalidate_s0_loaderTagHit;
  wire                invalidate_s0_loaderLineHit;
  wire                invalidate_s1_input_valid;
  wire                invalidate_s1_input_ready;
  wire                invalidate_s1_input_payload_enable;
  wire       [31:0]   invalidate_s1_input_payload_address;
  reg                 io_mem_inv_m2sPipe_rValid;
  reg                 io_mem_inv_m2sPipe_rData_enable;
  reg        [31:0]   io_mem_inv_m2sPipe_rData_address;
  reg                 invalidate_s1_loaderValid;
  reg        [1:0]    invalidate_s1_loaderWay;
  reg                 invalidate_s1_loaderTagHit;
  reg                 invalidate_s1_loaderLineHit;
  wire       [1:0]    invalidate_s1_invalidations;
  reg        [1:0]    _zz_27;
  wire       [1:0]    invalidate_s1_wayHits;
  wire                invalidate_s2_input_valid;
  wire                invalidate_s2_input_ready;
  wire                invalidate_s2_input_payload_enable;
  wire       [31:0]   invalidate_s2_input_payload_address;
  reg                 invalidate_s1_input_m2sPipe_rValid;
  reg                 invalidate_s1_input_m2sPipe_rData_enable;
  reg        [31:0]   invalidate_s1_input_m2sPipe_rData_address;
  reg        [1:0]    invalidate_s2_wayHits;
  wire                invalidate_s2_wayHit;
  reg        [1:0]    _zz_28;
  `ifndef SYNTHESIS
  reg [47:0] stageB_amo_external_state_string;
  `endif

  reg [21:0] ways_0_tags [0:63];
  reg [21:0] ways_1_tags [0:63];
  (* ram_style = "distributed" *) reg [0:0] sync_syncContext_history [0:31];

  assign _zz_43 = ((io_mem_cmd_valid && io_mem_cmd_ready) && io_mem_cmd_payload_wr);
  assign _zz_44 = (io_cpu_execute_isValid && (! io_cpu_memory_isStuck));
  assign _zz_45 = ((((stageB_consistancyHazard || stageB_mmuRsp_refilling) || io_cpu_writeBack_accessError) || io_cpu_writeBack_mmuException) || io_cpu_writeBack_unalignedAccess);
  assign _zz_46 = (invalidate_s2_input_valid && invalidate_s2_input_payload_enable);
  assign _zz_47 = ((loader_valid && io_mem_rsp_valid) && rspLast);
  assign _zz_48 = (stageB_mmuRsp_isIoAccess || stageB_request_isLrsc);
  assign _zz_49 = (stageB_waysHit || (stageB_request_wr && (! stageB_isAmoCached)));
  assign _zz_50 = (stageB_request_isLrsc && stageB_request_wr);
  assign _zz_51 = (((! stageB_request_wr) || stageB_isAmoCached) && ((stageB_dataColisions & stageB_waysHits) != 2'b00));
  assign _zz_52 = (! stageB_flusher_hold);
  assign _zz_53 = (stageB_mmuRsp_physicalAddress[11 : 6] != 6'h3f);
  assign _zz_54 = (io_mem_rsp_valid && pending_last);
  assign _zz_55 = (stageB_request_amoCtrl_alu | {stageB_request_amoCtrl_swap,2'b00});
  assign _zz_56 = _zz_8[0 : 0];
  assign _zz_57 = _zz_8[1 : 1];
  assign _zz_58 = _zz_9[0 : 0];
  assign _zz_59 = _zz_9[1 : 1];
  assign _zz_60 = _zz_11[0 : 0];
  assign _zz_61 = _zz_11[1 : 1];
  assign _zz_62 = _zz_12[0 : 0];
  assign _zz_63 = _zz_12[1 : 1];
  assign _zz_64 = (pending_counter + _zz_66);
  assign _zz_65 = ((io_mem_cmd_valid && io_mem_cmd_ready) && io_mem_cmd_payload_last);
  assign _zz_66 = {5'd0, _zz_65};
  assign _zz_67 = ((io_mem_rsp_valid && io_mem_rsp_payload_last) ? _zz_69 : 4'b0000);
  assign _zz_68 = {2'd0, _zz_67};
  assign _zz_69 = ({1'b0,io_mem_rsp_payload_aggregated} + _zz_71);
  assign _zz_70 = {1'b0,1'b1};
  assign _zz_71 = {2'd0, _zz_70};
  assign _zz_72 = {1'b0,1'b1};
  assign _zz_73 = {2'd0, _zz_72};
  assign _zz_74 = sync_syncContext_wPtr[4:0];
  assign _zz_75 = {2'd0, sync_syncCount};
  assign _zz_76 = _zz_13[4:0];
  assign _zz_77 = (sync_syncContext_wPtr - sync_syncContext_rPtr);
  assign _zz_78 = (sync_writeCached_pendingSync + _zz_80);
  assign _zz_79 = (((io_mem_cmd_valid && io_mem_cmd_ready) && io_mem_cmd_payload_wr) && (! io_mem_cmd_payload_uncached));
  assign _zz_80 = {5'd0, _zz_79};
  assign _zz_81 = (((io_mem_sync_valid && io_mem_sync_ready) && (! sync_syncContext_uncached)) ? sync_syncCount : 4'b0000);
  assign _zz_82 = {2'd0, _zz_81};
  assign _zz_83 = (sync_writeUncached_pendingSync + _zz_85);
  assign _zz_84 = (((io_mem_cmd_valid && io_mem_cmd_ready) && io_mem_cmd_payload_wr) && io_mem_cmd_payload_uncached);
  assign _zz_85 = {5'd0, _zz_84};
  assign _zz_86 = (((io_mem_sync_valid && io_mem_sync_ready) && sync_syncContext_uncached) ? sync_syncCount : 4'b0000);
  assign _zz_87 = {2'd0, _zz_86};
  assign _zz_88 = ((((io_mem_sync_valid && io_mem_sync_ready) && (sync_w2w_counter != 6'h0)) && (! sync_syncContext_uncached)) ? sync_syncCount : 4'b0000);
  assign _zz_89 = {2'd0, _zz_88};
  assign _zz_90 = ((((io_mem_sync_valid && io_mem_sync_ready) && (sync_w2r_counter != 6'h0)) && (! sync_syncContext_uncached)) ? sync_syncCount : 4'b0000);
  assign _zz_91 = {2'd0, _zz_90};
  assign _zz_92 = ((((io_mem_sync_valid && io_mem_sync_ready) && (sync_w2i_counter != 6'h0)) && (! sync_syncContext_uncached)) ? sync_syncCount : 4'b0000);
  assign _zz_93 = {2'd0, _zz_92};
  assign _zz_94 = ((((io_mem_sync_valid && io_mem_sync_ready) && (sync_w2o_counter != 6'h0)) && (! sync_syncContext_uncached)) ? sync_syncCount : 4'b0000);
  assign _zz_95 = {2'd0, _zz_94};
  assign _zz_96 = ((((io_mem_sync_valid && io_mem_sync_ready) && (sync_o2w_counter != 6'h0)) && sync_syncContext_uncached) ? sync_syncCount : 4'b0000);
  assign _zz_97 = {2'd0, _zz_96};
  assign _zz_98 = ((((io_mem_sync_valid && io_mem_sync_ready) && (sync_o2r_counter != 6'h0)) && sync_syncContext_uncached) ? sync_syncCount : 4'b0000);
  assign _zz_99 = {2'd0, _zz_98};
  assign _zz_100 = ($signed(_zz_101) + $signed(_zz_105));
  assign _zz_101 = ($signed(_zz_102) + $signed(_zz_103));
  assign _zz_102 = stageB_request_data;
  assign _zz_103 = (stageB_amo_compare ? (~ stageB_ioMemRspMuxed) : stageB_ioMemRspMuxed);
  assign _zz_104 = (stageB_amo_compare ? _zz_106 : _zz_107);
  assign _zz_105 = {{30{_zz_104[1]}}, _zz_104};
  assign _zz_106 = 2'b01;
  assign _zz_107 = 2'b00;
  assign _zz_108 = (! io_mem_rsp_payload_exclusive);
  assign _zz_109 = loader_counter_willIncrement;
  assign _zz_110 = {2'd0, _zz_109};
  assign _zz_111 = {loader_waysAllocator,loader_waysAllocator[1]};
  assign _zz_112 = {tagsWriteCmd_payload_data_address,{tagsWriteCmd_payload_data_error,tagsWriteCmd_payload_data_valid}};
  assign _zz_113 = {tagsWriteCmd_payload_data_address,{tagsWriteCmd_payload_data_error,tagsWriteCmd_payload_data_valid}};
  assign _zz_114 = io_mem_cmd_payload_uncached;
  assign _zz_115 = io_cpu_memory_address[2 : 2];
  assign _zz_116 = io_cpu_memory_address[2 : 2];
  assign _zz_117 = _zz_15[0 : 0];
  assign _zz_118 = _zz_20[0 : 0];
  assign _zz_119 = io_cpu_writeBack_address[2 : 2];
  always @ (posedge clk) begin
    if(_zz_7) begin
      _zz_33 <= ways_0_tags[tagsReadCmd_payload];
    end
  end

  always @ (posedge clk) begin
    if(tagsInvReadCmd_valid) begin
      _zz_34 <= ways_0_tags[tagsInvReadCmd_payload];
    end
  end

  always @ (posedge clk) begin
    if(_zz_6) begin
      ways_0_tags[tagsWriteCmd_payload_address] <= _zz_112;
    end
  end

  always @ (posedge clk) begin
    if(_zz_10) begin
      _zz_35 <= ways_1_tags[tagsReadCmd_payload];
    end
  end

  always @ (posedge clk) begin
    if(tagsInvReadCmd_valid) begin
      _zz_36 <= ways_1_tags[tagsInvReadCmd_payload];
    end
  end

  always @ (posedge clk) begin
    if(_zz_4) begin
      ways_1_tags[tagsWriteCmd_payload_address] <= _zz_113;
    end
  end

  always @ (posedge clk) begin
    if(_zz_2) begin
      sync_syncContext_history[_zz_74] <= _zz_114;
    end
  end

  assign _zz_37 = sync_syncContext_history[_zz_76];
  Ram_1w_1rs #(
    .wordCount(512),
    .wordWidth(64),
    .clockCrossing(1'b0),
    .technology("auto"),
    .readUnderWrite("dontCare"),
    .wrAddressWidth(9),
    .wrDataWidth(64),
    .wrMaskWidth(8),
    .wrMaskEnable(1'b1),
    .rdAddressWidth(9),
    .rdDataWidth(64) 
  ) ways_0_data (
    .wr_clk     (clk                                ), //i
    .wr_en      (_zz_29                             ), //i
    .wr_mask    (dataWriteCmd_payload_mask[7:0]     ), //i
    .wr_addr    (dataWriteCmd_payload_address[8:0]  ), //i
    .wr_data    (dataWriteCmd_payload_data[63:0]    ), //i
    .rd_clk     (clk                                ), //i
    .rd_en      (_zz_30                             ), //i
    .rd_addr    (dataReadCmd_payload[8:0]           ), //i
    .rd_data    (ways_0_data_rd_data[63:0]          )  //o
  );
  Ram_1w_1rs #(
    .wordCount(512),
    .wordWidth(64),
    .clockCrossing(1'b0),
    .technology("auto"),
    .readUnderWrite("dontCare"),
    .wrAddressWidth(9),
    .wrDataWidth(64),
    .wrMaskWidth(8),
    .wrMaskEnable(1'b1),
    .rdAddressWidth(9),
    .rdDataWidth(64) 
  ) ways_1_data (
    .wr_clk     (clk                                ), //i
    .wr_en      (_zz_31                             ), //i
    .wr_mask    (dataWriteCmd_payload_mask[7:0]     ), //i
    .wr_addr    (dataWriteCmd_payload_address[8:0]  ), //i
    .wr_data    (dataWriteCmd_payload_data[63:0]    ), //i
    .rd_clk     (clk                                ), //i
    .rd_en      (_zz_32                             ), //i
    .rd_addr    (dataReadCmd_payload[8:0]           ), //i
    .rd_data    (ways_1_data_rd_data[63:0]          )  //o
  );
  always @(*) begin
    case(_zz_115)
      1'b0 : begin
        _zz_38 = ways_0_dataReadRspMem[31 : 0];
      end
      default : begin
        _zz_38 = ways_0_dataReadRspMem[63 : 32];
      end
    endcase
  end

  always @(*) begin
    case(_zz_116)
      1'b0 : begin
        _zz_39 = ways_1_dataReadRspMem[31 : 0];
      end
      default : begin
        _zz_39 = ways_1_dataReadRspMem[63 : 32];
      end
    endcase
  end

  always @(*) begin
    case(_zz_117)
      1'b0 : begin
        _zz_40 = dataWriteCmd_payload_mask[3 : 0];
      end
      default : begin
        _zz_40 = dataWriteCmd_payload_mask[7 : 4];
      end
    endcase
  end

  always @(*) begin
    case(_zz_118)
      1'b0 : begin
        _zz_41 = dataWriteCmd_payload_mask[3 : 0];
      end
      default : begin
        _zz_41 = dataWriteCmd_payload_mask[7 : 4];
      end
    endcase
  end

  always @(*) begin
    case(_zz_119)
      1'b0 : begin
        _zz_42 = io_mem_rsp_payload_data[31 : 0];
      end
      default : begin
        _zz_42 = io_mem_rsp_payload_data[63 : 32];
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(stageB_amo_external_state)
      `DataCacheExternalAmoStates_defaultEncoding_LR_CMD : stageB_amo_external_state_string = "LR_CMD";
      `DataCacheExternalAmoStates_defaultEncoding_LR_RSP : stageB_amo_external_state_string = "LR_RSP";
      `DataCacheExternalAmoStates_defaultEncoding_SC_CMD : stageB_amo_external_state_string = "SC_CMD";
      `DataCacheExternalAmoStates_defaultEncoding_SC_RSP : stageB_amo_external_state_string = "SC_RSP";
      default : stageB_amo_external_state_string = "??????";
    endcase
  end
  `endif

  always @ (*) begin
    _zz_1 = invalidate_s1_wayHits;
    if(((invalidate_s1_loaderValid && invalidate_s1_loaderLineHit) && (! invalidate_s1_loaderTagHit)))begin
      _zz_1 = (invalidate_s1_wayHits & (~ invalidate_s1_loaderWay));
    end
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    if(_zz_43)begin
      _zz_2 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_3 = 1'b0;
    if((dataWriteCmd_valid && dataWriteCmd_payload_way[1]))begin
      _zz_3 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_4 = 1'b0;
    if((tagsWriteCmd_valid && tagsWriteCmd_payload_way[1]))begin
      _zz_4 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_5 = 1'b0;
    if((dataWriteCmd_valid && dataWriteCmd_payload_way[0]))begin
      _zz_5 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_6 = 1'b0;
    if((tagsWriteCmd_valid && tagsWriteCmd_payload_way[0]))begin
      _zz_6 = 1'b1;
    end
  end

  assign haltCpu = 1'b0;
  assign _zz_7 = (tagsReadCmd_valid && (! io_cpu_memory_isStuck));
  assign _zz_8 = _zz_33;
  assign ways_0_tagsReadRsp_valid = _zz_56[0];
  assign ways_0_tagsReadRsp_error = _zz_57[0];
  assign ways_0_tagsReadRsp_address = _zz_8[21 : 2];
  assign ways_0_dataReadRspMem = ways_0_data_rd_data;
  assign ways_0_dataReadRsp = _zz_38;
  assign _zz_9 = _zz_34;
  assign ways_0_tagsInvReadRsp_valid = _zz_58[0];
  assign ways_0_tagsInvReadRsp_error = _zz_59[0];
  assign ways_0_tagsInvReadRsp_address = _zz_9[21 : 2];
  assign _zz_10 = (tagsReadCmd_valid && (! io_cpu_memory_isStuck));
  assign _zz_11 = _zz_35;
  assign ways_1_tagsReadRsp_valid = _zz_60[0];
  assign ways_1_tagsReadRsp_error = _zz_61[0];
  assign ways_1_tagsReadRsp_address = _zz_11[21 : 2];
  assign ways_1_dataReadRspMem = ways_1_data_rd_data;
  assign ways_1_dataReadRsp = _zz_39;
  assign _zz_12 = _zz_36;
  assign ways_1_tagsInvReadRsp_valid = _zz_62[0];
  assign ways_1_tagsInvReadRsp_error = _zz_63[0];
  assign ways_1_tagsInvReadRsp_address = _zz_12[21 : 2];
  always @ (*) begin
    tagsReadCmd_valid = 1'b0;
    if(_zz_44)begin
      tagsReadCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    tagsReadCmd_payload = 6'h0;
    if(_zz_44)begin
      tagsReadCmd_payload = io_cpu_execute_address[11 : 6];
    end
  end

  always @ (*) begin
    dataReadCmd_valid = 1'b0;
    if(_zz_44)begin
      dataReadCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    dataReadCmd_payload = 9'h0;
    if(_zz_44)begin
      dataReadCmd_payload = io_cpu_execute_address[11 : 3];
    end
  end

  always @ (*) begin
    tagsWriteCmd_valid = 1'b0;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_valid = stageB_flusher_valid;
    end
    if(_zz_45)begin
      tagsWriteCmd_valid = 1'b0;
    end
    if(loader_done)begin
      tagsWriteCmd_valid = 1'b1;
    end
    if(_zz_46)begin
      if(invalidate_s2_wayHit)begin
        tagsWriteCmd_valid = 1'b1;
      end
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_way = 2'bxx;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_way = 2'b11;
    end
    if(loader_done)begin
      tagsWriteCmd_payload_way = loader_waysAllocator;
    end
    if(_zz_46)begin
      if(invalidate_s2_wayHit)begin
        tagsWriteCmd_payload_way = invalidate_s2_wayHits;
      end
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_address = 6'h0;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 6];
    end
    if(loader_done)begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 6];
    end
    if(_zz_46)begin
      if(invalidate_s2_wayHit)begin
        tagsWriteCmd_payload_address = invalidate_s2_input_payload_address[11 : 6];
      end
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_valid = 1'bx;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_data_valid = 1'b0;
    end
    if(loader_done)begin
      tagsWriteCmd_payload_data_valid = (! (loader_kill || loader_killReg));
    end
    if(_zz_46)begin
      if(invalidate_s2_wayHit)begin
        tagsWriteCmd_payload_data_valid = 1'b0;
      end
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_error = 1'bx;
    if(loader_done)begin
      tagsWriteCmd_payload_data_error = (loader_error || (io_mem_rsp_valid && io_mem_rsp_payload_error));
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_address = 20'h0;
    if(loader_done)begin
      tagsWriteCmd_payload_data_address = stageB_mmuRsp_physicalAddress[31 : 12];
    end
  end

  always @ (*) begin
    dataWriteCmd_valid = 1'b0;
    if(stageB_cpuWriteToCache)begin
      if((stageB_request_wr && stageB_waysHit))begin
        dataWriteCmd_valid = 1'b1;
      end
    end
    if(_zz_45)begin
      dataWriteCmd_valid = 1'b0;
    end
    if(_zz_47)begin
      dataWriteCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_way = 2'bxx;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_way = stageB_waysHits;
    end
    if(_zz_47)begin
      dataWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_address = 9'h0;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 3];
    end
    if(_zz_47)begin
      dataWriteCmd_payload_address = {stageB_mmuRsp_physicalAddress[11 : 6],loader_counter_value};
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_data = 64'h0;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_data[31 : 0] = stageB_requestDataBypass;
      dataWriteCmd_payload_data[63 : 32] = stageB_requestDataBypass;
    end
    if(_zz_47)begin
      dataWriteCmd_payload_data = io_mem_rsp_payload_data;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_mask = 8'h0;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_mask = 8'h0;
      if(_zz_24[0])begin
        dataWriteCmd_payload_mask[3 : 0] = stageB_mask;
      end
      if(_zz_24[1])begin
        dataWriteCmd_payload_mask[7 : 4] = stageB_mask;
      end
    end
    if(_zz_47)begin
      dataWriteCmd_payload_mask = 8'hff;
    end
  end

  always @ (*) begin
    io_cpu_execute_haltIt = 1'b0;
    if(sync_syncContext_full)begin
      io_cpu_execute_haltIt = 1'b1;
    end
  end

  always @ (*) begin
    rspSync = 1'b1;
    if(((! pending_last) || (! memCmdSent)))begin
      rspSync = 1'b0;
    end
  end

  always @ (*) begin
    rspLast = 1'b1;
    if((! pending_last))begin
      rspLast = 1'b0;
    end
  end

  assign pending_counterNext = (_zz_64 - _zz_68);
  assign io_mem_sync_ready = 1'b1;
  assign sync_syncCount = ({1'b0,io_mem_sync_payload_aggregated} + _zz_73);
  assign _zz_13 = sync_syncContext_rPtr;
  assign sync_syncContext_uncached = _zz_37[0];
  assign sync_writeCached_pendingSyncNext = (_zz_78 - _zz_82);
  assign sync_writeUncached_pendingSyncNext = (_zz_83 - _zz_87);
  assign sync_w2w_busy = (sync_w2w_counter != 6'h0);
  assign sync_w2r_busy = (sync_w2r_counter != 6'h0);
  assign sync_w2i_busy = (sync_w2i_counter != 6'h0);
  assign sync_w2o_busy = (sync_w2o_counter != 6'h0);
  assign sync_o2w_busy = (sync_o2w_counter != 6'h0);
  assign sync_o2r_busy = (sync_o2r_counter != 6'h0);
  assign sync_notTotalyConsistent = (((((sync_w2w_busy || sync_w2r_busy) || sync_w2i_busy) || sync_w2o_busy) || sync_o2w_busy) || sync_o2r_busy);
  always @ (*) begin
    case(io_cpu_execute_args_size)
      2'b00 : begin
        _zz_14 = 4'b0001;
      end
      2'b01 : begin
        _zz_14 = 4'b0011;
      end
      default : begin
        _zz_14 = 4'b1111;
      end
    endcase
  end

  assign stage0_mask = (_zz_14 <<< io_cpu_execute_address[1 : 0]);
  assign _zz_15 = io_cpu_execute_address[11 : 2];
  assign _zz_16 = (_zz_15 >>> 1);
  assign _zz_17 = _zz_40;
  always @ (*) begin
    stage0_dataColisions[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == _zz_16)) && ((stage0_mask & _zz_17) != 4'b0000));
    stage0_dataColisions[1] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[1]) && (dataWriteCmd_payload_address == _zz_16)) && ((stage0_mask & _zz_17) != 4'b0000));
  end

  always @ (*) begin
    stage0_wayInvalidate = 2'b00;
    if(_zz_46)begin
      if((invalidate_s2_input_payload_address[11 : 6] == io_cpu_execute_address[11 : 6]))begin
        stage0_wayInvalidate = invalidate_s2_wayHits;
      end
    end
  end

  assign io_cpu_memory_isWrite = stageA_request_wr;
  always @ (*) begin
    stageA_consistancyCheck_hazard = 1'b0;
    if((stageA_request_isAmo ? (stageA_consistancyCheck_s || stageA_consistancyCheck_l) : (stageA_request_wr ? stageA_consistancyCheck_s : stageA_consistancyCheck_l)))begin
      stageA_consistancyCheck_hazard = 1'b1;
    end
    if((stageA_request_totalyConsistent && (sync_notTotalyConsistent || (io_cpu_writeBack_isValid && io_cpu_writeBack_isWrite))))begin
      stageA_consistancyCheck_hazard = 1'b1;
    end
  end

  assign stageA_consistancyCheck_w = (sync_w2w_busy || sync_o2w_busy);
  assign stageA_consistancyCheck_r = ((_zz_18 || sync_w2r_busy) || sync_o2r_busy);
  assign stageA_consistancyCheck_o = sync_w2o_busy;
  assign stageA_consistancyCheck_i = sync_w2i_busy;
  assign stageA_consistancyCheck_s = (io_cpu_memory_mmuRsp_isIoAccess ? stageA_consistancyCheck_o : stageA_consistancyCheck_w);
  assign stageA_consistancyCheck_l = (io_cpu_memory_mmuRsp_isIoAccess ? stageA_consistancyCheck_i : stageA_consistancyCheck_r);
  always @ (*) begin
    _zz_19[0] = ((io_cpu_memory_mmuRsp_physicalAddress[31 : 12] == ways_0_tagsReadRsp_address) && ways_0_tagsReadRsp_valid);
    _zz_19[1] = ((io_cpu_memory_mmuRsp_physicalAddress[31 : 12] == ways_1_tagsReadRsp_address) && ways_1_tagsReadRsp_valid);
  end

  assign stageA_wayHits = _zz_19;
  assign _zz_20 = io_cpu_memory_address[11 : 2];
  assign _zz_22 = (_zz_20 >>> 1);
  assign _zz_23 = _zz_41;
  always @ (*) begin
    _zz_21[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == _zz_22)) && ((stageA_mask & _zz_23) != 4'b0000));
    _zz_21[1] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[1]) && (dataWriteCmd_payload_address == _zz_22)) && ((stageA_mask & _zz_23) != 4'b0000));
  end

  assign stageA_dataColisions = (stage0_dataColisions_regNextWhen | _zz_21);
  always @ (*) begin
    stageB_mmuRspFreeze = 1'b0;
    if((stageB_loaderValid || loader_valid))begin
      stageB_mmuRspFreeze = 1'b1;
    end
  end

  assign stageB_waysHits = (stageB_waysHitsBeforeInvalidate & (~ stageB_wayInvalidate));
  assign stageB_waysHit = (stageB_waysHits != 2'b00);
  assign stageB_dataMux = (stageB_waysHits[0] ? stageB_dataReadRsp_0 : stageB_dataReadRsp_1);
  always @ (*) begin
    stageB_loaderValid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_request_isAmo) begin
        if(! _zz_48) begin
          if(! _zz_49) begin
            if(io_mem_cmd_ready)begin
              stageB_loaderValid = 1'b1;
            end
          end
        end
      end
    end
    if(_zz_45)begin
      stageB_loaderValid = 1'b0;
    end
  end

  assign stageB_ioMemRspMuxed = _zz_42;
  always @ (*) begin
    io_cpu_writeBack_haltIt = io_cpu_writeBack_isValid;
    if(stageB_flusher_valid)begin
      io_cpu_writeBack_haltIt = 1'b1;
    end
    if(io_cpu_writeBack_isValid)begin
      if(stageB_request_isAmo)begin
        case(stageB_amo_external_state)
          `DataCacheExternalAmoStates_defaultEncoding_LR_CMD : begin
          end
          `DataCacheExternalAmoStates_defaultEncoding_LR_RSP : begin
          end
          `DataCacheExternalAmoStates_defaultEncoding_SC_CMD : begin
          end
          default : begin
            if(io_mem_rsp_valid)begin
              if(io_mem_rsp_payload_exclusive)begin
                io_cpu_writeBack_haltIt = 1'b0;
              end
            end
          end
        endcase
      end else begin
        if(_zz_48)begin
          if((_zz_25 ? (io_mem_rsp_valid && rspSync) : io_mem_cmd_ready))begin
            io_cpu_writeBack_haltIt = 1'b0;
          end
        end else begin
          if(_zz_49)begin
            if(((! stageB_request_wr) || io_mem_cmd_ready))begin
              io_cpu_writeBack_haltIt = 1'b0;
            end
          end
        end
      end
    end
    if(_zz_45)begin
      io_cpu_writeBack_haltIt = 1'b0;
    end
  end

  always @ (*) begin
    stageB_flusher_hold = 1'b0;
    if(_zz_46)begin
      if(invalidate_s2_wayHit)begin
        stageB_flusher_hold = 1'b1;
      end
    end
  end

  always @ (*) begin
    io_cpu_flush_ready = 1'b0;
    if(stageB_flusher_start)begin
      io_cpu_flush_ready = 1'b1;
    end
  end

  assign stageB_isAmoCached = 1'b0;
  always @ (*) begin
    stageB_requestDataBypass = stageB_request_data;
    if(stageB_request_isAmo)begin
      stageB_requestDataBypass = stageB_amo_resultReg;
    end
  end

  assign stageB_amo_compare = stageB_request_amoCtrl_alu[2];
  assign stageB_amo_unsigned = (stageB_request_amoCtrl_alu[2 : 1] == 2'b11);
  assign stageB_amo_addSub = _zz_100;
  assign stageB_amo_less = ((stageB_request_data[31] == stageB_ioMemRspMuxed[31]) ? stageB_amo_addSub[31] : (stageB_amo_unsigned ? stageB_ioMemRspMuxed[31] : stageB_request_data[31]));
  assign stageB_amo_selectRf = (stageB_request_amoCtrl_swap ? 1'b1 : (stageB_request_amoCtrl_alu[0] ^ stageB_amo_less));
  always @ (*) begin
    case(_zz_55)
      3'b000 : begin
        stageB_amo_result = stageB_amo_addSub;
      end
      3'b001 : begin
        stageB_amo_result = (stageB_request_data ^ stageB_ioMemRspMuxed);
      end
      3'b010 : begin
        stageB_amo_result = (stageB_request_data | stageB_ioMemRspMuxed);
      end
      3'b011 : begin
        stageB_amo_result = (stageB_request_data & stageB_ioMemRspMuxed);
      end
      default : begin
        stageB_amo_result = (stageB_amo_selectRf ? stageB_request_data : stageB_ioMemRspMuxed);
      end
    endcase
  end

  always @ (*) begin
    stageB_cpuWriteToCache = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(stageB_request_isAmo)begin
        case(stageB_amo_external_state)
          `DataCacheExternalAmoStates_defaultEncoding_LR_CMD : begin
          end
          `DataCacheExternalAmoStates_defaultEncoding_LR_RSP : begin
          end
          `DataCacheExternalAmoStates_defaultEncoding_SC_CMD : begin
          end
          default : begin
            if(io_mem_rsp_valid)begin
              if(io_mem_rsp_payload_exclusive)begin
                stageB_cpuWriteToCache = 1'b1;
              end
            end
          end
        endcase
      end else begin
        if(! _zz_48) begin
          if(_zz_49)begin
            stageB_cpuWriteToCache = 1'b1;
          end
        end
      end
    end
    if(_zz_50)begin
      if(((((io_cpu_writeBack_isValid && io_mem_rsp_valid) && rspSync) && io_mem_rsp_payload_exclusive) && stageB_waysHit))begin
        stageB_cpuWriteToCache = 1'b1;
      end
    end
  end

  assign _zz_24 = ({1'd0,1'b1} <<< io_cpu_writeBack_address[2 : 2]);
  always @ (*) begin
    io_cpu_redo = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_request_isAmo) begin
        if(! _zz_48) begin
          if(_zz_49)begin
            if(_zz_51)begin
              io_cpu_redo = 1'b1;
            end
          end
        end
      end
    end
    if((io_cpu_writeBack_isValid && (stageB_mmuRsp_refilling || stageB_consistancyHazard)))begin
      io_cpu_redo = 1'b1;
    end
    if(loader_valid)begin
      io_cpu_redo = 1'b1;
    end
  end

  always @ (*) begin
    io_cpu_writeBack_accessError = 1'b0;
    if(stageB_bypassCache)begin
      io_cpu_writeBack_accessError = (io_mem_rsp_valid && io_mem_rsp_payload_error);
    end else begin
      io_cpu_writeBack_accessError = ((stageB_waysHits & _zz_26) != 2'b00);
    end
  end

  assign io_cpu_writeBack_mmuException = (io_cpu_writeBack_isValid && ((stageB_mmuRsp_exception || ((! stageB_mmuRsp_allowWrite) && stageB_request_wr)) || ((! stageB_mmuRsp_allowRead) && ((! stageB_request_wr) || stageB_request_isAmo))));
  assign io_cpu_writeBack_unalignedAccess = (io_cpu_writeBack_isValid && (((stageB_request_size == 2'b10) && (stageB_mmuRsp_physicalAddress[1 : 0] != 2'b00)) || ((stageB_request_size == 2'b01) && (stageB_mmuRsp_physicalAddress[0 : 0] != 1'b0))));
  assign io_cpu_writeBack_isWrite = stageB_request_wr;
  always @ (*) begin
    io_mem_cmd_valid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(stageB_request_isAmo)begin
        case(stageB_amo_external_state)
          `DataCacheExternalAmoStates_defaultEncoding_LR_CMD : begin
            io_mem_cmd_valid = 1'b1;
          end
          `DataCacheExternalAmoStates_defaultEncoding_LR_RSP : begin
          end
          `DataCacheExternalAmoStates_defaultEncoding_SC_CMD : begin
            io_mem_cmd_valid = 1'b1;
          end
          default : begin
          end
        endcase
      end else begin
        if(_zz_48)begin
          io_mem_cmd_valid = (! memCmdSent);
        end else begin
          if(_zz_49)begin
            if(stageB_request_wr)begin
              io_mem_cmd_valid = 1'b1;
            end
            if(_zz_51)begin
              io_mem_cmd_valid = 1'b0;
            end
          end else begin
            if((! memCmdSent))begin
              io_mem_cmd_valid = 1'b1;
            end
          end
        end
      end
    end
    if(_zz_45)begin
      io_mem_cmd_valid = 1'b0;
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 2],2'b00};
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_request_isAmo) begin
        if(! _zz_48) begin
          if(_zz_49)begin
            io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 2],2'b00};
          end else begin
            io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 6],6'h0};
          end
        end
      end
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_length = 4'b0000;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_request_isAmo) begin
        if(! _zz_48) begin
          if(_zz_49)begin
            io_mem_cmd_payload_length = 4'b0000;
          end else begin
            io_mem_cmd_payload_length = 4'b1111;
          end
        end
      end
    end
  end

  assign io_mem_cmd_payload_last = 1'b1;
  always @ (*) begin
    io_mem_cmd_payload_wr = stageB_request_wr;
    if(io_cpu_writeBack_isValid)begin
      if(stageB_request_isAmo)begin
        case(stageB_amo_external_state)
          `DataCacheExternalAmoStates_defaultEncoding_LR_CMD : begin
            io_mem_cmd_payload_wr = 1'b0;
          end
          `DataCacheExternalAmoStates_defaultEncoding_LR_RSP : begin
          end
          `DataCacheExternalAmoStates_defaultEncoding_SC_CMD : begin
          end
          default : begin
          end
        endcase
      end else begin
        if(! _zz_48) begin
          if(! _zz_49) begin
            io_mem_cmd_payload_wr = 1'b0;
          end
        end
      end
    end
  end

  assign io_mem_cmd_payload_mask = stageB_mask;
  assign io_mem_cmd_payload_data = stageB_requestDataBypass;
  assign io_mem_cmd_payload_uncached = stageB_mmuRsp_isIoAccess;
  assign io_mem_cmd_payload_exclusive = (stageB_request_isLrsc || stageB_request_isAmo);
  assign stageB_bypassCache = ((stageB_mmuRsp_isIoAccess || stageB_request_isLrsc) || stageB_request_isAmo);
  always @ (*) begin
    io_cpu_writeBack_keepMemRspData = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(stageB_request_isAmo)begin
        case(stageB_amo_external_state)
          `DataCacheExternalAmoStates_defaultEncoding_LR_CMD : begin
          end
          `DataCacheExternalAmoStates_defaultEncoding_LR_RSP : begin
          end
          `DataCacheExternalAmoStates_defaultEncoding_SC_CMD : begin
          end
          default : begin
            io_cpu_writeBack_keepMemRspData = 1'b1;
          end
        endcase
      end
    end
  end

  always @ (*) begin
    _zz_25 = (! stageB_request_wr);
    if(stageB_request_isLrsc)begin
      _zz_25 = 1'b1;
    end
  end

  always @ (*) begin
    if(stageB_bypassCache)begin
      io_cpu_writeBack_data = stageB_ioMemRspMuxed;
    end else begin
      io_cpu_writeBack_data = stageB_dataMux;
    end
    if(_zz_50)begin
      io_cpu_writeBack_data = {31'd0, _zz_108};
    end
  end

  always @ (*) begin
    _zz_26[0] = stageB_tagsReadRsp_0_error;
    _zz_26[1] = stageB_tagsReadRsp_1_error;
  end

  always @ (*) begin
    loader_counter_willIncrement = 1'b0;
    if(_zz_47)begin
      loader_counter_willIncrement = 1'b1;
    end
  end

  assign loader_counter_willClear = 1'b0;
  assign loader_counter_willOverflowIfInc = (loader_counter_value == 3'b111);
  assign loader_counter_willOverflow = (loader_counter_willOverflowIfInc && loader_counter_willIncrement);
  always @ (*) begin
    loader_counter_valueNext = (loader_counter_value + _zz_110);
    if(loader_counter_willClear)begin
      loader_counter_valueNext = 3'b000;
    end
  end

  always @ (*) begin
    loader_kill = 1'b0;
    if(((((io_mem_inv_valid && io_mem_inv_payload_enable) && loader_valid) && invalidate_s0_loaderLineHit) && invalidate_s0_loaderTagHit))begin
      loader_kill = 1'b1;
    end
  end

  always @ (*) begin
    loader_done = loader_counter_willOverflow;
    if((loader_valid && (pending_counter == 6'h0)))begin
      loader_done = 1'b1;
    end
    if(_zz_46)begin
      if(invalidate_s2_wayHit)begin
        loader_done = 1'b0;
      end
    end
  end

  assign tagsInvReadCmd_valid = (io_mem_inv_valid && io_mem_inv_ready);
  assign tagsInvReadCmd_payload = io_mem_inv_payload_address[11 : 6];
  assign invalidate_s0_loaderTagHit = (io_mem_inv_payload_address[31 : 12] == stageB_mmuRsp_physicalAddress[31 : 12]);
  assign invalidate_s0_loaderLineHit = (io_mem_inv_payload_address[11 : 6] == stageB_mmuRsp_physicalAddress[11 : 6]);
  assign io_mem_inv_ready = ((1'b1 && (! invalidate_s1_input_valid)) || invalidate_s1_input_ready);
  assign invalidate_s1_input_valid = io_mem_inv_m2sPipe_rValid;
  assign invalidate_s1_input_payload_enable = io_mem_inv_m2sPipe_rData_enable;
  assign invalidate_s1_input_payload_address = io_mem_inv_m2sPipe_rData_address;
  always @ (*) begin
    _zz_27[0] = ((invalidate_s1_input_payload_address[31 : 12] == ways_0_tagsInvReadRsp_address) && ways_0_tagsInvReadRsp_valid);
    _zz_27[1] = ((invalidate_s1_input_payload_address[31 : 12] == ways_1_tagsInvReadRsp_address) && ways_1_tagsInvReadRsp_valid);
  end

  assign invalidate_s1_wayHits = (_zz_27 & (~ invalidate_s1_invalidations));
  assign invalidate_s1_input_ready = ((1'b1 && (! invalidate_s2_input_valid)) || invalidate_s2_input_ready);
  assign invalidate_s2_input_valid = invalidate_s1_input_m2sPipe_rValid;
  assign invalidate_s2_input_payload_enable = invalidate_s1_input_m2sPipe_rData_enable;
  assign invalidate_s2_input_payload_address = invalidate_s1_input_m2sPipe_rData_address;
  assign invalidate_s2_wayHit = (invalidate_s2_wayHits != 2'b00);
  assign io_mem_ack_valid = invalidate_s2_input_valid;
  assign invalidate_s2_input_ready = io_mem_ack_ready;
  assign io_mem_ack_payload_hit = invalidate_s2_wayHit;
  assign invalidate_s1_invalidations = _zz_28;
  assign _zz_29 = (_zz_5 && 1'b1);
  assign _zz_30 = ((dataReadCmd_valid && (! io_cpu_memory_isStuck)) && 1'b1);
  assign _zz_31 = (_zz_3 && 1'b1);
  assign _zz_32 = ((dataReadCmd_valid && (! io_cpu_memory_isStuck)) && 1'b1);
  always @ (posedge clk) begin
    tagsWriteLastCmd_valid <= tagsWriteCmd_valid;
    tagsWriteLastCmd_payload_way <= tagsWriteCmd_payload_way;
    tagsWriteLastCmd_payload_address <= tagsWriteCmd_payload_address;
    tagsWriteLastCmd_payload_data_valid <= tagsWriteCmd_payload_data_valid;
    tagsWriteLastCmd_payload_data_error <= tagsWriteCmd_payload_data_error;
    tagsWriteLastCmd_payload_data_address <= tagsWriteCmd_payload_data_address;
    pending_done <= (pending_counterNext == 6'h0);
    pending_full <= pending_counter[5];
    pending_last <= (pending_counterNext == 6'h01);
    sync_syncContext_full <= (6'h1f <= _zz_77);
    if((! io_cpu_memory_isStuck))begin
      stageA_request_wr <= io_cpu_execute_args_wr;
      stageA_request_data <= io_cpu_execute_args_data;
      stageA_request_size <= io_cpu_execute_args_size;
      stageA_request_isLrsc <= io_cpu_execute_args_isLrsc;
      stageA_request_isAmo <= io_cpu_execute_args_isAmo;
      stageA_request_amoCtrl_swap <= io_cpu_execute_args_amoCtrl_swap;
      stageA_request_amoCtrl_alu <= io_cpu_execute_args_amoCtrl_alu;
      stageA_request_totalyConsistent <= io_cpu_execute_args_totalyConsistent;
    end
    if((! io_cpu_memory_isStuck))begin
      stageA_mask <= stage0_mask;
    end
    if((! io_cpu_memory_isStuck))begin
      _zz_18 <= (sync_w2r_busy || sync_o2r_busy);
    end
    if((! io_cpu_memory_isStuck))begin
      stageA_wayInvalidate <= stage0_wayInvalidate;
    end
    if((! io_cpu_memory_isStuck))begin
      stage0_dataColisions_regNextWhen <= stage0_dataColisions;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_request_wr <= stageA_request_wr;
      stageB_request_data <= stageA_request_data;
      stageB_request_size <= stageA_request_size;
      stageB_request_isLrsc <= stageA_request_isLrsc;
      stageB_request_isAmo <= stageA_request_isAmo;
      stageB_request_amoCtrl_swap <= stageA_request_amoCtrl_swap;
      stageB_request_amoCtrl_alu <= stageA_request_amoCtrl_alu;
      stageB_request_totalyConsistent <= stageA_request_totalyConsistent;
    end
    if(((! io_cpu_writeBack_isStuck) && (! stageB_mmuRspFreeze)))begin
      stageB_mmuRsp_physicalAddress <= io_cpu_memory_mmuRsp_physicalAddress;
      stageB_mmuRsp_isIoAccess <= io_cpu_memory_mmuRsp_isIoAccess;
      stageB_mmuRsp_allowRead <= io_cpu_memory_mmuRsp_allowRead;
      stageB_mmuRsp_allowWrite <= io_cpu_memory_mmuRsp_allowWrite;
      stageB_mmuRsp_allowExecute <= io_cpu_memory_mmuRsp_allowExecute;
      stageB_mmuRsp_exception <= io_cpu_memory_mmuRsp_exception;
      stageB_mmuRsp_refilling <= io_cpu_memory_mmuRsp_refilling;
      stageB_mmuRsp_bypassTranslation <= io_cpu_memory_mmuRsp_bypassTranslation;
      stageB_mmuRsp_ways_0_sel <= io_cpu_memory_mmuRsp_ways_0_sel;
      stageB_mmuRsp_ways_0_physical <= io_cpu_memory_mmuRsp_ways_0_physical;
      stageB_mmuRsp_ways_1_sel <= io_cpu_memory_mmuRsp_ways_1_sel;
      stageB_mmuRsp_ways_1_physical <= io_cpu_memory_mmuRsp_ways_1_physical;
      stageB_mmuRsp_ways_2_sel <= io_cpu_memory_mmuRsp_ways_2_sel;
      stageB_mmuRsp_ways_2_physical <= io_cpu_memory_mmuRsp_ways_2_physical;
      stageB_mmuRsp_ways_3_sel <= io_cpu_memory_mmuRsp_ways_3_sel;
      stageB_mmuRsp_ways_3_physical <= io_cpu_memory_mmuRsp_ways_3_physical;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_tagsReadRsp_0_valid <= ways_0_tagsReadRsp_valid;
      stageB_tagsReadRsp_0_error <= ways_0_tagsReadRsp_error;
      stageB_tagsReadRsp_0_address <= ways_0_tagsReadRsp_address;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_tagsReadRsp_1_valid <= ways_1_tagsReadRsp_valid;
      stageB_tagsReadRsp_1_error <= ways_1_tagsReadRsp_error;
      stageB_tagsReadRsp_1_address <= ways_1_tagsReadRsp_address;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_dataReadRsp_0 <= ways_0_dataReadRsp;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_dataReadRsp_1 <= ways_1_dataReadRsp;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_wayInvalidate <= stageA_wayInvalidate;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_consistancyHazard <= stageA_consistancyCheck_hazard;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_dataColisions <= stageA_dataColisions;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_waysHitsBeforeInvalidate <= stageA_wayHits;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_mask <= stageA_mask;
    end
    if(stageB_flusher_valid)begin
      if(_zz_52)begin
        if(_zz_53)begin
          stageB_mmuRsp_physicalAddress[11 : 6] <= (stageB_mmuRsp_physicalAddress[11 : 6] + 6'h01);
        end
      end
    end
    if(stageB_flusher_start)begin
      stageB_mmuRsp_physicalAddress[11 : 6] <= 6'h0;
    end
    if(io_cpu_writeBack_isValid)begin
      if(stageB_request_isAmo)begin
        case(stageB_amo_external_state)
          `DataCacheExternalAmoStates_defaultEncoding_LR_CMD : begin
          end
          `DataCacheExternalAmoStates_defaultEncoding_LR_RSP : begin
            if(_zz_54)begin
              stageB_amo_resultReg <= stageB_amo_result;
            end
          end
          `DataCacheExternalAmoStates_defaultEncoding_SC_CMD : begin
          end
          default : begin
          end
        endcase
      end
    end
    `ifndef SYNTHESIS
      `ifdef FORMAL
        assert((! ((io_cpu_writeBack_isValid && (! io_cpu_writeBack_haltIt)) && io_cpu_writeBack_isStuck)))
      `else
        if(!(! ((io_cpu_writeBack_isValid && (! io_cpu_writeBack_haltIt)) && io_cpu_writeBack_isStuck))) begin
          $display("FAILURE writeBack stuck by another plugin is not allowed");
          $finish;
        end
      `endif
    `endif
    if(io_mem_inv_ready)begin
      io_mem_inv_m2sPipe_rData_enable <= io_mem_inv_payload_enable;
      io_mem_inv_m2sPipe_rData_address <= io_mem_inv_payload_address;
    end
    if(io_mem_inv_ready)begin
      invalidate_s1_loaderValid <= loader_valid;
    end
    if(io_mem_inv_ready)begin
      invalidate_s1_loaderWay <= loader_waysAllocator;
    end
    if(io_mem_inv_ready)begin
      invalidate_s1_loaderTagHit <= invalidate_s0_loaderTagHit;
    end
    if(io_mem_inv_ready)begin
      invalidate_s1_loaderLineHit <= invalidate_s0_loaderLineHit;
    end
    if(invalidate_s1_input_ready)begin
      invalidate_s1_input_m2sPipe_rData_enable <= invalidate_s1_input_payload_enable;
      invalidate_s1_input_m2sPipe_rData_address <= invalidate_s1_input_payload_address;
    end
    if(invalidate_s1_input_ready)begin
      invalidate_s2_wayHits <= _zz_1;
    end
    if(io_mem_inv_ready)begin
      _zz_28 <= (((invalidate_s2_input_valid && invalidate_s2_input_payload_enable) && (invalidate_s2_input_payload_address[11 : 6] == io_mem_inv_payload_address[11 : 6])) ? invalidate_s2_wayHits : 2'b00);
    end
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      memCmdSent <= 1'b0;
      pending_counter <= 6'h0;
      sync_syncContext_wPtr <= 6'h0;
      sync_syncContext_rPtr <= 6'h0;
      sync_writeCached_pendingSync <= 6'h0;
      sync_writeUncached_pendingSync <= 6'h0;
      sync_w2w_counter <= 6'h0;
      sync_w2r_counter <= 6'h0;
      sync_w2i_counter <= 6'h0;
      sync_w2o_counter <= 6'h0;
      sync_o2w_counter <= 6'h0;
      sync_o2r_counter <= 6'h0;
      stageB_flusher_valid <= 1'b0;
      stageB_flusher_start <= 1'b1;
      stageB_amo_external_state <= `DataCacheExternalAmoStates_defaultEncoding_LR_CMD;
      loader_valid <= 1'b0;
      loader_counter_value <= 3'b000;
      loader_waysAllocator <= 2'b01;
      loader_error <= 1'b0;
      loader_killReg <= 1'b0;
      io_mem_inv_m2sPipe_rValid <= 1'b0;
      invalidate_s1_input_m2sPipe_rValid <= 1'b0;
    end else begin
      if(io_mem_cmd_ready)begin
        memCmdSent <= 1'b1;
      end
      if((! io_cpu_writeBack_isStuck))begin
        memCmdSent <= 1'b0;
      end
      pending_counter <= pending_counterNext;
      if(_zz_43)begin
        sync_syncContext_wPtr <= (sync_syncContext_wPtr + 6'h01);
      end
      if((io_mem_sync_valid && io_mem_sync_ready))begin
        sync_syncContext_rPtr <= (sync_syncContext_rPtr + _zz_75);
      end
      sync_writeCached_pendingSync <= sync_writeCached_pendingSyncNext;
      sync_writeUncached_pendingSync <= sync_writeUncached_pendingSyncNext;
      sync_w2w_counter <= (sync_w2w_counter - _zz_89);
      if((io_cpu_writeBack_fence_PW && io_cpu_writeBack_fence_SW))begin
        sync_w2w_counter <= sync_writeCached_pendingSyncNext;
      end
      sync_w2r_counter <= (sync_w2r_counter - _zz_91);
      if((io_cpu_writeBack_fence_PW && io_cpu_writeBack_fence_SR))begin
        sync_w2r_counter <= sync_writeCached_pendingSyncNext;
      end
      sync_w2i_counter <= (sync_w2i_counter - _zz_93);
      if((io_cpu_writeBack_fence_PW && io_cpu_writeBack_fence_SI))begin
        sync_w2i_counter <= sync_writeCached_pendingSyncNext;
      end
      sync_w2o_counter <= (sync_w2o_counter - _zz_95);
      if((io_cpu_writeBack_fence_PW && io_cpu_writeBack_fence_SO))begin
        sync_w2o_counter <= sync_writeCached_pendingSyncNext;
      end
      sync_o2w_counter <= (sync_o2w_counter - _zz_97);
      if((io_cpu_writeBack_fence_PO && io_cpu_writeBack_fence_SW))begin
        sync_o2w_counter <= sync_writeUncached_pendingSyncNext;
      end
      sync_o2r_counter <= (sync_o2r_counter - _zz_99);
      if((io_cpu_writeBack_fence_PO && io_cpu_writeBack_fence_SR))begin
        sync_o2r_counter <= sync_writeUncached_pendingSyncNext;
      end
      if(stageB_flusher_valid)begin
        if(_zz_52)begin
          if(! _zz_53) begin
            stageB_flusher_valid <= 1'b0;
          end
        end
      end
      stageB_flusher_start <= ((((((! stageB_flusher_start) && io_cpu_flush_valid) && (! io_cpu_execute_isValid)) && (! io_cpu_memory_isValid)) && (! io_cpu_writeBack_isValid)) && (! io_cpu_redo));
      if(stageB_flusher_start)begin
        stageB_flusher_valid <= 1'b1;
      end
      if(io_cpu_writeBack_isValid)begin
        if(stageB_request_isAmo)begin
          case(stageB_amo_external_state)
            `DataCacheExternalAmoStates_defaultEncoding_LR_CMD : begin
              if(io_mem_cmd_ready)begin
                stageB_amo_external_state <= `DataCacheExternalAmoStates_defaultEncoding_LR_RSP;
              end
            end
            `DataCacheExternalAmoStates_defaultEncoding_LR_RSP : begin
              if(_zz_54)begin
                stageB_amo_external_state <= `DataCacheExternalAmoStates_defaultEncoding_SC_CMD;
              end
            end
            `DataCacheExternalAmoStates_defaultEncoding_SC_CMD : begin
              if(io_mem_cmd_ready)begin
                stageB_amo_external_state <= `DataCacheExternalAmoStates_defaultEncoding_SC_RSP;
              end
            end
            default : begin
              if(io_mem_rsp_valid)begin
                stageB_amo_external_state <= `DataCacheExternalAmoStates_defaultEncoding_LR_CMD;
              end
            end
          endcase
        end
      end
      if(_zz_45)begin
        stageB_amo_external_state <= `DataCacheExternalAmoStates_defaultEncoding_LR_CMD;
      end
      if(stageB_loaderValid)begin
        loader_valid <= 1'b1;
      end
      loader_counter_value <= loader_counter_valueNext;
      if(loader_kill)begin
        loader_killReg <= 1'b1;
      end
      if(_zz_47)begin
        loader_error <= (loader_error || io_mem_rsp_payload_error);
      end
      if(loader_done)begin
        loader_valid <= 1'b0;
        loader_error <= 1'b0;
        loader_killReg <= 1'b0;
      end
      if((! loader_valid))begin
        loader_waysAllocator <= _zz_111[1:0];
      end
      if(io_mem_inv_ready)begin
        io_mem_inv_m2sPipe_rValid <= io_mem_inv_valid;
      end
      if(invalidate_s1_input_ready)begin
        invalidate_s1_input_m2sPipe_rValid <= invalidate_s1_input_valid;
      end
    end
  end


endmodule

module InstructionCache (
  input               io_flush,
  input               io_cpu_prefetch_isValid,
  output reg          io_cpu_prefetch_haltIt,
  input      [31:0]   io_cpu_prefetch_pc,
  input               io_cpu_fetch_isValid,
  input               io_cpu_fetch_isStuck,
  input               io_cpu_fetch_isRemoved,
  input      [31:0]   io_cpu_fetch_pc,
  output     [31:0]   io_cpu_fetch_data,
  input      [31:0]   io_cpu_fetch_mmuRsp_physicalAddress,
  input               io_cpu_fetch_mmuRsp_isIoAccess,
  input               io_cpu_fetch_mmuRsp_allowRead,
  input               io_cpu_fetch_mmuRsp_allowWrite,
  input               io_cpu_fetch_mmuRsp_allowExecute,
  input               io_cpu_fetch_mmuRsp_exception,
  input               io_cpu_fetch_mmuRsp_refilling,
  input               io_cpu_fetch_mmuRsp_bypassTranslation,
  input               io_cpu_fetch_mmuRsp_ways_0_sel,
  input      [31:0]   io_cpu_fetch_mmuRsp_ways_0_physical,
  input               io_cpu_fetch_mmuRsp_ways_1_sel,
  input      [31:0]   io_cpu_fetch_mmuRsp_ways_1_physical,
  input               io_cpu_fetch_mmuRsp_ways_2_sel,
  input      [31:0]   io_cpu_fetch_mmuRsp_ways_2_physical,
  input               io_cpu_fetch_mmuRsp_ways_3_sel,
  input      [31:0]   io_cpu_fetch_mmuRsp_ways_3_physical,
  output     [31:0]   io_cpu_fetch_physicalAddress,
  input               io_cpu_decode_isValid,
  input               io_cpu_decode_isStuck,
  input      [31:0]   io_cpu_decode_pc,
  output     [31:0]   io_cpu_decode_physicalAddress,
  output     [31:0]   io_cpu_decode_data,
  output              io_cpu_decode_cacheMiss,
  output              io_cpu_decode_error,
  output              io_cpu_decode_mmuRefilling,
  output              io_cpu_decode_mmuException,
  input               io_cpu_decode_isUser,
  input               io_cpu_fill_valid,
  input      [31:0]   io_cpu_fill_payload,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  output     [2:0]    io_mem_cmd_payload_size,
  input               io_mem_rsp_valid,
  input      [127:0]  io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input      [2:0]    _zz_18,
  input      [31:0]   _zz_19,
  input               clk,
  input               reset
);
  reg        [63:0]   _zz_20;
  reg        [63:0]   _zz_21;
  reg        [21:0]   _zz_22;
  reg        [21:0]   _zz_23;
  reg        [63:0]   _zz_24;
  reg        [63:0]   _zz_25;
  reg        [31:0]   _zz_26;
  reg        [31:0]   _zz_27;
  reg                 _zz_28;
  reg        [31:0]   _zz_29;
  wire                _zz_30;
  wire                _zz_31;
  wire       [0:0]    _zz_32;
  wire       [0:0]    _zz_33;
  wire       [0:0]    _zz_34;
  wire       [0:0]    _zz_35;
  wire       [0:0]    _zz_36;
  wire       [0:0]    _zz_37;
  wire       [0:0]    _zz_38;
  wire       [0:0]    _zz_39;
  wire       [21:0]   _zz_40;
  wire       [21:0]   _zz_41;
  wire       [0:0]    _zz_42;
  wire       [0:0]    _zz_43;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 _zz_3;
  reg                 _zz_4;
  reg                 lineLoader_fire;
  reg                 lineLoader_valid;
  (* keep , syn_keep *) reg        [31:0]   lineLoader_address /* synthesis syn_keep = 1 */ ;
  reg                 lineLoader_hadError;
  reg                 lineLoader_flushPending;
  reg        [6:0]    lineLoader_flushCounter;
  reg                 _zz_5;
  reg                 lineLoader_cmdSent;
  reg                 lineLoader_wayToAllocate_willIncrement;
  wire                lineLoader_wayToAllocate_willClear;
  reg        [0:0]    lineLoader_wayToAllocate_valueNext;
  reg        [0:0]    lineLoader_wayToAllocate_value;
  wire                lineLoader_wayToAllocate_willOverflowIfInc;
  wire                lineLoader_wayToAllocate_willOverflow;
  (* keep , syn_keep *) reg        [1:0]    lineLoader_wordIndex /* synthesis syn_keep = 1 */ ;
  wire                lineLoader_write_tag_0_valid;
  wire       [5:0]    lineLoader_write_tag_0_payload_address;
  wire                lineLoader_write_tag_0_payload_data_valid;
  wire                lineLoader_write_tag_0_payload_data_error;
  wire       [19:0]   lineLoader_write_tag_0_payload_data_address;
  wire                lineLoader_write_tag_1_valid;
  wire       [5:0]    lineLoader_write_tag_1_payload_address;
  wire                lineLoader_write_tag_1_payload_data_valid;
  wire                lineLoader_write_tag_1_payload_data_error;
  wire       [19:0]   lineLoader_write_tag_1_payload_data_address;
  wire                lineLoader_write_data_0_valid;
  wire       [8:0]    lineLoader_write_data_0_payload_address;
  wire       [63:0]   lineLoader_write_data_0_payload_data;
  wire                lineLoader_write_data_1_valid;
  wire       [8:0]    lineLoader_write_data_1_payload_address;
  wire       [63:0]   lineLoader_write_data_1_payload_data;
  wire       [0:0]    _zz_6;
  wire       [0:0]    _zz_7;
  wire       [8:0]    _zz_8;
  wire                _zz_9;
  wire       [63:0]   fetchStage_read_banksValue_0_dataMem;
  wire       [31:0]   fetchStage_read_banksValue_0_data;
  wire       [8:0]    _zz_10;
  wire                _zz_11;
  wire       [63:0]   fetchStage_read_banksValue_1_dataMem;
  wire       [31:0]   fetchStage_read_banksValue_1_data;
  wire       [5:0]    _zz_12;
  wire                _zz_13;
  wire                fetchStage_read_waysValues_0_tag_valid;
  wire                fetchStage_read_waysValues_0_tag_error;
  wire       [19:0]   fetchStage_read_waysValues_0_tag_address;
  wire       [21:0]   _zz_14;
  wire       [5:0]    _zz_15;
  wire                _zz_16;
  wire                fetchStage_read_waysValues_1_tag_valid;
  wire                fetchStage_read_waysValues_1_tag_error;
  wire       [19:0]   fetchStage_read_waysValues_1_tag_address;
  wire       [21:0]   _zz_17;
  wire                fetchStage_hit_hits_0;
  wire                fetchStage_hit_hits_1;
  wire                fetchStage_hit_valid;
  wire       [0:0]    fetchStage_hit_wayId;
  wire       [0:0]    fetchStage_hit_bankId;
  wire                fetchStage_hit_error;
  wire       [31:0]   fetchStage_hit_data;
  wire       [31:0]   fetchStage_hit_word;
  reg        [31:0]   io_cpu_fetch_data_regNextWhen;
  reg        [31:0]   decodeStage_mmuRsp_physicalAddress;
  reg                 decodeStage_mmuRsp_isIoAccess;
  reg                 decodeStage_mmuRsp_allowRead;
  reg                 decodeStage_mmuRsp_allowWrite;
  reg                 decodeStage_mmuRsp_allowExecute;
  reg                 decodeStage_mmuRsp_exception;
  reg                 decodeStage_mmuRsp_refilling;
  reg                 decodeStage_mmuRsp_bypassTranslation;
  reg                 decodeStage_mmuRsp_ways_0_sel;
  reg        [31:0]   decodeStage_mmuRsp_ways_0_physical;
  reg                 decodeStage_mmuRsp_ways_1_sel;
  reg        [31:0]   decodeStage_mmuRsp_ways_1_physical;
  reg                 decodeStage_mmuRsp_ways_2_sel;
  reg        [31:0]   decodeStage_mmuRsp_ways_2_physical;
  reg                 decodeStage_mmuRsp_ways_3_sel;
  reg        [31:0]   decodeStage_mmuRsp_ways_3_physical;
  reg                 decodeStage_hit_valid;
  reg                 decodeStage_hit_error;
  reg [63:0] banks_0 [0:511];
  reg [63:0] banks_1 [0:511];
  reg [21:0] ways_0_tags [0:63];
  reg [21:0] ways_1_tags [0:63];

  assign _zz_30 = (! lineLoader_flushCounter[6]);
  assign _zz_31 = (lineLoader_flushPending && (! (lineLoader_valid || io_cpu_fetch_isValid)));
  assign _zz_32 = (1'b0 - lineLoader_wayToAllocate_value);
  assign _zz_33 = (1'b1 - lineLoader_wayToAllocate_value);
  assign _zz_34 = _zz_14[0 : 0];
  assign _zz_35 = _zz_14[1 : 1];
  assign _zz_36 = _zz_17[0 : 0];
  assign _zz_37 = _zz_17[1 : 1];
  assign _zz_38 = (fetchStage_hit_wayId + io_cpu_fetch_mmuRsp_physicalAddress[3 : 3]);
  assign _zz_39 = _zz_38;
  assign _zz_40 = {lineLoader_write_tag_0_payload_data_address,{lineLoader_write_tag_0_payload_data_error,lineLoader_write_tag_0_payload_data_valid}};
  assign _zz_41 = {lineLoader_write_tag_1_payload_data_address,{lineLoader_write_tag_1_payload_data_error,lineLoader_write_tag_1_payload_data_valid}};
  assign _zz_42 = io_cpu_fetch_pc[2 : 2];
  assign _zz_43 = io_cpu_fetch_pc[2 : 2];
  always @ (posedge clk) begin
    if(_zz_2) begin
      banks_0[lineLoader_write_data_0_payload_address] <= lineLoader_write_data_0_payload_data;
    end
  end

  always @ (posedge clk) begin
    if(_zz_9) begin
      _zz_20 <= banks_0[_zz_8];
    end
  end

  always @ (posedge clk) begin
    if(_zz_1) begin
      banks_1[lineLoader_write_data_1_payload_address] <= lineLoader_write_data_1_payload_data;
    end
  end

  always @ (posedge clk) begin
    if(_zz_11) begin
      _zz_21 <= banks_1[_zz_10];
    end
  end

  always @ (posedge clk) begin
    if(_zz_4) begin
      ways_0_tags[lineLoader_write_tag_0_payload_address] <= _zz_40;
    end
  end

  always @ (posedge clk) begin
    if(_zz_13) begin
      _zz_22 <= ways_0_tags[_zz_12];
    end
  end

  always @ (posedge clk) begin
    if(_zz_3) begin
      ways_1_tags[lineLoader_write_tag_1_payload_address] <= _zz_41;
    end
  end

  always @ (posedge clk) begin
    if(_zz_16) begin
      _zz_23 <= ways_1_tags[_zz_15];
    end
  end

  always @(*) begin
    case(_zz_6)
      1'b0 : begin
        _zz_24 = io_mem_rsp_payload_data[63 : 0];
      end
      default : begin
        _zz_24 = io_mem_rsp_payload_data[127 : 64];
      end
    endcase
  end

  always @(*) begin
    case(_zz_7)
      1'b0 : begin
        _zz_25 = io_mem_rsp_payload_data[63 : 0];
      end
      default : begin
        _zz_25 = io_mem_rsp_payload_data[127 : 64];
      end
    endcase
  end

  always @(*) begin
    case(_zz_42)
      1'b0 : begin
        _zz_26 = fetchStage_read_banksValue_0_dataMem[31 : 0];
      end
      default : begin
        _zz_26 = fetchStage_read_banksValue_0_dataMem[63 : 32];
      end
    endcase
  end

  always @(*) begin
    case(_zz_43)
      1'b0 : begin
        _zz_27 = fetchStage_read_banksValue_1_dataMem[31 : 0];
      end
      default : begin
        _zz_27 = fetchStage_read_banksValue_1_dataMem[63 : 32];
      end
    endcase
  end

  always @(*) begin
    case(fetchStage_hit_wayId)
      1'b0 : begin
        _zz_28 = fetchStage_read_waysValues_0_tag_error;
      end
      default : begin
        _zz_28 = fetchStage_read_waysValues_1_tag_error;
      end
    endcase
  end

  always @(*) begin
    case(fetchStage_hit_bankId)
      1'b0 : begin
        _zz_29 = fetchStage_read_banksValue_0_data;
      end
      default : begin
        _zz_29 = fetchStage_read_banksValue_1_data;
      end
    endcase
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(lineLoader_write_data_1_valid)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    if(lineLoader_write_data_0_valid)begin
      _zz_2 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_3 = 1'b0;
    if(lineLoader_write_tag_1_valid)begin
      _zz_3 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_4 = 1'b0;
    if(lineLoader_write_tag_0_valid)begin
      _zz_4 = 1'b1;
    end
  end

  always @ (*) begin
    lineLoader_fire = 1'b0;
    if(io_mem_rsp_valid)begin
      if((lineLoader_wordIndex == 2'b11))begin
        lineLoader_fire = 1'b1;
      end
    end
  end

  always @ (*) begin
    io_cpu_prefetch_haltIt = (lineLoader_valid || lineLoader_flushPending);
    if(_zz_30)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if((! _zz_5))begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if(io_flush)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
  end

  assign io_mem_cmd_valid = (lineLoader_valid && (! lineLoader_cmdSent));
  assign io_mem_cmd_payload_address = {lineLoader_address[31 : 6],6'h0};
  assign io_mem_cmd_payload_size = 3'b110;
  always @ (*) begin
    lineLoader_wayToAllocate_willIncrement = 1'b0;
    if((! lineLoader_valid))begin
      lineLoader_wayToAllocate_willIncrement = 1'b1;
    end
  end

  assign lineLoader_wayToAllocate_willClear = 1'b0;
  assign lineLoader_wayToAllocate_willOverflowIfInc = (lineLoader_wayToAllocate_value == 1'b1);
  assign lineLoader_wayToAllocate_willOverflow = (lineLoader_wayToAllocate_willOverflowIfInc && lineLoader_wayToAllocate_willIncrement);
  always @ (*) begin
    lineLoader_wayToAllocate_valueNext = (lineLoader_wayToAllocate_value + lineLoader_wayToAllocate_willIncrement);
    if(lineLoader_wayToAllocate_willClear)begin
      lineLoader_wayToAllocate_valueNext = 1'b0;
    end
  end

  assign lineLoader_write_tag_0_valid = (((lineLoader_wayToAllocate_value == 1'b0) && lineLoader_fire) || (! lineLoader_flushCounter[6]));
  assign lineLoader_write_tag_0_payload_address = (lineLoader_flushCounter[6] ? lineLoader_address[11 : 6] : lineLoader_flushCounter[5 : 0]);
  assign lineLoader_write_tag_0_payload_data_valid = lineLoader_flushCounter[6];
  assign lineLoader_write_tag_0_payload_data_error = (lineLoader_hadError || io_mem_rsp_payload_error);
  assign lineLoader_write_tag_0_payload_data_address = lineLoader_address[31 : 12];
  assign lineLoader_write_tag_1_valid = (((lineLoader_wayToAllocate_value == 1'b1) && lineLoader_fire) || (! lineLoader_flushCounter[6]));
  assign lineLoader_write_tag_1_payload_address = (lineLoader_flushCounter[6] ? lineLoader_address[11 : 6] : lineLoader_flushCounter[5 : 0]);
  assign lineLoader_write_tag_1_payload_data_valid = lineLoader_flushCounter[6];
  assign lineLoader_write_tag_1_payload_data_error = (lineLoader_hadError || io_mem_rsp_payload_error);
  assign lineLoader_write_tag_1_payload_data_address = lineLoader_address[31 : 12];
  assign _zz_6 = _zz_32[0 : 0];
  assign lineLoader_write_data_0_valid = (io_mem_rsp_valid && 1'b1);
  assign lineLoader_write_data_0_payload_address = {{lineLoader_address[11 : 6],lineLoader_wordIndex},_zz_6};
  assign lineLoader_write_data_0_payload_data = _zz_24;
  assign _zz_7 = _zz_33[0 : 0];
  assign lineLoader_write_data_1_valid = (io_mem_rsp_valid && 1'b1);
  assign lineLoader_write_data_1_payload_address = {{lineLoader_address[11 : 6],lineLoader_wordIndex},_zz_7};
  assign lineLoader_write_data_1_payload_data = _zz_25;
  assign _zz_8 = io_cpu_prefetch_pc[11 : 3];
  assign _zz_9 = (! io_cpu_fetch_isStuck);
  assign fetchStage_read_banksValue_0_dataMem = _zz_20;
  assign fetchStage_read_banksValue_0_data = _zz_26;
  assign _zz_10 = io_cpu_prefetch_pc[11 : 3];
  assign _zz_11 = (! io_cpu_fetch_isStuck);
  assign fetchStage_read_banksValue_1_dataMem = _zz_21;
  assign fetchStage_read_banksValue_1_data = _zz_27;
  assign _zz_12 = io_cpu_prefetch_pc[11 : 6];
  assign _zz_13 = (! io_cpu_fetch_isStuck);
  assign _zz_14 = _zz_22;
  assign fetchStage_read_waysValues_0_tag_valid = _zz_34[0];
  assign fetchStage_read_waysValues_0_tag_error = _zz_35[0];
  assign fetchStage_read_waysValues_0_tag_address = _zz_14[21 : 2];
  assign _zz_15 = io_cpu_prefetch_pc[11 : 6];
  assign _zz_16 = (! io_cpu_fetch_isStuck);
  assign _zz_17 = _zz_23;
  assign fetchStage_read_waysValues_1_tag_valid = _zz_36[0];
  assign fetchStage_read_waysValues_1_tag_error = _zz_37[0];
  assign fetchStage_read_waysValues_1_tag_address = _zz_17[21 : 2];
  assign fetchStage_hit_hits_0 = (fetchStage_read_waysValues_0_tag_valid && (fetchStage_read_waysValues_0_tag_address == io_cpu_fetch_mmuRsp_physicalAddress[31 : 12]));
  assign fetchStage_hit_hits_1 = (fetchStage_read_waysValues_1_tag_valid && (fetchStage_read_waysValues_1_tag_address == io_cpu_fetch_mmuRsp_physicalAddress[31 : 12]));
  assign fetchStage_hit_valid = ({fetchStage_hit_hits_1,fetchStage_hit_hits_0} != 2'b00);
  assign fetchStage_hit_wayId = fetchStage_hit_hits_1;
  assign fetchStage_hit_bankId = _zz_39;
  assign fetchStage_hit_error = _zz_28;
  assign fetchStage_hit_data = _zz_29;
  assign fetchStage_hit_word = fetchStage_hit_data;
  assign io_cpu_fetch_data = fetchStage_hit_word;
  assign io_cpu_decode_data = io_cpu_fetch_data_regNextWhen;
  assign io_cpu_fetch_physicalAddress = io_cpu_fetch_mmuRsp_physicalAddress;
  assign io_cpu_decode_cacheMiss = (! decodeStage_hit_valid);
  assign io_cpu_decode_error = decodeStage_hit_error;
  assign io_cpu_decode_mmuRefilling = decodeStage_mmuRsp_refilling;
  assign io_cpu_decode_mmuException = ((! decodeStage_mmuRsp_refilling) && (decodeStage_mmuRsp_exception || (! decodeStage_mmuRsp_allowExecute)));
  assign io_cpu_decode_physicalAddress = decodeStage_mmuRsp_physicalAddress;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      lineLoader_valid <= 1'b0;
      lineLoader_hadError <= 1'b0;
      lineLoader_flushPending <= 1'b1;
      lineLoader_cmdSent <= 1'b0;
      lineLoader_wayToAllocate_value <= 1'b0;
      lineLoader_wordIndex <= 2'b00;
    end else begin
      if(lineLoader_fire)begin
        lineLoader_valid <= 1'b0;
      end
      if(lineLoader_fire)begin
        lineLoader_hadError <= 1'b0;
      end
      if(io_cpu_fill_valid)begin
        lineLoader_valid <= 1'b1;
      end
      if(io_flush)begin
        lineLoader_flushPending <= 1'b1;
      end
      if(_zz_31)begin
        lineLoader_flushPending <= 1'b0;
      end
      if((io_mem_cmd_valid && io_mem_cmd_ready))begin
        lineLoader_cmdSent <= 1'b1;
      end
      if(lineLoader_fire)begin
        lineLoader_cmdSent <= 1'b0;
      end
      lineLoader_wayToAllocate_value <= lineLoader_wayToAllocate_valueNext;
      if(io_mem_rsp_valid)begin
        lineLoader_wordIndex <= (lineLoader_wordIndex + 2'b01);
        if(io_mem_rsp_payload_error)begin
          lineLoader_hadError <= 1'b1;
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(io_cpu_fill_valid)begin
      lineLoader_address <= io_cpu_fill_payload;
    end
    if(_zz_30)begin
      lineLoader_flushCounter <= (lineLoader_flushCounter + 7'h01);
    end
    _zz_5 <= lineLoader_flushCounter[6];
    if(_zz_31)begin
      lineLoader_flushCounter <= 7'h0;
    end
    if((! io_cpu_decode_isStuck))begin
      io_cpu_fetch_data_regNextWhen <= io_cpu_fetch_data;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_mmuRsp_physicalAddress <= io_cpu_fetch_mmuRsp_physicalAddress;
      decodeStage_mmuRsp_isIoAccess <= io_cpu_fetch_mmuRsp_isIoAccess;
      decodeStage_mmuRsp_allowRead <= io_cpu_fetch_mmuRsp_allowRead;
      decodeStage_mmuRsp_allowWrite <= io_cpu_fetch_mmuRsp_allowWrite;
      decodeStage_mmuRsp_allowExecute <= io_cpu_fetch_mmuRsp_allowExecute;
      decodeStage_mmuRsp_exception <= io_cpu_fetch_mmuRsp_exception;
      decodeStage_mmuRsp_refilling <= io_cpu_fetch_mmuRsp_refilling;
      decodeStage_mmuRsp_bypassTranslation <= io_cpu_fetch_mmuRsp_bypassTranslation;
      decodeStage_mmuRsp_ways_0_sel <= io_cpu_fetch_mmuRsp_ways_0_sel;
      decodeStage_mmuRsp_ways_0_physical <= io_cpu_fetch_mmuRsp_ways_0_physical;
      decodeStage_mmuRsp_ways_1_sel <= io_cpu_fetch_mmuRsp_ways_1_sel;
      decodeStage_mmuRsp_ways_1_physical <= io_cpu_fetch_mmuRsp_ways_1_physical;
      decodeStage_mmuRsp_ways_2_sel <= io_cpu_fetch_mmuRsp_ways_2_sel;
      decodeStage_mmuRsp_ways_2_physical <= io_cpu_fetch_mmuRsp_ways_2_physical;
      decodeStage_mmuRsp_ways_3_sel <= io_cpu_fetch_mmuRsp_ways_3_sel;
      decodeStage_mmuRsp_ways_3_physical <= io_cpu_fetch_mmuRsp_ways_3_physical;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_hit_valid <= fetchStage_hit_valid;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_hit_error <= fetchStage_hit_error;
    end
    if((_zz_18 != 3'b000))begin
      io_cpu_fetch_data_regNextWhen <= _zz_19;
    end
  end


endmodule
