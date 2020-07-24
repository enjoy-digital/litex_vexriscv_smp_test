// Generator : SpinalHDL v1.4.2    git head : cc423cbe49567b3a1edafd0f7f7b75c887294ed2
// Component : VexRiscvLitexSmpCluster_Cc1_Iw64Is8192Iy2_Dw64Ds8192Dy2_Ldw128
// Git hash  : cc423cbe49567b3a1edafd0f7f7b75c887294ed2


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


module VexRiscvLitexSmpCluster_Cc1_Iw64Is8192Iy2_Dw64Ds8192Dy2_Ldw128 (
  input               debugCd_external_clk,
  input               debugCd_external_reset,
  input               debugPort_tdi,
  input               debugPort_enable,
  input               debugPort_capture,
  input               debugPort_shift,
  input               debugPort_update,
  input               debugPort_reset,
  output              debugPort_tdo,
  input               plicWishbone_CYC,
  input               plicWishbone_STB,
  output              plicWishbone_ACK,
  input               plicWishbone_WE,
  input      [19:0]   plicWishbone_ADR,
  output     [31:0]   plicWishbone_DAT_MISO,
  input      [31:0]   plicWishbone_DAT_MOSI,
  input               clintWishbone_CYC,
  input               clintWishbone_STB,
  output              clintWishbone_ACK,
  input               clintWishbone_WE,
  input      [13:0]   clintWishbone_ADR,
  output     [31:0]   clintWishbone_DAT_MISO,
  input      [31:0]   clintWishbone_DAT_MOSI,
  input      [31:0]   interrupts,
  output              iBridge_dram_cmd_valid,
  input               iBridge_dram_cmd_ready,
  output              iBridge_dram_cmd_payload_we,
  output     [31:0]   iBridge_dram_cmd_payload_addr,
  output              iBridge_dram_wdata_valid,
  input               iBridge_dram_wdata_ready,
  output     [127:0]  iBridge_dram_wdata_payload_data,
  output     [15:0]   iBridge_dram_wdata_payload_we,
  input               iBridge_dram_rdata_valid,
  output              iBridge_dram_rdata_ready,
  input      [127:0]  iBridge_dram_rdata_payload_data,
  output              peripheral_CYC,
  output              peripheral_STB,
  input               peripheral_ACK,
  output              peripheral_WE,
  output     [29:0]   peripheral_ADR,
  input      [31:0]   peripheral_DAT_MISO,
  output     [31:0]   peripheral_DAT_MOSI,
  output     [3:0]    peripheral_SEL,
  input               peripheral_ERR,
  output     [2:0]    peripheral_CTI,
  output     [1:0]    peripheral_BTE,
  output              dBridge_dram_cmd_valid,
  input               dBridge_dram_cmd_ready,
  output              dBridge_dram_cmd_payload_we,
  output     [31:0]   dBridge_dram_cmd_payload_addr,
  output              dBridge_dram_wdata_valid,
  input               dBridge_dram_wdata_ready,
  output     [127:0]  dBridge_dram_wdata_payload_data,
  output     [15:0]   dBridge_dram_wdata_payload_we,
  input               dBridge_dram_rdata_valid,
  output              dBridge_dram_rdata_ready,
  input      [127:0]  dBridge_dram_rdata_payload_data,
  input               jtag_clk
);
  wire                _zz_452;
  wire                _zz_453;
  reg                 _zz_454;
  wire                _zz_455;
  wire                _zz_456;
  wire                _zz_457;
  wire                _zz_458;
  wire                _zz_459;
  wire                _zz_460;
  wire                _zz_461;
  wire       [29:0]   _zz_462;
  wire       [29:0]   _zz_463;
  wire       [31:0]   _zz_464;
  wire       [3:0]    _zz_465;
  wire                debugBridge_logic_jtagBridge_io_ctrl_tdo;
  wire                debugBridge_logic_jtagBridge_io_remote_cmd_valid;
  wire                debugBridge_logic_jtagBridge_io_remote_cmd_payload_last;
  wire       [0:0]    debugBridge_logic_jtagBridge_io_remote_cmd_payload_fragment;
  wire                debugBridge_logic_jtagBridge_io_remote_rsp_ready;
  wire                debugBridge_logic_debugger_io_remote_cmd_ready;
  wire                debugBridge_logic_debugger_io_remote_rsp_valid;
  wire                debugBridge_logic_debugger_io_remote_rsp_payload_error;
  wire       [31:0]   debugBridge_logic_debugger_io_remote_rsp_payload_data;
  wire                debugBridge_logic_debugger_io_mem_cmd_valid;
  wire       [31:0]   debugBridge_logic_debugger_io_mem_cmd_payload_address;
  wire       [31:0]   debugBridge_logic_debugger_io_mem_cmd_payload_data;
  wire                debugBridge_logic_debugger_io_mem_cmd_payload_wr;
  wire       [1:0]    debugBridge_logic_debugger_io_mem_cmd_payload_size;
  wire       [31:0]   plicWishboneBridge_logic_io_input_DAT_MISO;
  wire                plicWishboneBridge_logic_io_input_ACK;
  wire                plicWishboneBridge_logic_io_output_cmd_valid;
  wire                plicWishboneBridge_logic_io_output_cmd_payload_last;
  wire       [0:0]    plicWishboneBridge_logic_io_output_cmd_payload_fragment_opcode;
  wire       [21:0]   plicWishboneBridge_logic_io_output_cmd_payload_fragment_address;
  wire       [1:0]    plicWishboneBridge_logic_io_output_cmd_payload_fragment_length;
  wire       [31:0]   plicWishboneBridge_logic_io_output_cmd_payload_fragment_data;
  wire       [3:0]    plicWishboneBridge_logic_io_output_cmd_payload_fragment_mask;
  wire                plicWishboneBridge_logic_io_output_rsp_ready;
  wire       [31:0]   clintWishboneBridge_logic_io_input_DAT_MISO;
  wire                clintWishboneBridge_logic_io_input_ACK;
  wire                clintWishboneBridge_logic_io_output_cmd_valid;
  wire                clintWishboneBridge_logic_io_output_cmd_payload_last;
  wire       [0:0]    clintWishboneBridge_logic_io_output_cmd_payload_fragment_opcode;
  wire       [15:0]   clintWishboneBridge_logic_io_output_cmd_payload_fragment_address;
  wire       [1:0]    clintWishboneBridge_logic_io_output_cmd_payload_fragment_length;
  wire       [31:0]   clintWishboneBridge_logic_io_output_cmd_payload_fragment_data;
  wire       [3:0]    clintWishboneBridge_logic_io_output_cmd_payload_fragment_mask;
  wire                clintWishboneBridge_logic_io_output_rsp_ready;
  wire                bufferCC_3_io_dataOut;
  wire                cores_0_cpu_logic_cpu_dBus_cmd_valid;
  wire                cores_0_cpu_logic_cpu_dBus_cmd_payload_wr;
  wire                cores_0_cpu_logic_cpu_dBus_cmd_payload_uncached;
  wire       [31:0]   cores_0_cpu_logic_cpu_dBus_cmd_payload_address;
  wire       [31:0]   cores_0_cpu_logic_cpu_dBus_cmd_payload_data;
  wire       [3:0]    cores_0_cpu_logic_cpu_dBus_cmd_payload_mask;
  wire       [3:0]    cores_0_cpu_logic_cpu_dBus_cmd_payload_length;
  wire                cores_0_cpu_logic_cpu_dBus_cmd_payload_last;
  wire                cores_0_cpu_logic_cpu_debug_bus_cmd_ready;
  wire       [31:0]   cores_0_cpu_logic_cpu_debug_bus_rsp_data;
  wire                cores_0_cpu_logic_cpu_debug_resetOut;
  wire                cores_0_cpu_logic_cpu_iBus_cmd_valid;
  wire       [31:0]   cores_0_cpu_logic_cpu_iBus_cmd_payload_address;
  wire       [2:0]    cores_0_cpu_logic_cpu_iBus_cmd_payload_size;
  wire                clint_logic_io_bus_cmd_ready;
  wire                clint_logic_io_bus_rsp_valid;
  wire                clint_logic_io_bus_rsp_payload_last;
  wire       [0:0]    clint_logic_io_bus_rsp_payload_fragment_opcode;
  wire       [31:0]   clint_logic_io_bus_rsp_payload_fragment_data;
  wire       [0:0]    clint_logic_io_timerInterrupt;
  wire       [0:0]    clint_logic_io_softwareInterrupt;
  wire       [63:0]   clint_logic_io_time;
  wire                debugBridge_bmb_decoder_io_input_cmd_ready;
  wire                debugBridge_bmb_decoder_io_input_rsp_valid;
  wire                debugBridge_bmb_decoder_io_input_rsp_payload_last;
  wire       [0:0]    debugBridge_bmb_decoder_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   debugBridge_bmb_decoder_io_input_rsp_payload_fragment_data;
  wire                debugBridge_bmb_decoder_io_outputs_0_cmd_valid;
  wire                debugBridge_bmb_decoder_io_outputs_0_cmd_payload_last;
  wire       [0:0]    debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode;
  wire       [31:0]   debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_address;
  wire       [1:0]    debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_length;
  wire       [31:0]   debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_data;
  wire       [3:0]    debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask;
  wire                debugBridge_bmb_decoder_io_outputs_0_rsp_ready;
  wire                plicWishboneBridge_bmb_decoder_io_input_cmd_ready;
  wire                plicWishboneBridge_bmb_decoder_io_input_rsp_valid;
  wire                plicWishboneBridge_bmb_decoder_io_input_rsp_payload_last;
  wire       [0:0]    plicWishboneBridge_bmb_decoder_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   plicWishboneBridge_bmb_decoder_io_input_rsp_payload_fragment_data;
  wire                plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_valid;
  wire                plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_last;
  wire       [0:0]    plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode;
  wire       [21:0]   plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_address;
  wire       [1:0]    plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_length;
  wire       [31:0]   plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_data;
  wire       [3:0]    plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask;
  wire                plicWishboneBridge_bmb_decoder_io_outputs_0_rsp_ready;
  wire                clintWishboneBridge_bmb_decoder_io_input_cmd_ready;
  wire                clintWishboneBridge_bmb_decoder_io_input_rsp_valid;
  wire                clintWishboneBridge_bmb_decoder_io_input_rsp_payload_last;
  wire       [0:0]    clintWishboneBridge_bmb_decoder_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   clintWishboneBridge_bmb_decoder_io_input_rsp_payload_fragment_data;
  wire                clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_valid;
  wire                clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_last;
  wire       [0:0]    clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode;
  wire       [15:0]   clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_address;
  wire       [1:0]    clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_length;
  wire       [31:0]   clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_data;
  wire       [3:0]    clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask;
  wire                clintWishboneBridge_bmb_decoder_io_outputs_0_rsp_ready;
  wire                bufferCC_4_io_dataOut;
  wire                iBridge_logic_io_input_cmd_ready;
  wire                iBridge_logic_io_input_rsp_valid;
  wire                iBridge_logic_io_input_rsp_payload_last;
  wire       [0:0]    iBridge_logic_io_input_rsp_payload_fragment_opcode;
  wire       [63:0]   iBridge_logic_io_input_rsp_payload_fragment_data;
  wire                iBridge_logic_io_output_cmd_valid;
  wire                iBridge_logic_io_output_cmd_payload_we;
  wire       [31:0]   iBridge_logic_io_output_cmd_payload_addr;
  wire                iBridge_logic_io_output_wdata_valid;
  wire       [127:0]  iBridge_logic_io_output_wdata_payload_data;
  wire       [15:0]   iBridge_logic_io_output_wdata_payload_we;
  wire                iBridge_logic_io_output_rdata_ready;
  wire                peripheralBridge_logic_io_input_cmd_ready;
  wire                peripheralBridge_logic_io_input_rsp_valid;
  wire                peripheralBridge_logic_io_input_rsp_payload_last;
  wire       [0:0]    peripheralBridge_logic_io_input_rsp_payload_fragment_source;
  wire       [0:0]    peripheralBridge_logic_io_input_rsp_payload_fragment_opcode;
  wire       [31:0]   peripheralBridge_logic_io_input_rsp_payload_fragment_data;
  wire       [4:0]    peripheralBridge_logic_io_input_rsp_payload_fragment_context;
  wire       [31:0]   peripheralBridge_logic_io_output_DAT_MOSI;
  wire       [29:0]   peripheralBridge_logic_io_output_ADR;
  wire                peripheralBridge_logic_io_output_CYC;
  wire       [3:0]    peripheralBridge_logic_io_output_SEL;
  wire                peripheralBridge_logic_io_output_STB;
  wire                peripheralBridge_logic_io_output_WE;
  wire       [2:0]    peripheralBridge_logic_io_output_CTI;
  wire       [1:0]    peripheralBridge_logic_io_output_BTE;
  wire                dBridge_logic_io_input_cmd_ready;
  wire                dBridge_logic_io_input_rsp_valid;
  wire                dBridge_logic_io_input_rsp_payload_last;
  wire       [0:0]    dBridge_logic_io_input_rsp_payload_fragment_opcode;
  wire       [63:0]   dBridge_logic_io_input_rsp_payload_fragment_data;
  wire       [3:0]    dBridge_logic_io_input_rsp_payload_fragment_context;
  wire                dBridge_logic_io_output_cmd_valid;
  wire                dBridge_logic_io_output_cmd_payload_we;
  wire       [31:0]   dBridge_logic_io_output_cmd_payload_addr;
  wire                dBridge_logic_io_output_wdata_valid;
  wire       [127:0]  dBridge_logic_io_output_wdata_payload_data;
  wire       [15:0]   dBridge_logic_io_output_wdata_payload_we;
  wire                dBridge_logic_io_output_rdata_ready;
  wire                peripheralBridge_bmb_arbiter_io_inputs_0_cmd_ready;
  wire                peripheralBridge_bmb_arbiter_io_inputs_0_rsp_valid;
  wire                peripheralBridge_bmb_arbiter_io_inputs_0_rsp_payload_last;
  wire       [0:0]    peripheralBridge_bmb_arbiter_io_inputs_0_rsp_payload_fragment_opcode;
  wire       [31:0]   peripheralBridge_bmb_arbiter_io_inputs_0_rsp_payload_fragment_data;
  wire       [4:0]    peripheralBridge_bmb_arbiter_io_inputs_0_rsp_payload_fragment_context;
  wire                peripheralBridge_bmb_arbiter_io_inputs_1_cmd_ready;
  wire                peripheralBridge_bmb_arbiter_io_inputs_1_rsp_valid;
  wire                peripheralBridge_bmb_arbiter_io_inputs_1_rsp_payload_last;
  wire       [0:0]    peripheralBridge_bmb_arbiter_io_inputs_1_rsp_payload_fragment_opcode;
  wire       [31:0]   peripheralBridge_bmb_arbiter_io_inputs_1_rsp_payload_fragment_data;
  wire       [0:0]    peripheralBridge_bmb_arbiter_io_inputs_1_rsp_payload_fragment_context;
  wire                peripheralBridge_bmb_arbiter_io_output_cmd_valid;
  wire                peripheralBridge_bmb_arbiter_io_output_cmd_payload_last;
  wire       [0:0]    peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_source;
  wire       [0:0]    peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_address;
  wire       [5:0]    peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_length;
  wire       [31:0]   peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_data;
  wire       [3:0]    peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_mask;
  wire       [4:0]    peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_context;
  wire                peripheralBridge_bmb_arbiter_io_output_rsp_ready;
  wire                iArbiter_bmb_decoder_io_input_cmd_ready;
  wire                iArbiter_bmb_decoder_io_input_rsp_valid;
  wire                iArbiter_bmb_decoder_io_input_rsp_payload_last;
  wire       [0:0]    iArbiter_bmb_decoder_io_input_rsp_payload_fragment_opcode;
  wire       [63:0]   iArbiter_bmb_decoder_io_input_rsp_payload_fragment_data;
  wire                iArbiter_bmb_decoder_io_outputs_0_cmd_valid;
  wire                iArbiter_bmb_decoder_io_outputs_0_cmd_payload_last;
  wire       [0:0]    iArbiter_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode;
  wire       [31:0]   iArbiter_bmb_decoder_io_outputs_0_cmd_payload_fragment_address;
  wire       [5:0]    iArbiter_bmb_decoder_io_outputs_0_cmd_payload_fragment_length;
  wire                iArbiter_bmb_decoder_io_outputs_0_rsp_ready;
  wire                iArbiter_bmb_decoder_io_outputs_1_cmd_valid;
  wire                iArbiter_bmb_decoder_io_outputs_1_cmd_payload_last;
  wire       [0:0]    iArbiter_bmb_decoder_io_outputs_1_cmd_payload_fragment_opcode;
  wire       [31:0]   iArbiter_bmb_decoder_io_outputs_1_cmd_payload_fragment_address;
  wire       [5:0]    iArbiter_bmb_decoder_io_outputs_1_cmd_payload_fragment_length;
  wire                iArbiter_bmb_decoder_io_outputs_1_rsp_ready;
  wire                dBusNonCoherent_bmb_decoder_io_input_cmd_ready;
  wire                dBusNonCoherent_bmb_decoder_io_input_rsp_valid;
  wire                dBusNonCoherent_bmb_decoder_io_input_rsp_payload_last;
  wire       [0:0]    dBusNonCoherent_bmb_decoder_io_input_rsp_payload_fragment_opcode;
  wire       [63:0]   dBusNonCoherent_bmb_decoder_io_input_rsp_payload_fragment_data;
  wire       [3:0]    dBusNonCoherent_bmb_decoder_io_input_rsp_payload_fragment_context;
  wire                dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_valid;
  wire                dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_last;
  wire       [0:0]    dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode;
  wire       [31:0]   dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_address;
  wire       [5:0]    dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_length;
  wire       [63:0]   dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_data;
  wire       [7:0]    dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask;
  wire       [3:0]    dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_context;
  wire                dBusNonCoherent_bmb_decoder_io_outputs_0_rsp_ready;
  wire                dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_valid;
  wire                dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_last;
  wire       [0:0]    dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_opcode;
  wire       [31:0]   dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_address;
  wire       [5:0]    dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_length;
  wire       [63:0]   dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_data;
  wire       [7:0]    dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_mask;
  wire       [3:0]    dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_context;
  wire                dBusNonCoherent_bmb_decoder_io_outputs_1_rsp_ready;
  wire                iArbiter_bmb_downSizer_io_input_cmd_ready;
  wire                iArbiter_bmb_downSizer_io_input_rsp_valid;
  wire                iArbiter_bmb_downSizer_io_input_rsp_payload_last;
  wire       [0:0]    iArbiter_bmb_downSizer_io_input_rsp_payload_fragment_opcode;
  wire       [63:0]   iArbiter_bmb_downSizer_io_input_rsp_payload_fragment_data;
  wire                iArbiter_bmb_downSizer_io_output_cmd_valid;
  wire                iArbiter_bmb_downSizer_io_output_cmd_payload_last;
  wire       [0:0]    iArbiter_bmb_downSizer_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   iArbiter_bmb_downSizer_io_output_cmd_payload_fragment_address;
  wire       [5:0]    iArbiter_bmb_downSizer_io_output_cmd_payload_fragment_length;
  wire       [0:0]    iArbiter_bmb_downSizer_io_output_cmd_payload_fragment_context;
  wire                iArbiter_bmb_downSizer_io_output_rsp_ready;
  wire                dBusNonCoherent_bmb_downSizer_io_input_cmd_ready;
  wire                dBusNonCoherent_bmb_downSizer_io_input_rsp_valid;
  wire                dBusNonCoherent_bmb_downSizer_io_input_rsp_payload_last;
  wire       [0:0]    dBusNonCoherent_bmb_downSizer_io_input_rsp_payload_fragment_opcode;
  wire       [63:0]   dBusNonCoherent_bmb_downSizer_io_input_rsp_payload_fragment_data;
  wire       [3:0]    dBusNonCoherent_bmb_downSizer_io_input_rsp_payload_fragment_context;
  wire                dBusNonCoherent_bmb_downSizer_io_output_cmd_valid;
  wire                dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_last;
  wire       [0:0]    dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_opcode;
  wire       [31:0]   dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_address;
  wire       [5:0]    dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_length;
  wire       [31:0]   dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_data;
  wire       [3:0]    dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_mask;
  wire       [4:0]    dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_context;
  wire                dBusNonCoherent_bmb_downSizer_io_output_rsp_ready;
  wire                _zz_466;
  wire                _zz_467;
  wire                _zz_468;
  wire                _zz_469;
  wire                _zz_470;
  wire                _zz_471;
  wire                _zz_472;
  wire                _zz_473;
  wire                _zz_474;
  wire                _zz_475;
  wire                _zz_476;
  wire                _zz_477;
  wire                _zz_478;
  wire                _zz_479;
  wire                _zz_480;
  wire                _zz_481;
  wire       [29:0]   _zz_482;
  wire       [6:0]    _zz_483;
  wire       [5:0]    _zz_484;
  wire       [0:0]    _zz_485;
  wire       [0:0]    _zz_486;
  wire       [0:0]    _zz_487;
  wire       [0:0]    _zz_488;
  wire       [0:0]    _zz_489;
  wire       [0:0]    _zz_490;
  wire       [0:0]    _zz_491;
  wire       [0:0]    _zz_492;
  wire       [0:0]    _zz_493;
  wire       [0:0]    _zz_494;
  wire       [0:0]    _zz_495;
  wire       [0:0]    _zz_496;
  wire       [0:0]    _zz_497;
  wire       [0:0]    _zz_498;
  wire       [0:0]    _zz_499;
  wire       [0:0]    _zz_500;
  wire       [0:0]    _zz_501;
  wire       [0:0]    _zz_502;
  wire       [0:0]    _zz_503;
  wire       [0:0]    _zz_504;
  wire       [0:0]    _zz_505;
  wire       [0:0]    _zz_506;
  wire       [0:0]    _zz_507;
  wire       [0:0]    _zz_508;
  wire       [0:0]    _zz_509;
  wire       [0:0]    _zz_510;
  wire       [0:0]    _zz_511;
  wire       [0:0]    _zz_512;
  wire       [0:0]    _zz_513;
  wire       [0:0]    _zz_514;
  wire       [0:0]    _zz_515;
  wire       [0:0]    _zz_516;
  wire       [0:0]    _zz_517;
  wire       [0:0]    _zz_518;
  wire       [0:0]    _zz_519;
  wire       [0:0]    _zz_520;
  wire       [0:0]    _zz_521;
  wire       [0:0]    _zz_522;
  wire       [0:0]    _zz_523;
  wire       [0:0]    _zz_524;
  wire       [0:0]    _zz_525;
  wire       [0:0]    _zz_526;
  wire       [0:0]    _zz_527;
  wire       [0:0]    _zz_528;
  wire       [0:0]    _zz_529;
  wire       [0:0]    _zz_530;
  wire       [0:0]    _zz_531;
  wire       [0:0]    _zz_532;
  wire       [0:0]    _zz_533;
  wire       [0:0]    _zz_534;
  wire       [0:0]    _zz_535;
  wire       [0:0]    _zz_536;
  wire       [0:0]    _zz_537;
  wire       [0:0]    _zz_538;
  wire       [0:0]    _zz_539;
  wire       [0:0]    _zz_540;
  wire       [0:0]    _zz_541;
  wire       [0:0]    _zz_542;
  wire       [0:0]    _zz_543;
  wire       [0:0]    _zz_544;
  wire       [0:0]    _zz_545;
  wire       [0:0]    _zz_546;
  wire       [0:0]    _zz_547;
  wire       [4:0]    _zz_548;
  wire       [4:0]    _zz_549;
  wire       [4:0]    _zz_550;
  wire       [4:0]    _zz_551;
  wire       [4:0]    _zz_552;
  wire       [4:0]    _zz_553;
  wire       [4:0]    _zz_554;
  wire       [4:0]    _zz_555;
  wire       [4:0]    _zz_556;
  wire       [4:0]    _zz_557;
  wire       [4:0]    _zz_558;
  wire       [4:0]    _zz_559;
  wire       [4:0]    _zz_560;
  wire       [4:0]    _zz_561;
  wire       [4:0]    _zz_562;
  wire       [4:0]    _zz_563;
  wire       [4:0]    _zz_564;
  wire       [4:0]    _zz_565;
  wire       [4:0]    _zz_566;
  wire       [4:0]    _zz_567;
  wire       [4:0]    _zz_568;
  wire       [4:0]    _zz_569;
  wire       [4:0]    _zz_570;
  wire       [4:0]    _zz_571;
  wire       [4:0]    _zz_572;
  wire       [4:0]    _zz_573;
  wire       [4:0]    _zz_574;
  wire       [4:0]    _zz_575;
  wire       [4:0]    _zz_576;
  wire       [4:0]    _zz_577;
  wire       [4:0]    _zz_578;
  wire       [4:0]    _zz_579;
  reg                 debugCd_logic_inputResetTrigger;
  reg                 debugCd_logic_outputResetUnbuffered;
  reg        [11:0]   debugCd_logic_holdingLogic_resetCounter;
  reg                 debugCd_logic_outputReset;
  reg                 systemCd_logic_inputResetTrigger;
  reg                 systemCd_logic_outputResetUnbuffered;
  reg        [5:0]    systemCd_logic_holdingLogic_resetCounter;
  reg                 systemCd_logic_outputReset;
  wire                debugBridge_logic_mmMaster_cmd_valid;
  wire                debugBridge_logic_mmMaster_cmd_ready;
  wire                debugBridge_logic_mmMaster_cmd_payload_last;
  wire       [0:0]    debugBridge_logic_mmMaster_cmd_payload_fragment_opcode;
  wire       [31:0]   debugBridge_logic_mmMaster_cmd_payload_fragment_address;
  wire       [1:0]    debugBridge_logic_mmMaster_cmd_payload_fragment_length;
  wire       [31:0]   debugBridge_logic_mmMaster_cmd_payload_fragment_data;
  wire       [3:0]    debugBridge_logic_mmMaster_cmd_payload_fragment_mask;
  wire                debugBridge_logic_mmMaster_rsp_valid;
  wire                debugBridge_logic_mmMaster_rsp_ready;
  wire                debugBridge_logic_mmMaster_rsp_payload_last;
  wire       [0:0]    debugBridge_logic_mmMaster_rsp_payload_fragment_opcode;
  wire       [31:0]   debugBridge_logic_mmMaster_rsp_payload_fragment_data;
  reg        [3:0]    _zz_1;
  wire                _zz_2;
  wire       [1:0]    _zz_3;
  reg                 _zz_4;
  reg                 _zz_5;
  wire                _zz_6;
  wire       [1:0]    _zz_7;
  reg                 _zz_8;
  reg                 _zz_9;
  wire                _zz_10;
  wire       [1:0]    _zz_11;
  reg                 _zz_12;
  reg                 _zz_13;
  wire                _zz_14;
  wire       [1:0]    _zz_15;
  reg                 _zz_16;
  reg                 _zz_17;
  wire                _zz_18;
  wire       [1:0]    _zz_19;
  reg                 _zz_20;
  reg                 _zz_21;
  wire                _zz_22;
  wire       [1:0]    _zz_23;
  reg                 _zz_24;
  reg                 _zz_25;
  wire                _zz_26;
  wire       [1:0]    _zz_27;
  reg                 _zz_28;
  reg                 _zz_29;
  wire                _zz_30;
  wire       [1:0]    _zz_31;
  reg                 _zz_32;
  reg                 _zz_33;
  wire                _zz_34;
  wire       [1:0]    _zz_35;
  reg                 _zz_36;
  reg                 _zz_37;
  wire                _zz_38;
  wire       [1:0]    _zz_39;
  reg                 _zz_40;
  reg                 _zz_41;
  wire                _zz_42;
  wire       [1:0]    _zz_43;
  reg                 _zz_44;
  reg                 _zz_45;
  wire                _zz_46;
  wire       [1:0]    _zz_47;
  reg                 _zz_48;
  reg                 _zz_49;
  wire                _zz_50;
  wire       [1:0]    _zz_51;
  reg                 _zz_52;
  reg                 _zz_53;
  wire                _zz_54;
  wire       [1:0]    _zz_55;
  reg                 _zz_56;
  reg                 _zz_57;
  wire                _zz_58;
  wire       [1:0]    _zz_59;
  reg                 _zz_60;
  reg                 _zz_61;
  wire                _zz_62;
  wire       [1:0]    _zz_63;
  reg                 _zz_64;
  reg                 _zz_65;
  wire                _zz_66;
  wire       [1:0]    _zz_67;
  reg                 _zz_68;
  reg                 _zz_69;
  wire                _zz_70;
  wire       [1:0]    _zz_71;
  reg                 _zz_72;
  reg                 _zz_73;
  wire                _zz_74;
  wire       [1:0]    _zz_75;
  reg                 _zz_76;
  reg                 _zz_77;
  wire                _zz_78;
  wire       [1:0]    _zz_79;
  reg                 _zz_80;
  reg                 _zz_81;
  wire                _zz_82;
  wire       [1:0]    _zz_83;
  reg                 _zz_84;
  reg                 _zz_85;
  wire                _zz_86;
  wire       [1:0]    _zz_87;
  reg                 _zz_88;
  reg                 _zz_89;
  wire                _zz_90;
  wire       [1:0]    _zz_91;
  reg                 _zz_92;
  reg                 _zz_93;
  wire                _zz_94;
  wire       [1:0]    _zz_95;
  reg                 _zz_96;
  reg                 _zz_97;
  wire                _zz_98;
  wire       [1:0]    _zz_99;
  reg                 _zz_100;
  reg                 _zz_101;
  wire                _zz_102;
  wire       [1:0]    _zz_103;
  reg                 _zz_104;
  reg                 _zz_105;
  wire                _zz_106;
  wire       [1:0]    _zz_107;
  reg                 _zz_108;
  reg                 _zz_109;
  wire                _zz_110;
  wire       [1:0]    _zz_111;
  reg                 _zz_112;
  reg                 _zz_113;
  wire                _zz_114;
  wire       [1:0]    _zz_115;
  reg                 _zz_116;
  reg                 _zz_117;
  wire                _zz_118;
  wire       [1:0]    _zz_119;
  reg                 _zz_120;
  reg                 _zz_121;
  wire                _zz_122;
  wire       [1:0]    _zz_123;
  reg                 _zz_124;
  reg                 _zz_125;
  wire                debugCd_logic_inputResetAdapter_stuff_syncTrigger;
  reg                 systemCd_logic_inputResetAdapter_stuff_syncTrigger;
  wire                cores_0_cpu_debugBmb_cmd_valid;
  wire                cores_0_cpu_debugBmb_cmd_ready;
  wire                cores_0_cpu_debugBmb_cmd_payload_last;
  wire       [0:0]    cores_0_cpu_debugBmb_cmd_payload_fragment_opcode;
  wire       [7:0]    cores_0_cpu_debugBmb_cmd_payload_fragment_address;
  wire       [1:0]    cores_0_cpu_debugBmb_cmd_payload_fragment_length;
  wire       [31:0]   cores_0_cpu_debugBmb_cmd_payload_fragment_data;
  wire       [3:0]    cores_0_cpu_debugBmb_cmd_payload_fragment_mask;
  wire                cores_0_cpu_debugBmb_rsp_valid;
  wire                cores_0_cpu_debugBmb_rsp_ready;
  wire                cores_0_cpu_debugBmb_rsp_payload_last;
  wire       [0:0]    cores_0_cpu_debugBmb_rsp_payload_fragment_opcode;
  wire       [31:0]   cores_0_cpu_debugBmb_rsp_payload_fragment_data;
  wire                cores_0_cpu_iBus_cmd_valid;
  wire                cores_0_cpu_iBus_cmd_ready;
  wire                cores_0_cpu_iBus_cmd_payload_last;
  wire       [0:0]    cores_0_cpu_iBus_cmd_payload_fragment_opcode;
  wire       [31:0]   cores_0_cpu_iBus_cmd_payload_fragment_address;
  wire       [5:0]    cores_0_cpu_iBus_cmd_payload_fragment_length;
  wire                cores_0_cpu_iBus_rsp_valid;
  wire                cores_0_cpu_iBus_rsp_ready;
  wire                cores_0_cpu_iBus_rsp_payload_last;
  wire       [0:0]    cores_0_cpu_iBus_rsp_payload_fragment_opcode;
  wire       [63:0]   cores_0_cpu_iBus_rsp_payload_fragment_data;
  wire                dBus_Bridge_bus_cmd_valid;
  wire                dBus_Bridge_bus_cmd_ready;
  wire                dBus_Bridge_bus_cmd_payload_last;
  wire       [0:0]    dBus_Bridge_bus_cmd_payload_fragment_opcode;
  wire       [31:0]   dBus_Bridge_bus_cmd_payload_fragment_address;
  wire       [5:0]    dBus_Bridge_bus_cmd_payload_fragment_length;
  wire       [63:0]   dBus_Bridge_bus_cmd_payload_fragment_data;
  wire       [7:0]    dBus_Bridge_bus_cmd_payload_fragment_mask;
  wire       [3:0]    dBus_Bridge_bus_cmd_payload_fragment_context;
  wire                dBus_Bridge_bus_rsp_valid;
  wire                dBus_Bridge_bus_rsp_ready;
  wire                dBus_Bridge_bus_rsp_payload_last;
  wire       [0:0]    dBus_Bridge_bus_rsp_payload_fragment_opcode;
  wire       [63:0]   dBus_Bridge_bus_rsp_payload_fragment_data;
  wire       [3:0]    dBus_Bridge_bus_rsp_payload_fragment_context;
  wire                _zz_126;
  wire                dBus_Bridge_withWriteBuffer_buffer_stream_valid;
  wire                dBus_Bridge_withWriteBuffer_buffer_stream_ready;
  reg                 _zz_127;
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
  wire                dBus_Bridge_withWriteBuffer_cmdExclusive;
  wire                dBus_Bridge_withWriteBuffer_canAggregate;
  wire                dBus_Bridge_withWriteBuffer_doFlush;
  wire                dBus_Bridge_withWriteBuffer_busCmdContext_isWrite;
  wire       [2:0]    dBus_Bridge_withWriteBuffer_busCmdContext_rspCount;
  wire                dBus_Bridge_withWriteBuffer_halt;
  wire       [0:0]    dBus_Bridge_withWriteBuffer_aggregationSel;
  wire       [7:0]    _zz_128;
  wire       [7:0]    _zz_129;
  wire       [7:0]    _zz_130;
  wire       [7:0]    _zz_131;
  wire                dBus_Bridge_withWriteBuffer_rspCtx_isWrite;
  wire       [2:0]    dBus_Bridge_withWriteBuffer_rspCtx_rspCount;
  wire       [3:0]    _zz_132;
  reg                 cores_0_cpu_debugReset;
  reg                 _zz_133;
  wire                plic_logic_bmb_cmd_valid;
  wire                plic_logic_bmb_cmd_ready;
  wire                plic_logic_bmb_cmd_payload_last;
  wire       [0:0]    plic_logic_bmb_cmd_payload_fragment_opcode;
  wire       [21:0]   plic_logic_bmb_cmd_payload_fragment_address;
  wire       [1:0]    plic_logic_bmb_cmd_payload_fragment_length;
  wire       [31:0]   plic_logic_bmb_cmd_payload_fragment_data;
  wire       [3:0]    plic_logic_bmb_cmd_payload_fragment_mask;
  wire                plic_logic_bmb_rsp_valid;
  wire                plic_logic_bmb_rsp_ready;
  wire                plic_logic_bmb_rsp_payload_last;
  wire       [0:0]    plic_logic_bmb_rsp_payload_fragment_opcode;
  wire       [31:0]   plic_logic_bmb_rsp_payload_fragment_data;
  wire                plic_logic_bus_readHaltTrigger;
  wire                plic_logic_bus_writeHaltTrigger;
  wire                plic_logic_bus_rsp_valid;
  wire                plic_logic_bus_rsp_ready;
  wire                plic_logic_bus_rsp_payload_last;
  wire       [0:0]    plic_logic_bus_rsp_payload_fragment_opcode;
  reg        [31:0]   plic_logic_bus_rsp_payload_fragment_data;
  wire                _zz_134;
  wire                _zz_135;
  wire                _zz_136;
  reg                 _zz_137;
  reg                 _zz_138;
  reg        [0:0]    _zz_139;
  reg        [31:0]   _zz_140;
  wire                plic_logic_bus_askWrite;
  wire                plic_logic_bus_askRead;
  wire                plic_logic_bus_doWrite;
  wire                plic_logic_bus_doRead;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_0;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_1;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_2;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_3;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_4;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_5;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_6;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_7;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_8;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_9;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_10;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_11;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_12;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_13;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_14;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_15;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_16;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_17;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_18;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_19;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_20;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_21;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_22;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_23;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_24;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_25;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_26;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_27;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_28;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_29;
  wire                cores_0_cpu_externalInterrupt_plic_target_ie_30;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_threshold;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_0_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_0_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_0_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_1_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_1_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_1_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_2_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_2_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_2_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_3_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_3_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_3_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_4_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_4_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_4_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_5_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_5_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_5_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_6_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_6_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_6_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_7_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_7_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_7_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_8_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_8_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_8_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_9_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_9_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_9_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_10_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_10_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_10_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_11_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_11_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_11_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_12_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_12_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_12_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_13_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_13_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_13_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_14_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_14_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_14_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_15_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_15_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_15_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_16_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_16_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_16_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_17_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_17_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_17_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_18_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_18_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_18_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_19_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_19_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_19_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_20_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_20_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_20_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_21_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_21_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_21_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_22_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_22_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_22_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_23_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_23_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_23_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_24_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_24_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_24_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_25_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_25_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_25_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_26_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_26_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_26_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_27_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_27_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_27_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_28_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_28_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_28_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_29_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_29_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_29_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_30_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_30_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_30_valid;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_requests_31_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_requests_31_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_requests_31_valid;
  wire                _zz_141;
  wire       [1:0]    _zz_142;
  wire                _zz_143;
  wire                _zz_144;
  wire       [1:0]    _zz_145;
  wire                _zz_146;
  wire                _zz_147;
  wire       [1:0]    _zz_148;
  wire                _zz_149;
  wire                _zz_150;
  wire       [1:0]    _zz_151;
  wire                _zz_152;
  wire                _zz_153;
  wire       [1:0]    _zz_154;
  wire                _zz_155;
  wire                _zz_156;
  wire       [1:0]    _zz_157;
  wire                _zz_158;
  wire                _zz_159;
  wire       [1:0]    _zz_160;
  wire                _zz_161;
  wire                _zz_162;
  wire       [1:0]    _zz_163;
  wire                _zz_164;
  wire                _zz_165;
  wire       [1:0]    _zz_166;
  wire                _zz_167;
  wire                _zz_168;
  wire       [1:0]    _zz_169;
  wire                _zz_170;
  wire                _zz_171;
  wire       [1:0]    _zz_172;
  wire                _zz_173;
  wire                _zz_174;
  wire       [1:0]    _zz_175;
  wire                _zz_176;
  wire                _zz_177;
  wire       [1:0]    _zz_178;
  wire                _zz_179;
  wire                _zz_180;
  wire       [1:0]    _zz_181;
  wire                _zz_182;
  wire                _zz_183;
  wire       [1:0]    _zz_184;
  wire                _zz_185;
  wire                _zz_186;
  wire       [1:0]    _zz_187;
  wire                _zz_188;
  wire                _zz_189;
  wire       [1:0]    _zz_190;
  wire                _zz_191;
  wire                _zz_192;
  wire       [1:0]    _zz_193;
  wire                _zz_194;
  wire                _zz_195;
  wire       [1:0]    _zz_196;
  wire                _zz_197;
  wire                _zz_198;
  wire       [1:0]    _zz_199;
  wire                _zz_200;
  wire                _zz_201;
  wire       [1:0]    _zz_202;
  wire                _zz_203;
  wire                _zz_204;
  wire       [1:0]    _zz_205;
  wire                _zz_206;
  wire                _zz_207;
  wire       [1:0]    _zz_208;
  wire                _zz_209;
  wire                _zz_210;
  wire       [1:0]    _zz_211;
  wire                _zz_212;
  wire                _zz_213;
  wire       [1:0]    _zz_214;
  wire                _zz_215;
  wire                _zz_216;
  wire       [1:0]    _zz_217;
  wire                _zz_218;
  wire                _zz_219;
  wire       [1:0]    _zz_220;
  wire                _zz_221;
  wire                _zz_222;
  wire       [1:0]    _zz_223;
  wire                _zz_224;
  wire                _zz_225;
  wire       [1:0]    _zz_226;
  wire                _zz_227;
  wire                _zz_228;
  wire       [1:0]    _zz_229;
  wire                _zz_230;
  wire                _zz_231;
  wire       [1:0]    cores_0_cpu_externalInterrupt_plic_target_bestRequest_priority;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_bestRequest_id;
  wire                cores_0_cpu_externalInterrupt_plic_target_bestRequest_valid;
  wire                cores_0_cpu_externalInterrupt_plic_target_iep;
  wire       [4:0]    cores_0_cpu_externalInterrupt_plic_target_claim;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_0;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_1;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_2;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_3;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_4;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_5;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_6;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_7;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_8;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_9;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_10;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_11;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_12;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_13;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_14;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_15;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_16;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_17;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_18;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_19;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_20;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_21;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_22;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_23;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_24;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_25;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_26;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_27;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_28;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_29;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_30;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_threshold;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_0_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_0_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_0_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_1_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_1_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_1_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_2_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_2_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_2_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_3_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_3_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_3_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_4_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_4_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_4_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_5_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_5_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_5_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_6_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_6_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_6_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_7_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_7_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_7_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_8_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_8_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_8_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_9_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_9_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_9_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_10_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_10_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_10_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_11_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_11_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_11_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_12_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_12_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_12_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_13_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_13_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_13_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_14_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_14_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_14_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_15_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_15_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_15_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_16_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_16_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_16_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_17_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_17_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_17_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_18_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_18_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_18_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_19_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_19_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_19_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_20_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_20_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_20_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_21_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_21_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_21_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_22_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_22_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_22_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_23_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_23_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_23_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_24_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_24_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_24_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_25_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_25_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_25_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_26_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_26_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_26_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_27_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_27_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_27_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_28_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_28_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_28_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_29_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_29_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_29_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_30_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_30_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_30_valid;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_31_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_31_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_31_valid;
  wire                _zz_232;
  wire       [1:0]    _zz_233;
  wire                _zz_234;
  wire                _zz_235;
  wire       [1:0]    _zz_236;
  wire                _zz_237;
  wire                _zz_238;
  wire       [1:0]    _zz_239;
  wire                _zz_240;
  wire                _zz_241;
  wire       [1:0]    _zz_242;
  wire                _zz_243;
  wire                _zz_244;
  wire       [1:0]    _zz_245;
  wire                _zz_246;
  wire                _zz_247;
  wire       [1:0]    _zz_248;
  wire                _zz_249;
  wire                _zz_250;
  wire       [1:0]    _zz_251;
  wire                _zz_252;
  wire                _zz_253;
  wire       [1:0]    _zz_254;
  wire                _zz_255;
  wire                _zz_256;
  wire       [1:0]    _zz_257;
  wire                _zz_258;
  wire                _zz_259;
  wire       [1:0]    _zz_260;
  wire                _zz_261;
  wire                _zz_262;
  wire       [1:0]    _zz_263;
  wire                _zz_264;
  wire                _zz_265;
  wire       [1:0]    _zz_266;
  wire                _zz_267;
  wire                _zz_268;
  wire       [1:0]    _zz_269;
  wire                _zz_270;
  wire                _zz_271;
  wire       [1:0]    _zz_272;
  wire                _zz_273;
  wire                _zz_274;
  wire       [1:0]    _zz_275;
  wire                _zz_276;
  wire                _zz_277;
  wire       [1:0]    _zz_278;
  wire                _zz_279;
  wire                _zz_280;
  wire       [1:0]    _zz_281;
  wire                _zz_282;
  wire                _zz_283;
  wire       [1:0]    _zz_284;
  wire                _zz_285;
  wire                _zz_286;
  wire       [1:0]    _zz_287;
  wire                _zz_288;
  wire                _zz_289;
  wire       [1:0]    _zz_290;
  wire                _zz_291;
  wire                _zz_292;
  wire       [1:0]    _zz_293;
  wire                _zz_294;
  wire                _zz_295;
  wire       [1:0]    _zz_296;
  wire                _zz_297;
  wire                _zz_298;
  wire       [1:0]    _zz_299;
  wire                _zz_300;
  wire                _zz_301;
  wire       [1:0]    _zz_302;
  wire                _zz_303;
  wire                _zz_304;
  wire       [1:0]    _zz_305;
  wire                _zz_306;
  wire                _zz_307;
  wire       [1:0]    _zz_308;
  wire                _zz_309;
  wire                _zz_310;
  wire       [1:0]    _zz_311;
  wire                _zz_312;
  wire                _zz_313;
  wire       [1:0]    _zz_314;
  wire                _zz_315;
  wire                _zz_316;
  wire       [1:0]    _zz_317;
  wire                _zz_318;
  wire                _zz_319;
  wire       [1:0]    _zz_320;
  wire                _zz_321;
  wire                _zz_322;
  wire       [1:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_bestRequest_priority;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_bestRequest_id;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_bestRequest_valid;
  wire                cores_0_cpu_externalSupervisorInterrupt_plic_target_iep;
  wire       [4:0]    cores_0_cpu_externalSupervisorInterrupt_plic_target_claim;
  reg        [1:0]    _zz_323;
  reg        [1:0]    _zz_324;
  reg        [1:0]    _zz_325;
  reg        [1:0]    _zz_326;
  reg        [1:0]    _zz_327;
  reg        [1:0]    _zz_328;
  reg        [1:0]    _zz_329;
  reg        [1:0]    _zz_330;
  reg        [1:0]    _zz_331;
  reg        [1:0]    _zz_332;
  reg        [1:0]    _zz_333;
  reg        [1:0]    _zz_334;
  reg        [1:0]    _zz_335;
  reg        [1:0]    _zz_336;
  reg        [1:0]    _zz_337;
  reg        [1:0]    _zz_338;
  reg        [1:0]    _zz_339;
  reg        [1:0]    _zz_340;
  reg        [1:0]    _zz_341;
  reg        [1:0]    _zz_342;
  reg        [1:0]    _zz_343;
  reg        [1:0]    _zz_344;
  reg        [1:0]    _zz_345;
  reg        [1:0]    _zz_346;
  reg        [1:0]    _zz_347;
  reg        [1:0]    _zz_348;
  reg        [1:0]    _zz_349;
  reg        [1:0]    _zz_350;
  reg        [1:0]    _zz_351;
  reg        [1:0]    _zz_352;
  reg        [1:0]    _zz_353;
  reg                 plic_logic_bridge_claim_valid;
  reg        [4:0]    plic_logic_bridge_claim_payload;
  reg                 plic_logic_bridge_completion_valid;
  reg        [4:0]    plic_logic_bridge_completion_payload;
  reg        [1:0]    _zz_354;
  reg                 plic_logic_bridge_targetMapping_0_targetCompletion_valid;
  wire       [4:0]    plic_logic_bridge_targetMapping_0_targetCompletion_payload;
  reg                 _zz_355;
  reg                 _zz_356;
  reg                 _zz_357;
  reg                 _zz_358;
  reg                 _zz_359;
  reg                 _zz_360;
  reg                 _zz_361;
  reg                 _zz_362;
  reg                 _zz_363;
  reg                 _zz_364;
  reg                 _zz_365;
  reg                 _zz_366;
  reg                 _zz_367;
  reg                 _zz_368;
  reg                 _zz_369;
  reg                 _zz_370;
  reg                 _zz_371;
  reg                 _zz_372;
  reg                 _zz_373;
  reg                 _zz_374;
  reg                 _zz_375;
  reg                 _zz_376;
  reg                 _zz_377;
  reg                 _zz_378;
  reg                 _zz_379;
  reg                 _zz_380;
  reg                 _zz_381;
  reg                 _zz_382;
  reg                 _zz_383;
  reg                 _zz_384;
  reg                 _zz_385;
  reg        [1:0]    _zz_386;
  reg                 plic_logic_bridge_targetMapping_1_targetCompletion_valid;
  wire       [4:0]    plic_logic_bridge_targetMapping_1_targetCompletion_payload;
  reg                 _zz_387;
  reg                 _zz_388;
  reg                 _zz_389;
  reg                 _zz_390;
  reg                 _zz_391;
  reg                 _zz_392;
  reg                 _zz_393;
  reg                 _zz_394;
  reg                 _zz_395;
  reg                 _zz_396;
  reg                 _zz_397;
  reg                 _zz_398;
  reg                 _zz_399;
  reg                 _zz_400;
  reg                 _zz_401;
  reg                 _zz_402;
  reg                 _zz_403;
  reg                 _zz_404;
  reg                 _zz_405;
  reg                 _zz_406;
  reg                 _zz_407;
  reg                 _zz_408;
  reg                 _zz_409;
  reg                 _zz_410;
  reg                 _zz_411;
  reg                 _zz_412;
  reg                 _zz_413;
  reg                 _zz_414;
  reg                 _zz_415;
  reg                 _zz_416;
  reg                 _zz_417;
  wire                cores_0_cpu_iBus_connector_decoder_cmd_valid;
  wire                cores_0_cpu_iBus_connector_decoder_cmd_ready;
  wire                cores_0_cpu_iBus_connector_decoder_cmd_payload_last;
  wire       [0:0]    cores_0_cpu_iBus_connector_decoder_cmd_payload_fragment_opcode;
  wire       [31:0]   cores_0_cpu_iBus_connector_decoder_cmd_payload_fragment_address;
  wire       [5:0]    cores_0_cpu_iBus_connector_decoder_cmd_payload_fragment_length;
  wire                cores_0_cpu_iBus_connector_decoder_rsp_valid;
  wire                cores_0_cpu_iBus_connector_decoder_rsp_ready;
  wire                cores_0_cpu_iBus_connector_decoder_rsp_payload_last;
  wire       [0:0]    cores_0_cpu_iBus_connector_decoder_rsp_payload_fragment_opcode;
  wire       [63:0]   cores_0_cpu_iBus_connector_decoder_rsp_payload_fragment_data;
  wire                _zz_418;
  wire                cores_0_cpu_iBus_cmd_halfPipe_valid;
  wire                cores_0_cpu_iBus_cmd_halfPipe_ready;
  wire                cores_0_cpu_iBus_cmd_halfPipe_payload_last;
  wire       [0:0]    cores_0_cpu_iBus_cmd_halfPipe_payload_fragment_opcode;
  wire       [31:0]   cores_0_cpu_iBus_cmd_halfPipe_payload_fragment_address;
  wire       [5:0]    cores_0_cpu_iBus_cmd_halfPipe_payload_fragment_length;
  reg                 cores_0_cpu_iBus_cmd_halfPipe_regs_valid;
  reg                 cores_0_cpu_iBus_cmd_halfPipe_regs_ready;
  reg                 cores_0_cpu_iBus_cmd_halfPipe_regs_payload_last;
  reg        [0:0]    cores_0_cpu_iBus_cmd_halfPipe_regs_payload_fragment_opcode;
  reg        [31:0]   cores_0_cpu_iBus_cmd_halfPipe_regs_payload_fragment_address;
  reg        [5:0]    cores_0_cpu_iBus_cmd_halfPipe_regs_payload_fragment_length;
  wire                _zz_419;
  reg                 _zz_420;
  reg                 _zz_421;
  reg        [0:0]    _zz_422;
  reg        [63:0]   _zz_423;
  wire                cores_0_cpu_dBus_connector_decoder_cmd_valid;
  wire                cores_0_cpu_dBus_connector_decoder_cmd_ready;
  wire                cores_0_cpu_dBus_connector_decoder_cmd_payload_last;
  wire       [0:0]    cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_opcode;
  wire       [31:0]   cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_address;
  wire       [5:0]    cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_length;
  wire       [63:0]   cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_data;
  wire       [7:0]    cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_mask;
  wire       [3:0]    cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_context;
  wire                cores_0_cpu_dBus_connector_decoder_rsp_valid;
  wire                cores_0_cpu_dBus_connector_decoder_rsp_ready;
  wire                cores_0_cpu_dBus_connector_decoder_rsp_payload_last;
  wire       [0:0]    cores_0_cpu_dBus_connector_decoder_rsp_payload_fragment_opcode;
  wire       [63:0]   cores_0_cpu_dBus_connector_decoder_rsp_payload_fragment_data;
  wire       [3:0]    cores_0_cpu_dBus_connector_decoder_rsp_payload_fragment_context;
  wire                _zz_424;
  wire                dBus_Bridge_bus_cmd_s2mPipe_valid;
  wire                dBus_Bridge_bus_cmd_s2mPipe_ready;
  wire                dBus_Bridge_bus_cmd_s2mPipe_payload_last;
  wire       [0:0]    dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_opcode;
  wire       [31:0]   dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_address;
  wire       [5:0]    dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_length;
  wire       [63:0]   dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_data;
  wire       [7:0]    dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_mask;
  wire       [3:0]    dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_context;
  reg                 dBus_Bridge_bus_cmd_s2mPipe_rValid;
  reg                 dBus_Bridge_bus_cmd_s2mPipe_rData_last;
  reg        [0:0]    dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_opcode;
  reg        [31:0]   dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_address;
  reg        [5:0]    dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_length;
  reg        [63:0]   dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_data;
  reg        [7:0]    dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_mask;
  reg        [3:0]    dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_context;
  wire                dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_valid;
  wire                dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_ready;
  wire                dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_last;
  wire       [0:0]    dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_opcode;
  wire       [31:0]   dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_address;
  wire       [5:0]    dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_length;
  wire       [63:0]   dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_data;
  wire       [7:0]    dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_mask;
  wire       [3:0]    dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_context;
  reg                 dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rValid;
  reg                 dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_last;
  reg        [0:0]    dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_opcode;
  reg        [31:0]   dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_address;
  reg        [5:0]    dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_length;
  reg        [63:0]   dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_data;
  reg        [7:0]    dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_mask;
  reg        [3:0]    dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_context;
  wire                _zz_425;
  reg                 _zz_426;
  reg                 _zz_427;
  reg        [0:0]    _zz_428;
  reg        [63:0]   _zz_429;
  reg        [3:0]    _zz_430;
  wire                resetGenerator_stuff_syncTrigger;
  wire                _zz_431;
  wire                peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_valid;
  wire                peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_ready;
  wire                peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_last;
  wire       [0:0]    peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_source;
  wire       [0:0]    peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_opcode;
  wire       [31:0]   peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_address;
  wire       [5:0]    peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_length;
  wire       [31:0]   peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_data;
  wire       [3:0]    peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_mask;
  wire       [4:0]    peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_context;
  reg                 peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_valid;
  reg                 peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_ready;
  reg                 peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_last;
  reg        [0:0]    peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_source;
  reg        [0:0]    peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_opcode;
  reg        [31:0]   peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_address;
  reg        [5:0]    peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_length;
  reg        [31:0]   peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_data;
  reg        [3:0]    peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_mask;
  reg        [4:0]    peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_context;
  wire                _zz_432;
  reg                 _zz_433;
  reg                 _zz_434;
  reg        [0:0]    _zz_435;
  reg        [0:0]    _zz_436;
  reg        [31:0]   _zz_437;
  reg        [4:0]    _zz_438;
  wire                dBusNonCoherent_bmb_cmd_valid;
  wire                dBusNonCoherent_bmb_cmd_ready;
  wire                dBusNonCoherent_bmb_cmd_payload_last;
  wire       [0:0]    dBusNonCoherent_bmb_cmd_payload_fragment_opcode;
  wire       [31:0]   dBusNonCoherent_bmb_cmd_payload_fragment_address;
  wire       [5:0]    dBusNonCoherent_bmb_cmd_payload_fragment_length;
  wire       [63:0]   dBusNonCoherent_bmb_cmd_payload_fragment_data;
  wire       [7:0]    dBusNonCoherent_bmb_cmd_payload_fragment_mask;
  wire       [3:0]    dBusNonCoherent_bmb_cmd_payload_fragment_context;
  wire                dBusNonCoherent_bmb_rsp_valid;
  wire                dBusNonCoherent_bmb_rsp_ready;
  wire                dBusNonCoherent_bmb_rsp_payload_last;
  wire       [0:0]    dBusNonCoherent_bmb_rsp_payload_fragment_opcode;
  wire       [63:0]   dBusNonCoherent_bmb_rsp_payload_fragment_data;
  wire       [3:0]    dBusNonCoherent_bmb_rsp_payload_fragment_context;
  wire                iArbiter_bmb_cmd_valid;
  wire                iArbiter_bmb_cmd_ready;
  wire                iArbiter_bmb_cmd_payload_last;
  wire       [0:0]    iArbiter_bmb_cmd_payload_fragment_opcode;
  wire       [31:0]   iArbiter_bmb_cmd_payload_fragment_address;
  wire       [5:0]    iArbiter_bmb_cmd_payload_fragment_length;
  wire                iArbiter_bmb_rsp_valid;
  wire                iArbiter_bmb_rsp_ready;
  wire                iArbiter_bmb_rsp_payload_last;
  wire       [0:0]    iArbiter_bmb_rsp_payload_fragment_opcode;
  wire       [63:0]   iArbiter_bmb_rsp_payload_fragment_data;
  wire                _zz_439;
  wire                iArbiter_bmb_cmd_halfPipe_valid;
  wire                iArbiter_bmb_cmd_halfPipe_ready;
  wire                iArbiter_bmb_cmd_halfPipe_payload_last;
  wire       [0:0]    iArbiter_bmb_cmd_halfPipe_payload_fragment_opcode;
  wire       [31:0]   iArbiter_bmb_cmd_halfPipe_payload_fragment_address;
  wire       [5:0]    iArbiter_bmb_cmd_halfPipe_payload_fragment_length;
  reg                 iArbiter_bmb_cmd_halfPipe_regs_valid;
  reg                 iArbiter_bmb_cmd_halfPipe_regs_ready;
  reg                 iArbiter_bmb_cmd_halfPipe_regs_payload_last;
  reg        [0:0]    iArbiter_bmb_cmd_halfPipe_regs_payload_fragment_opcode;
  reg        [31:0]   iArbiter_bmb_cmd_halfPipe_regs_payload_fragment_address;
  reg        [5:0]    iArbiter_bmb_cmd_halfPipe_regs_payload_fragment_length;
  wire                _zz_440;
  reg                 _zz_441;
  reg                 _zz_442;
  reg        [0:0]    _zz_443;
  reg        [63:0]   _zz_444;
  wire                _zz_445;
  wire                dBusNonCoherent_bmb_cmd_s2mPipe_valid;
  wire                dBusNonCoherent_bmb_cmd_s2mPipe_ready;
  wire                dBusNonCoherent_bmb_cmd_s2mPipe_payload_last;
  wire       [0:0]    dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_opcode;
  wire       [31:0]   dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_address;
  wire       [5:0]    dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_length;
  wire       [63:0]   dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_data;
  wire       [7:0]    dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_mask;
  wire       [3:0]    dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_context;
  reg                 dBusNonCoherent_bmb_cmd_s2mPipe_rValid;
  reg                 dBusNonCoherent_bmb_cmd_s2mPipe_rData_last;
  reg        [0:0]    dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_opcode;
  reg        [31:0]   dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_address;
  reg        [5:0]    dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_length;
  reg        [63:0]   dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_data;
  reg        [7:0]    dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_mask;
  reg        [3:0]    dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_context;
  wire                dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_valid;
  wire                dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_ready;
  wire                dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_last;
  wire       [0:0]    dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_opcode;
  wire       [31:0]   dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_address;
  wire       [5:0]    dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_length;
  wire       [63:0]   dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_data;
  wire       [7:0]    dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_mask;
  wire       [3:0]    dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_context;
  reg                 dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rValid;
  reg                 dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_last;
  reg        [0:0]    dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_opcode;
  reg        [31:0]   dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_address;
  reg        [5:0]    dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_length;
  reg        [63:0]   dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_data;
  reg        [7:0]    dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_mask;
  reg        [3:0]    dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_context;
  wire                _zz_446;
  reg                 _zz_447;
  reg                 _zz_448;
  reg        [0:0]    _zz_449;
  reg        [63:0]   _zz_450;
  reg        [3:0]    _zz_451;
  wire                dBusCoherent_bmb_cmd_valid;
  wire                dBusCoherent_bmb_cmd_ready;
  wire                dBusCoherent_bmb_cmd_payload_last;
  wire       [0:0]    dBusCoherent_bmb_cmd_payload_fragment_opcode;
  wire       [31:0]   dBusCoherent_bmb_cmd_payload_fragment_address;
  wire       [5:0]    dBusCoherent_bmb_cmd_payload_fragment_length;
  wire       [63:0]   dBusCoherent_bmb_cmd_payload_fragment_data;
  wire       [7:0]    dBusCoherent_bmb_cmd_payload_fragment_mask;
  wire       [3:0]    dBusCoherent_bmb_cmd_payload_fragment_context;
  wire                dBusCoherent_bmb_rsp_valid;
  wire                dBusCoherent_bmb_rsp_ready;
  wire                dBusCoherent_bmb_rsp_payload_last;
  wire       [0:0]    dBusCoherent_bmb_rsp_payload_fragment_opcode;
  wire       [63:0]   dBusCoherent_bmb_rsp_payload_fragment_data;
  wire       [3:0]    dBusCoherent_bmb_rsp_payload_fragment_context;
  wire                dBusCoherent_bmb_connector_decoder_cmd_valid;
  wire                dBusCoherent_bmb_connector_decoder_cmd_ready;
  wire                dBusCoherent_bmb_connector_decoder_cmd_payload_last;
  wire       [0:0]    dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_opcode;
  wire       [31:0]   dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_address;
  wire       [5:0]    dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_length;
  wire       [63:0]   dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_data;
  wire       [7:0]    dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_mask;
  wire       [3:0]    dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_context;
  wire                dBusCoherent_bmb_connector_decoder_rsp_valid;
  wire                dBusCoherent_bmb_connector_decoder_rsp_ready;
  wire                dBusCoherent_bmb_connector_decoder_rsp_payload_last;
  wire       [0:0]    dBusCoherent_bmb_connector_decoder_rsp_payload_fragment_opcode;
  wire       [63:0]   dBusCoherent_bmb_connector_decoder_rsp_payload_fragment_data;
  wire       [3:0]    dBusCoherent_bmb_connector_decoder_rsp_payload_fragment_context;

  assign _zz_466 = (debugCd_logic_holdingLogic_resetCounter != 12'hfff);
  assign _zz_467 = (systemCd_logic_holdingLogic_resetCounter != 6'h3f);
  assign _zz_468 = (cores_0_cpu_logic_cpu_dBus_cmd_valid && _zz_126);
  assign _zz_469 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b0) && cores_0_cpu_logic_cpu_dBus_cmd_payload_mask[0]);
  assign _zz_470 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b0) && cores_0_cpu_logic_cpu_dBus_cmd_payload_mask[1]);
  assign _zz_471 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b0) && cores_0_cpu_logic_cpu_dBus_cmd_payload_mask[2]);
  assign _zz_472 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b0) && cores_0_cpu_logic_cpu_dBus_cmd_payload_mask[3]);
  assign _zz_473 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b1) && cores_0_cpu_logic_cpu_dBus_cmd_payload_mask[0]);
  assign _zz_474 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b1) && cores_0_cpu_logic_cpu_dBus_cmd_payload_mask[1]);
  assign _zz_475 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b1) && cores_0_cpu_logic_cpu_dBus_cmd_payload_mask[2]);
  assign _zz_476 = ((dBus_Bridge_withWriteBuffer_aggregationSel == 1'b1) && cores_0_cpu_logic_cpu_dBus_cmd_payload_mask[3]);
  assign _zz_477 = (! cores_0_cpu_iBus_cmd_halfPipe_regs_valid);
  assign _zz_478 = (dBus_Bridge_bus_cmd_ready && (! dBus_Bridge_bus_cmd_s2mPipe_ready));
  assign _zz_479 = (! peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_valid);
  assign _zz_480 = (! iArbiter_bmb_cmd_halfPipe_regs_valid);
  assign _zz_481 = (dBusNonCoherent_bmb_cmd_ready && (! dBusNonCoherent_bmb_cmd_s2mPipe_ready));
  assign _zz_482 = (debugBridge_logic_debugger_io_mem_cmd_payload_address >>> 2);
  assign _zz_483 = ({3'd0,_zz_1} <<< debugBridge_logic_debugger_io_mem_cmd_payload_address[1 : 0]);
  assign _zz_484 = ({2'd0,cores_0_cpu_logic_cpu_dBus_cmd_payload_length} <<< 2);
  assign _zz_485 = _zz_132[0 : 0];
  assign _zz_486 = plic_logic_bmb_cmd_payload_fragment_data[1 : 1];
  assign _zz_487 = plic_logic_bmb_cmd_payload_fragment_data[2 : 2];
  assign _zz_488 = plic_logic_bmb_cmd_payload_fragment_data[3 : 3];
  assign _zz_489 = plic_logic_bmb_cmd_payload_fragment_data[4 : 4];
  assign _zz_490 = plic_logic_bmb_cmd_payload_fragment_data[5 : 5];
  assign _zz_491 = plic_logic_bmb_cmd_payload_fragment_data[6 : 6];
  assign _zz_492 = plic_logic_bmb_cmd_payload_fragment_data[7 : 7];
  assign _zz_493 = plic_logic_bmb_cmd_payload_fragment_data[8 : 8];
  assign _zz_494 = plic_logic_bmb_cmd_payload_fragment_data[9 : 9];
  assign _zz_495 = plic_logic_bmb_cmd_payload_fragment_data[10 : 10];
  assign _zz_496 = plic_logic_bmb_cmd_payload_fragment_data[11 : 11];
  assign _zz_497 = plic_logic_bmb_cmd_payload_fragment_data[12 : 12];
  assign _zz_498 = plic_logic_bmb_cmd_payload_fragment_data[13 : 13];
  assign _zz_499 = plic_logic_bmb_cmd_payload_fragment_data[14 : 14];
  assign _zz_500 = plic_logic_bmb_cmd_payload_fragment_data[15 : 15];
  assign _zz_501 = plic_logic_bmb_cmd_payload_fragment_data[16 : 16];
  assign _zz_502 = plic_logic_bmb_cmd_payload_fragment_data[17 : 17];
  assign _zz_503 = plic_logic_bmb_cmd_payload_fragment_data[18 : 18];
  assign _zz_504 = plic_logic_bmb_cmd_payload_fragment_data[19 : 19];
  assign _zz_505 = plic_logic_bmb_cmd_payload_fragment_data[20 : 20];
  assign _zz_506 = plic_logic_bmb_cmd_payload_fragment_data[21 : 21];
  assign _zz_507 = plic_logic_bmb_cmd_payload_fragment_data[22 : 22];
  assign _zz_508 = plic_logic_bmb_cmd_payload_fragment_data[23 : 23];
  assign _zz_509 = plic_logic_bmb_cmd_payload_fragment_data[24 : 24];
  assign _zz_510 = plic_logic_bmb_cmd_payload_fragment_data[25 : 25];
  assign _zz_511 = plic_logic_bmb_cmd_payload_fragment_data[26 : 26];
  assign _zz_512 = plic_logic_bmb_cmd_payload_fragment_data[27 : 27];
  assign _zz_513 = plic_logic_bmb_cmd_payload_fragment_data[28 : 28];
  assign _zz_514 = plic_logic_bmb_cmd_payload_fragment_data[29 : 29];
  assign _zz_515 = plic_logic_bmb_cmd_payload_fragment_data[30 : 30];
  assign _zz_516 = plic_logic_bmb_cmd_payload_fragment_data[31 : 31];
  assign _zz_517 = plic_logic_bmb_cmd_payload_fragment_data[1 : 1];
  assign _zz_518 = plic_logic_bmb_cmd_payload_fragment_data[2 : 2];
  assign _zz_519 = plic_logic_bmb_cmd_payload_fragment_data[3 : 3];
  assign _zz_520 = plic_logic_bmb_cmd_payload_fragment_data[4 : 4];
  assign _zz_521 = plic_logic_bmb_cmd_payload_fragment_data[5 : 5];
  assign _zz_522 = plic_logic_bmb_cmd_payload_fragment_data[6 : 6];
  assign _zz_523 = plic_logic_bmb_cmd_payload_fragment_data[7 : 7];
  assign _zz_524 = plic_logic_bmb_cmd_payload_fragment_data[8 : 8];
  assign _zz_525 = plic_logic_bmb_cmd_payload_fragment_data[9 : 9];
  assign _zz_526 = plic_logic_bmb_cmd_payload_fragment_data[10 : 10];
  assign _zz_527 = plic_logic_bmb_cmd_payload_fragment_data[11 : 11];
  assign _zz_528 = plic_logic_bmb_cmd_payload_fragment_data[12 : 12];
  assign _zz_529 = plic_logic_bmb_cmd_payload_fragment_data[13 : 13];
  assign _zz_530 = plic_logic_bmb_cmd_payload_fragment_data[14 : 14];
  assign _zz_531 = plic_logic_bmb_cmd_payload_fragment_data[15 : 15];
  assign _zz_532 = plic_logic_bmb_cmd_payload_fragment_data[16 : 16];
  assign _zz_533 = plic_logic_bmb_cmd_payload_fragment_data[17 : 17];
  assign _zz_534 = plic_logic_bmb_cmd_payload_fragment_data[18 : 18];
  assign _zz_535 = plic_logic_bmb_cmd_payload_fragment_data[19 : 19];
  assign _zz_536 = plic_logic_bmb_cmd_payload_fragment_data[20 : 20];
  assign _zz_537 = plic_logic_bmb_cmd_payload_fragment_data[21 : 21];
  assign _zz_538 = plic_logic_bmb_cmd_payload_fragment_data[22 : 22];
  assign _zz_539 = plic_logic_bmb_cmd_payload_fragment_data[23 : 23];
  assign _zz_540 = plic_logic_bmb_cmd_payload_fragment_data[24 : 24];
  assign _zz_541 = plic_logic_bmb_cmd_payload_fragment_data[25 : 25];
  assign _zz_542 = plic_logic_bmb_cmd_payload_fragment_data[26 : 26];
  assign _zz_543 = plic_logic_bmb_cmd_payload_fragment_data[27 : 27];
  assign _zz_544 = plic_logic_bmb_cmd_payload_fragment_data[28 : 28];
  assign _zz_545 = plic_logic_bmb_cmd_payload_fragment_data[29 : 29];
  assign _zz_546 = plic_logic_bmb_cmd_payload_fragment_data[30 : 30];
  assign _zz_547 = plic_logic_bmb_cmd_payload_fragment_data[31 : 31];
  assign _zz_548 = (_zz_141 ? cores_0_cpu_externalInterrupt_plic_target_requests_0_id : cores_0_cpu_externalInterrupt_plic_target_requests_1_id);
  assign _zz_549 = (_zz_144 ? cores_0_cpu_externalInterrupt_plic_target_requests_2_id : cores_0_cpu_externalInterrupt_plic_target_requests_3_id);
  assign _zz_550 = (_zz_147 ? cores_0_cpu_externalInterrupt_plic_target_requests_4_id : cores_0_cpu_externalInterrupt_plic_target_requests_5_id);
  assign _zz_551 = (_zz_150 ? cores_0_cpu_externalInterrupt_plic_target_requests_6_id : cores_0_cpu_externalInterrupt_plic_target_requests_7_id);
  assign _zz_552 = (_zz_153 ? cores_0_cpu_externalInterrupt_plic_target_requests_8_id : cores_0_cpu_externalInterrupt_plic_target_requests_9_id);
  assign _zz_553 = (_zz_156 ? cores_0_cpu_externalInterrupt_plic_target_requests_10_id : cores_0_cpu_externalInterrupt_plic_target_requests_11_id);
  assign _zz_554 = (_zz_159 ? cores_0_cpu_externalInterrupt_plic_target_requests_12_id : cores_0_cpu_externalInterrupt_plic_target_requests_13_id);
  assign _zz_555 = (_zz_162 ? cores_0_cpu_externalInterrupt_plic_target_requests_14_id : cores_0_cpu_externalInterrupt_plic_target_requests_15_id);
  assign _zz_556 = (_zz_165 ? cores_0_cpu_externalInterrupt_plic_target_requests_16_id : cores_0_cpu_externalInterrupt_plic_target_requests_17_id);
  assign _zz_557 = (_zz_168 ? cores_0_cpu_externalInterrupt_plic_target_requests_18_id : cores_0_cpu_externalInterrupt_plic_target_requests_19_id);
  assign _zz_558 = (_zz_171 ? cores_0_cpu_externalInterrupt_plic_target_requests_20_id : cores_0_cpu_externalInterrupt_plic_target_requests_21_id);
  assign _zz_559 = (_zz_174 ? cores_0_cpu_externalInterrupt_plic_target_requests_22_id : cores_0_cpu_externalInterrupt_plic_target_requests_23_id);
  assign _zz_560 = (_zz_177 ? cores_0_cpu_externalInterrupt_plic_target_requests_24_id : cores_0_cpu_externalInterrupt_plic_target_requests_25_id);
  assign _zz_561 = (_zz_180 ? cores_0_cpu_externalInterrupt_plic_target_requests_26_id : cores_0_cpu_externalInterrupt_plic_target_requests_27_id);
  assign _zz_562 = (_zz_183 ? cores_0_cpu_externalInterrupt_plic_target_requests_28_id : cores_0_cpu_externalInterrupt_plic_target_requests_29_id);
  assign _zz_563 = (_zz_186 ? cores_0_cpu_externalInterrupt_plic_target_requests_30_id : cores_0_cpu_externalInterrupt_plic_target_requests_31_id);
  assign _zz_564 = (_zz_232 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_0_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_1_id);
  assign _zz_565 = (_zz_235 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_2_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_3_id);
  assign _zz_566 = (_zz_238 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_4_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_5_id);
  assign _zz_567 = (_zz_241 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_6_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_7_id);
  assign _zz_568 = (_zz_244 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_8_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_9_id);
  assign _zz_569 = (_zz_247 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_10_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_11_id);
  assign _zz_570 = (_zz_250 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_12_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_13_id);
  assign _zz_571 = (_zz_253 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_14_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_15_id);
  assign _zz_572 = (_zz_256 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_16_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_17_id);
  assign _zz_573 = (_zz_259 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_18_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_19_id);
  assign _zz_574 = (_zz_262 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_20_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_21_id);
  assign _zz_575 = (_zz_265 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_22_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_23_id);
  assign _zz_576 = (_zz_268 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_24_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_25_id);
  assign _zz_577 = (_zz_271 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_26_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_27_id);
  assign _zz_578 = (_zz_274 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_28_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_29_id);
  assign _zz_579 = (_zz_277 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_30_id : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_31_id);
  JtagBridgeNoTap debugBridge_logic_jtagBridge (
    .io_ctrl_tdi                       (debugPort_tdi                                                ), //i
    .io_ctrl_enable                    (debugPort_enable                                             ), //i
    .io_ctrl_capture                   (debugPort_capture                                            ), //i
    .io_ctrl_shift                     (debugPort_shift                                              ), //i
    .io_ctrl_update                    (debugPort_update                                             ), //i
    .io_ctrl_reset                     (debugPort_reset                                              ), //i
    .io_ctrl_tdo                       (debugBridge_logic_jtagBridge_io_ctrl_tdo                     ), //o
    .io_remote_cmd_valid               (debugBridge_logic_jtagBridge_io_remote_cmd_valid             ), //o
    .io_remote_cmd_ready               (debugBridge_logic_debugger_io_remote_cmd_ready               ), //i
    .io_remote_cmd_payload_last        (debugBridge_logic_jtagBridge_io_remote_cmd_payload_last      ), //o
    .io_remote_cmd_payload_fragment    (debugBridge_logic_jtagBridge_io_remote_cmd_payload_fragment  ), //o
    .io_remote_rsp_valid               (debugBridge_logic_debugger_io_remote_rsp_valid               ), //i
    .io_remote_rsp_ready               (debugBridge_logic_jtagBridge_io_remote_rsp_ready             ), //o
    .io_remote_rsp_payload_error       (debugBridge_logic_debugger_io_remote_rsp_payload_error       ), //i
    .io_remote_rsp_payload_data        (debugBridge_logic_debugger_io_remote_rsp_payload_data[31:0]  ), //i
    .debugCd_external_clk              (debugCd_external_clk                                         ), //i
    .debugCd_logic_outputReset         (debugCd_logic_outputReset                                    ), //i
    .jtag_clk                          (jtag_clk                                                     )  //i
  );
  SystemDebugger debugBridge_logic_debugger (
    .io_remote_cmd_valid               (debugBridge_logic_jtagBridge_io_remote_cmd_valid             ), //i
    .io_remote_cmd_ready               (debugBridge_logic_debugger_io_remote_cmd_ready               ), //o
    .io_remote_cmd_payload_last        (debugBridge_logic_jtagBridge_io_remote_cmd_payload_last      ), //i
    .io_remote_cmd_payload_fragment    (debugBridge_logic_jtagBridge_io_remote_cmd_payload_fragment  ), //i
    .io_remote_rsp_valid               (debugBridge_logic_debugger_io_remote_rsp_valid               ), //o
    .io_remote_rsp_ready               (debugBridge_logic_jtagBridge_io_remote_rsp_ready             ), //i
    .io_remote_rsp_payload_error       (debugBridge_logic_debugger_io_remote_rsp_payload_error       ), //o
    .io_remote_rsp_payload_data        (debugBridge_logic_debugger_io_remote_rsp_payload_data[31:0]  ), //o
    .io_mem_cmd_valid                  (debugBridge_logic_debugger_io_mem_cmd_valid                  ), //o
    .io_mem_cmd_ready                  (debugBridge_logic_mmMaster_cmd_ready                         ), //i
    .io_mem_cmd_payload_address        (debugBridge_logic_debugger_io_mem_cmd_payload_address[31:0]  ), //o
    .io_mem_cmd_payload_data           (debugBridge_logic_debugger_io_mem_cmd_payload_data[31:0]     ), //o
    .io_mem_cmd_payload_wr             (debugBridge_logic_debugger_io_mem_cmd_payload_wr             ), //o
    .io_mem_cmd_payload_size           (debugBridge_logic_debugger_io_mem_cmd_payload_size[1:0]      ), //o
    .io_mem_rsp_valid                  (debugBridge_logic_mmMaster_rsp_valid                         ), //i
    .io_mem_rsp_payload                (debugBridge_logic_mmMaster_rsp_payload_fragment_data[31:0]   ), //i
    .debugCd_external_clk              (debugCd_external_clk                                         ), //i
    .debugCd_logic_outputReset         (debugCd_logic_outputReset                                    )  //i
  );
  WishboneToBmb plicWishboneBridge_logic (
    .io_input_CYC                              (plicWishbone_CYC                                                         ), //i
    .io_input_STB                              (plicWishbone_STB                                                         ), //i
    .io_input_ACK                              (plicWishboneBridge_logic_io_input_ACK                                    ), //o
    .io_input_WE                               (plicWishbone_WE                                                          ), //i
    .io_input_ADR                              (plicWishbone_ADR[19:0]                                                   ), //i
    .io_input_DAT_MISO                         (plicWishboneBridge_logic_io_input_DAT_MISO[31:0]                         ), //o
    .io_input_DAT_MOSI                         (plicWishbone_DAT_MOSI[31:0]                                              ), //i
    .io_output_cmd_valid                       (plicWishboneBridge_logic_io_output_cmd_valid                             ), //o
    .io_output_cmd_ready                       (plicWishboneBridge_bmb_decoder_io_input_cmd_ready                        ), //i
    .io_output_cmd_payload_last                (plicWishboneBridge_logic_io_output_cmd_payload_last                      ), //o
    .io_output_cmd_payload_fragment_opcode     (plicWishboneBridge_logic_io_output_cmd_payload_fragment_opcode           ), //o
    .io_output_cmd_payload_fragment_address    (plicWishboneBridge_logic_io_output_cmd_payload_fragment_address[21:0]    ), //o
    .io_output_cmd_payload_fragment_length     (plicWishboneBridge_logic_io_output_cmd_payload_fragment_length[1:0]      ), //o
    .io_output_cmd_payload_fragment_data       (plicWishboneBridge_logic_io_output_cmd_payload_fragment_data[31:0]       ), //o
    .io_output_cmd_payload_fragment_mask       (plicWishboneBridge_logic_io_output_cmd_payload_fragment_mask[3:0]        ), //o
    .io_output_rsp_valid                       (plicWishboneBridge_bmb_decoder_io_input_rsp_valid                        ), //i
    .io_output_rsp_ready                       (plicWishboneBridge_logic_io_output_rsp_ready                             ), //o
    .io_output_rsp_payload_last                (plicWishboneBridge_bmb_decoder_io_input_rsp_payload_last                 ), //i
    .io_output_rsp_payload_fragment_opcode     (plicWishboneBridge_bmb_decoder_io_input_rsp_payload_fragment_opcode      ), //i
    .io_output_rsp_payload_fragment_data       (plicWishboneBridge_bmb_decoder_io_input_rsp_payload_fragment_data[31:0]  ), //i
    .debugCd_external_clk                      (debugCd_external_clk                                                     ), //i
    .systemCd_logic_outputReset                (systemCd_logic_outputReset                                               )  //i
  );
  WishboneToBmb_1 clintWishboneBridge_logic (
    .io_input_CYC                              (clintWishbone_CYC                                                         ), //i
    .io_input_STB                              (clintWishbone_STB                                                         ), //i
    .io_input_ACK                              (clintWishboneBridge_logic_io_input_ACK                                    ), //o
    .io_input_WE                               (clintWishbone_WE                                                          ), //i
    .io_input_ADR                              (clintWishbone_ADR[13:0]                                                   ), //i
    .io_input_DAT_MISO                         (clintWishboneBridge_logic_io_input_DAT_MISO[31:0]                         ), //o
    .io_input_DAT_MOSI                         (clintWishbone_DAT_MOSI[31:0]                                              ), //i
    .io_output_cmd_valid                       (clintWishboneBridge_logic_io_output_cmd_valid                             ), //o
    .io_output_cmd_ready                       (clintWishboneBridge_bmb_decoder_io_input_cmd_ready                        ), //i
    .io_output_cmd_payload_last                (clintWishboneBridge_logic_io_output_cmd_payload_last                      ), //o
    .io_output_cmd_payload_fragment_opcode     (clintWishboneBridge_logic_io_output_cmd_payload_fragment_opcode           ), //o
    .io_output_cmd_payload_fragment_address    (clintWishboneBridge_logic_io_output_cmd_payload_fragment_address[15:0]    ), //o
    .io_output_cmd_payload_fragment_length     (clintWishboneBridge_logic_io_output_cmd_payload_fragment_length[1:0]      ), //o
    .io_output_cmd_payload_fragment_data       (clintWishboneBridge_logic_io_output_cmd_payload_fragment_data[31:0]       ), //o
    .io_output_cmd_payload_fragment_mask       (clintWishboneBridge_logic_io_output_cmd_payload_fragment_mask[3:0]        ), //o
    .io_output_rsp_valid                       (clintWishboneBridge_bmb_decoder_io_input_rsp_valid                        ), //i
    .io_output_rsp_ready                       (clintWishboneBridge_logic_io_output_rsp_ready                             ), //o
    .io_output_rsp_payload_last                (clintWishboneBridge_bmb_decoder_io_input_rsp_payload_last                 ), //i
    .io_output_rsp_payload_fragment_opcode     (clintWishboneBridge_bmb_decoder_io_input_rsp_payload_fragment_opcode      ), //i
    .io_output_rsp_payload_fragment_data       (clintWishboneBridge_bmb_decoder_io_input_rsp_payload_fragment_data[31:0]  ), //i
    .debugCd_external_clk                      (debugCd_external_clk                                                      ), //i
    .systemCd_logic_outputReset                (systemCd_logic_outputReset                                                )  //i
  );
  BufferCC_1 bufferCC_3 (
    .io_initial                (_zz_452                 ), //i
    .io_dataIn                 (_zz_453                 ), //i
    .io_dataOut                (bufferCC_3_io_dataOut   ), //o
    .debugCd_external_clk      (debugCd_external_clk    ), //i
    .debugCd_external_reset    (debugCd_external_reset  )  //i
  );
  VexRiscv cores_0_cpu_logic_cpu (
    .dBus_cmd_valid                   (cores_0_cpu_logic_cpu_dBus_cmd_valid                     ), //o
    .dBus_cmd_ready                   (_zz_126                                                  ), //i
    .dBus_cmd_payload_wr              (cores_0_cpu_logic_cpu_dBus_cmd_payload_wr                ), //o
    .dBus_cmd_payload_uncached        (cores_0_cpu_logic_cpu_dBus_cmd_payload_uncached          ), //o
    .dBus_cmd_payload_address         (cores_0_cpu_logic_cpu_dBus_cmd_payload_address[31:0]     ), //o
    .dBus_cmd_payload_data            (cores_0_cpu_logic_cpu_dBus_cmd_payload_data[31:0]        ), //o
    .dBus_cmd_payload_mask            (cores_0_cpu_logic_cpu_dBus_cmd_payload_mask[3:0]         ), //o
    .dBus_cmd_payload_length          (cores_0_cpu_logic_cpu_dBus_cmd_payload_length[3:0]       ), //o
    .dBus_cmd_payload_last            (cores_0_cpu_logic_cpu_dBus_cmd_payload_last              ), //o
    .dBus_rsp_valid                   (_zz_454                                                  ), //i
    .dBus_rsp_payload_aggregated      (dBus_Bridge_withWriteBuffer_rspCtx_rspCount[2:0]         ), //i
    .dBus_rsp_payload_last            (dBus_Bridge_bus_rsp_payload_last                         ), //i
    .dBus_rsp_payload_data            (dBus_Bridge_bus_rsp_payload_fragment_data[63:0]          ), //i
    .dBus_rsp_payload_error           (_zz_455                                                  ), //i
    .timerInterrupt                   (_zz_456                                                  ), //i
    .externalInterrupt                (cores_0_cpu_externalInterrupt_plic_target_iep            ), //i
    .softwareInterrupt                (_zz_457                                                  ), //i
    .externalInterruptS               (cores_0_cpu_externalSupervisorInterrupt_plic_target_iep  ), //i
    .utime                            (clint_logic_io_time[63:0]                                ), //i
    .debug_bus_cmd_valid              (cores_0_cpu_debugBmb_cmd_valid                           ), //i
    .debug_bus_cmd_ready              (cores_0_cpu_logic_cpu_debug_bus_cmd_ready                ), //o
    .debug_bus_cmd_payload_wr         (_zz_458                                                  ), //i
    .debug_bus_cmd_payload_address    (cores_0_cpu_debugBmb_cmd_payload_fragment_address[7:0]   ), //i
    .debug_bus_cmd_payload_data       (cores_0_cpu_debugBmb_cmd_payload_fragment_data[31:0]     ), //i
    .debug_bus_rsp_data               (cores_0_cpu_logic_cpu_debug_bus_rsp_data[31:0]           ), //o
    .debug_resetOut                   (cores_0_cpu_logic_cpu_debug_resetOut                     ), //o
    .iBus_cmd_valid                   (cores_0_cpu_logic_cpu_iBus_cmd_valid                     ), //o
    .iBus_cmd_ready                   (cores_0_cpu_iBus_cmd_ready                               ), //i
    .iBus_cmd_payload_address         (cores_0_cpu_logic_cpu_iBus_cmd_payload_address[31:0]     ), //o
    .iBus_cmd_payload_size            (cores_0_cpu_logic_cpu_iBus_cmd_payload_size[2:0]         ), //o
    .iBus_rsp_valid                   (cores_0_cpu_iBus_rsp_valid                               ), //i
    .iBus_rsp_payload_data            (cores_0_cpu_iBus_rsp_payload_fragment_data[63:0]         ), //i
    .iBus_rsp_payload_error           (_zz_459                                                  ), //i
    .debugCd_external_clk             (debugCd_external_clk                                     ), //i
    .systemCd_logic_outputReset       (systemCd_logic_outputReset                               ), //i
    .debugCd_logic_outputReset        (debugCd_logic_outputReset                                )  //i
  );
  BmbClint clint_logic (
    .io_bus_cmd_valid                       (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_valid                           ), //i
    .io_bus_cmd_ready                       (clint_logic_io_bus_cmd_ready                                                     ), //o
    .io_bus_cmd_payload_last                (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_last                    ), //i
    .io_bus_cmd_payload_fragment_opcode     (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode         ), //i
    .io_bus_cmd_payload_fragment_address    (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_address[15:0]  ), //i
    .io_bus_cmd_payload_fragment_length     (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_length[1:0]    ), //i
    .io_bus_cmd_payload_fragment_data       (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_data[31:0]     ), //i
    .io_bus_cmd_payload_fragment_mask       (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask[3:0]      ), //i
    .io_bus_rsp_valid                       (clint_logic_io_bus_rsp_valid                                                     ), //o
    .io_bus_rsp_ready                       (clintWishboneBridge_bmb_decoder_io_outputs_0_rsp_ready                           ), //i
    .io_bus_rsp_payload_last                (clint_logic_io_bus_rsp_payload_last                                              ), //o
    .io_bus_rsp_payload_fragment_opcode     (clint_logic_io_bus_rsp_payload_fragment_opcode                                   ), //o
    .io_bus_rsp_payload_fragment_data       (clint_logic_io_bus_rsp_payload_fragment_data[31:0]                               ), //o
    .io_timerInterrupt                      (clint_logic_io_timerInterrupt                                                    ), //o
    .io_softwareInterrupt                   (clint_logic_io_softwareInterrupt                                                 ), //o
    .io_time                                (clint_logic_io_time[63:0]                                                        ), //o
    .debugCd_external_clk                   (debugCd_external_clk                                                             ), //i
    .systemCd_logic_outputReset             (systemCd_logic_outputReset                                                       )  //i
  );
  BmbDecoder debugBridge_bmb_decoder (
    .io_input_cmd_valid                           (debugBridge_logic_mmMaster_cmd_valid                                     ), //i
    .io_input_cmd_ready                           (debugBridge_bmb_decoder_io_input_cmd_ready                               ), //o
    .io_input_cmd_payload_last                    (debugBridge_logic_mmMaster_cmd_payload_last                              ), //i
    .io_input_cmd_payload_fragment_opcode         (debugBridge_logic_mmMaster_cmd_payload_fragment_opcode                   ), //i
    .io_input_cmd_payload_fragment_address        (debugBridge_logic_mmMaster_cmd_payload_fragment_address[31:0]            ), //i
    .io_input_cmd_payload_fragment_length         (debugBridge_logic_mmMaster_cmd_payload_fragment_length[1:0]              ), //i
    .io_input_cmd_payload_fragment_data           (debugBridge_logic_mmMaster_cmd_payload_fragment_data[31:0]               ), //i
    .io_input_cmd_payload_fragment_mask           (debugBridge_logic_mmMaster_cmd_payload_fragment_mask[3:0]                ), //i
    .io_input_rsp_valid                           (debugBridge_bmb_decoder_io_input_rsp_valid                               ), //o
    .io_input_rsp_ready                           (debugBridge_logic_mmMaster_rsp_ready                                     ), //i
    .io_input_rsp_payload_last                    (debugBridge_bmb_decoder_io_input_rsp_payload_last                        ), //o
    .io_input_rsp_payload_fragment_opcode         (debugBridge_bmb_decoder_io_input_rsp_payload_fragment_opcode             ), //o
    .io_input_rsp_payload_fragment_data           (debugBridge_bmb_decoder_io_input_rsp_payload_fragment_data[31:0]         ), //o
    .io_outputs_0_cmd_valid                       (debugBridge_bmb_decoder_io_outputs_0_cmd_valid                           ), //o
    .io_outputs_0_cmd_ready                       (cores_0_cpu_debugBmb_cmd_ready                                           ), //i
    .io_outputs_0_cmd_payload_last                (debugBridge_bmb_decoder_io_outputs_0_cmd_payload_last                    ), //o
    .io_outputs_0_cmd_payload_fragment_opcode     (debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode         ), //o
    .io_outputs_0_cmd_payload_fragment_address    (debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_address[31:0]  ), //o
    .io_outputs_0_cmd_payload_fragment_length     (debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_length[1:0]    ), //o
    .io_outputs_0_cmd_payload_fragment_data       (debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_data[31:0]     ), //o
    .io_outputs_0_cmd_payload_fragment_mask       (debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask[3:0]      ), //o
    .io_outputs_0_rsp_valid                       (cores_0_cpu_debugBmb_rsp_valid                                           ), //i
    .io_outputs_0_rsp_ready                       (debugBridge_bmb_decoder_io_outputs_0_rsp_ready                           ), //o
    .io_outputs_0_rsp_payload_last                (cores_0_cpu_debugBmb_rsp_payload_last                                    ), //i
    .io_outputs_0_rsp_payload_fragment_opcode     (cores_0_cpu_debugBmb_rsp_payload_fragment_opcode                         ), //i
    .io_outputs_0_rsp_payload_fragment_data       (cores_0_cpu_debugBmb_rsp_payload_fragment_data[31:0]                     ), //i
    .debugCd_external_clk                         (debugCd_external_clk                                                     ), //i
    .debugCd_logic_outputReset                    (debugCd_logic_outputReset                                                )  //i
  );
  BmbDecoder_1 plicWishboneBridge_bmb_decoder (
    .io_input_cmd_valid                           (plicWishboneBridge_logic_io_output_cmd_valid                                    ), //i
    .io_input_cmd_ready                           (plicWishboneBridge_bmb_decoder_io_input_cmd_ready                               ), //o
    .io_input_cmd_payload_last                    (plicWishboneBridge_logic_io_output_cmd_payload_last                             ), //i
    .io_input_cmd_payload_fragment_opcode         (plicWishboneBridge_logic_io_output_cmd_payload_fragment_opcode                  ), //i
    .io_input_cmd_payload_fragment_address        (plicWishboneBridge_logic_io_output_cmd_payload_fragment_address[21:0]           ), //i
    .io_input_cmd_payload_fragment_length         (plicWishboneBridge_logic_io_output_cmd_payload_fragment_length[1:0]             ), //i
    .io_input_cmd_payload_fragment_data           (plicWishboneBridge_logic_io_output_cmd_payload_fragment_data[31:0]              ), //i
    .io_input_cmd_payload_fragment_mask           (plicWishboneBridge_logic_io_output_cmd_payload_fragment_mask[3:0]               ), //i
    .io_input_rsp_valid                           (plicWishboneBridge_bmb_decoder_io_input_rsp_valid                               ), //o
    .io_input_rsp_ready                           (plicWishboneBridge_logic_io_output_rsp_ready                                    ), //i
    .io_input_rsp_payload_last                    (plicWishboneBridge_bmb_decoder_io_input_rsp_payload_last                        ), //o
    .io_input_rsp_payload_fragment_opcode         (plicWishboneBridge_bmb_decoder_io_input_rsp_payload_fragment_opcode             ), //o
    .io_input_rsp_payload_fragment_data           (plicWishboneBridge_bmb_decoder_io_input_rsp_payload_fragment_data[31:0]         ), //o
    .io_outputs_0_cmd_valid                       (plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_valid                           ), //o
    .io_outputs_0_cmd_ready                       (plic_logic_bmb_cmd_ready                                                        ), //i
    .io_outputs_0_cmd_payload_last                (plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_last                    ), //o
    .io_outputs_0_cmd_payload_fragment_opcode     (plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode         ), //o
    .io_outputs_0_cmd_payload_fragment_address    (plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_address[21:0]  ), //o
    .io_outputs_0_cmd_payload_fragment_length     (plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_length[1:0]    ), //o
    .io_outputs_0_cmd_payload_fragment_data       (plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_data[31:0]     ), //o
    .io_outputs_0_cmd_payload_fragment_mask       (plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask[3:0]      ), //o
    .io_outputs_0_rsp_valid                       (plic_logic_bmb_rsp_valid                                                        ), //i
    .io_outputs_0_rsp_ready                       (plicWishboneBridge_bmb_decoder_io_outputs_0_rsp_ready                           ), //o
    .io_outputs_0_rsp_payload_last                (plic_logic_bmb_rsp_payload_last                                                 ), //i
    .io_outputs_0_rsp_payload_fragment_opcode     (plic_logic_bmb_rsp_payload_fragment_opcode                                      ), //i
    .io_outputs_0_rsp_payload_fragment_data       (plic_logic_bmb_rsp_payload_fragment_data[31:0]                                  ), //i
    .debugCd_external_clk                         (debugCd_external_clk                                                            ), //i
    .systemCd_logic_outputReset                   (systemCd_logic_outputReset                                                      )  //i
  );
  BmbDecoder_2 clintWishboneBridge_bmb_decoder (
    .io_input_cmd_valid                           (clintWishboneBridge_logic_io_output_cmd_valid                                    ), //i
    .io_input_cmd_ready                           (clintWishboneBridge_bmb_decoder_io_input_cmd_ready                               ), //o
    .io_input_cmd_payload_last                    (clintWishboneBridge_logic_io_output_cmd_payload_last                             ), //i
    .io_input_cmd_payload_fragment_opcode         (clintWishboneBridge_logic_io_output_cmd_payload_fragment_opcode                  ), //i
    .io_input_cmd_payload_fragment_address        (clintWishboneBridge_logic_io_output_cmd_payload_fragment_address[15:0]           ), //i
    .io_input_cmd_payload_fragment_length         (clintWishboneBridge_logic_io_output_cmd_payload_fragment_length[1:0]             ), //i
    .io_input_cmd_payload_fragment_data           (clintWishboneBridge_logic_io_output_cmd_payload_fragment_data[31:0]              ), //i
    .io_input_cmd_payload_fragment_mask           (clintWishboneBridge_logic_io_output_cmd_payload_fragment_mask[3:0]               ), //i
    .io_input_rsp_valid                           (clintWishboneBridge_bmb_decoder_io_input_rsp_valid                               ), //o
    .io_input_rsp_ready                           (clintWishboneBridge_logic_io_output_rsp_ready                                    ), //i
    .io_input_rsp_payload_last                    (clintWishboneBridge_bmb_decoder_io_input_rsp_payload_last                        ), //o
    .io_input_rsp_payload_fragment_opcode         (clintWishboneBridge_bmb_decoder_io_input_rsp_payload_fragment_opcode             ), //o
    .io_input_rsp_payload_fragment_data           (clintWishboneBridge_bmb_decoder_io_input_rsp_payload_fragment_data[31:0]         ), //o
    .io_outputs_0_cmd_valid                       (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_valid                           ), //o
    .io_outputs_0_cmd_ready                       (clint_logic_io_bus_cmd_ready                                                     ), //i
    .io_outputs_0_cmd_payload_last                (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_last                    ), //o
    .io_outputs_0_cmd_payload_fragment_opcode     (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode         ), //o
    .io_outputs_0_cmd_payload_fragment_address    (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_address[15:0]  ), //o
    .io_outputs_0_cmd_payload_fragment_length     (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_length[1:0]    ), //o
    .io_outputs_0_cmd_payload_fragment_data       (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_data[31:0]     ), //o
    .io_outputs_0_cmd_payload_fragment_mask       (clintWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask[3:0]      ), //o
    .io_outputs_0_rsp_valid                       (clint_logic_io_bus_rsp_valid                                                     ), //i
    .io_outputs_0_rsp_ready                       (clintWishboneBridge_bmb_decoder_io_outputs_0_rsp_ready                           ), //o
    .io_outputs_0_rsp_payload_last                (clint_logic_io_bus_rsp_payload_last                                              ), //i
    .io_outputs_0_rsp_payload_fragment_opcode     (clint_logic_io_bus_rsp_payload_fragment_opcode                                   ), //i
    .io_outputs_0_rsp_payload_fragment_data       (clint_logic_io_bus_rsp_payload_fragment_data[31:0]                               ), //i
    .debugCd_external_clk                         (debugCd_external_clk                                                             ), //i
    .systemCd_logic_outputReset                   (systemCd_logic_outputReset                                                       )  //i
  );
  BufferCC_2 bufferCC_4 (
    .io_initial                (_zz_460                 ), //i
    .io_dataIn                 (_zz_461                 ), //i
    .io_dataOut                (bufferCC_4_io_dataOut   ), //o
    .debugCd_external_clk      (debugCd_external_clk    ), //i
    .cores_0_cpu_debugReset    (cores_0_cpu_debugReset  )  //i
  );
  BmbToLiteDram iBridge_logic (
    .io_input_cmd_valid                       (iArbiter_bmb_decoder_io_outputs_0_cmd_valid                         ), //i
    .io_input_cmd_ready                       (iBridge_logic_io_input_cmd_ready                                    ), //o
    .io_input_cmd_payload_last                (iArbiter_bmb_decoder_io_outputs_0_cmd_payload_last                  ), //i
    .io_input_cmd_payload_fragment_opcode     (iArbiter_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode       ), //i
    .io_input_cmd_payload_fragment_address    (_zz_462[29:0]                                                       ), //i
    .io_input_cmd_payload_fragment_length     (iArbiter_bmb_decoder_io_outputs_0_cmd_payload_fragment_length[5:0]  ), //i
    .io_input_rsp_valid                       (iBridge_logic_io_input_rsp_valid                                    ), //o
    .io_input_rsp_ready                       (iArbiter_bmb_decoder_io_outputs_0_rsp_ready                         ), //i
    .io_input_rsp_payload_last                (iBridge_logic_io_input_rsp_payload_last                             ), //o
    .io_input_rsp_payload_fragment_opcode     (iBridge_logic_io_input_rsp_payload_fragment_opcode                  ), //o
    .io_input_rsp_payload_fragment_data       (iBridge_logic_io_input_rsp_payload_fragment_data[63:0]              ), //o
    .io_output_cmd_valid                      (iBridge_logic_io_output_cmd_valid                                   ), //o
    .io_output_cmd_ready                      (iBridge_dram_cmd_ready                                              ), //i
    .io_output_cmd_payload_we                 (iBridge_logic_io_output_cmd_payload_we                              ), //o
    .io_output_cmd_payload_addr               (iBridge_logic_io_output_cmd_payload_addr[31:0]                      ), //o
    .io_output_wdata_valid                    (iBridge_logic_io_output_wdata_valid                                 ), //o
    .io_output_wdata_ready                    (iBridge_dram_wdata_ready                                            ), //i
    .io_output_wdata_payload_data             (iBridge_logic_io_output_wdata_payload_data[127:0]                   ), //o
    .io_output_wdata_payload_we               (iBridge_logic_io_output_wdata_payload_we[15:0]                      ), //o
    .io_output_rdata_valid                    (iBridge_dram_rdata_valid                                            ), //i
    .io_output_rdata_ready                    (iBridge_logic_io_output_rdata_ready                                 ), //o
    .io_output_rdata_payload_data             (iBridge_dram_rdata_payload_data[127:0]                              ), //i
    .debugCd_external_clk                     (debugCd_external_clk                                                ), //i
    .systemCd_logic_outputReset               (systemCd_logic_outputReset                                          )  //i
  );
  BmbToWishbone peripheralBridge_logic (
    .io_input_cmd_valid                       (peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_valid                           ), //i
    .io_input_cmd_ready                       (peripheralBridge_logic_io_input_cmd_ready                                           ), //o
    .io_input_cmd_payload_last                (peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_last                    ), //i
    .io_input_cmd_payload_fragment_source     (peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_source         ), //i
    .io_input_cmd_payload_fragment_opcode     (peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_opcode         ), //i
    .io_input_cmd_payload_fragment_address    (peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_address[31:0]  ), //i
    .io_input_cmd_payload_fragment_length     (peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_length[5:0]    ), //i
    .io_input_cmd_payload_fragment_data       (peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_data[31:0]     ), //i
    .io_input_cmd_payload_fragment_mask       (peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_mask[3:0]      ), //i
    .io_input_cmd_payload_fragment_context    (peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_context[4:0]   ), //i
    .io_input_rsp_valid                       (peripheralBridge_logic_io_input_rsp_valid                                           ), //o
    .io_input_rsp_ready                       (_zz_431                                                                             ), //i
    .io_input_rsp_payload_last                (peripheralBridge_logic_io_input_rsp_payload_last                                    ), //o
    .io_input_rsp_payload_fragment_source     (peripheralBridge_logic_io_input_rsp_payload_fragment_source                         ), //o
    .io_input_rsp_payload_fragment_opcode     (peripheralBridge_logic_io_input_rsp_payload_fragment_opcode                         ), //o
    .io_input_rsp_payload_fragment_data       (peripheralBridge_logic_io_input_rsp_payload_fragment_data[31:0]                     ), //o
    .io_input_rsp_payload_fragment_context    (peripheralBridge_logic_io_input_rsp_payload_fragment_context[4:0]                   ), //o
    .io_output_CYC                            (peripheralBridge_logic_io_output_CYC                                                ), //o
    .io_output_STB                            (peripheralBridge_logic_io_output_STB                                                ), //o
    .io_output_ACK                            (peripheral_ACK                                                                      ), //i
    .io_output_WE                             (peripheralBridge_logic_io_output_WE                                                 ), //o
    .io_output_ADR                            (peripheralBridge_logic_io_output_ADR[29:0]                                          ), //o
    .io_output_DAT_MISO                       (peripheral_DAT_MISO[31:0]                                                           ), //i
    .io_output_DAT_MOSI                       (peripheralBridge_logic_io_output_DAT_MOSI[31:0]                                     ), //o
    .io_output_SEL                            (peripheralBridge_logic_io_output_SEL[3:0]                                           ), //o
    .io_output_ERR                            (peripheral_ERR                                                                      ), //i
    .io_output_CTI                            (peripheralBridge_logic_io_output_CTI[2:0]                                           ), //o
    .io_output_BTE                            (peripheralBridge_logic_io_output_BTE[1:0]                                           ), //o
    .debugCd_external_clk                     (debugCd_external_clk                                                                ), //i
    .systemCd_logic_outputReset               (systemCd_logic_outputReset                                                          )  //i
  );
  BmbToLiteDram_1 dBridge_logic (
    .io_input_cmd_valid                       (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_valid                          ), //i
    .io_input_cmd_ready                       (dBridge_logic_io_input_cmd_ready                                            ), //o
    .io_input_cmd_payload_last                (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_last                   ), //i
    .io_input_cmd_payload_fragment_opcode     (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode        ), //i
    .io_input_cmd_payload_fragment_address    (_zz_463[29:0]                                                               ), //i
    .io_input_cmd_payload_fragment_length     (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_length[5:0]   ), //i
    .io_input_cmd_payload_fragment_data       (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_data[63:0]    ), //i
    .io_input_cmd_payload_fragment_mask       (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask[7:0]     ), //i
    .io_input_cmd_payload_fragment_context    (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_context[3:0]  ), //i
    .io_input_rsp_valid                       (dBridge_logic_io_input_rsp_valid                                            ), //o
    .io_input_rsp_ready                       (dBusNonCoherent_bmb_decoder_io_outputs_0_rsp_ready                          ), //i
    .io_input_rsp_payload_last                (dBridge_logic_io_input_rsp_payload_last                                     ), //o
    .io_input_rsp_payload_fragment_opcode     (dBridge_logic_io_input_rsp_payload_fragment_opcode                          ), //o
    .io_input_rsp_payload_fragment_data       (dBridge_logic_io_input_rsp_payload_fragment_data[63:0]                      ), //o
    .io_input_rsp_payload_fragment_context    (dBridge_logic_io_input_rsp_payload_fragment_context[3:0]                    ), //o
    .io_output_cmd_valid                      (dBridge_logic_io_output_cmd_valid                                           ), //o
    .io_output_cmd_ready                      (dBridge_dram_cmd_ready                                                      ), //i
    .io_output_cmd_payload_we                 (dBridge_logic_io_output_cmd_payload_we                                      ), //o
    .io_output_cmd_payload_addr               (dBridge_logic_io_output_cmd_payload_addr[31:0]                              ), //o
    .io_output_wdata_valid                    (dBridge_logic_io_output_wdata_valid                                         ), //o
    .io_output_wdata_ready                    (dBridge_dram_wdata_ready                                                    ), //i
    .io_output_wdata_payload_data             (dBridge_logic_io_output_wdata_payload_data[127:0]                           ), //o
    .io_output_wdata_payload_we               (dBridge_logic_io_output_wdata_payload_we[15:0]                              ), //o
    .io_output_rdata_valid                    (dBridge_dram_rdata_valid                                                    ), //i
    .io_output_rdata_ready                    (dBridge_logic_io_output_rdata_ready                                         ), //o
    .io_output_rdata_payload_data             (dBridge_dram_rdata_payload_data[127:0]                                      ), //i
    .debugCd_external_clk                     (debugCd_external_clk                                                        ), //i
    .systemCd_logic_outputReset               (systemCd_logic_outputReset                                                  )  //i
  );
  BmbArbiter peripheralBridge_bmb_arbiter (
    .io_inputs_0_cmd_valid                       (dBusNonCoherent_bmb_downSizer_io_output_cmd_valid                           ), //i
    .io_inputs_0_cmd_ready                       (peripheralBridge_bmb_arbiter_io_inputs_0_cmd_ready                          ), //o
    .io_inputs_0_cmd_payload_last                (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_last                    ), //i
    .io_inputs_0_cmd_payload_fragment_opcode     (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_opcode         ), //i
    .io_inputs_0_cmd_payload_fragment_address    (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_address[31:0]  ), //i
    .io_inputs_0_cmd_payload_fragment_length     (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_length[5:0]    ), //i
    .io_inputs_0_cmd_payload_fragment_data       (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_data[31:0]     ), //i
    .io_inputs_0_cmd_payload_fragment_mask       (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_mask[3:0]      ), //i
    .io_inputs_0_cmd_payload_fragment_context    (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_context[4:0]   ), //i
    .io_inputs_0_rsp_valid                       (peripheralBridge_bmb_arbiter_io_inputs_0_rsp_valid                          ), //o
    .io_inputs_0_rsp_ready                       (dBusNonCoherent_bmb_downSizer_io_output_rsp_ready                           ), //i
    .io_inputs_0_rsp_payload_last                (peripheralBridge_bmb_arbiter_io_inputs_0_rsp_payload_last                   ), //o
    .io_inputs_0_rsp_payload_fragment_opcode     (peripheralBridge_bmb_arbiter_io_inputs_0_rsp_payload_fragment_opcode        ), //o
    .io_inputs_0_rsp_payload_fragment_data       (peripheralBridge_bmb_arbiter_io_inputs_0_rsp_payload_fragment_data[31:0]    ), //o
    .io_inputs_0_rsp_payload_fragment_context    (peripheralBridge_bmb_arbiter_io_inputs_0_rsp_payload_fragment_context[4:0]  ), //o
    .io_inputs_1_cmd_valid                       (iArbiter_bmb_downSizer_io_output_cmd_valid                                  ), //i
    .io_inputs_1_cmd_ready                       (peripheralBridge_bmb_arbiter_io_inputs_1_cmd_ready                          ), //o
    .io_inputs_1_cmd_payload_last                (iArbiter_bmb_downSizer_io_output_cmd_payload_last                           ), //i
    .io_inputs_1_cmd_payload_fragment_opcode     (iArbiter_bmb_downSizer_io_output_cmd_payload_fragment_opcode                ), //i
    .io_inputs_1_cmd_payload_fragment_address    (iArbiter_bmb_downSizer_io_output_cmd_payload_fragment_address[31:0]         ), //i
    .io_inputs_1_cmd_payload_fragment_length     (iArbiter_bmb_downSizer_io_output_cmd_payload_fragment_length[5:0]           ), //i
    .io_inputs_1_cmd_payload_fragment_data       (_zz_464[31:0]                                                               ), //i
    .io_inputs_1_cmd_payload_fragment_mask       (_zz_465[3:0]                                                                ), //i
    .io_inputs_1_cmd_payload_fragment_context    (iArbiter_bmb_downSizer_io_output_cmd_payload_fragment_context               ), //i
    .io_inputs_1_rsp_valid                       (peripheralBridge_bmb_arbiter_io_inputs_1_rsp_valid                          ), //o
    .io_inputs_1_rsp_ready                       (iArbiter_bmb_downSizer_io_output_rsp_ready                                  ), //i
    .io_inputs_1_rsp_payload_last                (peripheralBridge_bmb_arbiter_io_inputs_1_rsp_payload_last                   ), //o
    .io_inputs_1_rsp_payload_fragment_opcode     (peripheralBridge_bmb_arbiter_io_inputs_1_rsp_payload_fragment_opcode        ), //o
    .io_inputs_1_rsp_payload_fragment_data       (peripheralBridge_bmb_arbiter_io_inputs_1_rsp_payload_fragment_data[31:0]    ), //o
    .io_inputs_1_rsp_payload_fragment_context    (peripheralBridge_bmb_arbiter_io_inputs_1_rsp_payload_fragment_context       ), //o
    .io_output_cmd_valid                         (peripheralBridge_bmb_arbiter_io_output_cmd_valid                            ), //o
    .io_output_cmd_ready                         (peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_ready              ), //i
    .io_output_cmd_payload_last                  (peripheralBridge_bmb_arbiter_io_output_cmd_payload_last                     ), //o
    .io_output_cmd_payload_fragment_source       (peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_source          ), //o
    .io_output_cmd_payload_fragment_opcode       (peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_opcode          ), //o
    .io_output_cmd_payload_fragment_address      (peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_address[31:0]   ), //o
    .io_output_cmd_payload_fragment_length       (peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_length[5:0]     ), //o
    .io_output_cmd_payload_fragment_data         (peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_data[31:0]      ), //o
    .io_output_cmd_payload_fragment_mask         (peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_mask[3:0]       ), //o
    .io_output_cmd_payload_fragment_context      (peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_context[4:0]    ), //o
    .io_output_rsp_valid                         (_zz_432                                                                     ), //i
    .io_output_rsp_ready                         (peripheralBridge_bmb_arbiter_io_output_rsp_ready                            ), //o
    .io_output_rsp_payload_last                  (_zz_434                                                                     ), //i
    .io_output_rsp_payload_fragment_source       (_zz_435                                                                     ), //i
    .io_output_rsp_payload_fragment_opcode       (_zz_436                                                                     ), //i
    .io_output_rsp_payload_fragment_data         (_zz_437[31:0]                                                               ), //i
    .io_output_rsp_payload_fragment_context      (_zz_438[4:0]                                                                ), //i
    .debugCd_external_clk                        (debugCd_external_clk                                                        ), //i
    .systemCd_logic_outputReset                  (systemCd_logic_outputReset                                                  )  //i
  );
  BmbDecoder_3 iArbiter_bmb_decoder (
    .io_input_cmd_valid                           (iArbiter_bmb_cmd_halfPipe_valid                                       ), //i
    .io_input_cmd_ready                           (iArbiter_bmb_decoder_io_input_cmd_ready                               ), //o
    .io_input_cmd_payload_last                    (iArbiter_bmb_cmd_halfPipe_payload_last                                ), //i
    .io_input_cmd_payload_fragment_opcode         (iArbiter_bmb_cmd_halfPipe_payload_fragment_opcode                     ), //i
    .io_input_cmd_payload_fragment_address        (iArbiter_bmb_cmd_halfPipe_payload_fragment_address[31:0]              ), //i
    .io_input_cmd_payload_fragment_length         (iArbiter_bmb_cmd_halfPipe_payload_fragment_length[5:0]                ), //i
    .io_input_rsp_valid                           (iArbiter_bmb_decoder_io_input_rsp_valid                               ), //o
    .io_input_rsp_ready                           (_zz_439                                                               ), //i
    .io_input_rsp_payload_last                    (iArbiter_bmb_decoder_io_input_rsp_payload_last                        ), //o
    .io_input_rsp_payload_fragment_opcode         (iArbiter_bmb_decoder_io_input_rsp_payload_fragment_opcode             ), //o
    .io_input_rsp_payload_fragment_data           (iArbiter_bmb_decoder_io_input_rsp_payload_fragment_data[63:0]         ), //o
    .io_outputs_0_cmd_valid                       (iArbiter_bmb_decoder_io_outputs_0_cmd_valid                           ), //o
    .io_outputs_0_cmd_ready                       (iBridge_logic_io_input_cmd_ready                                      ), //i
    .io_outputs_0_cmd_payload_last                (iArbiter_bmb_decoder_io_outputs_0_cmd_payload_last                    ), //o
    .io_outputs_0_cmd_payload_fragment_opcode     (iArbiter_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode         ), //o
    .io_outputs_0_cmd_payload_fragment_address    (iArbiter_bmb_decoder_io_outputs_0_cmd_payload_fragment_address[31:0]  ), //o
    .io_outputs_0_cmd_payload_fragment_length     (iArbiter_bmb_decoder_io_outputs_0_cmd_payload_fragment_length[5:0]    ), //o
    .io_outputs_0_rsp_valid                       (iBridge_logic_io_input_rsp_valid                                      ), //i
    .io_outputs_0_rsp_ready                       (iArbiter_bmb_decoder_io_outputs_0_rsp_ready                           ), //o
    .io_outputs_0_rsp_payload_last                (iBridge_logic_io_input_rsp_payload_last                               ), //i
    .io_outputs_0_rsp_payload_fragment_opcode     (iBridge_logic_io_input_rsp_payload_fragment_opcode                    ), //i
    .io_outputs_0_rsp_payload_fragment_data       (iBridge_logic_io_input_rsp_payload_fragment_data[63:0]                ), //i
    .io_outputs_1_cmd_valid                       (iArbiter_bmb_decoder_io_outputs_1_cmd_valid                           ), //o
    .io_outputs_1_cmd_ready                       (iArbiter_bmb_downSizer_io_input_cmd_ready                             ), //i
    .io_outputs_1_cmd_payload_last                (iArbiter_bmb_decoder_io_outputs_1_cmd_payload_last                    ), //o
    .io_outputs_1_cmd_payload_fragment_opcode     (iArbiter_bmb_decoder_io_outputs_1_cmd_payload_fragment_opcode         ), //o
    .io_outputs_1_cmd_payload_fragment_address    (iArbiter_bmb_decoder_io_outputs_1_cmd_payload_fragment_address[31:0]  ), //o
    .io_outputs_1_cmd_payload_fragment_length     (iArbiter_bmb_decoder_io_outputs_1_cmd_payload_fragment_length[5:0]    ), //o
    .io_outputs_1_rsp_valid                       (iArbiter_bmb_downSizer_io_input_rsp_valid                             ), //i
    .io_outputs_1_rsp_ready                       (iArbiter_bmb_decoder_io_outputs_1_rsp_ready                           ), //o
    .io_outputs_1_rsp_payload_last                (iArbiter_bmb_downSizer_io_input_rsp_payload_last                      ), //i
    .io_outputs_1_rsp_payload_fragment_opcode     (iArbiter_bmb_downSizer_io_input_rsp_payload_fragment_opcode           ), //i
    .io_outputs_1_rsp_payload_fragment_data       (iArbiter_bmb_downSizer_io_input_rsp_payload_fragment_data[63:0]       ), //i
    .debugCd_external_clk                         (debugCd_external_clk                                                  ), //i
    .systemCd_logic_outputReset                   (systemCd_logic_outputReset                                            )  //i
  );
  BmbDecoder_4 dBusNonCoherent_bmb_decoder (
    .io_input_cmd_valid                           (dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_valid                                ), //i
    .io_input_cmd_ready                           (dBusNonCoherent_bmb_decoder_io_input_cmd_ready                               ), //o
    .io_input_cmd_payload_last                    (dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_last                         ), //i
    .io_input_cmd_payload_fragment_opcode         (dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_opcode              ), //i
    .io_input_cmd_payload_fragment_address        (dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_address[31:0]       ), //i
    .io_input_cmd_payload_fragment_length         (dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_length[5:0]         ), //i
    .io_input_cmd_payload_fragment_data           (dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_data[63:0]          ), //i
    .io_input_cmd_payload_fragment_mask           (dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_mask[7:0]           ), //i
    .io_input_cmd_payload_fragment_context        (dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_context[3:0]        ), //i
    .io_input_rsp_valid                           (dBusNonCoherent_bmb_decoder_io_input_rsp_valid                               ), //o
    .io_input_rsp_ready                           (_zz_445                                                                      ), //i
    .io_input_rsp_payload_last                    (dBusNonCoherent_bmb_decoder_io_input_rsp_payload_last                        ), //o
    .io_input_rsp_payload_fragment_opcode         (dBusNonCoherent_bmb_decoder_io_input_rsp_payload_fragment_opcode             ), //o
    .io_input_rsp_payload_fragment_data           (dBusNonCoherent_bmb_decoder_io_input_rsp_payload_fragment_data[63:0]         ), //o
    .io_input_rsp_payload_fragment_context        (dBusNonCoherent_bmb_decoder_io_input_rsp_payload_fragment_context[3:0]       ), //o
    .io_outputs_0_cmd_valid                       (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_valid                           ), //o
    .io_outputs_0_cmd_ready                       (dBridge_logic_io_input_cmd_ready                                             ), //i
    .io_outputs_0_cmd_payload_last                (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_last                    ), //o
    .io_outputs_0_cmd_payload_fragment_opcode     (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode         ), //o
    .io_outputs_0_cmd_payload_fragment_address    (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_address[31:0]  ), //o
    .io_outputs_0_cmd_payload_fragment_length     (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_length[5:0]    ), //o
    .io_outputs_0_cmd_payload_fragment_data       (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_data[63:0]     ), //o
    .io_outputs_0_cmd_payload_fragment_mask       (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask[7:0]      ), //o
    .io_outputs_0_cmd_payload_fragment_context    (dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_context[3:0]   ), //o
    .io_outputs_0_rsp_valid                       (dBridge_logic_io_input_rsp_valid                                             ), //i
    .io_outputs_0_rsp_ready                       (dBusNonCoherent_bmb_decoder_io_outputs_0_rsp_ready                           ), //o
    .io_outputs_0_rsp_payload_last                (dBridge_logic_io_input_rsp_payload_last                                      ), //i
    .io_outputs_0_rsp_payload_fragment_opcode     (dBridge_logic_io_input_rsp_payload_fragment_opcode                           ), //i
    .io_outputs_0_rsp_payload_fragment_data       (dBridge_logic_io_input_rsp_payload_fragment_data[63:0]                       ), //i
    .io_outputs_0_rsp_payload_fragment_context    (dBridge_logic_io_input_rsp_payload_fragment_context[3:0]                     ), //i
    .io_outputs_1_cmd_valid                       (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_valid                           ), //o
    .io_outputs_1_cmd_ready                       (dBusNonCoherent_bmb_downSizer_io_input_cmd_ready                             ), //i
    .io_outputs_1_cmd_payload_last                (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_last                    ), //o
    .io_outputs_1_cmd_payload_fragment_opcode     (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_opcode         ), //o
    .io_outputs_1_cmd_payload_fragment_address    (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_address[31:0]  ), //o
    .io_outputs_1_cmd_payload_fragment_length     (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_length[5:0]    ), //o
    .io_outputs_1_cmd_payload_fragment_data       (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_data[63:0]     ), //o
    .io_outputs_1_cmd_payload_fragment_mask       (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_mask[7:0]      ), //o
    .io_outputs_1_cmd_payload_fragment_context    (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_context[3:0]   ), //o
    .io_outputs_1_rsp_valid                       (dBusNonCoherent_bmb_downSizer_io_input_rsp_valid                             ), //i
    .io_outputs_1_rsp_ready                       (dBusNonCoherent_bmb_decoder_io_outputs_1_rsp_ready                           ), //o
    .io_outputs_1_rsp_payload_last                (dBusNonCoherent_bmb_downSizer_io_input_rsp_payload_last                      ), //i
    .io_outputs_1_rsp_payload_fragment_opcode     (dBusNonCoherent_bmb_downSizer_io_input_rsp_payload_fragment_opcode           ), //i
    .io_outputs_1_rsp_payload_fragment_data       (dBusNonCoherent_bmb_downSizer_io_input_rsp_payload_fragment_data[63:0]       ), //i
    .io_outputs_1_rsp_payload_fragment_context    (dBusNonCoherent_bmb_downSizer_io_input_rsp_payload_fragment_context[3:0]     ), //i
    .debugCd_external_clk                         (debugCd_external_clk                                                         ), //i
    .systemCd_logic_outputReset                   (systemCd_logic_outputReset                                                   )  //i
  );
  BmbDownSizerBridge iArbiter_bmb_downSizer (
    .io_input_cmd_valid                        (iArbiter_bmb_decoder_io_outputs_1_cmd_valid                               ), //i
    .io_input_cmd_ready                        (iArbiter_bmb_downSizer_io_input_cmd_ready                                 ), //o
    .io_input_cmd_payload_last                 (iArbiter_bmb_decoder_io_outputs_1_cmd_payload_last                        ), //i
    .io_input_cmd_payload_fragment_opcode      (iArbiter_bmb_decoder_io_outputs_1_cmd_payload_fragment_opcode             ), //i
    .io_input_cmd_payload_fragment_address     (iArbiter_bmb_decoder_io_outputs_1_cmd_payload_fragment_address[31:0]      ), //i
    .io_input_cmd_payload_fragment_length      (iArbiter_bmb_decoder_io_outputs_1_cmd_payload_fragment_length[5:0]        ), //i
    .io_input_rsp_valid                        (iArbiter_bmb_downSizer_io_input_rsp_valid                                 ), //o
    .io_input_rsp_ready                        (iArbiter_bmb_decoder_io_outputs_1_rsp_ready                               ), //i
    .io_input_rsp_payload_last                 (iArbiter_bmb_downSizer_io_input_rsp_payload_last                          ), //o
    .io_input_rsp_payload_fragment_opcode      (iArbiter_bmb_downSizer_io_input_rsp_payload_fragment_opcode               ), //o
    .io_input_rsp_payload_fragment_data        (iArbiter_bmb_downSizer_io_input_rsp_payload_fragment_data[63:0]           ), //o
    .io_output_cmd_valid                       (iArbiter_bmb_downSizer_io_output_cmd_valid                                ), //o
    .io_output_cmd_ready                       (peripheralBridge_bmb_arbiter_io_inputs_1_cmd_ready                        ), //i
    .io_output_cmd_payload_last                (iArbiter_bmb_downSizer_io_output_cmd_payload_last                         ), //o
    .io_output_cmd_payload_fragment_opcode     (iArbiter_bmb_downSizer_io_output_cmd_payload_fragment_opcode              ), //o
    .io_output_cmd_payload_fragment_address    (iArbiter_bmb_downSizer_io_output_cmd_payload_fragment_address[31:0]       ), //o
    .io_output_cmd_payload_fragment_length     (iArbiter_bmb_downSizer_io_output_cmd_payload_fragment_length[5:0]         ), //o
    .io_output_cmd_payload_fragment_context    (iArbiter_bmb_downSizer_io_output_cmd_payload_fragment_context             ), //o
    .io_output_rsp_valid                       (peripheralBridge_bmb_arbiter_io_inputs_1_rsp_valid                        ), //i
    .io_output_rsp_ready                       (iArbiter_bmb_downSizer_io_output_rsp_ready                                ), //o
    .io_output_rsp_payload_last                (peripheralBridge_bmb_arbiter_io_inputs_1_rsp_payload_last                 ), //i
    .io_output_rsp_payload_fragment_opcode     (peripheralBridge_bmb_arbiter_io_inputs_1_rsp_payload_fragment_opcode      ), //i
    .io_output_rsp_payload_fragment_data       (peripheralBridge_bmb_arbiter_io_inputs_1_rsp_payload_fragment_data[31:0]  ), //i
    .io_output_rsp_payload_fragment_context    (peripheralBridge_bmb_arbiter_io_inputs_1_rsp_payload_fragment_context     ), //i
    .debugCd_external_clk                      (debugCd_external_clk                                                      ), //i
    .systemCd_logic_outputReset                (systemCd_logic_outputReset                                                )  //i
  );
  BmbDownSizerBridge_1 dBusNonCoherent_bmb_downSizer (
    .io_input_cmd_valid                        (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_valid                           ), //i
    .io_input_cmd_ready                        (dBusNonCoherent_bmb_downSizer_io_input_cmd_ready                             ), //o
    .io_input_cmd_payload_last                 (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_last                    ), //i
    .io_input_cmd_payload_fragment_opcode      (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_opcode         ), //i
    .io_input_cmd_payload_fragment_address     (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_address[31:0]  ), //i
    .io_input_cmd_payload_fragment_length      (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_length[5:0]    ), //i
    .io_input_cmd_payload_fragment_data        (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_data[63:0]     ), //i
    .io_input_cmd_payload_fragment_mask        (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_mask[7:0]      ), //i
    .io_input_cmd_payload_fragment_context     (dBusNonCoherent_bmb_decoder_io_outputs_1_cmd_payload_fragment_context[3:0]   ), //i
    .io_input_rsp_valid                        (dBusNonCoherent_bmb_downSizer_io_input_rsp_valid                             ), //o
    .io_input_rsp_ready                        (dBusNonCoherent_bmb_decoder_io_outputs_1_rsp_ready                           ), //i
    .io_input_rsp_payload_last                 (dBusNonCoherent_bmb_downSizer_io_input_rsp_payload_last                      ), //o
    .io_input_rsp_payload_fragment_opcode      (dBusNonCoherent_bmb_downSizer_io_input_rsp_payload_fragment_opcode           ), //o
    .io_input_rsp_payload_fragment_data        (dBusNonCoherent_bmb_downSizer_io_input_rsp_payload_fragment_data[63:0]       ), //o
    .io_input_rsp_payload_fragment_context     (dBusNonCoherent_bmb_downSizer_io_input_rsp_payload_fragment_context[3:0]     ), //o
    .io_output_cmd_valid                       (dBusNonCoherent_bmb_downSizer_io_output_cmd_valid                            ), //o
    .io_output_cmd_ready                       (peripheralBridge_bmb_arbiter_io_inputs_0_cmd_ready                           ), //i
    .io_output_cmd_payload_last                (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_last                     ), //o
    .io_output_cmd_payload_fragment_opcode     (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_opcode          ), //o
    .io_output_cmd_payload_fragment_address    (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_address[31:0]   ), //o
    .io_output_cmd_payload_fragment_length     (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_length[5:0]     ), //o
    .io_output_cmd_payload_fragment_data       (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_data[31:0]      ), //o
    .io_output_cmd_payload_fragment_mask       (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_mask[3:0]       ), //o
    .io_output_cmd_payload_fragment_context    (dBusNonCoherent_bmb_downSizer_io_output_cmd_payload_fragment_context[4:0]    ), //o
    .io_output_rsp_valid                       (peripheralBridge_bmb_arbiter_io_inputs_0_rsp_valid                           ), //i
    .io_output_rsp_ready                       (dBusNonCoherent_bmb_downSizer_io_output_rsp_ready                            ), //o
    .io_output_rsp_payload_last                (peripheralBridge_bmb_arbiter_io_inputs_0_rsp_payload_last                    ), //i
    .io_output_rsp_payload_fragment_opcode     (peripheralBridge_bmb_arbiter_io_inputs_0_rsp_payload_fragment_opcode         ), //i
    .io_output_rsp_payload_fragment_data       (peripheralBridge_bmb_arbiter_io_inputs_0_rsp_payload_fragment_data[31:0]     ), //i
    .io_output_rsp_payload_fragment_context    (peripheralBridge_bmb_arbiter_io_inputs_0_rsp_payload_fragment_context[4:0]   ), //i
    .debugCd_external_clk                      (debugCd_external_clk                                                         ), //i
    .systemCd_logic_outputReset                (systemCd_logic_outputReset                                                   )  //i
  );
  always @ (*) begin
    debugCd_logic_inputResetTrigger = 1'b0;
    if(debugCd_logic_inputResetAdapter_stuff_syncTrigger)begin
      debugCd_logic_inputResetTrigger = 1'b1;
    end
  end

  always @ (*) begin
    debugCd_logic_outputResetUnbuffered = 1'b0;
    if(_zz_466)begin
      debugCd_logic_outputResetUnbuffered = 1'b1;
    end
  end

  always @ (*) begin
    systemCd_logic_inputResetTrigger = 1'b0;
    if(systemCd_logic_inputResetAdapter_stuff_syncTrigger)begin
      systemCd_logic_inputResetTrigger = 1'b1;
    end
    if(resetGenerator_stuff_syncTrigger)begin
      systemCd_logic_inputResetTrigger = 1'b1;
    end
  end

  always @ (*) begin
    systemCd_logic_outputResetUnbuffered = 1'b0;
    if(_zz_467)begin
      systemCd_logic_outputResetUnbuffered = 1'b1;
    end
  end

  assign debugBridge_logic_mmMaster_cmd_valid = debugBridge_logic_debugger_io_mem_cmd_valid;
  assign debugBridge_logic_mmMaster_cmd_payload_last = 1'b1;
  assign debugBridge_logic_mmMaster_cmd_payload_fragment_opcode = (debugBridge_logic_debugger_io_mem_cmd_payload_wr ? 1'b1 : 1'b0);
  assign debugBridge_logic_mmMaster_cmd_payload_fragment_address = {_zz_482,2'b00};
  assign debugBridge_logic_mmMaster_cmd_payload_fragment_data = debugBridge_logic_debugger_io_mem_cmd_payload_data;
  always @ (*) begin
    case(debugBridge_logic_debugger_io_mem_cmd_payload_size)
      2'b00 : begin
        _zz_1 = 4'b0001;
      end
      2'b01 : begin
        _zz_1 = 4'b0011;
      end
      default : begin
        _zz_1 = 4'b1111;
      end
    endcase
  end

  assign debugBridge_logic_mmMaster_cmd_payload_fragment_mask = _zz_483[3:0];
  assign debugBridge_logic_mmMaster_rsp_ready = 1'b1;
  assign debugPort_tdo = debugBridge_logic_jtagBridge_io_ctrl_tdo;
  assign plicWishbone_ACK = plicWishboneBridge_logic_io_input_ACK;
  assign plicWishbone_DAT_MISO = plicWishboneBridge_logic_io_input_DAT_MISO;
  assign clintWishbone_ACK = clintWishboneBridge_logic_io_input_ACK;
  assign clintWishbone_DAT_MISO = clintWishboneBridge_logic_io_input_DAT_MISO;
  assign _zz_2 = interrupts[1];
  assign _zz_6 = interrupts[2];
  assign _zz_10 = interrupts[3];
  assign _zz_14 = interrupts[4];
  assign _zz_18 = interrupts[5];
  assign _zz_22 = interrupts[6];
  assign _zz_26 = interrupts[7];
  assign _zz_30 = interrupts[8];
  assign _zz_34 = interrupts[9];
  assign _zz_38 = interrupts[10];
  assign _zz_42 = interrupts[11];
  assign _zz_46 = interrupts[12];
  assign _zz_50 = interrupts[13];
  assign _zz_54 = interrupts[14];
  assign _zz_58 = interrupts[15];
  assign _zz_62 = interrupts[16];
  assign _zz_66 = interrupts[17];
  assign _zz_70 = interrupts[18];
  assign _zz_74 = interrupts[19];
  assign _zz_78 = interrupts[20];
  assign _zz_82 = interrupts[21];
  assign _zz_86 = interrupts[22];
  assign _zz_90 = interrupts[23];
  assign _zz_94 = interrupts[24];
  assign _zz_98 = interrupts[25];
  assign _zz_102 = interrupts[26];
  assign _zz_106 = interrupts[27];
  assign _zz_110 = interrupts[28];
  assign _zz_114 = interrupts[29];
  assign _zz_118 = interrupts[30];
  assign _zz_122 = interrupts[31];
  assign _zz_453 = 1'b0;
  assign _zz_452 = 1'b1;
  assign debugCd_logic_inputResetAdapter_stuff_syncTrigger = bufferCC_3_io_dataOut;
  assign cores_0_cpu_iBus_cmd_valid = cores_0_cpu_logic_cpu_iBus_cmd_valid;
  assign cores_0_cpu_iBus_cmd_payload_fragment_opcode = 1'b0;
  assign cores_0_cpu_iBus_cmd_payload_fragment_address = cores_0_cpu_logic_cpu_iBus_cmd_payload_address;
  assign cores_0_cpu_iBus_cmd_payload_fragment_length = 6'h3f;
  assign cores_0_cpu_iBus_cmd_payload_last = 1'b1;
  assign _zz_459 = (cores_0_cpu_iBus_rsp_payload_fragment_opcode == 1'b1);
  assign cores_0_cpu_iBus_rsp_ready = 1'b1;
  assign _zz_126 = ((1'b1 && (! dBus_Bridge_withWriteBuffer_buffer_stream_valid)) || dBus_Bridge_withWriteBuffer_buffer_stream_ready);
  assign dBus_Bridge_withWriteBuffer_buffer_stream_valid = _zz_127;
  assign dBus_Bridge_withWriteBuffer_aggregationCounterFull = (dBus_Bridge_withWriteBuffer_aggregationCounter == 3'b111);
  assign dBus_Bridge_withWriteBuffer_timerFull = dBus_Bridge_withWriteBuffer_timer[4];
  assign dBus_Bridge_withWriteBuffer_hit = (cores_0_cpu_logic_cpu_dBus_cmd_payload_address[31 : 3] == dBus_Bridge_withWriteBuffer_buffer_address[31 : 3]);
  assign dBus_Bridge_withWriteBuffer_cmdExclusive = 1'b0;
  assign dBus_Bridge_withWriteBuffer_canAggregate = ((((((cores_0_cpu_logic_cpu_dBus_cmd_valid && cores_0_cpu_logic_cpu_dBus_cmd_payload_wr) && (! cores_0_cpu_logic_cpu_dBus_cmd_payload_uncached)) && (! dBus_Bridge_withWriteBuffer_cmdExclusive)) && (! dBus_Bridge_withWriteBuffer_timerFull)) && (! dBus_Bridge_withWriteBuffer_aggregationCounterFull)) && ((! dBus_Bridge_withWriteBuffer_buffer_stream_valid) || (dBus_Bridge_withWriteBuffer_aggregationEnabled && dBus_Bridge_withWriteBuffer_hit)));
  assign dBus_Bridge_withWriteBuffer_doFlush = ((((cores_0_cpu_logic_cpu_dBus_cmd_valid && (! dBus_Bridge_withWriteBuffer_canAggregate)) || dBus_Bridge_withWriteBuffer_timerFull) || dBus_Bridge_withWriteBuffer_aggregationCounterFull) || (! dBus_Bridge_withWriteBuffer_aggregationEnabled));
  assign dBus_Bridge_withWriteBuffer_halt = 1'b0;
  assign dBus_Bridge_withWriteBuffer_buffer_stream_ready = (((dBus_Bridge_bus_cmd_ready && dBus_Bridge_withWriteBuffer_doFlush) || dBus_Bridge_withWriteBuffer_canAggregate) && (! dBus_Bridge_withWriteBuffer_halt));
  assign dBus_Bridge_bus_cmd_valid = ((dBus_Bridge_withWriteBuffer_buffer_stream_valid && dBus_Bridge_withWriteBuffer_doFlush) && (! dBus_Bridge_withWriteBuffer_halt));
  assign dBus_Bridge_bus_cmd_payload_last = 1'b1;
  assign dBus_Bridge_bus_cmd_payload_fragment_opcode = (dBus_Bridge_withWriteBuffer_buffer_write ? 1'b1 : 1'b0);
  assign dBus_Bridge_bus_cmd_payload_fragment_address = dBus_Bridge_withWriteBuffer_buffer_address;
  assign dBus_Bridge_bus_cmd_payload_fragment_length = dBus_Bridge_withWriteBuffer_buffer_length;
  assign dBus_Bridge_bus_cmd_payload_fragment_data = dBus_Bridge_withWriteBuffer_buffer_data;
  assign dBus_Bridge_bus_cmd_payload_fragment_mask = dBus_Bridge_withWriteBuffer_buffer_mask;
  assign dBus_Bridge_bus_cmd_payload_fragment_context = {dBus_Bridge_withWriteBuffer_busCmdContext_rspCount,dBus_Bridge_withWriteBuffer_busCmdContext_isWrite};
  assign dBus_Bridge_withWriteBuffer_busCmdContext_isWrite = (dBus_Bridge_bus_cmd_payload_fragment_opcode == 1'b1);
  assign dBus_Bridge_withWriteBuffer_busCmdContext_rspCount = dBus_Bridge_withWriteBuffer_aggregationCounter;
  assign dBus_Bridge_withWriteBuffer_aggregationSel = cores_0_cpu_logic_cpu_dBus_cmd_payload_address[2 : 2];
  assign _zz_128 = cores_0_cpu_logic_cpu_dBus_cmd_payload_data[7 : 0];
  assign _zz_129 = cores_0_cpu_logic_cpu_dBus_cmd_payload_data[15 : 8];
  assign _zz_130 = cores_0_cpu_logic_cpu_dBus_cmd_payload_data[23 : 16];
  assign _zz_131 = cores_0_cpu_logic_cpu_dBus_cmd_payload_data[31 : 24];
  assign _zz_132 = dBus_Bridge_bus_rsp_payload_fragment_context;
  assign dBus_Bridge_withWriteBuffer_rspCtx_isWrite = _zz_485[0];
  assign dBus_Bridge_withWriteBuffer_rspCtx_rspCount = _zz_132[3 : 1];
  always @ (*) begin
    _zz_454 = dBus_Bridge_bus_rsp_valid;
    if(dBus_Bridge_bus_rsp_payload_fragment_context[0])begin
      _zz_454 = 1'b0;
    end
  end

  assign _zz_455 = (dBus_Bridge_bus_rsp_payload_fragment_opcode == 1'b1);
  assign dBus_Bridge_bus_rsp_ready = 1'b1;
  assign _zz_458 = (cores_0_cpu_debugBmb_cmd_payload_fragment_opcode == 1'b1);
  assign cores_0_cpu_debugBmb_cmd_ready = cores_0_cpu_logic_cpu_debug_bus_cmd_ready;
  assign cores_0_cpu_debugBmb_rsp_valid = _zz_133;
  assign cores_0_cpu_debugBmb_rsp_payload_last = 1'b1;
  assign cores_0_cpu_debugBmb_rsp_payload_fragment_opcode = 1'b0;
  assign cores_0_cpu_debugBmb_rsp_payload_fragment_data = cores_0_cpu_logic_cpu_debug_bus_rsp_data;
  assign plic_logic_bus_readHaltTrigger = 1'b0;
  assign plic_logic_bus_writeHaltTrigger = 1'b0;
  assign _zz_134 = (! (plic_logic_bus_readHaltTrigger || plic_logic_bus_writeHaltTrigger));
  assign plic_logic_bus_rsp_ready = (_zz_135 && _zz_134);
  assign _zz_135 = ((1'b1 && (! _zz_136)) || plic_logic_bmb_rsp_ready);
  assign _zz_136 = _zz_137;
  assign plic_logic_bmb_rsp_valid = _zz_136;
  assign plic_logic_bmb_rsp_payload_last = _zz_138;
  assign plic_logic_bmb_rsp_payload_fragment_opcode = _zz_139;
  assign plic_logic_bmb_rsp_payload_fragment_data = _zz_140;
  assign plic_logic_bus_askWrite = (plic_logic_bmb_cmd_valid && (plic_logic_bmb_cmd_payload_fragment_opcode == 1'b1));
  assign plic_logic_bus_askRead = (plic_logic_bmb_cmd_valid && (plic_logic_bmb_cmd_payload_fragment_opcode == 1'b0));
  assign plic_logic_bus_doWrite = ((plic_logic_bmb_cmd_valid && plic_logic_bmb_cmd_ready) && (plic_logic_bmb_cmd_payload_fragment_opcode == 1'b1));
  assign plic_logic_bus_doRead = ((plic_logic_bmb_cmd_valid && plic_logic_bmb_cmd_ready) && (plic_logic_bmb_cmd_payload_fragment_opcode == 1'b0));
  assign plic_logic_bus_rsp_valid = plic_logic_bmb_cmd_valid;
  assign plic_logic_bmb_cmd_ready = plic_logic_bus_rsp_ready;
  assign plic_logic_bus_rsp_payload_last = 1'b1;
  assign plic_logic_bus_rsp_payload_fragment_opcode = 1'b0;
  always @ (*) begin
    plic_logic_bus_rsp_payload_fragment_data = 32'h0;
    case(plic_logic_bmb_cmd_payload_fragment_address)
      22'h000004 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_3;
      end
      22'h001004 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_4;
      end
      22'h000008 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_7;
      end
      22'h001008 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_8;
      end
      22'h00000c : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_11;
      end
      22'h00100c : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_12;
      end
      22'h000010 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_15;
      end
      22'h001010 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_16;
      end
      22'h000014 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_19;
      end
      22'h001014 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_20;
      end
      22'h000018 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_23;
      end
      22'h001018 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_24;
      end
      22'h00001c : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_27;
      end
      22'h00101c : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_28;
      end
      22'h000020 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_31;
      end
      22'h001020 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_32;
      end
      22'h000024 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_35;
      end
      22'h001024 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_36;
      end
      22'h000028 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_39;
      end
      22'h001028 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_40;
      end
      22'h00002c : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_43;
      end
      22'h00102c : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_44;
      end
      22'h000030 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_47;
      end
      22'h001030 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_48;
      end
      22'h000034 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_51;
      end
      22'h001034 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_52;
      end
      22'h000038 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_55;
      end
      22'h001038 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_56;
      end
      22'h00003c : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_59;
      end
      22'h00103c : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_60;
      end
      22'h000040 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_63;
      end
      22'h001040 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_64;
      end
      22'h000044 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_67;
      end
      22'h001044 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_68;
      end
      22'h000048 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_71;
      end
      22'h001048 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_72;
      end
      22'h00004c : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_75;
      end
      22'h00104c : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_76;
      end
      22'h000050 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_79;
      end
      22'h001050 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_80;
      end
      22'h000054 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_83;
      end
      22'h001054 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_84;
      end
      22'h000058 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_87;
      end
      22'h001058 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_88;
      end
      22'h00005c : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_91;
      end
      22'h00105c : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_92;
      end
      22'h000060 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_95;
      end
      22'h001060 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_96;
      end
      22'h000064 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_99;
      end
      22'h001064 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_100;
      end
      22'h000068 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_103;
      end
      22'h001068 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_104;
      end
      22'h00006c : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_107;
      end
      22'h00106c : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_108;
      end
      22'h000070 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_111;
      end
      22'h001070 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_112;
      end
      22'h000074 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_115;
      end
      22'h001074 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_116;
      end
      22'h000078 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_119;
      end
      22'h001078 : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_120;
      end
      22'h00007c : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = _zz_123;
      end
      22'h00107c : begin
        plic_logic_bus_rsp_payload_fragment_data[0 : 0] = _zz_124;
      end
      22'h200000 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = cores_0_cpu_externalInterrupt_plic_target_threshold;
      end
      22'h200004 : begin
        plic_logic_bus_rsp_payload_fragment_data[4 : 0] = cores_0_cpu_externalInterrupt_plic_target_claim;
      end
      22'h002000 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 1] = cores_0_cpu_externalInterrupt_plic_target_ie_0;
        plic_logic_bus_rsp_payload_fragment_data[2 : 2] = cores_0_cpu_externalInterrupt_plic_target_ie_1;
        plic_logic_bus_rsp_payload_fragment_data[3 : 3] = cores_0_cpu_externalInterrupt_plic_target_ie_2;
        plic_logic_bus_rsp_payload_fragment_data[4 : 4] = cores_0_cpu_externalInterrupt_plic_target_ie_3;
        plic_logic_bus_rsp_payload_fragment_data[5 : 5] = cores_0_cpu_externalInterrupt_plic_target_ie_4;
        plic_logic_bus_rsp_payload_fragment_data[6 : 6] = cores_0_cpu_externalInterrupt_plic_target_ie_5;
        plic_logic_bus_rsp_payload_fragment_data[7 : 7] = cores_0_cpu_externalInterrupt_plic_target_ie_6;
        plic_logic_bus_rsp_payload_fragment_data[8 : 8] = cores_0_cpu_externalInterrupt_plic_target_ie_7;
        plic_logic_bus_rsp_payload_fragment_data[9 : 9] = cores_0_cpu_externalInterrupt_plic_target_ie_8;
        plic_logic_bus_rsp_payload_fragment_data[10 : 10] = cores_0_cpu_externalInterrupt_plic_target_ie_9;
        plic_logic_bus_rsp_payload_fragment_data[11 : 11] = cores_0_cpu_externalInterrupt_plic_target_ie_10;
        plic_logic_bus_rsp_payload_fragment_data[12 : 12] = cores_0_cpu_externalInterrupt_plic_target_ie_11;
        plic_logic_bus_rsp_payload_fragment_data[13 : 13] = cores_0_cpu_externalInterrupt_plic_target_ie_12;
        plic_logic_bus_rsp_payload_fragment_data[14 : 14] = cores_0_cpu_externalInterrupt_plic_target_ie_13;
        plic_logic_bus_rsp_payload_fragment_data[15 : 15] = cores_0_cpu_externalInterrupt_plic_target_ie_14;
        plic_logic_bus_rsp_payload_fragment_data[16 : 16] = cores_0_cpu_externalInterrupt_plic_target_ie_15;
        plic_logic_bus_rsp_payload_fragment_data[17 : 17] = cores_0_cpu_externalInterrupt_plic_target_ie_16;
        plic_logic_bus_rsp_payload_fragment_data[18 : 18] = cores_0_cpu_externalInterrupt_plic_target_ie_17;
        plic_logic_bus_rsp_payload_fragment_data[19 : 19] = cores_0_cpu_externalInterrupt_plic_target_ie_18;
        plic_logic_bus_rsp_payload_fragment_data[20 : 20] = cores_0_cpu_externalInterrupt_plic_target_ie_19;
        plic_logic_bus_rsp_payload_fragment_data[21 : 21] = cores_0_cpu_externalInterrupt_plic_target_ie_20;
        plic_logic_bus_rsp_payload_fragment_data[22 : 22] = cores_0_cpu_externalInterrupt_plic_target_ie_21;
        plic_logic_bus_rsp_payload_fragment_data[23 : 23] = cores_0_cpu_externalInterrupt_plic_target_ie_22;
        plic_logic_bus_rsp_payload_fragment_data[24 : 24] = cores_0_cpu_externalInterrupt_plic_target_ie_23;
        plic_logic_bus_rsp_payload_fragment_data[25 : 25] = cores_0_cpu_externalInterrupt_plic_target_ie_24;
        plic_logic_bus_rsp_payload_fragment_data[26 : 26] = cores_0_cpu_externalInterrupt_plic_target_ie_25;
        plic_logic_bus_rsp_payload_fragment_data[27 : 27] = cores_0_cpu_externalInterrupt_plic_target_ie_26;
        plic_logic_bus_rsp_payload_fragment_data[28 : 28] = cores_0_cpu_externalInterrupt_plic_target_ie_27;
        plic_logic_bus_rsp_payload_fragment_data[29 : 29] = cores_0_cpu_externalInterrupt_plic_target_ie_28;
        plic_logic_bus_rsp_payload_fragment_data[30 : 30] = cores_0_cpu_externalInterrupt_plic_target_ie_29;
        plic_logic_bus_rsp_payload_fragment_data[31 : 31] = cores_0_cpu_externalInterrupt_plic_target_ie_30;
      end
      22'h201000 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 0] = cores_0_cpu_externalSupervisorInterrupt_plic_target_threshold;
      end
      22'h201004 : begin
        plic_logic_bus_rsp_payload_fragment_data[4 : 0] = cores_0_cpu_externalSupervisorInterrupt_plic_target_claim;
      end
      22'h002080 : begin
        plic_logic_bus_rsp_payload_fragment_data[1 : 1] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_0;
        plic_logic_bus_rsp_payload_fragment_data[2 : 2] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_1;
        plic_logic_bus_rsp_payload_fragment_data[3 : 3] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_2;
        plic_logic_bus_rsp_payload_fragment_data[4 : 4] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_3;
        plic_logic_bus_rsp_payload_fragment_data[5 : 5] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_4;
        plic_logic_bus_rsp_payload_fragment_data[6 : 6] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_5;
        plic_logic_bus_rsp_payload_fragment_data[7 : 7] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_6;
        plic_logic_bus_rsp_payload_fragment_data[8 : 8] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_7;
        plic_logic_bus_rsp_payload_fragment_data[9 : 9] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_8;
        plic_logic_bus_rsp_payload_fragment_data[10 : 10] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_9;
        plic_logic_bus_rsp_payload_fragment_data[11 : 11] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_10;
        plic_logic_bus_rsp_payload_fragment_data[12 : 12] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_11;
        plic_logic_bus_rsp_payload_fragment_data[13 : 13] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_12;
        plic_logic_bus_rsp_payload_fragment_data[14 : 14] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_13;
        plic_logic_bus_rsp_payload_fragment_data[15 : 15] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_14;
        plic_logic_bus_rsp_payload_fragment_data[16 : 16] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_15;
        plic_logic_bus_rsp_payload_fragment_data[17 : 17] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_16;
        plic_logic_bus_rsp_payload_fragment_data[18 : 18] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_17;
        plic_logic_bus_rsp_payload_fragment_data[19 : 19] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_18;
        plic_logic_bus_rsp_payload_fragment_data[20 : 20] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_19;
        plic_logic_bus_rsp_payload_fragment_data[21 : 21] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_20;
        plic_logic_bus_rsp_payload_fragment_data[22 : 22] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_21;
        plic_logic_bus_rsp_payload_fragment_data[23 : 23] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_22;
        plic_logic_bus_rsp_payload_fragment_data[24 : 24] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_23;
        plic_logic_bus_rsp_payload_fragment_data[25 : 25] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_24;
        plic_logic_bus_rsp_payload_fragment_data[26 : 26] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_25;
        plic_logic_bus_rsp_payload_fragment_data[27 : 27] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_26;
        plic_logic_bus_rsp_payload_fragment_data[28 : 28] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_27;
        plic_logic_bus_rsp_payload_fragment_data[29 : 29] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_28;
        plic_logic_bus_rsp_payload_fragment_data[30 : 30] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_29;
        plic_logic_bus_rsp_payload_fragment_data[31 : 31] = cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_30;
      end
      default : begin
      end
    endcase
  end

  assign cores_0_cpu_externalInterrupt_plic_target_requests_0_priority = 2'b00;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_0_id = 5'h0;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_0_valid = 1'b1;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_1_priority = _zz_3;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_1_id = 5'h01;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_1_valid = (_zz_4 && cores_0_cpu_externalInterrupt_plic_target_ie_0);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_2_priority = _zz_7;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_2_id = 5'h02;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_2_valid = (_zz_8 && cores_0_cpu_externalInterrupt_plic_target_ie_1);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_3_priority = _zz_11;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_3_id = 5'h03;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_3_valid = (_zz_12 && cores_0_cpu_externalInterrupt_plic_target_ie_2);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_4_priority = _zz_15;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_4_id = 5'h04;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_4_valid = (_zz_16 && cores_0_cpu_externalInterrupt_plic_target_ie_3);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_5_priority = _zz_19;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_5_id = 5'h05;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_5_valid = (_zz_20 && cores_0_cpu_externalInterrupt_plic_target_ie_4);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_6_priority = _zz_23;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_6_id = 5'h06;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_6_valid = (_zz_24 && cores_0_cpu_externalInterrupt_plic_target_ie_5);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_7_priority = _zz_27;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_7_id = 5'h07;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_7_valid = (_zz_28 && cores_0_cpu_externalInterrupt_plic_target_ie_6);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_8_priority = _zz_31;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_8_id = 5'h08;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_8_valid = (_zz_32 && cores_0_cpu_externalInterrupt_plic_target_ie_7);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_9_priority = _zz_35;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_9_id = 5'h09;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_9_valid = (_zz_36 && cores_0_cpu_externalInterrupt_plic_target_ie_8);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_10_priority = _zz_39;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_10_id = 5'h0a;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_10_valid = (_zz_40 && cores_0_cpu_externalInterrupt_plic_target_ie_9);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_11_priority = _zz_43;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_11_id = 5'h0b;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_11_valid = (_zz_44 && cores_0_cpu_externalInterrupt_plic_target_ie_10);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_12_priority = _zz_47;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_12_id = 5'h0c;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_12_valid = (_zz_48 && cores_0_cpu_externalInterrupt_plic_target_ie_11);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_13_priority = _zz_51;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_13_id = 5'h0d;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_13_valid = (_zz_52 && cores_0_cpu_externalInterrupt_plic_target_ie_12);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_14_priority = _zz_55;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_14_id = 5'h0e;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_14_valid = (_zz_56 && cores_0_cpu_externalInterrupt_plic_target_ie_13);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_15_priority = _zz_59;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_15_id = 5'h0f;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_15_valid = (_zz_60 && cores_0_cpu_externalInterrupt_plic_target_ie_14);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_16_priority = _zz_63;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_16_id = 5'h10;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_16_valid = (_zz_64 && cores_0_cpu_externalInterrupt_plic_target_ie_15);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_17_priority = _zz_67;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_17_id = 5'h11;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_17_valid = (_zz_68 && cores_0_cpu_externalInterrupt_plic_target_ie_16);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_18_priority = _zz_71;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_18_id = 5'h12;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_18_valid = (_zz_72 && cores_0_cpu_externalInterrupt_plic_target_ie_17);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_19_priority = _zz_75;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_19_id = 5'h13;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_19_valid = (_zz_76 && cores_0_cpu_externalInterrupt_plic_target_ie_18);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_20_priority = _zz_79;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_20_id = 5'h14;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_20_valid = (_zz_80 && cores_0_cpu_externalInterrupt_plic_target_ie_19);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_21_priority = _zz_83;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_21_id = 5'h15;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_21_valid = (_zz_84 && cores_0_cpu_externalInterrupt_plic_target_ie_20);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_22_priority = _zz_87;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_22_id = 5'h16;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_22_valid = (_zz_88 && cores_0_cpu_externalInterrupt_plic_target_ie_21);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_23_priority = _zz_91;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_23_id = 5'h17;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_23_valid = (_zz_92 && cores_0_cpu_externalInterrupt_plic_target_ie_22);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_24_priority = _zz_95;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_24_id = 5'h18;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_24_valid = (_zz_96 && cores_0_cpu_externalInterrupt_plic_target_ie_23);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_25_priority = _zz_99;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_25_id = 5'h19;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_25_valid = (_zz_100 && cores_0_cpu_externalInterrupt_plic_target_ie_24);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_26_priority = _zz_103;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_26_id = 5'h1a;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_26_valid = (_zz_104 && cores_0_cpu_externalInterrupt_plic_target_ie_25);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_27_priority = _zz_107;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_27_id = 5'h1b;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_27_valid = (_zz_108 && cores_0_cpu_externalInterrupt_plic_target_ie_26);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_28_priority = _zz_111;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_28_id = 5'h1c;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_28_valid = (_zz_112 && cores_0_cpu_externalInterrupt_plic_target_ie_27);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_29_priority = _zz_115;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_29_id = 5'h1d;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_29_valid = (_zz_116 && cores_0_cpu_externalInterrupt_plic_target_ie_28);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_30_priority = _zz_119;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_30_id = 5'h1e;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_30_valid = (_zz_120 && cores_0_cpu_externalInterrupt_plic_target_ie_29);
  assign cores_0_cpu_externalInterrupt_plic_target_requests_31_priority = _zz_123;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_31_id = 5'h1f;
  assign cores_0_cpu_externalInterrupt_plic_target_requests_31_valid = (_zz_124 && cores_0_cpu_externalInterrupt_plic_target_ie_30);
  assign _zz_141 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_1_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_0_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_1_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_0_priority)));
  assign _zz_142 = (_zz_141 ? cores_0_cpu_externalInterrupt_plic_target_requests_0_priority : cores_0_cpu_externalInterrupt_plic_target_requests_1_priority);
  assign _zz_143 = (_zz_141 ? cores_0_cpu_externalInterrupt_plic_target_requests_0_valid : cores_0_cpu_externalInterrupt_plic_target_requests_1_valid);
  assign _zz_144 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_3_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_2_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_3_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_2_priority)));
  assign _zz_145 = (_zz_144 ? cores_0_cpu_externalInterrupt_plic_target_requests_2_priority : cores_0_cpu_externalInterrupt_plic_target_requests_3_priority);
  assign _zz_146 = (_zz_144 ? cores_0_cpu_externalInterrupt_plic_target_requests_2_valid : cores_0_cpu_externalInterrupt_plic_target_requests_3_valid);
  assign _zz_147 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_5_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_4_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_5_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_4_priority)));
  assign _zz_148 = (_zz_147 ? cores_0_cpu_externalInterrupt_plic_target_requests_4_priority : cores_0_cpu_externalInterrupt_plic_target_requests_5_priority);
  assign _zz_149 = (_zz_147 ? cores_0_cpu_externalInterrupt_plic_target_requests_4_valid : cores_0_cpu_externalInterrupt_plic_target_requests_5_valid);
  assign _zz_150 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_7_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_6_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_7_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_6_priority)));
  assign _zz_151 = (_zz_150 ? cores_0_cpu_externalInterrupt_plic_target_requests_6_priority : cores_0_cpu_externalInterrupt_plic_target_requests_7_priority);
  assign _zz_152 = (_zz_150 ? cores_0_cpu_externalInterrupt_plic_target_requests_6_valid : cores_0_cpu_externalInterrupt_plic_target_requests_7_valid);
  assign _zz_153 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_9_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_8_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_9_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_8_priority)));
  assign _zz_154 = (_zz_153 ? cores_0_cpu_externalInterrupt_plic_target_requests_8_priority : cores_0_cpu_externalInterrupt_plic_target_requests_9_priority);
  assign _zz_155 = (_zz_153 ? cores_0_cpu_externalInterrupt_plic_target_requests_8_valid : cores_0_cpu_externalInterrupt_plic_target_requests_9_valid);
  assign _zz_156 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_11_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_10_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_11_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_10_priority)));
  assign _zz_157 = (_zz_156 ? cores_0_cpu_externalInterrupt_plic_target_requests_10_priority : cores_0_cpu_externalInterrupt_plic_target_requests_11_priority);
  assign _zz_158 = (_zz_156 ? cores_0_cpu_externalInterrupt_plic_target_requests_10_valid : cores_0_cpu_externalInterrupt_plic_target_requests_11_valid);
  assign _zz_159 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_13_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_12_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_13_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_12_priority)));
  assign _zz_160 = (_zz_159 ? cores_0_cpu_externalInterrupt_plic_target_requests_12_priority : cores_0_cpu_externalInterrupt_plic_target_requests_13_priority);
  assign _zz_161 = (_zz_159 ? cores_0_cpu_externalInterrupt_plic_target_requests_12_valid : cores_0_cpu_externalInterrupt_plic_target_requests_13_valid);
  assign _zz_162 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_15_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_14_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_15_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_14_priority)));
  assign _zz_163 = (_zz_162 ? cores_0_cpu_externalInterrupt_plic_target_requests_14_priority : cores_0_cpu_externalInterrupt_plic_target_requests_15_priority);
  assign _zz_164 = (_zz_162 ? cores_0_cpu_externalInterrupt_plic_target_requests_14_valid : cores_0_cpu_externalInterrupt_plic_target_requests_15_valid);
  assign _zz_165 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_17_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_16_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_17_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_16_priority)));
  assign _zz_166 = (_zz_165 ? cores_0_cpu_externalInterrupt_plic_target_requests_16_priority : cores_0_cpu_externalInterrupt_plic_target_requests_17_priority);
  assign _zz_167 = (_zz_165 ? cores_0_cpu_externalInterrupt_plic_target_requests_16_valid : cores_0_cpu_externalInterrupt_plic_target_requests_17_valid);
  assign _zz_168 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_19_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_18_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_19_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_18_priority)));
  assign _zz_169 = (_zz_168 ? cores_0_cpu_externalInterrupt_plic_target_requests_18_priority : cores_0_cpu_externalInterrupt_plic_target_requests_19_priority);
  assign _zz_170 = (_zz_168 ? cores_0_cpu_externalInterrupt_plic_target_requests_18_valid : cores_0_cpu_externalInterrupt_plic_target_requests_19_valid);
  assign _zz_171 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_21_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_20_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_21_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_20_priority)));
  assign _zz_172 = (_zz_171 ? cores_0_cpu_externalInterrupt_plic_target_requests_20_priority : cores_0_cpu_externalInterrupt_plic_target_requests_21_priority);
  assign _zz_173 = (_zz_171 ? cores_0_cpu_externalInterrupt_plic_target_requests_20_valid : cores_0_cpu_externalInterrupt_plic_target_requests_21_valid);
  assign _zz_174 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_23_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_22_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_23_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_22_priority)));
  assign _zz_175 = (_zz_174 ? cores_0_cpu_externalInterrupt_plic_target_requests_22_priority : cores_0_cpu_externalInterrupt_plic_target_requests_23_priority);
  assign _zz_176 = (_zz_174 ? cores_0_cpu_externalInterrupt_plic_target_requests_22_valid : cores_0_cpu_externalInterrupt_plic_target_requests_23_valid);
  assign _zz_177 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_25_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_24_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_25_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_24_priority)));
  assign _zz_178 = (_zz_177 ? cores_0_cpu_externalInterrupt_plic_target_requests_24_priority : cores_0_cpu_externalInterrupt_plic_target_requests_25_priority);
  assign _zz_179 = (_zz_177 ? cores_0_cpu_externalInterrupt_plic_target_requests_24_valid : cores_0_cpu_externalInterrupt_plic_target_requests_25_valid);
  assign _zz_180 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_27_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_26_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_27_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_26_priority)));
  assign _zz_181 = (_zz_180 ? cores_0_cpu_externalInterrupt_plic_target_requests_26_priority : cores_0_cpu_externalInterrupt_plic_target_requests_27_priority);
  assign _zz_182 = (_zz_180 ? cores_0_cpu_externalInterrupt_plic_target_requests_26_valid : cores_0_cpu_externalInterrupt_plic_target_requests_27_valid);
  assign _zz_183 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_29_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_28_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_29_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_28_priority)));
  assign _zz_184 = (_zz_183 ? cores_0_cpu_externalInterrupt_plic_target_requests_28_priority : cores_0_cpu_externalInterrupt_plic_target_requests_29_priority);
  assign _zz_185 = (_zz_183 ? cores_0_cpu_externalInterrupt_plic_target_requests_28_valid : cores_0_cpu_externalInterrupt_plic_target_requests_29_valid);
  assign _zz_186 = ((! cores_0_cpu_externalInterrupt_plic_target_requests_31_valid) || (cores_0_cpu_externalInterrupt_plic_target_requests_30_valid && (cores_0_cpu_externalInterrupt_plic_target_requests_31_priority <= cores_0_cpu_externalInterrupt_plic_target_requests_30_priority)));
  assign _zz_187 = (_zz_186 ? cores_0_cpu_externalInterrupt_plic_target_requests_30_priority : cores_0_cpu_externalInterrupt_plic_target_requests_31_priority);
  assign _zz_188 = (_zz_186 ? cores_0_cpu_externalInterrupt_plic_target_requests_30_valid : cores_0_cpu_externalInterrupt_plic_target_requests_31_valid);
  assign _zz_189 = ((! _zz_146) || (_zz_143 && (_zz_145 <= _zz_142)));
  assign _zz_190 = (_zz_189 ? _zz_142 : _zz_145);
  assign _zz_191 = (_zz_189 ? _zz_143 : _zz_146);
  assign _zz_192 = ((! _zz_152) || (_zz_149 && (_zz_151 <= _zz_148)));
  assign _zz_193 = (_zz_192 ? _zz_148 : _zz_151);
  assign _zz_194 = (_zz_192 ? _zz_149 : _zz_152);
  assign _zz_195 = ((! _zz_158) || (_zz_155 && (_zz_157 <= _zz_154)));
  assign _zz_196 = (_zz_195 ? _zz_154 : _zz_157);
  assign _zz_197 = (_zz_195 ? _zz_155 : _zz_158);
  assign _zz_198 = ((! _zz_164) || (_zz_161 && (_zz_163 <= _zz_160)));
  assign _zz_199 = (_zz_198 ? _zz_160 : _zz_163);
  assign _zz_200 = (_zz_198 ? _zz_161 : _zz_164);
  assign _zz_201 = ((! _zz_170) || (_zz_167 && (_zz_169 <= _zz_166)));
  assign _zz_202 = (_zz_201 ? _zz_166 : _zz_169);
  assign _zz_203 = (_zz_201 ? _zz_167 : _zz_170);
  assign _zz_204 = ((! _zz_176) || (_zz_173 && (_zz_175 <= _zz_172)));
  assign _zz_205 = (_zz_204 ? _zz_172 : _zz_175);
  assign _zz_206 = (_zz_204 ? _zz_173 : _zz_176);
  assign _zz_207 = ((! _zz_182) || (_zz_179 && (_zz_181 <= _zz_178)));
  assign _zz_208 = (_zz_207 ? _zz_178 : _zz_181);
  assign _zz_209 = (_zz_207 ? _zz_179 : _zz_182);
  assign _zz_210 = ((! _zz_188) || (_zz_185 && (_zz_187 <= _zz_184)));
  assign _zz_211 = (_zz_210 ? _zz_184 : _zz_187);
  assign _zz_212 = (_zz_210 ? _zz_185 : _zz_188);
  assign _zz_213 = ((! _zz_194) || (_zz_191 && (_zz_193 <= _zz_190)));
  assign _zz_214 = (_zz_213 ? _zz_190 : _zz_193);
  assign _zz_215 = (_zz_213 ? _zz_191 : _zz_194);
  assign _zz_216 = ((! _zz_200) || (_zz_197 && (_zz_199 <= _zz_196)));
  assign _zz_217 = (_zz_216 ? _zz_196 : _zz_199);
  assign _zz_218 = (_zz_216 ? _zz_197 : _zz_200);
  assign _zz_219 = ((! _zz_206) || (_zz_203 && (_zz_205 <= _zz_202)));
  assign _zz_220 = (_zz_219 ? _zz_202 : _zz_205);
  assign _zz_221 = (_zz_219 ? _zz_203 : _zz_206);
  assign _zz_222 = ((! _zz_212) || (_zz_209 && (_zz_211 <= _zz_208)));
  assign _zz_223 = (_zz_222 ? _zz_208 : _zz_211);
  assign _zz_224 = (_zz_222 ? _zz_209 : _zz_212);
  assign _zz_225 = ((! _zz_218) || (_zz_215 && (_zz_217 <= _zz_214)));
  assign _zz_226 = (_zz_225 ? _zz_214 : _zz_217);
  assign _zz_227 = (_zz_225 ? _zz_215 : _zz_218);
  assign _zz_228 = ((! _zz_224) || (_zz_221 && (_zz_223 <= _zz_220)));
  assign _zz_229 = (_zz_228 ? _zz_220 : _zz_223);
  assign _zz_230 = (_zz_228 ? _zz_221 : _zz_224);
  assign _zz_231 = ((! _zz_230) || (_zz_227 && (_zz_229 <= _zz_226)));
  assign cores_0_cpu_externalInterrupt_plic_target_bestRequest_priority = (_zz_231 ? _zz_226 : _zz_229);
  assign cores_0_cpu_externalInterrupt_plic_target_bestRequest_id = (_zz_231 ? (_zz_225 ? (_zz_213 ? (_zz_189 ? _zz_548 : _zz_549) : (_zz_192 ? _zz_550 : _zz_551)) : (_zz_216 ? (_zz_195 ? _zz_552 : _zz_553) : (_zz_198 ? _zz_554 : _zz_555))) : (_zz_228 ? (_zz_219 ? (_zz_201 ? _zz_556 : _zz_557) : (_zz_204 ? _zz_558 : _zz_559)) : (_zz_222 ? (_zz_207 ? _zz_560 : _zz_561) : (_zz_210 ? _zz_562 : _zz_563))));
  assign cores_0_cpu_externalInterrupt_plic_target_bestRequest_valid = (_zz_231 ? _zz_227 : _zz_230);
  assign cores_0_cpu_externalInterrupt_plic_target_iep = (cores_0_cpu_externalInterrupt_plic_target_threshold < cores_0_cpu_externalInterrupt_plic_target_bestRequest_priority);
  assign cores_0_cpu_externalInterrupt_plic_target_claim = (cores_0_cpu_externalInterrupt_plic_target_iep ? cores_0_cpu_externalInterrupt_plic_target_bestRequest_id : 5'h0);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_0_priority = 2'b00;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_0_id = 5'h0;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_0_valid = 1'b1;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_1_priority = _zz_3;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_1_id = 5'h01;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_1_valid = (_zz_4 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_0);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_2_priority = _zz_7;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_2_id = 5'h02;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_2_valid = (_zz_8 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_1);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_3_priority = _zz_11;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_3_id = 5'h03;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_3_valid = (_zz_12 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_2);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_4_priority = _zz_15;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_4_id = 5'h04;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_4_valid = (_zz_16 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_3);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_5_priority = _zz_19;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_5_id = 5'h05;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_5_valid = (_zz_20 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_4);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_6_priority = _zz_23;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_6_id = 5'h06;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_6_valid = (_zz_24 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_5);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_7_priority = _zz_27;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_7_id = 5'h07;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_7_valid = (_zz_28 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_6);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_8_priority = _zz_31;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_8_id = 5'h08;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_8_valid = (_zz_32 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_7);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_9_priority = _zz_35;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_9_id = 5'h09;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_9_valid = (_zz_36 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_8);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_10_priority = _zz_39;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_10_id = 5'h0a;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_10_valid = (_zz_40 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_9);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_11_priority = _zz_43;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_11_id = 5'h0b;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_11_valid = (_zz_44 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_10);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_12_priority = _zz_47;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_12_id = 5'h0c;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_12_valid = (_zz_48 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_11);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_13_priority = _zz_51;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_13_id = 5'h0d;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_13_valid = (_zz_52 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_12);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_14_priority = _zz_55;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_14_id = 5'h0e;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_14_valid = (_zz_56 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_13);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_15_priority = _zz_59;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_15_id = 5'h0f;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_15_valid = (_zz_60 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_14);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_16_priority = _zz_63;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_16_id = 5'h10;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_16_valid = (_zz_64 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_15);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_17_priority = _zz_67;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_17_id = 5'h11;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_17_valid = (_zz_68 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_16);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_18_priority = _zz_71;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_18_id = 5'h12;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_18_valid = (_zz_72 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_17);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_19_priority = _zz_75;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_19_id = 5'h13;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_19_valid = (_zz_76 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_18);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_20_priority = _zz_79;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_20_id = 5'h14;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_20_valid = (_zz_80 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_19);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_21_priority = _zz_83;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_21_id = 5'h15;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_21_valid = (_zz_84 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_20);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_22_priority = _zz_87;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_22_id = 5'h16;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_22_valid = (_zz_88 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_21);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_23_priority = _zz_91;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_23_id = 5'h17;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_23_valid = (_zz_92 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_22);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_24_priority = _zz_95;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_24_id = 5'h18;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_24_valid = (_zz_96 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_23);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_25_priority = _zz_99;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_25_id = 5'h19;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_25_valid = (_zz_100 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_24);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_26_priority = _zz_103;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_26_id = 5'h1a;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_26_valid = (_zz_104 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_25);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_27_priority = _zz_107;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_27_id = 5'h1b;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_27_valid = (_zz_108 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_26);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_28_priority = _zz_111;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_28_id = 5'h1c;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_28_valid = (_zz_112 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_27);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_29_priority = _zz_115;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_29_id = 5'h1d;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_29_valid = (_zz_116 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_28);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_30_priority = _zz_119;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_30_id = 5'h1e;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_30_valid = (_zz_120 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_29);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_31_priority = _zz_123;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_31_id = 5'h1f;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_31_valid = (_zz_124 && cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_30);
  assign _zz_232 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_1_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_0_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_1_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_0_priority)));
  assign _zz_233 = (_zz_232 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_0_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_1_priority);
  assign _zz_234 = (_zz_232 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_0_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_1_valid);
  assign _zz_235 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_3_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_2_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_3_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_2_priority)));
  assign _zz_236 = (_zz_235 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_2_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_3_priority);
  assign _zz_237 = (_zz_235 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_2_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_3_valid);
  assign _zz_238 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_5_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_4_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_5_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_4_priority)));
  assign _zz_239 = (_zz_238 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_4_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_5_priority);
  assign _zz_240 = (_zz_238 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_4_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_5_valid);
  assign _zz_241 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_7_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_6_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_7_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_6_priority)));
  assign _zz_242 = (_zz_241 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_6_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_7_priority);
  assign _zz_243 = (_zz_241 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_6_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_7_valid);
  assign _zz_244 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_9_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_8_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_9_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_8_priority)));
  assign _zz_245 = (_zz_244 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_8_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_9_priority);
  assign _zz_246 = (_zz_244 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_8_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_9_valid);
  assign _zz_247 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_11_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_10_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_11_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_10_priority)));
  assign _zz_248 = (_zz_247 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_10_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_11_priority);
  assign _zz_249 = (_zz_247 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_10_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_11_valid);
  assign _zz_250 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_13_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_12_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_13_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_12_priority)));
  assign _zz_251 = (_zz_250 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_12_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_13_priority);
  assign _zz_252 = (_zz_250 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_12_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_13_valid);
  assign _zz_253 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_15_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_14_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_15_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_14_priority)));
  assign _zz_254 = (_zz_253 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_14_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_15_priority);
  assign _zz_255 = (_zz_253 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_14_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_15_valid);
  assign _zz_256 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_17_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_16_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_17_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_16_priority)));
  assign _zz_257 = (_zz_256 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_16_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_17_priority);
  assign _zz_258 = (_zz_256 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_16_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_17_valid);
  assign _zz_259 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_19_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_18_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_19_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_18_priority)));
  assign _zz_260 = (_zz_259 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_18_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_19_priority);
  assign _zz_261 = (_zz_259 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_18_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_19_valid);
  assign _zz_262 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_21_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_20_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_21_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_20_priority)));
  assign _zz_263 = (_zz_262 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_20_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_21_priority);
  assign _zz_264 = (_zz_262 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_20_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_21_valid);
  assign _zz_265 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_23_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_22_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_23_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_22_priority)));
  assign _zz_266 = (_zz_265 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_22_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_23_priority);
  assign _zz_267 = (_zz_265 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_22_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_23_valid);
  assign _zz_268 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_25_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_24_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_25_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_24_priority)));
  assign _zz_269 = (_zz_268 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_24_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_25_priority);
  assign _zz_270 = (_zz_268 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_24_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_25_valid);
  assign _zz_271 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_27_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_26_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_27_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_26_priority)));
  assign _zz_272 = (_zz_271 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_26_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_27_priority);
  assign _zz_273 = (_zz_271 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_26_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_27_valid);
  assign _zz_274 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_29_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_28_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_29_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_28_priority)));
  assign _zz_275 = (_zz_274 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_28_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_29_priority);
  assign _zz_276 = (_zz_274 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_28_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_29_valid);
  assign _zz_277 = ((! cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_31_valid) || (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_30_valid && (cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_31_priority <= cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_30_priority)));
  assign _zz_278 = (_zz_277 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_30_priority : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_31_priority);
  assign _zz_279 = (_zz_277 ? cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_30_valid : cores_0_cpu_externalSupervisorInterrupt_plic_target_requests_31_valid);
  assign _zz_280 = ((! _zz_237) || (_zz_234 && (_zz_236 <= _zz_233)));
  assign _zz_281 = (_zz_280 ? _zz_233 : _zz_236);
  assign _zz_282 = (_zz_280 ? _zz_234 : _zz_237);
  assign _zz_283 = ((! _zz_243) || (_zz_240 && (_zz_242 <= _zz_239)));
  assign _zz_284 = (_zz_283 ? _zz_239 : _zz_242);
  assign _zz_285 = (_zz_283 ? _zz_240 : _zz_243);
  assign _zz_286 = ((! _zz_249) || (_zz_246 && (_zz_248 <= _zz_245)));
  assign _zz_287 = (_zz_286 ? _zz_245 : _zz_248);
  assign _zz_288 = (_zz_286 ? _zz_246 : _zz_249);
  assign _zz_289 = ((! _zz_255) || (_zz_252 && (_zz_254 <= _zz_251)));
  assign _zz_290 = (_zz_289 ? _zz_251 : _zz_254);
  assign _zz_291 = (_zz_289 ? _zz_252 : _zz_255);
  assign _zz_292 = ((! _zz_261) || (_zz_258 && (_zz_260 <= _zz_257)));
  assign _zz_293 = (_zz_292 ? _zz_257 : _zz_260);
  assign _zz_294 = (_zz_292 ? _zz_258 : _zz_261);
  assign _zz_295 = ((! _zz_267) || (_zz_264 && (_zz_266 <= _zz_263)));
  assign _zz_296 = (_zz_295 ? _zz_263 : _zz_266);
  assign _zz_297 = (_zz_295 ? _zz_264 : _zz_267);
  assign _zz_298 = ((! _zz_273) || (_zz_270 && (_zz_272 <= _zz_269)));
  assign _zz_299 = (_zz_298 ? _zz_269 : _zz_272);
  assign _zz_300 = (_zz_298 ? _zz_270 : _zz_273);
  assign _zz_301 = ((! _zz_279) || (_zz_276 && (_zz_278 <= _zz_275)));
  assign _zz_302 = (_zz_301 ? _zz_275 : _zz_278);
  assign _zz_303 = (_zz_301 ? _zz_276 : _zz_279);
  assign _zz_304 = ((! _zz_285) || (_zz_282 && (_zz_284 <= _zz_281)));
  assign _zz_305 = (_zz_304 ? _zz_281 : _zz_284);
  assign _zz_306 = (_zz_304 ? _zz_282 : _zz_285);
  assign _zz_307 = ((! _zz_291) || (_zz_288 && (_zz_290 <= _zz_287)));
  assign _zz_308 = (_zz_307 ? _zz_287 : _zz_290);
  assign _zz_309 = (_zz_307 ? _zz_288 : _zz_291);
  assign _zz_310 = ((! _zz_297) || (_zz_294 && (_zz_296 <= _zz_293)));
  assign _zz_311 = (_zz_310 ? _zz_293 : _zz_296);
  assign _zz_312 = (_zz_310 ? _zz_294 : _zz_297);
  assign _zz_313 = ((! _zz_303) || (_zz_300 && (_zz_302 <= _zz_299)));
  assign _zz_314 = (_zz_313 ? _zz_299 : _zz_302);
  assign _zz_315 = (_zz_313 ? _zz_300 : _zz_303);
  assign _zz_316 = ((! _zz_309) || (_zz_306 && (_zz_308 <= _zz_305)));
  assign _zz_317 = (_zz_316 ? _zz_305 : _zz_308);
  assign _zz_318 = (_zz_316 ? _zz_306 : _zz_309);
  assign _zz_319 = ((! _zz_315) || (_zz_312 && (_zz_314 <= _zz_311)));
  assign _zz_320 = (_zz_319 ? _zz_311 : _zz_314);
  assign _zz_321 = (_zz_319 ? _zz_312 : _zz_315);
  assign _zz_322 = ((! _zz_321) || (_zz_318 && (_zz_320 <= _zz_317)));
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_bestRequest_priority = (_zz_322 ? _zz_317 : _zz_320);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_bestRequest_id = (_zz_322 ? (_zz_316 ? (_zz_304 ? (_zz_280 ? _zz_564 : _zz_565) : (_zz_283 ? _zz_566 : _zz_567)) : (_zz_307 ? (_zz_286 ? _zz_568 : _zz_569) : (_zz_289 ? _zz_570 : _zz_571))) : (_zz_319 ? (_zz_310 ? (_zz_292 ? _zz_572 : _zz_573) : (_zz_295 ? _zz_574 : _zz_575)) : (_zz_313 ? (_zz_298 ? _zz_576 : _zz_577) : (_zz_301 ? _zz_578 : _zz_579))));
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_bestRequest_valid = (_zz_322 ? _zz_318 : _zz_321);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_iep = (cores_0_cpu_externalSupervisorInterrupt_plic_target_threshold < cores_0_cpu_externalSupervisorInterrupt_plic_target_bestRequest_priority);
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_claim = (cores_0_cpu_externalSupervisorInterrupt_plic_target_iep ? cores_0_cpu_externalSupervisorInterrupt_plic_target_bestRequest_id : 5'h0);
  assign _zz_3 = _zz_323;
  assign _zz_7 = _zz_324;
  assign _zz_11 = _zz_325;
  assign _zz_15 = _zz_326;
  assign _zz_19 = _zz_327;
  assign _zz_23 = _zz_328;
  assign _zz_27 = _zz_329;
  assign _zz_31 = _zz_330;
  assign _zz_35 = _zz_331;
  assign _zz_39 = _zz_332;
  assign _zz_43 = _zz_333;
  assign _zz_47 = _zz_334;
  assign _zz_51 = _zz_335;
  assign _zz_55 = _zz_336;
  assign _zz_59 = _zz_337;
  assign _zz_63 = _zz_338;
  assign _zz_67 = _zz_339;
  assign _zz_71 = _zz_340;
  assign _zz_75 = _zz_341;
  assign _zz_79 = _zz_342;
  assign _zz_83 = _zz_343;
  assign _zz_87 = _zz_344;
  assign _zz_91 = _zz_345;
  assign _zz_95 = _zz_346;
  assign _zz_99 = _zz_347;
  assign _zz_103 = _zz_348;
  assign _zz_107 = _zz_349;
  assign _zz_111 = _zz_350;
  assign _zz_115 = _zz_351;
  assign _zz_119 = _zz_352;
  assign _zz_123 = _zz_353;
  always @ (*) begin
    plic_logic_bridge_claim_valid = 1'b0;
    case(plic_logic_bmb_cmd_payload_fragment_address)
      22'h000004 : begin
      end
      22'h001004 : begin
      end
      22'h000008 : begin
      end
      22'h001008 : begin
      end
      22'h00000c : begin
      end
      22'h00100c : begin
      end
      22'h000010 : begin
      end
      22'h001010 : begin
      end
      22'h000014 : begin
      end
      22'h001014 : begin
      end
      22'h000018 : begin
      end
      22'h001018 : begin
      end
      22'h00001c : begin
      end
      22'h00101c : begin
      end
      22'h000020 : begin
      end
      22'h001020 : begin
      end
      22'h000024 : begin
      end
      22'h001024 : begin
      end
      22'h000028 : begin
      end
      22'h001028 : begin
      end
      22'h00002c : begin
      end
      22'h00102c : begin
      end
      22'h000030 : begin
      end
      22'h001030 : begin
      end
      22'h000034 : begin
      end
      22'h001034 : begin
      end
      22'h000038 : begin
      end
      22'h001038 : begin
      end
      22'h00003c : begin
      end
      22'h00103c : begin
      end
      22'h000040 : begin
      end
      22'h001040 : begin
      end
      22'h000044 : begin
      end
      22'h001044 : begin
      end
      22'h000048 : begin
      end
      22'h001048 : begin
      end
      22'h00004c : begin
      end
      22'h00104c : begin
      end
      22'h000050 : begin
      end
      22'h001050 : begin
      end
      22'h000054 : begin
      end
      22'h001054 : begin
      end
      22'h000058 : begin
      end
      22'h001058 : begin
      end
      22'h00005c : begin
      end
      22'h00105c : begin
      end
      22'h000060 : begin
      end
      22'h001060 : begin
      end
      22'h000064 : begin
      end
      22'h001064 : begin
      end
      22'h000068 : begin
      end
      22'h001068 : begin
      end
      22'h00006c : begin
      end
      22'h00106c : begin
      end
      22'h000070 : begin
      end
      22'h001070 : begin
      end
      22'h000074 : begin
      end
      22'h001074 : begin
      end
      22'h000078 : begin
      end
      22'h001078 : begin
      end
      22'h00007c : begin
      end
      22'h00107c : begin
      end
      22'h200000 : begin
      end
      22'h200004 : begin
        if(plic_logic_bus_doRead)begin
          plic_logic_bridge_claim_valid = 1'b1;
        end
      end
      22'h002000 : begin
      end
      22'h201000 : begin
      end
      22'h201004 : begin
        if(plic_logic_bus_doRead)begin
          plic_logic_bridge_claim_valid = 1'b1;
        end
      end
      22'h002080 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    plic_logic_bridge_claim_payload = 5'h0;
    case(plic_logic_bmb_cmd_payload_fragment_address)
      22'h000004 : begin
      end
      22'h001004 : begin
      end
      22'h000008 : begin
      end
      22'h001008 : begin
      end
      22'h00000c : begin
      end
      22'h00100c : begin
      end
      22'h000010 : begin
      end
      22'h001010 : begin
      end
      22'h000014 : begin
      end
      22'h001014 : begin
      end
      22'h000018 : begin
      end
      22'h001018 : begin
      end
      22'h00001c : begin
      end
      22'h00101c : begin
      end
      22'h000020 : begin
      end
      22'h001020 : begin
      end
      22'h000024 : begin
      end
      22'h001024 : begin
      end
      22'h000028 : begin
      end
      22'h001028 : begin
      end
      22'h00002c : begin
      end
      22'h00102c : begin
      end
      22'h000030 : begin
      end
      22'h001030 : begin
      end
      22'h000034 : begin
      end
      22'h001034 : begin
      end
      22'h000038 : begin
      end
      22'h001038 : begin
      end
      22'h00003c : begin
      end
      22'h00103c : begin
      end
      22'h000040 : begin
      end
      22'h001040 : begin
      end
      22'h000044 : begin
      end
      22'h001044 : begin
      end
      22'h000048 : begin
      end
      22'h001048 : begin
      end
      22'h00004c : begin
      end
      22'h00104c : begin
      end
      22'h000050 : begin
      end
      22'h001050 : begin
      end
      22'h000054 : begin
      end
      22'h001054 : begin
      end
      22'h000058 : begin
      end
      22'h001058 : begin
      end
      22'h00005c : begin
      end
      22'h00105c : begin
      end
      22'h000060 : begin
      end
      22'h001060 : begin
      end
      22'h000064 : begin
      end
      22'h001064 : begin
      end
      22'h000068 : begin
      end
      22'h001068 : begin
      end
      22'h00006c : begin
      end
      22'h00106c : begin
      end
      22'h000070 : begin
      end
      22'h001070 : begin
      end
      22'h000074 : begin
      end
      22'h001074 : begin
      end
      22'h000078 : begin
      end
      22'h001078 : begin
      end
      22'h00007c : begin
      end
      22'h00107c : begin
      end
      22'h200000 : begin
      end
      22'h200004 : begin
        if(plic_logic_bus_doRead)begin
          plic_logic_bridge_claim_payload = cores_0_cpu_externalInterrupt_plic_target_claim;
        end
      end
      22'h002000 : begin
      end
      22'h201000 : begin
      end
      22'h201004 : begin
        if(plic_logic_bus_doRead)begin
          plic_logic_bridge_claim_payload = cores_0_cpu_externalSupervisorInterrupt_plic_target_claim;
        end
      end
      22'h002080 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    plic_logic_bridge_completion_valid = 1'b0;
    if(plic_logic_bridge_targetMapping_0_targetCompletion_valid)begin
      plic_logic_bridge_completion_valid = 1'b1;
    end
    if(plic_logic_bridge_targetMapping_1_targetCompletion_valid)begin
      plic_logic_bridge_completion_valid = 1'b1;
    end
  end

  always @ (*) begin
    plic_logic_bridge_completion_payload = 5'h0;
    if(plic_logic_bridge_targetMapping_0_targetCompletion_valid)begin
      plic_logic_bridge_completion_payload = plic_logic_bridge_targetMapping_0_targetCompletion_payload;
    end
    if(plic_logic_bridge_targetMapping_1_targetCompletion_valid)begin
      plic_logic_bridge_completion_payload = plic_logic_bridge_targetMapping_1_targetCompletion_payload;
    end
  end

  assign cores_0_cpu_externalInterrupt_plic_target_threshold = _zz_354;
  always @ (*) begin
    plic_logic_bridge_targetMapping_0_targetCompletion_valid = 1'b0;
    case(plic_logic_bmb_cmd_payload_fragment_address)
      22'h000004 : begin
      end
      22'h001004 : begin
      end
      22'h000008 : begin
      end
      22'h001008 : begin
      end
      22'h00000c : begin
      end
      22'h00100c : begin
      end
      22'h000010 : begin
      end
      22'h001010 : begin
      end
      22'h000014 : begin
      end
      22'h001014 : begin
      end
      22'h000018 : begin
      end
      22'h001018 : begin
      end
      22'h00001c : begin
      end
      22'h00101c : begin
      end
      22'h000020 : begin
      end
      22'h001020 : begin
      end
      22'h000024 : begin
      end
      22'h001024 : begin
      end
      22'h000028 : begin
      end
      22'h001028 : begin
      end
      22'h00002c : begin
      end
      22'h00102c : begin
      end
      22'h000030 : begin
      end
      22'h001030 : begin
      end
      22'h000034 : begin
      end
      22'h001034 : begin
      end
      22'h000038 : begin
      end
      22'h001038 : begin
      end
      22'h00003c : begin
      end
      22'h00103c : begin
      end
      22'h000040 : begin
      end
      22'h001040 : begin
      end
      22'h000044 : begin
      end
      22'h001044 : begin
      end
      22'h000048 : begin
      end
      22'h001048 : begin
      end
      22'h00004c : begin
      end
      22'h00104c : begin
      end
      22'h000050 : begin
      end
      22'h001050 : begin
      end
      22'h000054 : begin
      end
      22'h001054 : begin
      end
      22'h000058 : begin
      end
      22'h001058 : begin
      end
      22'h00005c : begin
      end
      22'h00105c : begin
      end
      22'h000060 : begin
      end
      22'h001060 : begin
      end
      22'h000064 : begin
      end
      22'h001064 : begin
      end
      22'h000068 : begin
      end
      22'h001068 : begin
      end
      22'h00006c : begin
      end
      22'h00106c : begin
      end
      22'h000070 : begin
      end
      22'h001070 : begin
      end
      22'h000074 : begin
      end
      22'h001074 : begin
      end
      22'h000078 : begin
      end
      22'h001078 : begin
      end
      22'h00007c : begin
      end
      22'h00107c : begin
      end
      22'h200000 : begin
      end
      22'h200004 : begin
        if(plic_logic_bus_doWrite)begin
          plic_logic_bridge_targetMapping_0_targetCompletion_valid = 1'b1;
        end
      end
      22'h002000 : begin
      end
      22'h201000 : begin
      end
      22'h201004 : begin
      end
      22'h002080 : begin
      end
      default : begin
      end
    endcase
  end

  assign cores_0_cpu_externalInterrupt_plic_target_ie_0 = _zz_355;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_1 = _zz_356;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_2 = _zz_357;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_3 = _zz_358;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_4 = _zz_359;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_5 = _zz_360;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_6 = _zz_361;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_7 = _zz_362;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_8 = _zz_363;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_9 = _zz_364;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_10 = _zz_365;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_11 = _zz_366;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_12 = _zz_367;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_13 = _zz_368;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_14 = _zz_369;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_15 = _zz_370;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_16 = _zz_371;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_17 = _zz_372;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_18 = _zz_373;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_19 = _zz_374;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_20 = _zz_375;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_21 = _zz_376;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_22 = _zz_377;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_23 = _zz_378;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_24 = _zz_379;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_25 = _zz_380;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_26 = _zz_381;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_27 = _zz_382;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_28 = _zz_383;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_29 = _zz_384;
  assign cores_0_cpu_externalInterrupt_plic_target_ie_30 = _zz_385;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_threshold = _zz_386;
  always @ (*) begin
    plic_logic_bridge_targetMapping_1_targetCompletion_valid = 1'b0;
    case(plic_logic_bmb_cmd_payload_fragment_address)
      22'h000004 : begin
      end
      22'h001004 : begin
      end
      22'h000008 : begin
      end
      22'h001008 : begin
      end
      22'h00000c : begin
      end
      22'h00100c : begin
      end
      22'h000010 : begin
      end
      22'h001010 : begin
      end
      22'h000014 : begin
      end
      22'h001014 : begin
      end
      22'h000018 : begin
      end
      22'h001018 : begin
      end
      22'h00001c : begin
      end
      22'h00101c : begin
      end
      22'h000020 : begin
      end
      22'h001020 : begin
      end
      22'h000024 : begin
      end
      22'h001024 : begin
      end
      22'h000028 : begin
      end
      22'h001028 : begin
      end
      22'h00002c : begin
      end
      22'h00102c : begin
      end
      22'h000030 : begin
      end
      22'h001030 : begin
      end
      22'h000034 : begin
      end
      22'h001034 : begin
      end
      22'h000038 : begin
      end
      22'h001038 : begin
      end
      22'h00003c : begin
      end
      22'h00103c : begin
      end
      22'h000040 : begin
      end
      22'h001040 : begin
      end
      22'h000044 : begin
      end
      22'h001044 : begin
      end
      22'h000048 : begin
      end
      22'h001048 : begin
      end
      22'h00004c : begin
      end
      22'h00104c : begin
      end
      22'h000050 : begin
      end
      22'h001050 : begin
      end
      22'h000054 : begin
      end
      22'h001054 : begin
      end
      22'h000058 : begin
      end
      22'h001058 : begin
      end
      22'h00005c : begin
      end
      22'h00105c : begin
      end
      22'h000060 : begin
      end
      22'h001060 : begin
      end
      22'h000064 : begin
      end
      22'h001064 : begin
      end
      22'h000068 : begin
      end
      22'h001068 : begin
      end
      22'h00006c : begin
      end
      22'h00106c : begin
      end
      22'h000070 : begin
      end
      22'h001070 : begin
      end
      22'h000074 : begin
      end
      22'h001074 : begin
      end
      22'h000078 : begin
      end
      22'h001078 : begin
      end
      22'h00007c : begin
      end
      22'h00107c : begin
      end
      22'h200000 : begin
      end
      22'h200004 : begin
      end
      22'h002000 : begin
      end
      22'h201000 : begin
      end
      22'h201004 : begin
        if(plic_logic_bus_doWrite)begin
          plic_logic_bridge_targetMapping_1_targetCompletion_valid = 1'b1;
        end
      end
      22'h002080 : begin
      end
      default : begin
      end
    endcase
  end

  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_0 = _zz_387;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_1 = _zz_388;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_2 = _zz_389;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_3 = _zz_390;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_4 = _zz_391;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_5 = _zz_392;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_6 = _zz_393;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_7 = _zz_394;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_8 = _zz_395;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_9 = _zz_396;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_10 = _zz_397;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_11 = _zz_398;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_12 = _zz_399;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_13 = _zz_400;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_14 = _zz_401;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_15 = _zz_402;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_16 = _zz_403;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_17 = _zz_404;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_18 = _zz_405;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_19 = _zz_406;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_20 = _zz_407;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_21 = _zz_408;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_22 = _zz_409;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_23 = _zz_410;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_24 = _zz_411;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_25 = _zz_412;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_26 = _zz_413;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_27 = _zz_414;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_28 = _zz_415;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_29 = _zz_416;
  assign cores_0_cpu_externalSupervisorInterrupt_plic_target_ie_30 = _zz_417;
  assign _zz_456 = clint_logic_io_timerInterrupt[0];
  assign _zz_457 = clint_logic_io_softwareInterrupt[0];
  assign cores_0_cpu_debugBmb_cmd_valid = debugBridge_bmb_decoder_io_outputs_0_cmd_valid;
  assign cores_0_cpu_debugBmb_rsp_ready = debugBridge_bmb_decoder_io_outputs_0_rsp_ready;
  assign cores_0_cpu_debugBmb_cmd_payload_last = debugBridge_bmb_decoder_io_outputs_0_cmd_payload_last;
  assign cores_0_cpu_debugBmb_cmd_payload_fragment_opcode = debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode;
  assign cores_0_cpu_debugBmb_cmd_payload_fragment_address = debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_address[7:0];
  assign cores_0_cpu_debugBmb_cmd_payload_fragment_length = debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_length;
  assign cores_0_cpu_debugBmb_cmd_payload_fragment_data = debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_data;
  assign cores_0_cpu_debugBmb_cmd_payload_fragment_mask = debugBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask;
  assign plic_logic_bmb_cmd_valid = plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_valid;
  assign plic_logic_bmb_rsp_ready = plicWishboneBridge_bmb_decoder_io_outputs_0_rsp_ready;
  assign plic_logic_bmb_cmd_payload_last = plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_last;
  assign plic_logic_bmb_cmd_payload_fragment_opcode = plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_opcode;
  assign plic_logic_bmb_cmd_payload_fragment_address = plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_address;
  assign plic_logic_bmb_cmd_payload_fragment_length = plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_length;
  assign plic_logic_bmb_cmd_payload_fragment_data = plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_data;
  assign plic_logic_bmb_cmd_payload_fragment_mask = plicWishboneBridge_bmb_decoder_io_outputs_0_cmd_payload_fragment_mask;
  assign debugBridge_logic_mmMaster_cmd_ready = debugBridge_bmb_decoder_io_input_cmd_ready;
  assign debugBridge_logic_mmMaster_rsp_valid = debugBridge_bmb_decoder_io_input_rsp_valid;
  assign debugBridge_logic_mmMaster_rsp_payload_last = debugBridge_bmb_decoder_io_input_rsp_payload_last;
  assign debugBridge_logic_mmMaster_rsp_payload_fragment_opcode = debugBridge_bmb_decoder_io_input_rsp_payload_fragment_opcode;
  assign debugBridge_logic_mmMaster_rsp_payload_fragment_data = debugBridge_bmb_decoder_io_input_rsp_payload_fragment_data;
  assign cores_0_cpu_iBus_cmd_halfPipe_valid = cores_0_cpu_iBus_cmd_halfPipe_regs_valid;
  assign cores_0_cpu_iBus_cmd_halfPipe_payload_last = cores_0_cpu_iBus_cmd_halfPipe_regs_payload_last;
  assign cores_0_cpu_iBus_cmd_halfPipe_payload_fragment_opcode = cores_0_cpu_iBus_cmd_halfPipe_regs_payload_fragment_opcode;
  assign cores_0_cpu_iBus_cmd_halfPipe_payload_fragment_address = cores_0_cpu_iBus_cmd_halfPipe_regs_payload_fragment_address;
  assign cores_0_cpu_iBus_cmd_halfPipe_payload_fragment_length = cores_0_cpu_iBus_cmd_halfPipe_regs_payload_fragment_length;
  assign cores_0_cpu_iBus_cmd_ready = cores_0_cpu_iBus_cmd_halfPipe_regs_ready;
  assign cores_0_cpu_iBus_cmd_halfPipe_ready = cores_0_cpu_iBus_connector_decoder_cmd_ready;
  assign _zz_418 = ((1'b1 && (! _zz_419)) || cores_0_cpu_iBus_rsp_ready);
  assign _zz_419 = _zz_420;
  assign cores_0_cpu_iBus_rsp_valid = _zz_419;
  assign cores_0_cpu_iBus_rsp_payload_last = _zz_421;
  assign cores_0_cpu_iBus_rsp_payload_fragment_opcode = _zz_422;
  assign cores_0_cpu_iBus_rsp_payload_fragment_data = _zz_423;
  assign cores_0_cpu_iBus_connector_decoder_cmd_valid = cores_0_cpu_iBus_cmd_halfPipe_valid;
  assign cores_0_cpu_iBus_connector_decoder_rsp_ready = _zz_418;
  assign cores_0_cpu_iBus_connector_decoder_cmd_payload_last = cores_0_cpu_iBus_cmd_halfPipe_payload_last;
  assign cores_0_cpu_iBus_connector_decoder_cmd_payload_fragment_opcode = cores_0_cpu_iBus_cmd_halfPipe_payload_fragment_opcode;
  assign cores_0_cpu_iBus_connector_decoder_cmd_payload_fragment_address = cores_0_cpu_iBus_cmd_halfPipe_payload_fragment_address;
  assign cores_0_cpu_iBus_connector_decoder_cmd_payload_fragment_length = cores_0_cpu_iBus_cmd_halfPipe_payload_fragment_length;
  assign dBus_Bridge_bus_cmd_s2mPipe_valid = (dBus_Bridge_bus_cmd_valid || dBus_Bridge_bus_cmd_s2mPipe_rValid);
  assign dBus_Bridge_bus_cmd_ready = (! dBus_Bridge_bus_cmd_s2mPipe_rValid);
  assign dBus_Bridge_bus_cmd_s2mPipe_payload_last = (dBus_Bridge_bus_cmd_s2mPipe_rValid ? dBus_Bridge_bus_cmd_s2mPipe_rData_last : dBus_Bridge_bus_cmd_payload_last);
  assign dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_opcode = (dBus_Bridge_bus_cmd_s2mPipe_rValid ? dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_opcode : dBus_Bridge_bus_cmd_payload_fragment_opcode);
  assign dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_address = (dBus_Bridge_bus_cmd_s2mPipe_rValid ? dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_address : dBus_Bridge_bus_cmd_payload_fragment_address);
  assign dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_length = (dBus_Bridge_bus_cmd_s2mPipe_rValid ? dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_length : dBus_Bridge_bus_cmd_payload_fragment_length);
  assign dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_data = (dBus_Bridge_bus_cmd_s2mPipe_rValid ? dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_data : dBus_Bridge_bus_cmd_payload_fragment_data);
  assign dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_mask = (dBus_Bridge_bus_cmd_s2mPipe_rValid ? dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_mask : dBus_Bridge_bus_cmd_payload_fragment_mask);
  assign dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_context = (dBus_Bridge_bus_cmd_s2mPipe_rValid ? dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_context : dBus_Bridge_bus_cmd_payload_fragment_context);
  assign dBus_Bridge_bus_cmd_s2mPipe_ready = ((1'b1 && (! dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_valid)) || dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_ready);
  assign dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_valid = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rValid;
  assign dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_last = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_last;
  assign dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_opcode = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_opcode;
  assign dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_address = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_address;
  assign dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_length = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_length;
  assign dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_data = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_data;
  assign dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_mask = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_mask;
  assign dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_context = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_context;
  assign dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_ready = cores_0_cpu_dBus_connector_decoder_cmd_ready;
  assign _zz_424 = ((1'b1 && (! _zz_425)) || dBus_Bridge_bus_rsp_ready);
  assign _zz_425 = _zz_426;
  assign dBus_Bridge_bus_rsp_valid = _zz_425;
  assign dBus_Bridge_bus_rsp_payload_last = _zz_427;
  assign dBus_Bridge_bus_rsp_payload_fragment_opcode = _zz_428;
  assign dBus_Bridge_bus_rsp_payload_fragment_data = _zz_429;
  assign dBus_Bridge_bus_rsp_payload_fragment_context = _zz_430;
  assign cores_0_cpu_dBus_connector_decoder_cmd_valid = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_valid;
  assign cores_0_cpu_dBus_connector_decoder_rsp_ready = _zz_424;
  assign cores_0_cpu_dBus_connector_decoder_cmd_payload_last = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_last;
  assign cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_opcode = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_opcode;
  assign cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_address = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_address;
  assign cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_length = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_length;
  assign cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_data = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_data;
  assign cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_mask = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_mask;
  assign cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_context = dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_payload_fragment_context;
  assign _zz_461 = 1'b0;
  assign _zz_460 = 1'b1;
  assign resetGenerator_stuff_syncTrigger = bufferCC_4_io_dataOut;
  assign iBridge_dram_cmd_valid = iBridge_logic_io_output_cmd_valid;
  assign iBridge_dram_cmd_payload_we = iBridge_logic_io_output_cmd_payload_we;
  assign iBridge_dram_cmd_payload_addr = iBridge_logic_io_output_cmd_payload_addr;
  assign iBridge_dram_wdata_valid = iBridge_logic_io_output_wdata_valid;
  assign iBridge_dram_wdata_payload_data = iBridge_logic_io_output_wdata_payload_data;
  assign iBridge_dram_wdata_payload_we = iBridge_logic_io_output_wdata_payload_we;
  assign iBridge_dram_rdata_ready = iBridge_logic_io_output_rdata_ready;
  assign _zz_462 = iArbiter_bmb_decoder_io_outputs_0_cmd_payload_fragment_address[29:0];
  assign peripheral_CYC = peripheralBridge_logic_io_output_CYC;
  assign peripheral_STB = peripheralBridge_logic_io_output_STB;
  assign peripheral_WE = peripheralBridge_logic_io_output_WE;
  assign peripheral_ADR = peripheralBridge_logic_io_output_ADR;
  assign peripheral_DAT_MOSI = peripheralBridge_logic_io_output_DAT_MOSI;
  assign peripheral_SEL = peripheralBridge_logic_io_output_SEL;
  assign peripheral_CTI = peripheralBridge_logic_io_output_CTI;
  assign peripheral_BTE = peripheralBridge_logic_io_output_BTE;
  assign dBridge_dram_cmd_valid = dBridge_logic_io_output_cmd_valid;
  assign dBridge_dram_cmd_payload_we = dBridge_logic_io_output_cmd_payload_we;
  assign dBridge_dram_cmd_payload_addr = dBridge_logic_io_output_cmd_payload_addr;
  assign dBridge_dram_wdata_valid = dBridge_logic_io_output_wdata_valid;
  assign dBridge_dram_wdata_payload_data = dBridge_logic_io_output_wdata_payload_data;
  assign dBridge_dram_wdata_payload_we = dBridge_logic_io_output_wdata_payload_we;
  assign dBridge_dram_rdata_ready = dBridge_logic_io_output_rdata_ready;
  assign peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_valid = peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_valid;
  assign peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_last = peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_last;
  assign peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_source = peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_source;
  assign peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_opcode = peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_opcode;
  assign peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_address = peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_address;
  assign peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_length = peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_length;
  assign peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_data = peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_data;
  assign peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_mask = peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_mask;
  assign peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_payload_fragment_context = peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_context;
  assign peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_ready = peripheralBridge_logic_io_input_cmd_ready;
  assign _zz_431 = ((1'b1 && (! _zz_432)) || peripheralBridge_bmb_arbiter_io_output_rsp_ready);
  assign _zz_432 = _zz_433;
  assign _zz_463 = dBusNonCoherent_bmb_decoder_io_outputs_0_cmd_payload_fragment_address[29:0];
  assign iArbiter_bmb_cmd_halfPipe_valid = iArbiter_bmb_cmd_halfPipe_regs_valid;
  assign iArbiter_bmb_cmd_halfPipe_payload_last = iArbiter_bmb_cmd_halfPipe_regs_payload_last;
  assign iArbiter_bmb_cmd_halfPipe_payload_fragment_opcode = iArbiter_bmb_cmd_halfPipe_regs_payload_fragment_opcode;
  assign iArbiter_bmb_cmd_halfPipe_payload_fragment_address = iArbiter_bmb_cmd_halfPipe_regs_payload_fragment_address;
  assign iArbiter_bmb_cmd_halfPipe_payload_fragment_length = iArbiter_bmb_cmd_halfPipe_regs_payload_fragment_length;
  assign iArbiter_bmb_cmd_ready = iArbiter_bmb_cmd_halfPipe_regs_ready;
  assign iArbiter_bmb_cmd_halfPipe_ready = iArbiter_bmb_decoder_io_input_cmd_ready;
  assign _zz_439 = ((1'b1 && (! _zz_440)) || iArbiter_bmb_rsp_ready);
  assign _zz_440 = _zz_441;
  assign iArbiter_bmb_rsp_valid = _zz_440;
  assign iArbiter_bmb_rsp_payload_last = _zz_442;
  assign iArbiter_bmb_rsp_payload_fragment_opcode = _zz_443;
  assign iArbiter_bmb_rsp_payload_fragment_data = _zz_444;
  assign dBusNonCoherent_bmb_cmd_s2mPipe_valid = (dBusNonCoherent_bmb_cmd_valid || dBusNonCoherent_bmb_cmd_s2mPipe_rValid);
  assign dBusNonCoherent_bmb_cmd_ready = (! dBusNonCoherent_bmb_cmd_s2mPipe_rValid);
  assign dBusNonCoherent_bmb_cmd_s2mPipe_payload_last = (dBusNonCoherent_bmb_cmd_s2mPipe_rValid ? dBusNonCoherent_bmb_cmd_s2mPipe_rData_last : dBusNonCoherent_bmb_cmd_payload_last);
  assign dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_opcode = (dBusNonCoherent_bmb_cmd_s2mPipe_rValid ? dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_opcode : dBusNonCoherent_bmb_cmd_payload_fragment_opcode);
  assign dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_address = (dBusNonCoherent_bmb_cmd_s2mPipe_rValid ? dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_address : dBusNonCoherent_bmb_cmd_payload_fragment_address);
  assign dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_length = (dBusNonCoherent_bmb_cmd_s2mPipe_rValid ? dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_length : dBusNonCoherent_bmb_cmd_payload_fragment_length);
  assign dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_data = (dBusNonCoherent_bmb_cmd_s2mPipe_rValid ? dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_data : dBusNonCoherent_bmb_cmd_payload_fragment_data);
  assign dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_mask = (dBusNonCoherent_bmb_cmd_s2mPipe_rValid ? dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_mask : dBusNonCoherent_bmb_cmd_payload_fragment_mask);
  assign dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_context = (dBusNonCoherent_bmb_cmd_s2mPipe_rValid ? dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_context : dBusNonCoherent_bmb_cmd_payload_fragment_context);
  assign dBusNonCoherent_bmb_cmd_s2mPipe_ready = ((1'b1 && (! dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_valid)) || dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_ready);
  assign dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_valid = dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rValid;
  assign dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_last = dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_last;
  assign dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_opcode = dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_opcode;
  assign dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_address = dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_address;
  assign dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_length = dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_length;
  assign dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_data = dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_data;
  assign dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_mask = dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_mask;
  assign dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_payload_fragment_context = dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_context;
  assign dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_ready = dBusNonCoherent_bmb_decoder_io_input_cmd_ready;
  assign _zz_445 = ((1'b1 && (! _zz_446)) || dBusNonCoherent_bmb_rsp_ready);
  assign _zz_446 = _zz_447;
  assign dBusNonCoherent_bmb_rsp_valid = _zz_446;
  assign dBusNonCoherent_bmb_rsp_payload_last = _zz_448;
  assign dBusNonCoherent_bmb_rsp_payload_fragment_opcode = _zz_449;
  assign dBusNonCoherent_bmb_rsp_payload_fragment_data = _zz_450;
  assign dBusNonCoherent_bmb_rsp_payload_fragment_context = _zz_451;
  assign _zz_464 = 32'h0;
  assign _zz_465 = 4'bxxxx;
  assign dBusNonCoherent_bmb_cmd_valid = dBusCoherent_bmb_connector_decoder_cmd_valid;
  assign dBusNonCoherent_bmb_rsp_ready = dBusCoherent_bmb_connector_decoder_rsp_ready;
  assign dBusNonCoherent_bmb_cmd_payload_last = dBusCoherent_bmb_connector_decoder_cmd_payload_last;
  assign dBusNonCoherent_bmb_cmd_payload_fragment_opcode = dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_opcode;
  assign dBusNonCoherent_bmb_cmd_payload_fragment_address = dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_address;
  assign dBusNonCoherent_bmb_cmd_payload_fragment_length = dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_length;
  assign dBusNonCoherent_bmb_cmd_payload_fragment_data = dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_data;
  assign dBusNonCoherent_bmb_cmd_payload_fragment_mask = dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_mask;
  assign dBusNonCoherent_bmb_cmd_payload_fragment_context = dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_context;
  assign iArbiter_bmb_cmd_valid = cores_0_cpu_iBus_connector_decoder_cmd_valid;
  assign iArbiter_bmb_rsp_ready = cores_0_cpu_iBus_connector_decoder_rsp_ready;
  assign iArbiter_bmb_cmd_payload_last = cores_0_cpu_iBus_connector_decoder_cmd_payload_last;
  assign iArbiter_bmb_cmd_payload_fragment_opcode = cores_0_cpu_iBus_connector_decoder_cmd_payload_fragment_opcode;
  assign iArbiter_bmb_cmd_payload_fragment_address = cores_0_cpu_iBus_connector_decoder_cmd_payload_fragment_address;
  assign iArbiter_bmb_cmd_payload_fragment_length = cores_0_cpu_iBus_connector_decoder_cmd_payload_fragment_length;
  assign cores_0_cpu_iBus_connector_decoder_cmd_ready = iArbiter_bmb_cmd_ready;
  assign cores_0_cpu_iBus_connector_decoder_rsp_valid = iArbiter_bmb_rsp_valid;
  assign cores_0_cpu_iBus_connector_decoder_rsp_payload_last = iArbiter_bmb_rsp_payload_last;
  assign cores_0_cpu_iBus_connector_decoder_rsp_payload_fragment_opcode = iArbiter_bmb_rsp_payload_fragment_opcode;
  assign cores_0_cpu_iBus_connector_decoder_rsp_payload_fragment_data = iArbiter_bmb_rsp_payload_fragment_data;
  assign dBusCoherent_bmb_connector_decoder_cmd_valid = dBusCoherent_bmb_cmd_valid;
  assign dBusCoherent_bmb_cmd_ready = dBusCoherent_bmb_connector_decoder_cmd_ready;
  assign dBusCoherent_bmb_rsp_valid = dBusCoherent_bmb_connector_decoder_rsp_valid;
  assign dBusCoherent_bmb_connector_decoder_rsp_ready = dBusCoherent_bmb_rsp_ready;
  assign dBusCoherent_bmb_connector_decoder_cmd_payload_last = dBusCoherent_bmb_cmd_payload_last;
  assign dBusCoherent_bmb_rsp_payload_last = dBusCoherent_bmb_connector_decoder_rsp_payload_last;
  assign dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_opcode = dBusCoherent_bmb_cmd_payload_fragment_opcode;
  assign dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_address = dBusCoherent_bmb_cmd_payload_fragment_address;
  assign dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_length = dBusCoherent_bmb_cmd_payload_fragment_length;
  assign dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_data = dBusCoherent_bmb_cmd_payload_fragment_data;
  assign dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_mask = dBusCoherent_bmb_cmd_payload_fragment_mask;
  assign dBusCoherent_bmb_connector_decoder_cmd_payload_fragment_context = dBusCoherent_bmb_cmd_payload_fragment_context;
  assign dBusCoherent_bmb_rsp_payload_fragment_opcode = dBusCoherent_bmb_connector_decoder_rsp_payload_fragment_opcode;
  assign dBusCoherent_bmb_rsp_payload_fragment_data = dBusCoherent_bmb_connector_decoder_rsp_payload_fragment_data;
  assign dBusCoherent_bmb_rsp_payload_fragment_context = dBusCoherent_bmb_connector_decoder_rsp_payload_fragment_context;
  assign dBusCoherent_bmb_connector_decoder_cmd_ready = dBusNonCoherent_bmb_cmd_ready;
  assign dBusCoherent_bmb_connector_decoder_rsp_valid = dBusNonCoherent_bmb_rsp_valid;
  assign dBusCoherent_bmb_connector_decoder_rsp_payload_last = dBusNonCoherent_bmb_rsp_payload_last;
  assign dBusCoherent_bmb_connector_decoder_rsp_payload_fragment_opcode = dBusNonCoherent_bmb_rsp_payload_fragment_opcode;
  assign dBusCoherent_bmb_connector_decoder_rsp_payload_fragment_data = dBusNonCoherent_bmb_rsp_payload_fragment_data;
  assign dBusCoherent_bmb_connector_decoder_rsp_payload_fragment_context = dBusNonCoherent_bmb_rsp_payload_fragment_context;
  assign dBusCoherent_bmb_cmd_valid = cores_0_cpu_dBus_connector_decoder_cmd_valid;
  assign dBusCoherent_bmb_rsp_ready = cores_0_cpu_dBus_connector_decoder_rsp_ready;
  assign dBusCoherent_bmb_cmd_payload_last = cores_0_cpu_dBus_connector_decoder_cmd_payload_last;
  assign dBusCoherent_bmb_cmd_payload_fragment_opcode = cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_opcode;
  assign dBusCoherent_bmb_cmd_payload_fragment_address = cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_address;
  assign dBusCoherent_bmb_cmd_payload_fragment_length = cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_length;
  assign dBusCoherent_bmb_cmd_payload_fragment_data = cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_data;
  assign dBusCoherent_bmb_cmd_payload_fragment_mask = cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_mask;
  assign dBusCoherent_bmb_cmd_payload_fragment_context = cores_0_cpu_dBus_connector_decoder_cmd_payload_fragment_context;
  assign cores_0_cpu_dBus_connector_decoder_cmd_ready = dBusCoherent_bmb_cmd_ready;
  assign cores_0_cpu_dBus_connector_decoder_rsp_valid = dBusCoherent_bmb_rsp_valid;
  assign cores_0_cpu_dBus_connector_decoder_rsp_payload_last = dBusCoherent_bmb_rsp_payload_last;
  assign cores_0_cpu_dBus_connector_decoder_rsp_payload_fragment_opcode = dBusCoherent_bmb_rsp_payload_fragment_opcode;
  assign cores_0_cpu_dBus_connector_decoder_rsp_payload_fragment_data = dBusCoherent_bmb_rsp_payload_fragment_data;
  assign cores_0_cpu_dBus_connector_decoder_rsp_payload_fragment_context = dBusCoherent_bmb_rsp_payload_fragment_context;
  assign plic_logic_bridge_targetMapping_0_targetCompletion_payload = plic_logic_bmb_cmd_payload_fragment_data[4 : 0];
  assign plic_logic_bridge_targetMapping_1_targetCompletion_payload = plic_logic_bmb_cmd_payload_fragment_data[4 : 0];
  always @ (posedge debugCd_external_clk) begin
    if(_zz_466)begin
      debugCd_logic_holdingLogic_resetCounter <= (debugCd_logic_holdingLogic_resetCounter + 12'h001);
    end
    if(debugCd_logic_inputResetTrigger)begin
      debugCd_logic_holdingLogic_resetCounter <= 12'h0;
    end
    debugCd_logic_outputReset <= debugCd_logic_outputResetUnbuffered;
    if(_zz_467)begin
      systemCd_logic_holdingLogic_resetCounter <= (systemCd_logic_holdingLogic_resetCounter + 6'h01);
    end
    if(systemCd_logic_inputResetTrigger)begin
      systemCd_logic_holdingLogic_resetCounter <= 6'h0;
    end
    systemCd_logic_outputReset <= systemCd_logic_outputResetUnbuffered;
  end

  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      _zz_4 <= 1'b0;
      _zz_5 <= 1'b0;
      _zz_8 <= 1'b0;
      _zz_9 <= 1'b0;
      _zz_12 <= 1'b0;
      _zz_13 <= 1'b0;
      _zz_16 <= 1'b0;
      _zz_17 <= 1'b0;
      _zz_20 <= 1'b0;
      _zz_21 <= 1'b0;
      _zz_24 <= 1'b0;
      _zz_25 <= 1'b0;
      _zz_28 <= 1'b0;
      _zz_29 <= 1'b0;
      _zz_32 <= 1'b0;
      _zz_33 <= 1'b0;
      _zz_36 <= 1'b0;
      _zz_37 <= 1'b0;
      _zz_40 <= 1'b0;
      _zz_41 <= 1'b0;
      _zz_44 <= 1'b0;
      _zz_45 <= 1'b0;
      _zz_48 <= 1'b0;
      _zz_49 <= 1'b0;
      _zz_52 <= 1'b0;
      _zz_53 <= 1'b0;
      _zz_56 <= 1'b0;
      _zz_57 <= 1'b0;
      _zz_60 <= 1'b0;
      _zz_61 <= 1'b0;
      _zz_64 <= 1'b0;
      _zz_65 <= 1'b0;
      _zz_68 <= 1'b0;
      _zz_69 <= 1'b0;
      _zz_72 <= 1'b0;
      _zz_73 <= 1'b0;
      _zz_76 <= 1'b0;
      _zz_77 <= 1'b0;
      _zz_80 <= 1'b0;
      _zz_81 <= 1'b0;
      _zz_84 <= 1'b0;
      _zz_85 <= 1'b0;
      _zz_88 <= 1'b0;
      _zz_89 <= 1'b0;
      _zz_92 <= 1'b0;
      _zz_93 <= 1'b0;
      _zz_96 <= 1'b0;
      _zz_97 <= 1'b0;
      _zz_100 <= 1'b0;
      _zz_101 <= 1'b0;
      _zz_104 <= 1'b0;
      _zz_105 <= 1'b0;
      _zz_108 <= 1'b0;
      _zz_109 <= 1'b0;
      _zz_112 <= 1'b0;
      _zz_113 <= 1'b0;
      _zz_116 <= 1'b0;
      _zz_117 <= 1'b0;
      _zz_120 <= 1'b0;
      _zz_121 <= 1'b0;
      _zz_124 <= 1'b0;
      _zz_125 <= 1'b0;
      _zz_127 <= 1'b0;
      dBus_Bridge_withWriteBuffer_buffer_mask <= 8'h0;
      dBus_Bridge_withWriteBuffer_aggregationCounter <= 3'b000;
      dBus_Bridge_withWriteBuffer_timer <= 5'h0;
      _zz_137 <= 1'b0;
      _zz_323 <= 2'b00;
      _zz_324 <= 2'b00;
      _zz_325 <= 2'b00;
      _zz_326 <= 2'b00;
      _zz_327 <= 2'b00;
      _zz_328 <= 2'b00;
      _zz_329 <= 2'b00;
      _zz_330 <= 2'b00;
      _zz_331 <= 2'b00;
      _zz_332 <= 2'b00;
      _zz_333 <= 2'b00;
      _zz_334 <= 2'b00;
      _zz_335 <= 2'b00;
      _zz_336 <= 2'b00;
      _zz_337 <= 2'b00;
      _zz_338 <= 2'b00;
      _zz_339 <= 2'b00;
      _zz_340 <= 2'b00;
      _zz_341 <= 2'b00;
      _zz_342 <= 2'b00;
      _zz_343 <= 2'b00;
      _zz_344 <= 2'b00;
      _zz_345 <= 2'b00;
      _zz_346 <= 2'b00;
      _zz_347 <= 2'b00;
      _zz_348 <= 2'b00;
      _zz_349 <= 2'b00;
      _zz_350 <= 2'b00;
      _zz_351 <= 2'b00;
      _zz_352 <= 2'b00;
      _zz_353 <= 2'b00;
      _zz_354 <= 2'b00;
      _zz_355 <= 1'b0;
      _zz_356 <= 1'b0;
      _zz_357 <= 1'b0;
      _zz_358 <= 1'b0;
      _zz_359 <= 1'b0;
      _zz_360 <= 1'b0;
      _zz_361 <= 1'b0;
      _zz_362 <= 1'b0;
      _zz_363 <= 1'b0;
      _zz_364 <= 1'b0;
      _zz_365 <= 1'b0;
      _zz_366 <= 1'b0;
      _zz_367 <= 1'b0;
      _zz_368 <= 1'b0;
      _zz_369 <= 1'b0;
      _zz_370 <= 1'b0;
      _zz_371 <= 1'b0;
      _zz_372 <= 1'b0;
      _zz_373 <= 1'b0;
      _zz_374 <= 1'b0;
      _zz_375 <= 1'b0;
      _zz_376 <= 1'b0;
      _zz_377 <= 1'b0;
      _zz_378 <= 1'b0;
      _zz_379 <= 1'b0;
      _zz_380 <= 1'b0;
      _zz_381 <= 1'b0;
      _zz_382 <= 1'b0;
      _zz_383 <= 1'b0;
      _zz_384 <= 1'b0;
      _zz_385 <= 1'b0;
      _zz_386 <= 2'b00;
      _zz_387 <= 1'b0;
      _zz_388 <= 1'b0;
      _zz_389 <= 1'b0;
      _zz_390 <= 1'b0;
      _zz_391 <= 1'b0;
      _zz_392 <= 1'b0;
      _zz_393 <= 1'b0;
      _zz_394 <= 1'b0;
      _zz_395 <= 1'b0;
      _zz_396 <= 1'b0;
      _zz_397 <= 1'b0;
      _zz_398 <= 1'b0;
      _zz_399 <= 1'b0;
      _zz_400 <= 1'b0;
      _zz_401 <= 1'b0;
      _zz_402 <= 1'b0;
      _zz_403 <= 1'b0;
      _zz_404 <= 1'b0;
      _zz_405 <= 1'b0;
      _zz_406 <= 1'b0;
      _zz_407 <= 1'b0;
      _zz_408 <= 1'b0;
      _zz_409 <= 1'b0;
      _zz_410 <= 1'b0;
      _zz_411 <= 1'b0;
      _zz_412 <= 1'b0;
      _zz_413 <= 1'b0;
      _zz_414 <= 1'b0;
      _zz_415 <= 1'b0;
      _zz_416 <= 1'b0;
      _zz_417 <= 1'b0;
      cores_0_cpu_iBus_cmd_halfPipe_regs_valid <= 1'b0;
      cores_0_cpu_iBus_cmd_halfPipe_regs_ready <= 1'b1;
      _zz_420 <= 1'b0;
      dBus_Bridge_bus_cmd_s2mPipe_rValid <= 1'b0;
      dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rValid <= 1'b0;
      _zz_426 <= 1'b0;
      peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_valid <= 1'b0;
      peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_ready <= 1'b1;
      _zz_433 <= 1'b0;
      iArbiter_bmb_cmd_halfPipe_regs_valid <= 1'b0;
      iArbiter_bmb_cmd_halfPipe_regs_ready <= 1'b1;
      _zz_441 <= 1'b0;
      dBusNonCoherent_bmb_cmd_s2mPipe_rValid <= 1'b0;
      dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rValid <= 1'b0;
      _zz_447 <= 1'b0;
    end else begin
      if((! _zz_5))begin
        _zz_4 <= _zz_2;
        _zz_5 <= _zz_2;
      end
      if((! _zz_9))begin
        _zz_8 <= _zz_6;
        _zz_9 <= _zz_6;
      end
      if((! _zz_13))begin
        _zz_12 <= _zz_10;
        _zz_13 <= _zz_10;
      end
      if((! _zz_17))begin
        _zz_16 <= _zz_14;
        _zz_17 <= _zz_14;
      end
      if((! _zz_21))begin
        _zz_20 <= _zz_18;
        _zz_21 <= _zz_18;
      end
      if((! _zz_25))begin
        _zz_24 <= _zz_22;
        _zz_25 <= _zz_22;
      end
      if((! _zz_29))begin
        _zz_28 <= _zz_26;
        _zz_29 <= _zz_26;
      end
      if((! _zz_33))begin
        _zz_32 <= _zz_30;
        _zz_33 <= _zz_30;
      end
      if((! _zz_37))begin
        _zz_36 <= _zz_34;
        _zz_37 <= _zz_34;
      end
      if((! _zz_41))begin
        _zz_40 <= _zz_38;
        _zz_41 <= _zz_38;
      end
      if((! _zz_45))begin
        _zz_44 <= _zz_42;
        _zz_45 <= _zz_42;
      end
      if((! _zz_49))begin
        _zz_48 <= _zz_46;
        _zz_49 <= _zz_46;
      end
      if((! _zz_53))begin
        _zz_52 <= _zz_50;
        _zz_53 <= _zz_50;
      end
      if((! _zz_57))begin
        _zz_56 <= _zz_54;
        _zz_57 <= _zz_54;
      end
      if((! _zz_61))begin
        _zz_60 <= _zz_58;
        _zz_61 <= _zz_58;
      end
      if((! _zz_65))begin
        _zz_64 <= _zz_62;
        _zz_65 <= _zz_62;
      end
      if((! _zz_69))begin
        _zz_68 <= _zz_66;
        _zz_69 <= _zz_66;
      end
      if((! _zz_73))begin
        _zz_72 <= _zz_70;
        _zz_73 <= _zz_70;
      end
      if((! _zz_77))begin
        _zz_76 <= _zz_74;
        _zz_77 <= _zz_74;
      end
      if((! _zz_81))begin
        _zz_80 <= _zz_78;
        _zz_81 <= _zz_78;
      end
      if((! _zz_85))begin
        _zz_84 <= _zz_82;
        _zz_85 <= _zz_82;
      end
      if((! _zz_89))begin
        _zz_88 <= _zz_86;
        _zz_89 <= _zz_86;
      end
      if((! _zz_93))begin
        _zz_92 <= _zz_90;
        _zz_93 <= _zz_90;
      end
      if((! _zz_97))begin
        _zz_96 <= _zz_94;
        _zz_97 <= _zz_94;
      end
      if((! _zz_101))begin
        _zz_100 <= _zz_98;
        _zz_101 <= _zz_98;
      end
      if((! _zz_105))begin
        _zz_104 <= _zz_102;
        _zz_105 <= _zz_102;
      end
      if((! _zz_109))begin
        _zz_108 <= _zz_106;
        _zz_109 <= _zz_106;
      end
      if((! _zz_113))begin
        _zz_112 <= _zz_110;
        _zz_113 <= _zz_110;
      end
      if((! _zz_117))begin
        _zz_116 <= _zz_114;
        _zz_117 <= _zz_114;
      end
      if((! _zz_121))begin
        _zz_120 <= _zz_118;
        _zz_121 <= _zz_118;
      end
      if((! _zz_125))begin
        _zz_124 <= _zz_122;
        _zz_125 <= _zz_122;
      end
      if(_zz_126)begin
        _zz_127 <= cores_0_cpu_logic_cpu_dBus_cmd_valid;
      end
      if((cores_0_cpu_logic_cpu_dBus_cmd_valid && _zz_126))begin
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
      if(_zz_468)begin
        if(_zz_469)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[0] <= 1'b1;
        end
        if(_zz_470)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[1] <= 1'b1;
        end
        if(_zz_471)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[2] <= 1'b1;
        end
        if(_zz_472)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[3] <= 1'b1;
        end
        if(_zz_473)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[4] <= 1'b1;
        end
        if(_zz_474)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[5] <= 1'b1;
        end
        if(_zz_475)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[6] <= 1'b1;
        end
        if(_zz_476)begin
          dBus_Bridge_withWriteBuffer_buffer_mask[7] <= 1'b1;
        end
      end
      if(_zz_135)begin
        _zz_137 <= (plic_logic_bus_rsp_valid && _zz_134);
      end
      if(plic_logic_bridge_claim_valid)begin
        case(plic_logic_bridge_claim_payload)
          5'h01 : begin
            _zz_4 <= 1'b0;
          end
          5'h02 : begin
            _zz_8 <= 1'b0;
          end
          5'h03 : begin
            _zz_12 <= 1'b0;
          end
          5'h04 : begin
            _zz_16 <= 1'b0;
          end
          5'h05 : begin
            _zz_20 <= 1'b0;
          end
          5'h06 : begin
            _zz_24 <= 1'b0;
          end
          5'h07 : begin
            _zz_28 <= 1'b0;
          end
          5'h08 : begin
            _zz_32 <= 1'b0;
          end
          5'h09 : begin
            _zz_36 <= 1'b0;
          end
          5'h0a : begin
            _zz_40 <= 1'b0;
          end
          5'h0b : begin
            _zz_44 <= 1'b0;
          end
          5'h0c : begin
            _zz_48 <= 1'b0;
          end
          5'h0d : begin
            _zz_52 <= 1'b0;
          end
          5'h0e : begin
            _zz_56 <= 1'b0;
          end
          5'h0f : begin
            _zz_60 <= 1'b0;
          end
          5'h10 : begin
            _zz_64 <= 1'b0;
          end
          5'h11 : begin
            _zz_68 <= 1'b0;
          end
          5'h12 : begin
            _zz_72 <= 1'b0;
          end
          5'h13 : begin
            _zz_76 <= 1'b0;
          end
          5'h14 : begin
            _zz_80 <= 1'b0;
          end
          5'h15 : begin
            _zz_84 <= 1'b0;
          end
          5'h16 : begin
            _zz_88 <= 1'b0;
          end
          5'h17 : begin
            _zz_92 <= 1'b0;
          end
          5'h18 : begin
            _zz_96 <= 1'b0;
          end
          5'h19 : begin
            _zz_100 <= 1'b0;
          end
          5'h1a : begin
            _zz_104 <= 1'b0;
          end
          5'h1b : begin
            _zz_108 <= 1'b0;
          end
          5'h1c : begin
            _zz_112 <= 1'b0;
          end
          5'h1d : begin
            _zz_116 <= 1'b0;
          end
          5'h1e : begin
            _zz_120 <= 1'b0;
          end
          5'h1f : begin
            _zz_124 <= 1'b0;
          end
          default : begin
          end
        endcase
      end
      if(plic_logic_bridge_completion_valid)begin
        case(plic_logic_bridge_completion_payload)
          5'h01 : begin
            _zz_5 <= 1'b0;
          end
          5'h02 : begin
            _zz_9 <= 1'b0;
          end
          5'h03 : begin
            _zz_13 <= 1'b0;
          end
          5'h04 : begin
            _zz_17 <= 1'b0;
          end
          5'h05 : begin
            _zz_21 <= 1'b0;
          end
          5'h06 : begin
            _zz_25 <= 1'b0;
          end
          5'h07 : begin
            _zz_29 <= 1'b0;
          end
          5'h08 : begin
            _zz_33 <= 1'b0;
          end
          5'h09 : begin
            _zz_37 <= 1'b0;
          end
          5'h0a : begin
            _zz_41 <= 1'b0;
          end
          5'h0b : begin
            _zz_45 <= 1'b0;
          end
          5'h0c : begin
            _zz_49 <= 1'b0;
          end
          5'h0d : begin
            _zz_53 <= 1'b0;
          end
          5'h0e : begin
            _zz_57 <= 1'b0;
          end
          5'h0f : begin
            _zz_61 <= 1'b0;
          end
          5'h10 : begin
            _zz_65 <= 1'b0;
          end
          5'h11 : begin
            _zz_69 <= 1'b0;
          end
          5'h12 : begin
            _zz_73 <= 1'b0;
          end
          5'h13 : begin
            _zz_77 <= 1'b0;
          end
          5'h14 : begin
            _zz_81 <= 1'b0;
          end
          5'h15 : begin
            _zz_85 <= 1'b0;
          end
          5'h16 : begin
            _zz_89 <= 1'b0;
          end
          5'h17 : begin
            _zz_93 <= 1'b0;
          end
          5'h18 : begin
            _zz_97 <= 1'b0;
          end
          5'h19 : begin
            _zz_101 <= 1'b0;
          end
          5'h1a : begin
            _zz_105 <= 1'b0;
          end
          5'h1b : begin
            _zz_109 <= 1'b0;
          end
          5'h1c : begin
            _zz_113 <= 1'b0;
          end
          5'h1d : begin
            _zz_117 <= 1'b0;
          end
          5'h1e : begin
            _zz_121 <= 1'b0;
          end
          5'h1f : begin
            _zz_125 <= 1'b0;
          end
          default : begin
          end
        endcase
      end
      if(_zz_477)begin
        cores_0_cpu_iBus_cmd_halfPipe_regs_valid <= cores_0_cpu_iBus_cmd_valid;
        cores_0_cpu_iBus_cmd_halfPipe_regs_ready <= (! cores_0_cpu_iBus_cmd_valid);
      end else begin
        cores_0_cpu_iBus_cmd_halfPipe_regs_valid <= (! cores_0_cpu_iBus_cmd_halfPipe_ready);
        cores_0_cpu_iBus_cmd_halfPipe_regs_ready <= cores_0_cpu_iBus_cmd_halfPipe_ready;
      end
      if(_zz_418)begin
        _zz_420 <= cores_0_cpu_iBus_connector_decoder_rsp_valid;
      end
      if(dBus_Bridge_bus_cmd_s2mPipe_ready)begin
        dBus_Bridge_bus_cmd_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_478)begin
        dBus_Bridge_bus_cmd_s2mPipe_rValid <= dBus_Bridge_bus_cmd_valid;
      end
      if(dBus_Bridge_bus_cmd_s2mPipe_ready)begin
        dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rValid <= dBus_Bridge_bus_cmd_s2mPipe_valid;
      end
      if(_zz_424)begin
        _zz_426 <= cores_0_cpu_dBus_connector_decoder_rsp_valid;
      end
      if(_zz_479)begin
        peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_valid <= peripheralBridge_bmb_arbiter_io_output_cmd_valid;
        peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_ready <= (! peripheralBridge_bmb_arbiter_io_output_cmd_valid);
      end else begin
        peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_valid <= (! peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_ready);
        peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_ready <= peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_ready;
      end
      if(_zz_431)begin
        _zz_433 <= peripheralBridge_logic_io_input_rsp_valid;
      end
      if(_zz_480)begin
        iArbiter_bmb_cmd_halfPipe_regs_valid <= iArbiter_bmb_cmd_valid;
        iArbiter_bmb_cmd_halfPipe_regs_ready <= (! iArbiter_bmb_cmd_valid);
      end else begin
        iArbiter_bmb_cmd_halfPipe_regs_valid <= (! iArbiter_bmb_cmd_halfPipe_ready);
        iArbiter_bmb_cmd_halfPipe_regs_ready <= iArbiter_bmb_cmd_halfPipe_ready;
      end
      if(_zz_439)begin
        _zz_441 <= iArbiter_bmb_decoder_io_input_rsp_valid;
      end
      if(dBusNonCoherent_bmb_cmd_s2mPipe_ready)begin
        dBusNonCoherent_bmb_cmd_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_481)begin
        dBusNonCoherent_bmb_cmd_s2mPipe_rValid <= dBusNonCoherent_bmb_cmd_valid;
      end
      if(dBusNonCoherent_bmb_cmd_s2mPipe_ready)begin
        dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rValid <= dBusNonCoherent_bmb_cmd_s2mPipe_valid;
      end
      if(_zz_445)begin
        _zz_447 <= dBusNonCoherent_bmb_decoder_io_input_rsp_valid;
      end
      case(plic_logic_bmb_cmd_payload_fragment_address)
        22'h000004 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_323 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001004 : begin
        end
        22'h000008 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_324 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001008 : begin
        end
        22'h00000c : begin
          if(plic_logic_bus_doWrite)begin
            _zz_325 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h00100c : begin
        end
        22'h000010 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_326 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001010 : begin
        end
        22'h000014 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_327 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001014 : begin
        end
        22'h000018 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_328 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001018 : begin
        end
        22'h00001c : begin
          if(plic_logic_bus_doWrite)begin
            _zz_329 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h00101c : begin
        end
        22'h000020 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_330 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001020 : begin
        end
        22'h000024 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_331 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001024 : begin
        end
        22'h000028 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_332 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001028 : begin
        end
        22'h00002c : begin
          if(plic_logic_bus_doWrite)begin
            _zz_333 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h00102c : begin
        end
        22'h000030 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_334 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001030 : begin
        end
        22'h000034 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_335 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001034 : begin
        end
        22'h000038 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_336 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001038 : begin
        end
        22'h00003c : begin
          if(plic_logic_bus_doWrite)begin
            _zz_337 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h00103c : begin
        end
        22'h000040 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_338 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001040 : begin
        end
        22'h000044 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_339 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001044 : begin
        end
        22'h000048 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_340 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001048 : begin
        end
        22'h00004c : begin
          if(plic_logic_bus_doWrite)begin
            _zz_341 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h00104c : begin
        end
        22'h000050 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_342 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001050 : begin
        end
        22'h000054 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_343 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001054 : begin
        end
        22'h000058 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_344 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001058 : begin
        end
        22'h00005c : begin
          if(plic_logic_bus_doWrite)begin
            _zz_345 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h00105c : begin
        end
        22'h000060 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_346 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001060 : begin
        end
        22'h000064 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_347 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001064 : begin
        end
        22'h000068 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_348 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001068 : begin
        end
        22'h00006c : begin
          if(plic_logic_bus_doWrite)begin
            _zz_349 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h00106c : begin
        end
        22'h000070 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_350 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001070 : begin
        end
        22'h000074 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_351 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001074 : begin
        end
        22'h000078 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_352 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h001078 : begin
        end
        22'h00007c : begin
          if(plic_logic_bus_doWrite)begin
            _zz_353 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h00107c : begin
        end
        22'h200000 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_354 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h200004 : begin
        end
        22'h002000 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_355 <= _zz_486[0];
            _zz_356 <= _zz_487[0];
            _zz_357 <= _zz_488[0];
            _zz_358 <= _zz_489[0];
            _zz_359 <= _zz_490[0];
            _zz_360 <= _zz_491[0];
            _zz_361 <= _zz_492[0];
            _zz_362 <= _zz_493[0];
            _zz_363 <= _zz_494[0];
            _zz_364 <= _zz_495[0];
            _zz_365 <= _zz_496[0];
            _zz_366 <= _zz_497[0];
            _zz_367 <= _zz_498[0];
            _zz_368 <= _zz_499[0];
            _zz_369 <= _zz_500[0];
            _zz_370 <= _zz_501[0];
            _zz_371 <= _zz_502[0];
            _zz_372 <= _zz_503[0];
            _zz_373 <= _zz_504[0];
            _zz_374 <= _zz_505[0];
            _zz_375 <= _zz_506[0];
            _zz_376 <= _zz_507[0];
            _zz_377 <= _zz_508[0];
            _zz_378 <= _zz_509[0];
            _zz_379 <= _zz_510[0];
            _zz_380 <= _zz_511[0];
            _zz_381 <= _zz_512[0];
            _zz_382 <= _zz_513[0];
            _zz_383 <= _zz_514[0];
            _zz_384 <= _zz_515[0];
            _zz_385 <= _zz_516[0];
          end
        end
        22'h201000 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_386 <= plic_logic_bmb_cmd_payload_fragment_data[1 : 0];
          end
        end
        22'h201004 : begin
        end
        22'h002080 : begin
          if(plic_logic_bus_doWrite)begin
            _zz_387 <= _zz_517[0];
            _zz_388 <= _zz_518[0];
            _zz_389 <= _zz_519[0];
            _zz_390 <= _zz_520[0];
            _zz_391 <= _zz_521[0];
            _zz_392 <= _zz_522[0];
            _zz_393 <= _zz_523[0];
            _zz_394 <= _zz_524[0];
            _zz_395 <= _zz_525[0];
            _zz_396 <= _zz_526[0];
            _zz_397 <= _zz_527[0];
            _zz_398 <= _zz_528[0];
            _zz_399 <= _zz_529[0];
            _zz_400 <= _zz_530[0];
            _zz_401 <= _zz_531[0];
            _zz_402 <= _zz_532[0];
            _zz_403 <= _zz_533[0];
            _zz_404 <= _zz_534[0];
            _zz_405 <= _zz_535[0];
            _zz_406 <= _zz_536[0];
            _zz_407 <= _zz_537[0];
            _zz_408 <= _zz_538[0];
            _zz_409 <= _zz_539[0];
            _zz_410 <= _zz_540[0];
            _zz_411 <= _zz_541[0];
            _zz_412 <= _zz_542[0];
            _zz_413 <= _zz_543[0];
            _zz_414 <= _zz_544[0];
            _zz_415 <= _zz_545[0];
            _zz_416 <= _zz_546[0];
            _zz_417 <= _zz_547[0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (posedge debugCd_external_clk) begin
    systemCd_logic_inputResetAdapter_stuff_syncTrigger <= debugCd_logic_outputReset;
    cores_0_cpu_debugReset <= cores_0_cpu_logic_cpu_debug_resetOut;
  end

  always @ (posedge debugCd_external_clk) begin
    if(_zz_468)begin
      if(_zz_469)begin
        dBus_Bridge_withWriteBuffer_buffer_data[7 : 0] <= _zz_128;
      end
      if(_zz_470)begin
        dBus_Bridge_withWriteBuffer_buffer_data[15 : 8] <= _zz_129;
      end
      if(_zz_471)begin
        dBus_Bridge_withWriteBuffer_buffer_data[23 : 16] <= _zz_130;
      end
      if(_zz_472)begin
        dBus_Bridge_withWriteBuffer_buffer_data[31 : 24] <= _zz_131;
      end
      if(_zz_473)begin
        dBus_Bridge_withWriteBuffer_buffer_data[39 : 32] <= _zz_128;
      end
      if(_zz_474)begin
        dBus_Bridge_withWriteBuffer_buffer_data[47 : 40] <= _zz_129;
      end
      if(_zz_475)begin
        dBus_Bridge_withWriteBuffer_buffer_data[55 : 48] <= _zz_130;
      end
      if(_zz_476)begin
        dBus_Bridge_withWriteBuffer_buffer_data[63 : 56] <= _zz_131;
      end
    end
    if((cores_0_cpu_logic_cpu_dBus_cmd_valid && _zz_126))begin
      dBus_Bridge_withWriteBuffer_buffer_write <= cores_0_cpu_logic_cpu_dBus_cmd_payload_wr;
      dBus_Bridge_withWriteBuffer_buffer_address <= cores_0_cpu_logic_cpu_dBus_cmd_payload_address;
      dBus_Bridge_withWriteBuffer_buffer_length <= (_zz_484 | 6'h03);
      if(((cores_0_cpu_logic_cpu_dBus_cmd_payload_wr && (! cores_0_cpu_logic_cpu_dBus_cmd_payload_uncached)) && (! dBus_Bridge_withWriteBuffer_cmdExclusive)))begin
        dBus_Bridge_withWriteBuffer_aggregationEnabled <= 1'b1;
        dBus_Bridge_withWriteBuffer_buffer_address[2 : 0] <= 3'b000;
        dBus_Bridge_withWriteBuffer_buffer_length <= 6'h07;
      end else begin
        dBus_Bridge_withWriteBuffer_aggregationEnabled <= 1'b0;
      end
    end
    if(_zz_135)begin
      _zz_138 <= plic_logic_bus_rsp_payload_last;
      _zz_139 <= plic_logic_bus_rsp_payload_fragment_opcode;
      _zz_140 <= plic_logic_bus_rsp_payload_fragment_data;
    end
    if(_zz_477)begin
      cores_0_cpu_iBus_cmd_halfPipe_regs_payload_last <= cores_0_cpu_iBus_cmd_payload_last;
      cores_0_cpu_iBus_cmd_halfPipe_regs_payload_fragment_opcode <= cores_0_cpu_iBus_cmd_payload_fragment_opcode;
      cores_0_cpu_iBus_cmd_halfPipe_regs_payload_fragment_address <= cores_0_cpu_iBus_cmd_payload_fragment_address;
      cores_0_cpu_iBus_cmd_halfPipe_regs_payload_fragment_length <= cores_0_cpu_iBus_cmd_payload_fragment_length;
    end
    if(_zz_418)begin
      _zz_421 <= cores_0_cpu_iBus_connector_decoder_rsp_payload_last;
      _zz_422 <= cores_0_cpu_iBus_connector_decoder_rsp_payload_fragment_opcode;
      _zz_423 <= cores_0_cpu_iBus_connector_decoder_rsp_payload_fragment_data;
    end
    if(_zz_478)begin
      dBus_Bridge_bus_cmd_s2mPipe_rData_last <= dBus_Bridge_bus_cmd_payload_last;
      dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_opcode <= dBus_Bridge_bus_cmd_payload_fragment_opcode;
      dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_address <= dBus_Bridge_bus_cmd_payload_fragment_address;
      dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_length <= dBus_Bridge_bus_cmd_payload_fragment_length;
      dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_data <= dBus_Bridge_bus_cmd_payload_fragment_data;
      dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_mask <= dBus_Bridge_bus_cmd_payload_fragment_mask;
      dBus_Bridge_bus_cmd_s2mPipe_rData_fragment_context <= dBus_Bridge_bus_cmd_payload_fragment_context;
    end
    if(dBus_Bridge_bus_cmd_s2mPipe_ready)begin
      dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_last <= dBus_Bridge_bus_cmd_s2mPipe_payload_last;
      dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_opcode <= dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_opcode;
      dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_address <= dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_address;
      dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_length <= dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_length;
      dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_data <= dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_data;
      dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_mask <= dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_mask;
      dBus_Bridge_bus_cmd_s2mPipe_m2sPipe_rData_fragment_context <= dBus_Bridge_bus_cmd_s2mPipe_payload_fragment_context;
    end
    if(_zz_424)begin
      _zz_427 <= cores_0_cpu_dBus_connector_decoder_rsp_payload_last;
      _zz_428 <= cores_0_cpu_dBus_connector_decoder_rsp_payload_fragment_opcode;
      _zz_429 <= cores_0_cpu_dBus_connector_decoder_rsp_payload_fragment_data;
      _zz_430 <= cores_0_cpu_dBus_connector_decoder_rsp_payload_fragment_context;
    end
    if(_zz_479)begin
      peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_last <= peripheralBridge_bmb_arbiter_io_output_cmd_payload_last;
      peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_source <= peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_source;
      peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_opcode <= peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_opcode;
      peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_address <= peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_address;
      peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_length <= peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_length;
      peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_data <= peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_data;
      peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_mask <= peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_mask;
      peripheralBridge_bmb_arbiter_io_output_cmd_halfPipe_regs_payload_fragment_context <= peripheralBridge_bmb_arbiter_io_output_cmd_payload_fragment_context;
    end
    if(_zz_431)begin
      _zz_434 <= peripheralBridge_logic_io_input_rsp_payload_last;
      _zz_435 <= peripheralBridge_logic_io_input_rsp_payload_fragment_source;
      _zz_436 <= peripheralBridge_logic_io_input_rsp_payload_fragment_opcode;
      _zz_437 <= peripheralBridge_logic_io_input_rsp_payload_fragment_data;
      _zz_438 <= peripheralBridge_logic_io_input_rsp_payload_fragment_context;
    end
    if(_zz_480)begin
      iArbiter_bmb_cmd_halfPipe_regs_payload_last <= iArbiter_bmb_cmd_payload_last;
      iArbiter_bmb_cmd_halfPipe_regs_payload_fragment_opcode <= iArbiter_bmb_cmd_payload_fragment_opcode;
      iArbiter_bmb_cmd_halfPipe_regs_payload_fragment_address <= iArbiter_bmb_cmd_payload_fragment_address;
      iArbiter_bmb_cmd_halfPipe_regs_payload_fragment_length <= iArbiter_bmb_cmd_payload_fragment_length;
    end
    if(_zz_439)begin
      _zz_442 <= iArbiter_bmb_decoder_io_input_rsp_payload_last;
      _zz_443 <= iArbiter_bmb_decoder_io_input_rsp_payload_fragment_opcode;
      _zz_444 <= iArbiter_bmb_decoder_io_input_rsp_payload_fragment_data;
    end
    if(_zz_481)begin
      dBusNonCoherent_bmb_cmd_s2mPipe_rData_last <= dBusNonCoherent_bmb_cmd_payload_last;
      dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_opcode <= dBusNonCoherent_bmb_cmd_payload_fragment_opcode;
      dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_address <= dBusNonCoherent_bmb_cmd_payload_fragment_address;
      dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_length <= dBusNonCoherent_bmb_cmd_payload_fragment_length;
      dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_data <= dBusNonCoherent_bmb_cmd_payload_fragment_data;
      dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_mask <= dBusNonCoherent_bmb_cmd_payload_fragment_mask;
      dBusNonCoherent_bmb_cmd_s2mPipe_rData_fragment_context <= dBusNonCoherent_bmb_cmd_payload_fragment_context;
    end
    if(dBusNonCoherent_bmb_cmd_s2mPipe_ready)begin
      dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_last <= dBusNonCoherent_bmb_cmd_s2mPipe_payload_last;
      dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_opcode <= dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_opcode;
      dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_address <= dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_address;
      dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_length <= dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_length;
      dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_data <= dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_data;
      dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_mask <= dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_mask;
      dBusNonCoherent_bmb_cmd_s2mPipe_m2sPipe_rData_fragment_context <= dBusNonCoherent_bmb_cmd_s2mPipe_payload_fragment_context;
    end
    if(_zz_445)begin
      _zz_448 <= dBusNonCoherent_bmb_decoder_io_input_rsp_payload_last;
      _zz_449 <= dBusNonCoherent_bmb_decoder_io_input_rsp_payload_fragment_opcode;
      _zz_450 <= dBusNonCoherent_bmb_decoder_io_input_rsp_payload_fragment_data;
      _zz_451 <= dBusNonCoherent_bmb_decoder_io_input_rsp_payload_fragment_context;
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if(debugCd_logic_outputReset) begin
      _zz_133 <= 1'b0;
    end else begin
      _zz_133 <= (cores_0_cpu_debugBmb_cmd_valid && cores_0_cpu_logic_cpu_debug_bus_cmd_ready);
    end
  end


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
  input      [3:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [63:0]   io_input_rsp_payload_fragment_data,
  output     [3:0]    io_input_rsp_payload_fragment_context,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [31:0]   io_output_cmd_payload_fragment_address,
  output     [5:0]    io_output_cmd_payload_fragment_length,
  output     [31:0]   io_output_cmd_payload_fragment_data,
  output     [3:0]    io_output_cmd_payload_fragment_mask,
  output     [4:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [4:0]    io_output_rsp_payload_fragment_context,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  reg        [31:0]   _zz_2;
  reg        [3:0]    _zz_3;
  wire       [31:0]   _zz_4;
  wire       [31:0]   _zz_5;
  wire       [0:0]    cmdArea_context_sel;
  wire       [3:0]    cmdArea_context_context;
  reg                 cmdArea_writeLogic_locked;
  reg        [0:0]    cmdArea_writeLogic_counter;
  wire       [0:0]    cmdArea_writeLogic_sel;
  wire       [0:0]    rspArea_context_sel;
  wire       [3:0]    rspArea_context_context;
  wire       [4:0]    _zz_1;
  reg                 rspArea_readLogic_locked;
  reg        [0:0]    rspArea_readLogic_counter;
  wire       [0:0]    rspArea_readLogic_sel;
  reg        [31:0]   rspArea_readLogic_buffers_0;
  reg        [31:0]   rspArea_readLogic_words_0;
  wire       [31:0]   rspArea_readLogic_words_1;

  assign _zz_4 = (io_input_cmd_payload_fragment_address + _zz_5);
  assign _zz_5 = {26'd0, io_input_cmd_payload_fragment_length};
  always @(*) begin
    case(cmdArea_writeLogic_sel)
      1'b0 : begin
        _zz_2 = io_input_cmd_payload_fragment_data[31 : 0];
        _zz_3 = io_input_cmd_payload_fragment_mask[3 : 0];
      end
      default : begin
        _zz_2 = io_input_cmd_payload_fragment_data[63 : 32];
        _zz_3 = io_input_cmd_payload_fragment_mask[7 : 4];
      end
    endcase
  end

  assign cmdArea_context_context = io_input_cmd_payload_fragment_context;
  assign cmdArea_context_sel = io_input_cmd_payload_fragment_address[2 : 2];
  assign io_output_cmd_valid = io_input_cmd_valid;
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign io_output_cmd_payload_fragment_context = {cmdArea_context_context,cmdArea_context_sel};
  assign cmdArea_writeLogic_sel = (cmdArea_writeLogic_locked ? cmdArea_writeLogic_counter : io_input_cmd_payload_fragment_address[2 : 2]);
  assign io_output_cmd_payload_fragment_data = _zz_2;
  assign io_output_cmd_payload_fragment_mask = _zz_3;
  assign io_output_cmd_payload_last = (io_input_cmd_payload_last && ((io_input_cmd_payload_fragment_opcode == 1'b0) || (cmdArea_writeLogic_sel == _zz_4[2 : 2])));
  assign io_input_cmd_ready = (io_output_cmd_ready && ((cmdArea_writeLogic_sel == 1'b1) || io_output_cmd_payload_last));
  assign _zz_1 = io_output_rsp_payload_fragment_context;
  assign rspArea_context_sel = _zz_1[0 : 0];
  assign rspArea_context_context = _zz_1[4 : 1];
  assign io_input_rsp_payload_last = io_output_rsp_payload_last;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_context = rspArea_context_context;
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
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
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

  always @ (posedge debugCd_external_clk) begin
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
  output     [63:0]   io_input_rsp_payload_fragment_data,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [31:0]   io_output_cmd_payload_fragment_address,
  output     [5:0]    io_output_cmd_payload_fragment_length,
  output     [0:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [0:0]    io_output_rsp_payload_fragment_context,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  wire       [0:0]    cmdArea_context_sel;
  wire       [0:0]    rspArea_context_sel;
  reg                 rspArea_readLogic_locked;
  reg        [0:0]    rspArea_readLogic_counter;
  wire       [0:0]    rspArea_readLogic_sel;
  reg        [31:0]   rspArea_readLogic_buffers_0;
  reg        [31:0]   rspArea_readLogic_words_0;
  wire       [31:0]   rspArea_readLogic_words_1;

  assign cmdArea_context_sel = io_input_cmd_payload_fragment_address[2 : 2];
  assign io_output_cmd_valid = io_input_cmd_valid;
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign io_output_cmd_payload_fragment_context = cmdArea_context_sel;
  assign io_output_cmd_payload_last = io_input_cmd_payload_last;
  assign io_input_cmd_ready = io_output_cmd_ready;
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
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      rspArea_readLogic_locked <= 1'b0;
    end else begin
      if((io_output_rsp_valid && io_output_rsp_ready))begin
        rspArea_readLogic_locked <= (! io_output_rsp_payload_last);
      end
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if((io_output_rsp_valid && io_output_rsp_ready))begin
      rspArea_readLogic_counter <= (rspArea_readLogic_sel + 1'b1);
      if((rspArea_readLogic_sel == 1'b0))begin
        rspArea_readLogic_buffers_0 <= io_output_rsp_payload_fragment_data;
      end
    end
  end


endmodule

module BmbDecoder_4 (
  input               io_input_cmd_valid,
  output reg          io_input_cmd_ready,
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
  output reg          io_outputs_0_cmd_valid,
  input               io_outputs_0_cmd_ready,
  output              io_outputs_0_cmd_payload_last,
  output     [0:0]    io_outputs_0_cmd_payload_fragment_opcode,
  output     [31:0]   io_outputs_0_cmd_payload_fragment_address,
  output     [5:0]    io_outputs_0_cmd_payload_fragment_length,
  output     [63:0]   io_outputs_0_cmd_payload_fragment_data,
  output     [7:0]    io_outputs_0_cmd_payload_fragment_mask,
  output     [3:0]    io_outputs_0_cmd_payload_fragment_context,
  input               io_outputs_0_rsp_valid,
  output              io_outputs_0_rsp_ready,
  input               io_outputs_0_rsp_payload_last,
  input      [0:0]    io_outputs_0_rsp_payload_fragment_opcode,
  input      [63:0]   io_outputs_0_rsp_payload_fragment_data,
  input      [3:0]    io_outputs_0_rsp_payload_fragment_context,
  output reg          io_outputs_1_cmd_valid,
  input               io_outputs_1_cmd_ready,
  output              io_outputs_1_cmd_payload_last,
  output     [0:0]    io_outputs_1_cmd_payload_fragment_opcode,
  output     [31:0]   io_outputs_1_cmd_payload_fragment_address,
  output     [5:0]    io_outputs_1_cmd_payload_fragment_length,
  output     [63:0]   io_outputs_1_cmd_payload_fragment_data,
  output     [7:0]    io_outputs_1_cmd_payload_fragment_mask,
  output     [3:0]    io_outputs_1_cmd_payload_fragment_context,
  input               io_outputs_1_rsp_valid,
  output              io_outputs_1_rsp_ready,
  input               io_outputs_1_rsp_payload_last,
  input      [0:0]    io_outputs_1_rsp_payload_fragment_opcode,
  input      [63:0]   io_outputs_1_rsp_payload_fragment_data,
  input      [3:0]    io_outputs_1_rsp_payload_fragment_context,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  reg                 _zz_4;
  reg        [0:0]    _zz_5;
  reg        [63:0]   _zz_6;
  reg        [3:0]    _zz_7;
  wire       [3:0]    _zz_8;
  wire       [0:0]    _zz_9;
  wire       [3:0]    _zz_10;
  wire       [0:0]    _zz_11;
  wire       [3:0]    _zz_12;
  wire                logic_hits_0;
  wire                logic_hits_1;
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

  assign _zz_8 = (logic_rspPendingCounter + _zz_10);
  assign _zz_9 = ((io_input_cmd_valid && io_input_cmd_ready) && io_input_cmd_payload_last);
  assign _zz_10 = {3'd0, _zz_9};
  assign _zz_11 = ((io_input_rsp_valid && io_input_rsp_ready) && io_input_rsp_payload_last);
  assign _zz_12 = {3'd0, _zz_11};
  always @(*) begin
    case(_zz_3)
      1'b0 : begin
        _zz_4 = io_outputs_0_rsp_payload_last;
        _zz_5 = io_outputs_0_rsp_payload_fragment_opcode;
        _zz_6 = io_outputs_0_rsp_payload_fragment_data;
        _zz_7 = io_outputs_0_rsp_payload_fragment_context;
      end
      default : begin
        _zz_4 = io_outputs_1_rsp_payload_last;
        _zz_5 = io_outputs_1_rsp_payload_fragment_opcode;
        _zz_6 = io_outputs_1_rsp_payload_fragment_data;
        _zz_7 = io_outputs_1_rsp_payload_fragment_context;
      end
    endcase
  end

  assign logic_hits_0 = ((io_input_cmd_payload_fragment_address & (~ 32'h3fffffff)) == 32'h40000000);
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
  assign io_outputs_0_cmd_payload_fragment_context = io_input_cmd_payload_fragment_context;
  assign logic_hits_1 = (! (logic_hits_0 != 1'b0));
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
  assign io_outputs_1_cmd_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign io_outputs_1_cmd_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
  assign io_outputs_1_cmd_payload_fragment_context = io_input_cmd_payload_fragment_context;
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
  assign io_input_rsp_payload_fragment_context = _zz_7;
  assign io_outputs_0_rsp_ready = io_input_rsp_ready;
  assign io_outputs_1_rsp_ready = io_input_rsp_ready;
  assign logic_cmdWait = ((logic_rspPending && (((logic_hits_0 != logic_rspHits_0) || (logic_hits_1 != logic_rspHits_1)) || logic_rspNoHitValid)) || (logic_rspPendingCounter == 4'b1111));
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      logic_rspPendingCounter <= 4'b0000;
    end else begin
      logic_rspPendingCounter <= (_zz_8 - _zz_12);
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if((io_input_cmd_valid && (! logic_cmdWait)))begin
      logic_rspHits_0 <= logic_hits_0;
      logic_rspHits_1 <= logic_hits_1;
    end
  end


endmodule

module BmbDecoder_3 (
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
  output     [63:0]   io_input_rsp_payload_fragment_data,
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
  input      [63:0]   io_outputs_0_rsp_payload_fragment_data,
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
  input      [63:0]   io_outputs_1_rsp_payload_fragment_data,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  reg                 _zz_4;
  reg        [0:0]    _zz_5;
  reg        [63:0]   _zz_6;
  wire       [3:0]    _zz_7;
  wire       [0:0]    _zz_8;
  wire       [3:0]    _zz_9;
  wire       [0:0]    _zz_10;
  wire       [3:0]    _zz_11;
  reg                 logic_hits_0;
  wire                logic_hits_1;
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
    logic_hits_0 = ((io_input_cmd_payload_fragment_address & (~ 32'h3fffffff)) == 32'h40000000);
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
  assign logic_hits_1 = (! (logic_hits_0 != 1'b0));
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
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      logic_rspPendingCounter <= 4'b0000;
    end else begin
      logic_rspPendingCounter <= (_zz_7 - _zz_11);
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if((io_input_cmd_valid && (! logic_cmdWait)))begin
      logic_rspHits_0 <= logic_hits_0;
      logic_rspHits_1 <= logic_hits_1;
    end
  end


endmodule

module BmbArbiter (
  input               io_inputs_0_cmd_valid,
  output              io_inputs_0_cmd_ready,
  input               io_inputs_0_cmd_payload_last,
  input      [0:0]    io_inputs_0_cmd_payload_fragment_opcode,
  input      [31:0]   io_inputs_0_cmd_payload_fragment_address,
  input      [5:0]    io_inputs_0_cmd_payload_fragment_length,
  input      [31:0]   io_inputs_0_cmd_payload_fragment_data,
  input      [3:0]    io_inputs_0_cmd_payload_fragment_mask,
  input      [4:0]    io_inputs_0_cmd_payload_fragment_context,
  output              io_inputs_0_rsp_valid,
  input               io_inputs_0_rsp_ready,
  output              io_inputs_0_rsp_payload_last,
  output     [0:0]    io_inputs_0_rsp_payload_fragment_opcode,
  output     [31:0]   io_inputs_0_rsp_payload_fragment_data,
  output     [4:0]    io_inputs_0_rsp_payload_fragment_context,
  input               io_inputs_1_cmd_valid,
  output              io_inputs_1_cmd_ready,
  input               io_inputs_1_cmd_payload_last,
  input      [0:0]    io_inputs_1_cmd_payload_fragment_opcode,
  input      [31:0]   io_inputs_1_cmd_payload_fragment_address,
  input      [5:0]    io_inputs_1_cmd_payload_fragment_length,
  input      [31:0]   io_inputs_1_cmd_payload_fragment_data,
  input      [3:0]    io_inputs_1_cmd_payload_fragment_mask,
  input      [0:0]    io_inputs_1_cmd_payload_fragment_context,
  output              io_inputs_1_rsp_valid,
  input               io_inputs_1_rsp_ready,
  output              io_inputs_1_rsp_payload_last,
  output     [0:0]    io_inputs_1_rsp_payload_fragment_opcode,
  output     [31:0]   io_inputs_1_rsp_payload_fragment_data,
  output     [0:0]    io_inputs_1_rsp_payload_fragment_context,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_source,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [31:0]   io_output_cmd_payload_fragment_address,
  output     [5:0]    io_output_cmd_payload_fragment_length,
  output     [31:0]   io_output_cmd_payload_fragment_data,
  output     [3:0]    io_output_cmd_payload_fragment_mask,
  output     [4:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_source,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [4:0]    io_output_rsp_payload_fragment_context,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  wire       [0:0]    _zz_1;
  wire       [0:0]    _zz_2;
  wire       [4:0]    _zz_3;
  reg                 _zz_4;
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
  wire       [4:0]    memory_arbiter_io_output_payload_fragment_context;
  wire       [0:0]    memory_arbiter_io_chosen;
  wire       [1:0]    memory_arbiter_io_chosenOH;
  wire       [1:0]    _zz_5;
  wire       [0:0]    memory_rspSel;

  assign _zz_5 = {memory_arbiter_io_output_payload_fragment_source,memory_arbiter_io_chosen};
  StreamArbiter memory_arbiter (
    .io_inputs_0_valid                       (io_inputs_0_cmd_valid                                    ), //i
    .io_inputs_0_ready                       (memory_arbiter_io_inputs_0_ready                         ), //o
    .io_inputs_0_payload_last                (io_inputs_0_cmd_payload_last                             ), //i
    .io_inputs_0_payload_fragment_source     (_zz_1                                                    ), //i
    .io_inputs_0_payload_fragment_opcode     (io_inputs_0_cmd_payload_fragment_opcode                  ), //i
    .io_inputs_0_payload_fragment_address    (io_inputs_0_cmd_payload_fragment_address[31:0]           ), //i
    .io_inputs_0_payload_fragment_length     (io_inputs_0_cmd_payload_fragment_length[5:0]             ), //i
    .io_inputs_0_payload_fragment_data       (io_inputs_0_cmd_payload_fragment_data[31:0]              ), //i
    .io_inputs_0_payload_fragment_mask       (io_inputs_0_cmd_payload_fragment_mask[3:0]               ), //i
    .io_inputs_0_payload_fragment_context    (io_inputs_0_cmd_payload_fragment_context[4:0]            ), //i
    .io_inputs_1_valid                       (io_inputs_1_cmd_valid                                    ), //i
    .io_inputs_1_ready                       (memory_arbiter_io_inputs_1_ready                         ), //o
    .io_inputs_1_payload_last                (io_inputs_1_cmd_payload_last                             ), //i
    .io_inputs_1_payload_fragment_source     (_zz_2                                                    ), //i
    .io_inputs_1_payload_fragment_opcode     (io_inputs_1_cmd_payload_fragment_opcode                  ), //i
    .io_inputs_1_payload_fragment_address    (io_inputs_1_cmd_payload_fragment_address[31:0]           ), //i
    .io_inputs_1_payload_fragment_length     (io_inputs_1_cmd_payload_fragment_length[5:0]             ), //i
    .io_inputs_1_payload_fragment_data       (io_inputs_1_cmd_payload_fragment_data[31:0]              ), //i
    .io_inputs_1_payload_fragment_mask       (io_inputs_1_cmd_payload_fragment_mask[3:0]               ), //i
    .io_inputs_1_payload_fragment_context    (_zz_3[4:0]                                               ), //i
    .io_output_valid                         (memory_arbiter_io_output_valid                           ), //o
    .io_output_ready                         (io_output_cmd_ready                                      ), //i
    .io_output_payload_last                  (memory_arbiter_io_output_payload_last                    ), //o
    .io_output_payload_fragment_source       (memory_arbiter_io_output_payload_fragment_source         ), //o
    .io_output_payload_fragment_opcode       (memory_arbiter_io_output_payload_fragment_opcode         ), //o
    .io_output_payload_fragment_address      (memory_arbiter_io_output_payload_fragment_address[31:0]  ), //o
    .io_output_payload_fragment_length       (memory_arbiter_io_output_payload_fragment_length[5:0]    ), //o
    .io_output_payload_fragment_data         (memory_arbiter_io_output_payload_fragment_data[31:0]     ), //o
    .io_output_payload_fragment_mask         (memory_arbiter_io_output_payload_fragment_mask[3:0]      ), //o
    .io_output_payload_fragment_context      (memory_arbiter_io_output_payload_fragment_context[4:0]   ), //o
    .io_chosen                               (memory_arbiter_io_chosen                                 ), //o
    .io_chosenOH                             (memory_arbiter_io_chosenOH[1:0]                          ), //o
    .debugCd_external_clk                    (debugCd_external_clk                                     ), //i
    .systemCd_logic_outputReset              (systemCd_logic_outputReset                               )  //i
  );
  always @(*) begin
    case(memory_rspSel)
      1'b0 : begin
        _zz_4 = io_inputs_0_rsp_ready;
      end
      default : begin
        _zz_4 = io_inputs_1_rsp_ready;
      end
    endcase
  end

  assign io_inputs_0_cmd_ready = memory_arbiter_io_inputs_0_ready;
  assign _zz_1 = 1'b0;
  assign io_inputs_1_cmd_ready = memory_arbiter_io_inputs_1_ready;
  assign _zz_2 = 1'b0;
  assign _zz_3 = {4'd0, io_inputs_1_cmd_payload_fragment_context};
  assign io_output_cmd_valid = memory_arbiter_io_output_valid;
  assign io_output_cmd_payload_last = memory_arbiter_io_output_payload_last;
  assign io_output_cmd_payload_fragment_opcode = memory_arbiter_io_output_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = memory_arbiter_io_output_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = memory_arbiter_io_output_payload_fragment_length;
  assign io_output_cmd_payload_fragment_data = memory_arbiter_io_output_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = memory_arbiter_io_output_payload_fragment_mask;
  assign io_output_cmd_payload_fragment_context = memory_arbiter_io_output_payload_fragment_context;
  assign io_output_cmd_payload_fragment_source = _zz_5[0:0];
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
  assign io_inputs_1_rsp_payload_fragment_context = io_output_rsp_payload_fragment_context[0:0];
  assign io_output_rsp_ready = _zz_4;

endmodule

module BmbToLiteDram_1 (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [29:0]   io_input_cmd_payload_fragment_address,
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
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
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
  wire       [3:0]    io_input_upSizer_io_input_rsp_payload_fragment_context;
  wire                io_input_upSizer_io_output_cmd_valid;
  wire                io_input_upSizer_io_output_cmd_payload_last;
  wire       [0:0]    io_input_upSizer_io_output_cmd_payload_fragment_opcode;
  wire       [29:0]   io_input_upSizer_io_output_cmd_payload_fragment_address;
  wire       [5:0]    io_input_upSizer_io_output_cmd_payload_fragment_length;
  wire       [127:0]  io_input_upSizer_io_output_cmd_payload_fragment_data;
  wire       [15:0]   io_input_upSizer_io_output_cmd_payload_fragment_mask;
  wire       [5:0]    io_input_upSizer_io_output_cmd_payload_fragment_context;
  wire                io_input_upSizer_io_output_rsp_ready;
  wire                io_input_upSizer_io_output_unburstify_io_input_cmd_ready;
  wire                io_input_upSizer_io_output_unburstify_io_input_rsp_valid;
  wire                io_input_upSizer_io_output_unburstify_io_input_rsp_payload_last;
  wire       [0:0]    io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_opcode;
  wire       [127:0]  io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_data;
  wire       [5:0]    io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_context;
  wire                io_input_upSizer_io_output_unburstify_io_output_cmd_valid;
  wire                io_input_upSizer_io_output_unburstify_io_output_cmd_payload_last;
  wire       [0:0]    io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_opcode;
  wire       [29:0]   io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_address;
  wire       [3:0]    io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_length;
  wire       [127:0]  io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_data;
  wire       [15:0]   io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_mask;
  wire       [7:0]    io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_context;
  wire                io_input_upSizer_io_output_unburstify_io_output_rsp_ready;
  wire                streamFork_2_io_input_ready;
  wire                streamFork_2_io_outputs_0_valid;
  wire                streamFork_2_io_outputs_0_payload_last;
  wire       [0:0]    streamFork_2_io_outputs_0_payload_fragment_opcode;
  wire       [29:0]   streamFork_2_io_outputs_0_payload_fragment_address;
  wire       [3:0]    streamFork_2_io_outputs_0_payload_fragment_length;
  wire       [127:0]  streamFork_2_io_outputs_0_payload_fragment_data;
  wire       [15:0]   streamFork_2_io_outputs_0_payload_fragment_mask;
  wire       [7:0]    streamFork_2_io_outputs_0_payload_fragment_context;
  wire                streamFork_2_io_outputs_1_valid;
  wire                streamFork_2_io_outputs_1_payload_last;
  wire       [0:0]    streamFork_2_io_outputs_1_payload_fragment_opcode;
  wire       [29:0]   streamFork_2_io_outputs_1_payload_fragment_address;
  wire       [3:0]    streamFork_2_io_outputs_1_payload_fragment_length;
  wire       [127:0]  streamFork_2_io_outputs_1_payload_fragment_data;
  wire       [15:0]   streamFork_2_io_outputs_1_payload_fragment_mask;
  wire       [7:0]    streamFork_2_io_outputs_1_payload_fragment_context;
  wire                streamFifoLowLatency_3_io_push_ready;
  wire                streamFifoLowLatency_3_io_pop_valid;
  wire       [127:0]  streamFifoLowLatency_3_io_pop_payload_data;
  wire       [15:0]   streamFifoLowLatency_3_io_pop_payload_we;
  wire       [5:0]    streamFifoLowLatency_3_io_occupancy;
  wire                cmdContext_fifo_io_push_ready;
  wire                cmdContext_fifo_io_pop_valid;
  wire       [7:0]    cmdContext_fifo_io_pop_payload_context;
  wire                cmdContext_fifo_io_pop_payload_isWrite;
  wire       [5:0]    cmdContext_fifo_io_occupancy;
  wire       [5:0]    cmdContext_fifo_io_availability;
  wire                io_output_rdata_fifo_io_push_ready;
  wire                io_output_rdata_fifo_io_pop_valid;
  wire       [127:0]  io_output_rdata_fifo_io_pop_payload_data;
  wire       [5:0]    io_output_rdata_fifo_io_occupancy;
  wire                _zz_15;
  wire       [25:0]   _zz_16;
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
  reg                 streamFork_2_io_outputs_1_thrown_valid;
  wire                streamFork_2_io_outputs_1_thrown_ready;
  wire                streamFork_2_io_outputs_1_thrown_payload_last;
  wire       [0:0]    streamFork_2_io_outputs_1_thrown_payload_fragment_opcode;
  wire       [29:0]   streamFork_2_io_outputs_1_thrown_payload_fragment_address;
  wire       [3:0]    streamFork_2_io_outputs_1_thrown_payload_fragment_length;
  wire       [127:0]  streamFork_2_io_outputs_1_thrown_payload_fragment_data;
  wire       [15:0]   streamFork_2_io_outputs_1_thrown_payload_fragment_mask;
  wire       [7:0]    streamFork_2_io_outputs_1_thrown_payload_fragment_context;
  wire                cmdContext_valid;
  wire                cmdContext_ready;
  wire       [7:0]    cmdContext_payload_context;
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

  assign _zz_15 = (streamFork_2_io_outputs_1_payload_fragment_opcode == 1'b0);
  assign _zz_16 = (streamFork_2_io_outputs_0_payload_fragment_address >>> 4);
  assign _zz_17 = (pendingRead + _zz_19);
  assign _zz_18 = ((outputCmd_valid && outputCmd_ready) && (! outputCmd_payload_we));
  assign _zz_19 = {5'd0, _zz_18};
  assign _zz_20 = (io_output_rdata_fifo_io_pop_valid && _zz_13);
  assign _zz_21 = {5'd0, _zz_20};
  BmbUpSizerBridge_1 io_input_upSizer (
    .io_input_cmd_valid                        (io_input_cmd_valid                                                                ), //i
    .io_input_cmd_ready                        (io_input_upSizer_io_input_cmd_ready                                               ), //o
    .io_input_cmd_payload_last                 (io_input_cmd_payload_last                                                         ), //i
    .io_input_cmd_payload_fragment_opcode      (io_input_cmd_payload_fragment_opcode                                              ), //i
    .io_input_cmd_payload_fragment_address     (io_input_cmd_payload_fragment_address[29:0]                                       ), //i
    .io_input_cmd_payload_fragment_length      (io_input_cmd_payload_fragment_length[5:0]                                         ), //i
    .io_input_cmd_payload_fragment_data        (io_input_cmd_payload_fragment_data[63:0]                                          ), //i
    .io_input_cmd_payload_fragment_mask        (io_input_cmd_payload_fragment_mask[7:0]                                           ), //i
    .io_input_cmd_payload_fragment_context     (io_input_cmd_payload_fragment_context[3:0]                                        ), //i
    .io_input_rsp_valid                        (io_input_upSizer_io_input_rsp_valid                                               ), //o
    .io_input_rsp_ready                        (io_input_rsp_ready                                                                ), //i
    .io_input_rsp_payload_last                 (io_input_upSizer_io_input_rsp_payload_last                                        ), //o
    .io_input_rsp_payload_fragment_opcode      (io_input_upSizer_io_input_rsp_payload_fragment_opcode                             ), //o
    .io_input_rsp_payload_fragment_data        (io_input_upSizer_io_input_rsp_payload_fragment_data[63:0]                         ), //o
    .io_input_rsp_payload_fragment_context     (io_input_upSizer_io_input_rsp_payload_fragment_context[3:0]                       ), //o
    .io_output_cmd_valid                       (io_input_upSizer_io_output_cmd_valid                                              ), //o
    .io_output_cmd_ready                       (io_input_upSizer_io_output_unburstify_io_input_cmd_ready                          ), //i
    .io_output_cmd_payload_last                (io_input_upSizer_io_output_cmd_payload_last                                       ), //o
    .io_output_cmd_payload_fragment_opcode     (io_input_upSizer_io_output_cmd_payload_fragment_opcode                            ), //o
    .io_output_cmd_payload_fragment_address    (io_input_upSizer_io_output_cmd_payload_fragment_address[29:0]                     ), //o
    .io_output_cmd_payload_fragment_length     (io_input_upSizer_io_output_cmd_payload_fragment_length[5:0]                       ), //o
    .io_output_cmd_payload_fragment_data       (io_input_upSizer_io_output_cmd_payload_fragment_data[127:0]                       ), //o
    .io_output_cmd_payload_fragment_mask       (io_input_upSizer_io_output_cmd_payload_fragment_mask[15:0]                        ), //o
    .io_output_cmd_payload_fragment_context    (io_input_upSizer_io_output_cmd_payload_fragment_context[5:0]                      ), //o
    .io_output_rsp_valid                       (io_input_upSizer_io_output_unburstify_io_input_rsp_valid                          ), //i
    .io_output_rsp_ready                       (io_input_upSizer_io_output_rsp_ready                                              ), //o
    .io_output_rsp_payload_last                (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_last                   ), //i
    .io_output_rsp_payload_fragment_opcode     (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_opcode        ), //i
    .io_output_rsp_payload_fragment_data       (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_data[127:0]   ), //i
    .io_output_rsp_payload_fragment_context    (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_context[5:0]  ), //i
    .debugCd_external_clk                      (debugCd_external_clk                                                              ), //i
    .systemCd_logic_outputReset                (systemCd_logic_outputReset                                                        )  //i
  );
  BmbUnburstify_1 io_input_upSizer_io_output_unburstify (
    .io_input_cmd_valid                        (io_input_upSizer_io_output_cmd_valid                                                ), //i
    .io_input_cmd_ready                        (io_input_upSizer_io_output_unburstify_io_input_cmd_ready                            ), //o
    .io_input_cmd_payload_last                 (io_input_upSizer_io_output_cmd_payload_last                                         ), //i
    .io_input_cmd_payload_fragment_opcode      (io_input_upSizer_io_output_cmd_payload_fragment_opcode                              ), //i
    .io_input_cmd_payload_fragment_address     (io_input_upSizer_io_output_cmd_payload_fragment_address[29:0]                       ), //i
    .io_input_cmd_payload_fragment_length      (io_input_upSizer_io_output_cmd_payload_fragment_length[5:0]                         ), //i
    .io_input_cmd_payload_fragment_data        (io_input_upSizer_io_output_cmd_payload_fragment_data[127:0]                         ), //i
    .io_input_cmd_payload_fragment_mask        (io_input_upSizer_io_output_cmd_payload_fragment_mask[15:0]                          ), //i
    .io_input_cmd_payload_fragment_context     (io_input_upSizer_io_output_cmd_payload_fragment_context[5:0]                        ), //i
    .io_input_rsp_valid                        (io_input_upSizer_io_output_unburstify_io_input_rsp_valid                            ), //o
    .io_input_rsp_ready                        (io_input_upSizer_io_output_rsp_ready                                                ), //i
    .io_input_rsp_payload_last                 (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_last                     ), //o
    .io_input_rsp_payload_fragment_opcode      (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_opcode          ), //o
    .io_input_rsp_payload_fragment_data        (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_data[127:0]     ), //o
    .io_input_rsp_payload_fragment_context     (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_context[5:0]    ), //o
    .io_output_cmd_valid                       (io_input_upSizer_io_output_unburstify_io_output_cmd_valid                           ), //o
    .io_output_cmd_ready                       (_zz_3                                                                               ), //i
    .io_output_cmd_payload_last                (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_last                    ), //o
    .io_output_cmd_payload_fragment_opcode     (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_opcode         ), //o
    .io_output_cmd_payload_fragment_address    (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_address[29:0]  ), //o
    .io_output_cmd_payload_fragment_length     (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_length[3:0]    ), //o
    .io_output_cmd_payload_fragment_data       (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_data[127:0]    ), //o
    .io_output_cmd_payload_fragment_mask       (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_mask[15:0]     ), //o
    .io_output_cmd_payload_fragment_context    (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_context[7:0]   ), //o
    .io_output_rsp_valid                       (_zz_4                                                                               ), //i
    .io_output_rsp_ready                       (io_input_upSizer_io_output_unburstify_io_output_rsp_ready                           ), //o
    .io_output_rsp_payload_last                (_zz_5                                                                               ), //i
    .io_output_rsp_payload_fragment_opcode     (_zz_6                                                                               ), //i
    .io_output_rsp_payload_fragment_data       (io_output_rdata_fifo_io_pop_payload_data[127:0]                                     ), //i
    .io_output_rsp_payload_fragment_context    (cmdContext_fifo_io_pop_payload_context[7:0]                                         ), //i
    .debugCd_external_clk                      (debugCd_external_clk                                                                ), //i
    .systemCd_logic_outputReset                (systemCd_logic_outputReset                                                          )  //i
  );
  StreamFork_1 streamFork_2 (
    .io_input_valid                           (_zz_7                                                                               ), //i
    .io_input_ready                           (streamFork_2_io_input_ready                                                         ), //o
    .io_input_payload_last                    (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_last                    ), //i
    .io_input_payload_fragment_opcode         (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_opcode         ), //i
    .io_input_payload_fragment_address        (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_address[29:0]  ), //i
    .io_input_payload_fragment_length         (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_length[3:0]    ), //i
    .io_input_payload_fragment_data           (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_data[127:0]    ), //i
    .io_input_payload_fragment_mask           (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_mask[15:0]     ), //i
    .io_input_payload_fragment_context        (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_context[7:0]   ), //i
    .io_outputs_0_valid                       (streamFork_2_io_outputs_0_valid                                                     ), //o
    .io_outputs_0_ready                       (_zz_8                                                                               ), //i
    .io_outputs_0_payload_last                (streamFork_2_io_outputs_0_payload_last                                              ), //o
    .io_outputs_0_payload_fragment_opcode     (streamFork_2_io_outputs_0_payload_fragment_opcode                                   ), //o
    .io_outputs_0_payload_fragment_address    (streamFork_2_io_outputs_0_payload_fragment_address[29:0]                            ), //o
    .io_outputs_0_payload_fragment_length     (streamFork_2_io_outputs_0_payload_fragment_length[3:0]                              ), //o
    .io_outputs_0_payload_fragment_data       (streamFork_2_io_outputs_0_payload_fragment_data[127:0]                              ), //o
    .io_outputs_0_payload_fragment_mask       (streamFork_2_io_outputs_0_payload_fragment_mask[15:0]                               ), //o
    .io_outputs_0_payload_fragment_context    (streamFork_2_io_outputs_0_payload_fragment_context[7:0]                             ), //o
    .io_outputs_1_valid                       (streamFork_2_io_outputs_1_valid                                                     ), //o
    .io_outputs_1_ready                       (_zz_9                                                                               ), //i
    .io_outputs_1_payload_last                (streamFork_2_io_outputs_1_payload_last                                              ), //o
    .io_outputs_1_payload_fragment_opcode     (streamFork_2_io_outputs_1_payload_fragment_opcode                                   ), //o
    .io_outputs_1_payload_fragment_address    (streamFork_2_io_outputs_1_payload_fragment_address[29:0]                            ), //o
    .io_outputs_1_payload_fragment_length     (streamFork_2_io_outputs_1_payload_fragment_length[3:0]                              ), //o
    .io_outputs_1_payload_fragment_data       (streamFork_2_io_outputs_1_payload_fragment_data[127:0]                              ), //o
    .io_outputs_1_payload_fragment_mask       (streamFork_2_io_outputs_1_payload_fragment_mask[15:0]                               ), //o
    .io_outputs_1_payload_fragment_context    (streamFork_2_io_outputs_1_payload_fragment_context[7:0]                             ), //o
    .debugCd_external_clk                     (debugCd_external_clk                                                                ), //i
    .systemCd_logic_outputReset               (systemCd_logic_outputReset                                                          )  //i
  );
  StreamFifoLowLatency_1 streamFifoLowLatency_3 (
    .io_push_valid                 (streamFork_2_io_outputs_1_thrown_valid                  ), //i
    .io_push_ready                 (streamFifoLowLatency_3_io_push_ready                    ), //o
    .io_push_payload_data          (streamFork_2_io_outputs_1_payload_fragment_data[127:0]  ), //i
    .io_push_payload_we            (streamFork_2_io_outputs_1_payload_fragment_mask[15:0]   ), //i
    .io_pop_valid                  (streamFifoLowLatency_3_io_pop_valid                     ), //o
    .io_pop_ready                  (io_output_wdata_ready                                   ), //i
    .io_pop_payload_data           (streamFifoLowLatency_3_io_pop_payload_data[127:0]       ), //o
    .io_pop_payload_we             (streamFifoLowLatency_3_io_pop_payload_we[15:0]          ), //o
    .io_flush                      (_zz_10                                                  ), //i
    .io_occupancy                  (streamFifoLowLatency_3_io_occupancy[5:0]                ), //o
    .debugCd_external_clk          (debugCd_external_clk                                    ), //i
    .systemCd_logic_outputReset    (systemCd_logic_outputReset                              )  //i
  );
  StreamFifo_1 cmdContext_fifo (
    .io_push_valid                 (cmdContext_valid                             ), //i
    .io_push_ready                 (cmdContext_fifo_io_push_ready                ), //o
    .io_push_payload_context       (cmdContext_payload_context[7:0]              ), //i
    .io_push_payload_isWrite       (cmdContext_payload_isWrite                   ), //i
    .io_pop_valid                  (cmdContext_fifo_io_pop_valid                 ), //o
    .io_pop_ready                  (_zz_11                                       ), //i
    .io_pop_payload_context        (cmdContext_fifo_io_pop_payload_context[7:0]  ), //o
    .io_pop_payload_isWrite        (cmdContext_fifo_io_pop_payload_isWrite       ), //o
    .io_flush                      (_zz_12                                       ), //i
    .io_occupancy                  (cmdContext_fifo_io_occupancy[5:0]            ), //o
    .io_availability               (cmdContext_fifo_io_availability[5:0]         ), //o
    .debugCd_external_clk          (debugCd_external_clk                         ), //i
    .systemCd_logic_outputReset    (systemCd_logic_outputReset                   )  //i
  );
  StreamFifoLowLatency io_output_rdata_fifo (
    .io_push_valid                 (io_output_rdata_valid                            ), //i
    .io_push_ready                 (io_output_rdata_fifo_io_push_ready               ), //o
    .io_push_payload_data          (io_output_rdata_payload_data[127:0]              ), //i
    .io_pop_valid                  (io_output_rdata_fifo_io_pop_valid                ), //o
    .io_pop_ready                  (_zz_13                                           ), //i
    .io_pop_payload_data           (io_output_rdata_fifo_io_pop_payload_data[127:0]  ), //o
    .io_flush                      (_zz_14                                           ), //i
    .io_occupancy                  (io_output_rdata_fifo_io_occupancy[5:0]           ), //o
    .debugCd_external_clk          (debugCd_external_clk                             ), //i
    .systemCd_logic_outputReset    (systemCd_logic_outputReset                       )  //i
  );
  assign io_input_cmd_ready = io_input_upSizer_io_input_cmd_ready;
  assign io_input_rsp_valid = io_input_upSizer_io_input_rsp_valid;
  assign io_input_rsp_payload_last = io_input_upSizer_io_input_rsp_payload_last;
  assign io_input_rsp_payload_fragment_opcode = io_input_upSizer_io_input_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_input_upSizer_io_input_rsp_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = io_input_upSizer_io_input_rsp_payload_fragment_context;
  assign _zz_1 = (! halt);
  assign _zz_3 = (streamFork_2_io_input_ready && _zz_1);
  assign _zz_7 = (io_input_upSizer_io_output_unburstify_io_output_cmd_valid && _zz_1);
  assign _zz_2 = (! pendingRead[5]);
  assign _zz_8 = (outputCmd_ready && _zz_2);
  assign outputCmd_valid = (streamFork_2_io_outputs_0_valid && _zz_2);
  assign outputCmd_payload_addr = {6'd0, _zz_16};
  assign outputCmd_payload_we = (streamFork_2_io_outputs_0_payload_fragment_opcode == 1'b1);
  assign outputCmd_ready = ((1'b1 && (! outputCmd_m2sPipe_valid)) || outputCmd_m2sPipe_ready);
  assign outputCmd_m2sPipe_valid = outputCmd_m2sPipe_rValid;
  assign outputCmd_m2sPipe_payload_we = outputCmd_m2sPipe_rData_we;
  assign outputCmd_m2sPipe_payload_addr = outputCmd_m2sPipe_rData_addr;
  assign io_output_cmd_valid = outputCmd_m2sPipe_valid;
  assign outputCmd_m2sPipe_ready = io_output_cmd_ready;
  assign io_output_cmd_payload_we = outputCmd_m2sPipe_payload_we;
  assign io_output_cmd_payload_addr = outputCmd_m2sPipe_payload_addr;
  always @ (*) begin
    streamFork_2_io_outputs_1_thrown_valid = streamFork_2_io_outputs_1_valid;
    if(_zz_15)begin
      streamFork_2_io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_9 = streamFork_2_io_outputs_1_thrown_ready;
    if(_zz_15)begin
      _zz_9 = 1'b1;
    end
  end

  assign streamFork_2_io_outputs_1_thrown_payload_last = streamFork_2_io_outputs_1_payload_last;
  assign streamFork_2_io_outputs_1_thrown_payload_fragment_opcode = streamFork_2_io_outputs_1_payload_fragment_opcode;
  assign streamFork_2_io_outputs_1_thrown_payload_fragment_address = streamFork_2_io_outputs_1_payload_fragment_address;
  assign streamFork_2_io_outputs_1_thrown_payload_fragment_length = streamFork_2_io_outputs_1_payload_fragment_length;
  assign streamFork_2_io_outputs_1_thrown_payload_fragment_data = streamFork_2_io_outputs_1_payload_fragment_data;
  assign streamFork_2_io_outputs_1_thrown_payload_fragment_mask = streamFork_2_io_outputs_1_payload_fragment_mask;
  assign streamFork_2_io_outputs_1_thrown_payload_fragment_context = streamFork_2_io_outputs_1_payload_fragment_context;
  assign streamFork_2_io_outputs_1_thrown_ready = streamFifoLowLatency_3_io_push_ready;
  assign io_output_wdata_valid = streamFifoLowLatency_3_io_pop_valid;
  assign io_output_wdata_payload_data = streamFifoLowLatency_3_io_pop_payload_data;
  assign io_output_wdata_payload_we = streamFifoLowLatency_3_io_pop_payload_we;
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
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
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

  always @ (posedge debugCd_external_clk) begin
    if(outputCmd_ready)begin
      outputCmd_m2sPipe_rData_we <= outputCmd_payload_we;
      outputCmd_m2sPipe_rData_addr <= outputCmd_payload_addr;
    end
  end


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
  input      [4:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_source,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output     [4:0]    io_input_rsp_payload_fragment_context,
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
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
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
  reg        [4:0]    io_input_cmd_payload_fragment_context_regNext;
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
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
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

  always @ (posedge debugCd_external_clk) begin
    io_output_DAT_MISO_regNext <= io_output_DAT_MISO;
    io_input_cmd_payload_fragment_source_regNext <= io_input_cmd_payload_fragment_source;
    io_input_cmd_payload_fragment_context_regNext <= io_input_cmd_payload_fragment_context;
    beatLast_regNext <= beatLast;
  end


endmodule

module BmbToLiteDram (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [29:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
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
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
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
  wire                io_input_upSizer_io_input_cmd_ready;
  wire                io_input_upSizer_io_input_rsp_valid;
  wire                io_input_upSizer_io_input_rsp_payload_last;
  wire       [0:0]    io_input_upSizer_io_input_rsp_payload_fragment_opcode;
  wire       [63:0]   io_input_upSizer_io_input_rsp_payload_fragment_data;
  wire                io_input_upSizer_io_output_cmd_valid;
  wire                io_input_upSizer_io_output_cmd_payload_last;
  wire       [0:0]    io_input_upSizer_io_output_cmd_payload_fragment_opcode;
  wire       [29:0]   io_input_upSizer_io_output_cmd_payload_fragment_address;
  wire       [5:0]    io_input_upSizer_io_output_cmd_payload_fragment_length;
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
  wire       [29:0]   io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_address;
  wire       [3:0]    io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_length;
  wire       [3:0]    io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_context;
  wire                io_input_upSizer_io_output_unburstify_io_output_rsp_ready;
  wire                streamFork_2_io_input_ready;
  wire                streamFork_2_io_outputs_0_valid;
  wire                streamFork_2_io_outputs_0_payload_last;
  wire       [0:0]    streamFork_2_io_outputs_0_payload_fragment_opcode;
  wire       [29:0]   streamFork_2_io_outputs_0_payload_fragment_address;
  wire       [3:0]    streamFork_2_io_outputs_0_payload_fragment_length;
  wire       [3:0]    streamFork_2_io_outputs_0_payload_fragment_context;
  wire                streamFork_2_io_outputs_1_valid;
  wire                streamFork_2_io_outputs_1_payload_last;
  wire       [0:0]    streamFork_2_io_outputs_1_payload_fragment_opcode;
  wire       [29:0]   streamFork_2_io_outputs_1_payload_fragment_address;
  wire       [3:0]    streamFork_2_io_outputs_1_payload_fragment_length;
  wire       [3:0]    streamFork_2_io_outputs_1_payload_fragment_context;
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
  wire       [25:0]   _zz_14;
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

  assign _zz_14 = (streamFork_2_io_outputs_0_payload_fragment_address >>> 4);
  assign _zz_15 = (pendingRead + _zz_17);
  assign _zz_16 = ((outputCmd_valid && outputCmd_ready) && (! outputCmd_payload_we));
  assign _zz_17 = {5'd0, _zz_16};
  assign _zz_18 = (io_output_rdata_fifo_io_pop_valid && _zz_12);
  assign _zz_19 = {5'd0, _zz_18};
  BmbUpSizerBridge io_input_upSizer (
    .io_input_cmd_valid                        (io_input_cmd_valid                                                                ), //i
    .io_input_cmd_ready                        (io_input_upSizer_io_input_cmd_ready                                               ), //o
    .io_input_cmd_payload_last                 (io_input_cmd_payload_last                                                         ), //i
    .io_input_cmd_payload_fragment_opcode      (io_input_cmd_payload_fragment_opcode                                              ), //i
    .io_input_cmd_payload_fragment_address     (io_input_cmd_payload_fragment_address[29:0]                                       ), //i
    .io_input_cmd_payload_fragment_length      (io_input_cmd_payload_fragment_length[5:0]                                         ), //i
    .io_input_rsp_valid                        (io_input_upSizer_io_input_rsp_valid                                               ), //o
    .io_input_rsp_ready                        (io_input_rsp_ready                                                                ), //i
    .io_input_rsp_payload_last                 (io_input_upSizer_io_input_rsp_payload_last                                        ), //o
    .io_input_rsp_payload_fragment_opcode      (io_input_upSizer_io_input_rsp_payload_fragment_opcode                             ), //o
    .io_input_rsp_payload_fragment_data        (io_input_upSizer_io_input_rsp_payload_fragment_data[63:0]                         ), //o
    .io_output_cmd_valid                       (io_input_upSizer_io_output_cmd_valid                                              ), //o
    .io_output_cmd_ready                       (io_input_upSizer_io_output_unburstify_io_input_cmd_ready                          ), //i
    .io_output_cmd_payload_last                (io_input_upSizer_io_output_cmd_payload_last                                       ), //o
    .io_output_cmd_payload_fragment_opcode     (io_input_upSizer_io_output_cmd_payload_fragment_opcode                            ), //o
    .io_output_cmd_payload_fragment_address    (io_input_upSizer_io_output_cmd_payload_fragment_address[29:0]                     ), //o
    .io_output_cmd_payload_fragment_length     (io_input_upSizer_io_output_cmd_payload_fragment_length[5:0]                       ), //o
    .io_output_cmd_payload_fragment_context    (io_input_upSizer_io_output_cmd_payload_fragment_context[1:0]                      ), //o
    .io_output_rsp_valid                       (io_input_upSizer_io_output_unburstify_io_input_rsp_valid                          ), //i
    .io_output_rsp_ready                       (io_input_upSizer_io_output_rsp_ready                                              ), //o
    .io_output_rsp_payload_last                (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_last                   ), //i
    .io_output_rsp_payload_fragment_opcode     (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_opcode        ), //i
    .io_output_rsp_payload_fragment_data       (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_data[127:0]   ), //i
    .io_output_rsp_payload_fragment_context    (io_input_upSizer_io_output_unburstify_io_input_rsp_payload_fragment_context[1:0]  ), //i
    .debugCd_external_clk                      (debugCd_external_clk                                                              ), //i
    .systemCd_logic_outputReset                (systemCd_logic_outputReset                                                        )  //i
  );
  BmbUnburstify io_input_upSizer_io_output_unburstify (
    .io_input_cmd_valid                        (io_input_upSizer_io_output_cmd_valid                                                ), //i
    .io_input_cmd_ready                        (io_input_upSizer_io_output_unburstify_io_input_cmd_ready                            ), //o
    .io_input_cmd_payload_last                 (io_input_upSizer_io_output_cmd_payload_last                                         ), //i
    .io_input_cmd_payload_fragment_opcode      (io_input_upSizer_io_output_cmd_payload_fragment_opcode                              ), //i
    .io_input_cmd_payload_fragment_address     (io_input_upSizer_io_output_cmd_payload_fragment_address[29:0]                       ), //i
    .io_input_cmd_payload_fragment_length      (io_input_upSizer_io_output_cmd_payload_fragment_length[5:0]                         ), //i
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
    .io_output_cmd_payload_fragment_address    (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_address[29:0]  ), //o
    .io_output_cmd_payload_fragment_length     (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_length[3:0]    ), //o
    .io_output_cmd_payload_fragment_context    (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_context[3:0]   ), //o
    .io_output_rsp_valid                       (_zz_4                                                                               ), //i
    .io_output_rsp_ready                       (io_input_upSizer_io_output_unburstify_io_output_rsp_ready                           ), //o
    .io_output_rsp_payload_last                (_zz_5                                                                               ), //i
    .io_output_rsp_payload_fragment_opcode     (_zz_6                                                                               ), //i
    .io_output_rsp_payload_fragment_data       (io_output_rdata_fifo_io_pop_payload_data[127:0]                                     ), //i
    .io_output_rsp_payload_fragment_context    (cmdContext_fifo_io_pop_payload_context[3:0]                                         ), //i
    .debugCd_external_clk                      (debugCd_external_clk                                                                ), //i
    .systemCd_logic_outputReset                (systemCd_logic_outputReset                                                          )  //i
  );
  StreamFork streamFork_2 (
    .io_input_valid                           (_zz_7                                                                               ), //i
    .io_input_ready                           (streamFork_2_io_input_ready                                                         ), //o
    .io_input_payload_last                    (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_last                    ), //i
    .io_input_payload_fragment_opcode         (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_opcode         ), //i
    .io_input_payload_fragment_address        (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_address[29:0]  ), //i
    .io_input_payload_fragment_length         (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_length[3:0]    ), //i
    .io_input_payload_fragment_context        (io_input_upSizer_io_output_unburstify_io_output_cmd_payload_fragment_context[3:0]   ), //i
    .io_outputs_0_valid                       (streamFork_2_io_outputs_0_valid                                                     ), //o
    .io_outputs_0_ready                       (_zz_8                                                                               ), //i
    .io_outputs_0_payload_last                (streamFork_2_io_outputs_0_payload_last                                              ), //o
    .io_outputs_0_payload_fragment_opcode     (streamFork_2_io_outputs_0_payload_fragment_opcode                                   ), //o
    .io_outputs_0_payload_fragment_address    (streamFork_2_io_outputs_0_payload_fragment_address[29:0]                            ), //o
    .io_outputs_0_payload_fragment_length     (streamFork_2_io_outputs_0_payload_fragment_length[3:0]                              ), //o
    .io_outputs_0_payload_fragment_context    (streamFork_2_io_outputs_0_payload_fragment_context[3:0]                             ), //o
    .io_outputs_1_valid                       (streamFork_2_io_outputs_1_valid                                                     ), //o
    .io_outputs_1_ready                       (_zz_9                                                                               ), //i
    .io_outputs_1_payload_last                (streamFork_2_io_outputs_1_payload_last                                              ), //o
    .io_outputs_1_payload_fragment_opcode     (streamFork_2_io_outputs_1_payload_fragment_opcode                                   ), //o
    .io_outputs_1_payload_fragment_address    (streamFork_2_io_outputs_1_payload_fragment_address[29:0]                            ), //o
    .io_outputs_1_payload_fragment_length     (streamFork_2_io_outputs_1_payload_fragment_length[3:0]                              ), //o
    .io_outputs_1_payload_fragment_context    (streamFork_2_io_outputs_1_payload_fragment_context[3:0]                             ), //o
    .debugCd_external_clk                     (debugCd_external_clk                                                                ), //i
    .systemCd_logic_outputReset               (systemCd_logic_outputReset                                                          )  //i
  );
  StreamFifo cmdContext_fifo (
    .io_push_valid                 (cmdContext_valid                             ), //i
    .io_push_ready                 (cmdContext_fifo_io_push_ready                ), //o
    .io_push_payload_context       (cmdContext_payload_context[3:0]              ), //i
    .io_push_payload_isWrite       (cmdContext_payload_isWrite                   ), //i
    .io_pop_valid                  (cmdContext_fifo_io_pop_valid                 ), //o
    .io_pop_ready                  (_zz_10                                       ), //i
    .io_pop_payload_context        (cmdContext_fifo_io_pop_payload_context[3:0]  ), //o
    .io_pop_payload_isWrite        (cmdContext_fifo_io_pop_payload_isWrite       ), //o
    .io_flush                      (_zz_11                                       ), //i
    .io_occupancy                  (cmdContext_fifo_io_occupancy[5:0]            ), //o
    .io_availability               (cmdContext_fifo_io_availability[5:0]         ), //o
    .debugCd_external_clk          (debugCd_external_clk                         ), //i
    .systemCd_logic_outputReset    (systemCd_logic_outputReset                   )  //i
  );
  StreamFifoLowLatency io_output_rdata_fifo (
    .io_push_valid                 (io_output_rdata_valid                            ), //i
    .io_push_ready                 (io_output_rdata_fifo_io_push_ready               ), //o
    .io_push_payload_data          (io_output_rdata_payload_data[127:0]              ), //i
    .io_pop_valid                  (io_output_rdata_fifo_io_pop_valid                ), //o
    .io_pop_ready                  (_zz_12                                           ), //i
    .io_pop_payload_data           (io_output_rdata_fifo_io_pop_payload_data[127:0]  ), //o
    .io_flush                      (_zz_13                                           ), //i
    .io_occupancy                  (io_output_rdata_fifo_io_occupancy[5:0]           ), //o
    .debugCd_external_clk          (debugCd_external_clk                             ), //i
    .systemCd_logic_outputReset    (systemCd_logic_outputReset                       )  //i
  );
  assign io_input_cmd_ready = io_input_upSizer_io_input_cmd_ready;
  assign io_input_rsp_valid = io_input_upSizer_io_input_rsp_valid;
  assign io_input_rsp_payload_last = io_input_upSizer_io_input_rsp_payload_last;
  assign io_input_rsp_payload_fragment_opcode = io_input_upSizer_io_input_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_input_upSizer_io_input_rsp_payload_fragment_data;
  assign _zz_1 = (! halt);
  assign _zz_3 = (streamFork_2_io_input_ready && _zz_1);
  assign _zz_7 = (io_input_upSizer_io_output_unburstify_io_output_cmd_valid && _zz_1);
  assign _zz_2 = (! pendingRead[5]);
  assign _zz_8 = (outputCmd_ready && _zz_2);
  assign outputCmd_valid = (streamFork_2_io_outputs_0_valid && _zz_2);
  assign outputCmd_payload_addr = {6'd0, _zz_14};
  assign outputCmd_payload_we = (streamFork_2_io_outputs_0_payload_fragment_opcode == 1'b1);
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
  assign _zz_12 = ((_zz_4 && io_input_upSizer_io_output_unburstify_io_output_rsp_ready) && (! cmdContext_fifo_io_pop_payload_isWrite));
  assign _zz_10 = (_zz_4 && io_input_upSizer_io_output_unburstify_io_output_rsp_ready);
  assign _zz_4 = (cmdContext_fifo_io_pop_valid && (cmdContext_fifo_io_pop_payload_isWrite ? canRspWrite : canRspRead));
  assign _zz_6 = 1'b0;
  assign _zz_5 = 1'b1;
  assign _zz_11 = 1'b0;
  assign _zz_13 = 1'b0;
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
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

  always @ (posedge debugCd_external_clk) begin
    if(outputCmd_ready)begin
      outputCmd_m2sPipe_rData_we <= outputCmd_payload_we;
      outputCmd_m2sPipe_rData_addr <= outputCmd_payload_addr;
    end
  end


endmodule

module BufferCC_2 (
  input               io_initial,
  input               io_dataIn,
  output              io_dataOut,
  input               debugCd_external_clk,
  input               cores_0_cpu_debugReset
);
  reg                 buffers_0;
  reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge debugCd_external_clk or posedge cores_0_cpu_debugReset) begin
    if (cores_0_cpu_debugReset) begin
      buffers_0 <= io_initial;
      buffers_1 <= io_initial;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BmbDecoder_2 (
  input               io_input_cmd_valid,
  output reg          io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [15:0]   io_input_cmd_payload_fragment_address,
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
  output     [15:0]   io_outputs_0_cmd_payload_fragment_address,
  output     [1:0]    io_outputs_0_cmd_payload_fragment_length,
  output     [31:0]   io_outputs_0_cmd_payload_fragment_data,
  output     [3:0]    io_outputs_0_cmd_payload_fragment_mask,
  input               io_outputs_0_rsp_valid,
  output              io_outputs_0_rsp_ready,
  input               io_outputs_0_rsp_payload_last,
  input      [0:0]    io_outputs_0_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_0_rsp_payload_fragment_data,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  wire       [3:0]    _zz_2;
  wire       [0:0]    _zz_3;
  wire       [3:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [3:0]    _zz_6;
  wire                logic_hits_0;
  wire                _zz_1;
  wire                logic_noHit;
  reg        [3:0]    logic_rspPendingCounter;
  wire                logic_cmdWait;
  reg                 logic_rspHits_0;
  wire                logic_rspPending;
  wire                logic_rspNoHitValid;
  reg                 logic_rspNoHit_doIt;
  reg                 logic_rspNoHit_singleBeatRsp;

  assign _zz_2 = (logic_rspPendingCounter + _zz_4);
  assign _zz_3 = ((io_input_cmd_valid && io_input_cmd_ready) && io_input_cmd_payload_last);
  assign _zz_4 = {3'd0, _zz_3};
  assign _zz_5 = ((io_input_rsp_valid && io_input_rsp_ready) && io_input_rsp_payload_last);
  assign _zz_6 = {3'd0, _zz_5};
  assign logic_hits_0 = ((io_input_cmd_payload_fragment_address & (~ 16'hffff)) == 16'h0);
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

  assign logic_rspPending = (logic_rspPendingCounter != 4'b0000);
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
  assign logic_cmdWait = ((logic_rspPending && ((logic_hits_0 != logic_rspHits_0) || logic_rspNoHitValid)) || (logic_rspPendingCounter == 4'b1111));
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      logic_rspPendingCounter <= 4'b0000;
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

  always @ (posedge debugCd_external_clk) begin
    if((io_input_cmd_valid && (! logic_cmdWait)))begin
      logic_rspHits_0 <= logic_hits_0;
    end
    if((io_input_cmd_valid && io_input_cmd_ready))begin
      logic_rspNoHit_singleBeatRsp <= (io_input_cmd_payload_fragment_opcode == 1'b1);
    end
  end


endmodule

module BmbDecoder_1 (
  input               io_input_cmd_valid,
  output reg          io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [21:0]   io_input_cmd_payload_fragment_address,
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
  output     [21:0]   io_outputs_0_cmd_payload_fragment_address,
  output     [1:0]    io_outputs_0_cmd_payload_fragment_length,
  output     [31:0]   io_outputs_0_cmd_payload_fragment_data,
  output     [3:0]    io_outputs_0_cmd_payload_fragment_mask,
  input               io_outputs_0_rsp_valid,
  output              io_outputs_0_rsp_ready,
  input               io_outputs_0_rsp_payload_last,
  input      [0:0]    io_outputs_0_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_0_rsp_payload_fragment_data,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  wire       [3:0]    _zz_2;
  wire       [0:0]    _zz_3;
  wire       [3:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [3:0]    _zz_6;
  wire                logic_hits_0;
  wire                _zz_1;
  wire                logic_noHit;
  reg        [3:0]    logic_rspPendingCounter;
  wire                logic_cmdWait;
  reg                 logic_rspHits_0;
  wire                logic_rspPending;
  wire                logic_rspNoHitValid;
  reg                 logic_rspNoHit_doIt;
  reg                 logic_rspNoHit_singleBeatRsp;

  assign _zz_2 = (logic_rspPendingCounter + _zz_4);
  assign _zz_3 = ((io_input_cmd_valid && io_input_cmd_ready) && io_input_cmd_payload_last);
  assign _zz_4 = {3'd0, _zz_3};
  assign _zz_5 = ((io_input_rsp_valid && io_input_rsp_ready) && io_input_rsp_payload_last);
  assign _zz_6 = {3'd0, _zz_5};
  assign logic_hits_0 = ((io_input_cmd_payload_fragment_address & (~ 22'h3fffff)) == 22'h0);
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

  assign logic_rspPending = (logic_rspPendingCounter != 4'b0000);
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
  assign logic_cmdWait = ((logic_rspPending && ((logic_hits_0 != logic_rspHits_0) || logic_rspNoHitValid)) || (logic_rspPendingCounter == 4'b1111));
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      logic_rspPendingCounter <= 4'b0000;
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

  always @ (posedge debugCd_external_clk) begin
    if((io_input_cmd_valid && (! logic_cmdWait)))begin
      logic_rspHits_0 <= logic_hits_0;
    end
    if((io_input_cmd_valid && io_input_cmd_ready))begin
      logic_rspNoHit_singleBeatRsp <= (io_input_cmd_payload_fragment_opcode == 1'b1);
    end
  end


endmodule

module BmbDecoder (
  input               io_input_cmd_valid,
  output reg          io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [31:0]   io_input_cmd_payload_fragment_address,
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
  output     [31:0]   io_outputs_0_cmd_payload_fragment_address,
  output     [1:0]    io_outputs_0_cmd_payload_fragment_length,
  output     [31:0]   io_outputs_0_cmd_payload_fragment_data,
  output     [3:0]    io_outputs_0_cmd_payload_fragment_mask,
  input               io_outputs_0_rsp_valid,
  output              io_outputs_0_rsp_ready,
  input               io_outputs_0_rsp_payload_last,
  input      [0:0]    io_outputs_0_rsp_payload_fragment_opcode,
  input      [31:0]   io_outputs_0_rsp_payload_fragment_data,
  input               debugCd_external_clk,
  input               debugCd_logic_outputReset
);
  wire       [3:0]    _zz_2;
  wire       [0:0]    _zz_3;
  wire       [3:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [3:0]    _zz_6;
  wire                logic_hits_0;
  wire                _zz_1;
  wire                logic_noHit;
  reg        [3:0]    logic_rspPendingCounter;
  wire                logic_cmdWait;
  reg                 logic_rspHits_0;
  wire                logic_rspPending;
  wire                logic_rspNoHitValid;
  reg                 logic_rspNoHit_doIt;
  reg                 logic_rspNoHit_singleBeatRsp;

  assign _zz_2 = (logic_rspPendingCounter + _zz_4);
  assign _zz_3 = ((io_input_cmd_valid && io_input_cmd_ready) && io_input_cmd_payload_last);
  assign _zz_4 = {3'd0, _zz_3};
  assign _zz_5 = ((io_input_rsp_valid && io_input_rsp_ready) && io_input_rsp_payload_last);
  assign _zz_6 = {3'd0, _zz_5};
  assign logic_hits_0 = ((io_input_cmd_payload_fragment_address & (~ 32'h00000fff)) == 32'h0);
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

  assign logic_rspPending = (logic_rspPendingCounter != 4'b0000);
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
  assign logic_cmdWait = ((logic_rspPending && ((logic_hits_0 != logic_rspHits_0) || logic_rspNoHitValid)) || (logic_rspPendingCounter == 4'b1111));
  always @ (posedge debugCd_external_clk) begin
    if(debugCd_logic_outputReset) begin
      logic_rspPendingCounter <= 4'b0000;
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

  always @ (posedge debugCd_external_clk) begin
    if((io_input_cmd_valid && (! logic_cmdWait)))begin
      logic_rspHits_0 <= logic_hits_0;
    end
    if((io_input_cmd_valid && io_input_cmd_ready))begin
      logic_rspNoHit_singleBeatRsp <= (io_input_cmd_payload_fragment_opcode == 1'b1);
    end
  end


endmodule

module BmbClint (
  input               io_bus_cmd_valid,
  output              io_bus_cmd_ready,
  input               io_bus_cmd_payload_last,
  input      [0:0]    io_bus_cmd_payload_fragment_opcode,
  input      [15:0]   io_bus_cmd_payload_fragment_address,
  input      [1:0]    io_bus_cmd_payload_fragment_length,
  input      [31:0]   io_bus_cmd_payload_fragment_data,
  input      [3:0]    io_bus_cmd_payload_fragment_mask,
  output              io_bus_rsp_valid,
  input               io_bus_rsp_ready,
  output              io_bus_rsp_payload_last,
  output     [0:0]    io_bus_rsp_payload_fragment_opcode,
  output     [31:0]   io_bus_rsp_payload_fragment_data,
  output     [0:0]    io_timerInterrupt,
  output     [0:0]    io_softwareInterrupt,
  output     [63:0]   io_time,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  wire       [63:0]   _zz_9;
  wire       [31:0]   _zz_10;
  wire       [31:0]   _zz_11;
  wire       [31:0]   _zz_12;
  wire       [31:0]   _zz_13;
  wire       [0:0]    _zz_14;
  wire                factory_readHaltTrigger;
  wire                factory_writeHaltTrigger;
  wire                factory_rsp_valid;
  wire                factory_rsp_ready;
  wire                factory_rsp_payload_last;
  wire       [0:0]    factory_rsp_payload_fragment_opcode;
  reg        [31:0]   factory_rsp_payload_fragment_data;
  wire                _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  reg                 _zz_4;
  reg                 _zz_5;
  reg        [0:0]    _zz_6;
  reg        [31:0]   _zz_7;
  wire                factory_askWrite;
  wire                factory_askRead;
  wire                factory_doWrite;
  wire                factory_doRead;
  reg        [63:0]   logic_time;
  reg        [63:0]   logic_harts_0_cmp;
  reg                 logic_harts_0_timerInterrupt;
  reg                 logic_harts_0_softwareInterrupt;
  wire       [63:0]   _zz_8;

  assign _zz_9 = (logic_time - logic_harts_0_cmp);
  assign _zz_10 = io_bus_cmd_payload_fragment_data[31 : 0];
  assign _zz_11 = _zz_10;
  assign _zz_12 = io_bus_cmd_payload_fragment_data[31 : 0];
  assign _zz_13 = _zz_12;
  assign _zz_14 = io_bus_cmd_payload_fragment_data[0 : 0];
  assign factory_readHaltTrigger = 1'b0;
  assign factory_writeHaltTrigger = 1'b0;
  assign _zz_1 = (! (factory_readHaltTrigger || factory_writeHaltTrigger));
  assign factory_rsp_ready = (_zz_2 && _zz_1);
  assign _zz_2 = ((1'b1 && (! _zz_3)) || io_bus_rsp_ready);
  assign _zz_3 = _zz_4;
  assign io_bus_rsp_valid = _zz_3;
  assign io_bus_rsp_payload_last = _zz_5;
  assign io_bus_rsp_payload_fragment_opcode = _zz_6;
  assign io_bus_rsp_payload_fragment_data = _zz_7;
  assign factory_askWrite = (io_bus_cmd_valid && (io_bus_cmd_payload_fragment_opcode == 1'b1));
  assign factory_askRead = (io_bus_cmd_valid && (io_bus_cmd_payload_fragment_opcode == 1'b0));
  assign factory_doWrite = ((io_bus_cmd_valid && io_bus_cmd_ready) && (io_bus_cmd_payload_fragment_opcode == 1'b1));
  assign factory_doRead = ((io_bus_cmd_valid && io_bus_cmd_ready) && (io_bus_cmd_payload_fragment_opcode == 1'b0));
  assign factory_rsp_valid = io_bus_cmd_valid;
  assign io_bus_cmd_ready = factory_rsp_ready;
  assign factory_rsp_payload_last = 1'b1;
  assign factory_rsp_payload_fragment_opcode = 1'b0;
  always @ (*) begin
    factory_rsp_payload_fragment_data = 32'h0;
    case(io_bus_cmd_payload_fragment_address)
      16'hbff8 : begin
        factory_rsp_payload_fragment_data[31 : 0] = _zz_8[31 : 0];
      end
      16'hbffc : begin
        factory_rsp_payload_fragment_data[31 : 0] = _zz_8[63 : 32];
      end
      16'h4000 : begin
      end
      16'h4004 : begin
      end
      16'h0 : begin
        factory_rsp_payload_fragment_data[0 : 0] = logic_harts_0_softwareInterrupt;
      end
      default : begin
      end
    endcase
  end

  assign _zz_8 = logic_time;
  assign io_timerInterrupt[0] = logic_harts_0_timerInterrupt;
  assign io_softwareInterrupt[0] = logic_harts_0_softwareInterrupt;
  assign io_time = logic_time;
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      _zz_4 <= 1'b0;
      logic_time <= 64'h0;
      logic_harts_0_softwareInterrupt <= 1'b0;
    end else begin
      if(_zz_2)begin
        _zz_4 <= (factory_rsp_valid && _zz_1);
      end
      logic_time <= (logic_time + 64'h0000000000000001);
      case(io_bus_cmd_payload_fragment_address)
        16'hbff8 : begin
        end
        16'hbffc : begin
        end
        16'h4000 : begin
        end
        16'h4004 : begin
        end
        16'h0 : begin
          if(factory_doWrite)begin
            logic_harts_0_softwareInterrupt <= _zz_14[0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if(_zz_2)begin
      _zz_5 <= factory_rsp_payload_last;
      _zz_6 <= factory_rsp_payload_fragment_opcode;
      _zz_7 <= factory_rsp_payload_fragment_data;
    end
    logic_harts_0_timerInterrupt <= (! _zz_9[63]);
    case(io_bus_cmd_payload_fragment_address)
      16'hbff8 : begin
      end
      16'hbffc : begin
      end
      16'h4000 : begin
        if(factory_doWrite)begin
          logic_harts_0_cmp[31 : 0] <= _zz_11;
        end
      end
      16'h4004 : begin
        if(factory_doWrite)begin
          logic_harts_0_cmp[63 : 32] <= _zz_13;
        end
      end
      16'h0 : begin
      end
      default : begin
      end
    endcase
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
  output              dBus_cmd_payload_last,
  input               dBus_rsp_valid,
  input      [2:0]    dBus_rsp_payload_aggregated,
  input               dBus_rsp_payload_last,
  input      [63:0]   dBus_rsp_payload_data,
  input               dBus_rsp_payload_error,
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
  input      [63:0]   iBus_rsp_payload_data,
  input               iBus_rsp_payload_error,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset,
  input               debugCd_logic_outputReset
);
  wire                _zz_169;
  wire                _zz_170;
  wire                _zz_171;
  wire                _zz_172;
  wire                _zz_173;
  wire                _zz_174;
  wire                _zz_175;
  wire                _zz_176;
  reg                 _zz_177;
  reg                 _zz_178;
  reg        [31:0]   _zz_179;
  reg                 _zz_180;
  reg        [31:0]   _zz_181;
  reg        [1:0]    _zz_182;
  reg                 _zz_183;
  reg                 _zz_184;
  wire                _zz_185;
  wire       [2:0]    _zz_186;
  reg                 _zz_187;
  reg                 _zz_188;
  reg                 _zz_189;
  wire                _zz_190;
  wire       [31:0]   _zz_191;
  wire                _zz_192;
  wire                _zz_193;
  wire                _zz_194;
  wire                _zz_195;
  wire                _zz_196;
  wire                _zz_197;
  wire                _zz_198;
  wire                _zz_199;
  wire       [3:0]    _zz_200;
  wire                _zz_201;
  wire                _zz_202;
  wire       [31:0]   _zz_203;
  wire       [31:0]   _zz_204;
  reg                 _zz_205;
  reg                 _zz_206;
  reg                 _zz_207;
  reg        [9:0]    _zz_208;
  reg        [9:0]    _zz_209;
  reg        [9:0]    _zz_210;
  reg        [9:0]    _zz_211;
  reg                 _zz_212;
  reg                 _zz_213;
  reg                 _zz_214;
  reg                 _zz_215;
  reg                 _zz_216;
  reg                 _zz_217;
  reg                 _zz_218;
  reg        [9:0]    _zz_219;
  reg        [9:0]    _zz_220;
  reg        [9:0]    _zz_221;
  reg        [9:0]    _zz_222;
  reg                 _zz_223;
  reg                 _zz_224;
  reg                 _zz_225;
  reg                 _zz_226;
  reg        [31:0]   _zz_227;
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
  wire                dataCache_1_io_mem_cmd_payload_last;
  wire                _zz_228;
  wire                _zz_229;
  wire                _zz_230;
  wire                _zz_231;
  wire                _zz_232;
  wire                _zz_233;
  wire                _zz_234;
  wire                _zz_235;
  wire                _zz_236;
  wire                _zz_237;
  wire                _zz_238;
  wire                _zz_239;
  wire                _zz_240;
  wire                _zz_241;
  wire                _zz_242;
  wire                _zz_243;
  wire                _zz_244;
  wire                _zz_245;
  wire       [1:0]    _zz_246;
  wire                _zz_247;
  wire                _zz_248;
  wire                _zz_249;
  wire                _zz_250;
  wire                _zz_251;
  wire                _zz_252;
  wire                _zz_253;
  wire                _zz_254;
  wire                _zz_255;
  wire                _zz_256;
  wire                _zz_257;
  wire                _zz_258;
  wire       [1:0]    _zz_259;
  wire                _zz_260;
  wire                _zz_261;
  wire                _zz_262;
  wire                _zz_263;
  wire       [5:0]    _zz_264;
  wire                _zz_265;
  wire                _zz_266;
  wire                _zz_267;
  wire                _zz_268;
  wire                _zz_269;
  wire                _zz_270;
  wire                _zz_271;
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
  wire                _zz_285;
  wire       [1:0]    _zz_286;
  wire       [1:0]    _zz_287;
  wire                _zz_288;
  wire       [51:0]   _zz_289;
  wire       [51:0]   _zz_290;
  wire       [51:0]   _zz_291;
  wire       [32:0]   _zz_292;
  wire       [51:0]   _zz_293;
  wire       [49:0]   _zz_294;
  wire       [51:0]   _zz_295;
  wire       [49:0]   _zz_296;
  wire       [51:0]   _zz_297;
  wire       [0:0]    _zz_298;
  wire       [0:0]    _zz_299;
  wire       [0:0]    _zz_300;
  wire       [0:0]    _zz_301;
  wire       [0:0]    _zz_302;
  wire       [0:0]    _zz_303;
  wire       [0:0]    _zz_304;
  wire       [0:0]    _zz_305;
  wire       [0:0]    _zz_306;
  wire       [0:0]    _zz_307;
  wire       [0:0]    _zz_308;
  wire       [0:0]    _zz_309;
  wire       [0:0]    _zz_310;
  wire       [0:0]    _zz_311;
  wire       [32:0]   _zz_312;
  wire       [31:0]   _zz_313;
  wire       [32:0]   _zz_314;
  wire       [0:0]    _zz_315;
  wire       [0:0]    _zz_316;
  wire       [0:0]    _zz_317;
  wire       [0:0]    _zz_318;
  wire       [0:0]    _zz_319;
  wire       [0:0]    _zz_320;
  wire       [0:0]    _zz_321;
  wire       [0:0]    _zz_322;
  wire       [1:0]    _zz_323;
  wire       [0:0]    _zz_324;
  wire       [1:0]    _zz_325;
  wire       [0:0]    _zz_326;
  wire       [0:0]    _zz_327;
  wire       [0:0]    _zz_328;
  wire       [0:0]    _zz_329;
  wire       [0:0]    _zz_330;
  wire       [0:0]    _zz_331;
  wire       [0:0]    _zz_332;
  wire       [0:0]    _zz_333;
  wire       [1:0]    _zz_334;
  wire       [3:0]    _zz_335;
  wire       [2:0]    _zz_336;
  wire       [31:0]   _zz_337;
  wire       [2:0]    _zz_338;
  wire       [2:0]    _zz_339;
  wire       [0:0]    _zz_340;
  wire       [2:0]    _zz_341;
  wire       [4:0]    _zz_342;
  wire       [11:0]   _zz_343;
  wire       [11:0]   _zz_344;
  wire       [31:0]   _zz_345;
  wire       [31:0]   _zz_346;
  wire       [31:0]   _zz_347;
  wire       [31:0]   _zz_348;
  wire       [31:0]   _zz_349;
  wire       [31:0]   _zz_350;
  wire       [31:0]   _zz_351;
  wire       [65:0]   _zz_352;
  wire       [65:0]   _zz_353;
  wire       [31:0]   _zz_354;
  wire       [31:0]   _zz_355;
  wire       [0:0]    _zz_356;
  wire       [5:0]    _zz_357;
  wire       [32:0]   _zz_358;
  wire       [31:0]   _zz_359;
  wire       [31:0]   _zz_360;
  wire       [32:0]   _zz_361;
  wire       [32:0]   _zz_362;
  wire       [32:0]   _zz_363;
  wire       [32:0]   _zz_364;
  wire       [0:0]    _zz_365;
  wire       [32:0]   _zz_366;
  wire       [0:0]    _zz_367;
  wire       [32:0]   _zz_368;
  wire       [0:0]    _zz_369;
  wire       [31:0]   _zz_370;
  wire       [1:0]    _zz_371;
  wire       [1:0]    _zz_372;
  wire       [1:0]    _zz_373;
  wire       [1:0]    _zz_374;
  wire       [19:0]   _zz_375;
  wire       [11:0]   _zz_376;
  wire       [11:0]   _zz_377;
  wire       [0:0]    _zz_378;
  wire       [0:0]    _zz_379;
  wire       [0:0]    _zz_380;
  wire       [0:0]    _zz_381;
  wire       [0:0]    _zz_382;
  wire       [0:0]    _zz_383;
  wire       [0:0]    _zz_384;
  wire       [0:0]    _zz_385;
  wire       [0:0]    _zz_386;
  wire       [0:0]    _zz_387;
  wire       [0:0]    _zz_388;
  wire       [0:0]    _zz_389;
  wire       [0:0]    _zz_390;
  wire       [0:0]    _zz_391;
  wire       [0:0]    _zz_392;
  wire       [0:0]    _zz_393;
  wire       [0:0]    _zz_394;
  wire       [0:0]    _zz_395;
  wire       [0:0]    _zz_396;
  wire       [0:0]    _zz_397;
  wire       [0:0]    _zz_398;
  wire       [0:0]    _zz_399;
  wire       [0:0]    _zz_400;
  wire       [0:0]    _zz_401;
  wire       [0:0]    _zz_402;
  wire       [0:0]    _zz_403;
  wire       [0:0]    _zz_404;
  wire       [0:0]    _zz_405;
  wire       [0:0]    _zz_406;
  wire       [0:0]    _zz_407;
  wire       [0:0]    _zz_408;
  wire       [0:0]    _zz_409;
  wire       [0:0]    _zz_410;
  wire       [0:0]    _zz_411;
  wire       [0:0]    _zz_412;
  wire       [0:0]    _zz_413;
  wire       [0:0]    _zz_414;
  wire       [0:0]    _zz_415;
  wire       [0:0]    _zz_416;
  wire       [0:0]    _zz_417;
  wire       [0:0]    _zz_418;
  wire       [0:0]    _zz_419;
  wire       [0:0]    _zz_420;
  wire       [0:0]    _zz_421;
  wire       [0:0]    _zz_422;
  wire       [1:0]    _zz_423;
  wire       [31:0]   _zz_424;
  wire       [31:0]   _zz_425;
  wire       [31:0]   _zz_426;
  wire                _zz_427;
  wire       [0:0]    _zz_428;
  wire       [17:0]   _zz_429;
  wire       [31:0]   _zz_430;
  wire       [31:0]   _zz_431;
  wire       [31:0]   _zz_432;
  wire                _zz_433;
  wire       [0:0]    _zz_434;
  wire       [11:0]   _zz_435;
  wire       [31:0]   _zz_436;
  wire       [31:0]   _zz_437;
  wire       [31:0]   _zz_438;
  wire                _zz_439;
  wire       [0:0]    _zz_440;
  wire       [5:0]    _zz_441;
  wire       [31:0]   _zz_442;
  wire       [31:0]   _zz_443;
  wire       [31:0]   _zz_444;
  wire                _zz_445;
  wire                _zz_446;
  wire       [31:0]   _zz_447;
  wire                _zz_448;
  wire                _zz_449;
  wire       [1:0]    _zz_450;
  wire       [1:0]    _zz_451;
  wire                _zz_452;
  wire       [0:0]    _zz_453;
  wire       [29:0]   _zz_454;
  wire       [31:0]   _zz_455;
  wire       [31:0]   _zz_456;
  wire       [31:0]   _zz_457;
  wire       [31:0]   _zz_458;
  wire       [31:0]   _zz_459;
  wire       [31:0]   _zz_460;
  wire       [0:0]    _zz_461;
  wire       [0:0]    _zz_462;
  wire       [0:0]    _zz_463;
  wire       [0:0]    _zz_464;
  wire                _zz_465;
  wire       [0:0]    _zz_466;
  wire       [26:0]   _zz_467;
  wire       [31:0]   _zz_468;
  wire       [31:0]   _zz_469;
  wire                _zz_470;
  wire       [1:0]    _zz_471;
  wire       [1:0]    _zz_472;
  wire                _zz_473;
  wire       [0:0]    _zz_474;
  wire       [22:0]   _zz_475;
  wire       [31:0]   _zz_476;
  wire       [31:0]   _zz_477;
  wire       [31:0]   _zz_478;
  wire       [31:0]   _zz_479;
  wire                _zz_480;
  wire       [0:0]    _zz_481;
  wire       [0:0]    _zz_482;
  wire                _zz_483;
  wire       [0:0]    _zz_484;
  wire       [0:0]    _zz_485;
  wire                _zz_486;
  wire       [0:0]    _zz_487;
  wire       [19:0]   _zz_488;
  wire       [31:0]   _zz_489;
  wire       [31:0]   _zz_490;
  wire       [31:0]   _zz_491;
  wire                _zz_492;
  wire                _zz_493;
  wire                _zz_494;
  wire       [0:0]    _zz_495;
  wire       [0:0]    _zz_496;
  wire                _zz_497;
  wire       [0:0]    _zz_498;
  wire       [16:0]   _zz_499;
  wire       [31:0]   _zz_500;
  wire                _zz_501;
  wire       [0:0]    _zz_502;
  wire       [1:0]    _zz_503;
  wire                _zz_504;
  wire       [0:0]    _zz_505;
  wire       [0:0]    _zz_506;
  wire                _zz_507;
  wire       [0:0]    _zz_508;
  wire       [13:0]   _zz_509;
  wire       [31:0]   _zz_510;
  wire       [31:0]   _zz_511;
  wire       [31:0]   _zz_512;
  wire       [31:0]   _zz_513;
  wire       [31:0]   _zz_514;
  wire       [31:0]   _zz_515;
  wire                _zz_516;
  wire       [0:0]    _zz_517;
  wire       [3:0]    _zz_518;
  wire       [0:0]    _zz_519;
  wire       [1:0]    _zz_520;
  wire       [4:0]    _zz_521;
  wire       [4:0]    _zz_522;
  wire                _zz_523;
  wire       [0:0]    _zz_524;
  wire       [10:0]   _zz_525;
  wire       [31:0]   _zz_526;
  wire       [31:0]   _zz_527;
  wire       [31:0]   _zz_528;
  wire                _zz_529;
  wire       [0:0]    _zz_530;
  wire       [1:0]    _zz_531;
  wire       [31:0]   _zz_532;
  wire       [31:0]   _zz_533;
  wire                _zz_534;
  wire                _zz_535;
  wire                _zz_536;
  wire       [0:0]    _zz_537;
  wire       [2:0]    _zz_538;
  wire       [0:0]    _zz_539;
  wire       [1:0]    _zz_540;
  wire       [6:0]    _zz_541;
  wire       [6:0]    _zz_542;
  wire                _zz_543;
  wire       [0:0]    _zz_544;
  wire       [8:0]    _zz_545;
  wire       [31:0]   _zz_546;
  wire       [31:0]   _zz_547;
  wire       [31:0]   _zz_548;
  wire                _zz_549;
  wire                _zz_550;
  wire       [31:0]   _zz_551;
  wire       [31:0]   _zz_552;
  wire       [31:0]   _zz_553;
  wire       [31:0]   _zz_554;
  wire       [31:0]   _zz_555;
  wire       [0:0]    _zz_556;
  wire       [0:0]    _zz_557;
  wire                _zz_558;
  wire       [0:0]    _zz_559;
  wire       [4:0]    _zz_560;
  wire       [0:0]    _zz_561;
  wire       [0:0]    _zz_562;
  wire       [1:0]    _zz_563;
  wire       [1:0]    _zz_564;
  wire                _zz_565;
  wire       [0:0]    _zz_566;
  wire       [6:0]    _zz_567;
  wire       [31:0]   _zz_568;
  wire       [31:0]   _zz_569;
  wire       [31:0]   _zz_570;
  wire       [31:0]   _zz_571;
  wire       [31:0]   _zz_572;
  wire       [31:0]   _zz_573;
  wire       [31:0]   _zz_574;
  wire                _zz_575;
  wire       [0:0]    _zz_576;
  wire       [2:0]    _zz_577;
  wire       [31:0]   _zz_578;
  wire       [31:0]   _zz_579;
  wire                _zz_580;
  wire                _zz_581;
  wire       [0:0]    _zz_582;
  wire       [0:0]    _zz_583;
  wire                _zz_584;
  wire       [0:0]    _zz_585;
  wire       [4:0]    _zz_586;
  wire       [31:0]   _zz_587;
  wire       [31:0]   _zz_588;
  wire       [31:0]   _zz_589;
  wire                _zz_590;
  wire       [0:0]    _zz_591;
  wire       [0:0]    _zz_592;
  wire       [31:0]   _zz_593;
  wire       [31:0]   _zz_594;
  wire       [31:0]   _zz_595;
  wire       [31:0]   _zz_596;
  wire       [0:0]    _zz_597;
  wire       [3:0]    _zz_598;
  wire       [1:0]    _zz_599;
  wire       [1:0]    _zz_600;
  wire                _zz_601;
  wire       [0:0]    _zz_602;
  wire       [2:0]    _zz_603;
  wire       [31:0]   _zz_604;
  wire       [31:0]   _zz_605;
  wire       [31:0]   _zz_606;
  wire       [31:0]   _zz_607;
  wire       [31:0]   _zz_608;
  wire                _zz_609;
  wire       [0:0]    _zz_610;
  wire       [1:0]    _zz_611;
  wire                _zz_612;
  wire       [0:0]    _zz_613;
  wire       [1:0]    _zz_614;
  wire       [2:0]    _zz_615;
  wire       [2:0]    _zz_616;
  wire                _zz_617;
  wire       [0:0]    _zz_618;
  wire       [0:0]    _zz_619;
  wire       [31:0]   _zz_620;
  wire       [31:0]   _zz_621;
  wire       [31:0]   _zz_622;
  wire                _zz_623;
  wire       [31:0]   _zz_624;
  wire       [31:0]   _zz_625;
  wire       [31:0]   _zz_626;
  wire                _zz_627;
  wire                _zz_628;
  wire       [0:0]    _zz_629;
  wire       [0:0]    _zz_630;
  wire       [0:0]    _zz_631;
  wire       [0:0]    _zz_632;
  wire       [0:0]    _zz_633;
  wire       [0:0]    _zz_634;
  wire       [0:0]    _zz_635;
  wire       [0:0]    _zz_636;
  wire       [31:0]   _zz_637;
  wire       [31:0]   _zz_638;
  wire       [31:0]   _zz_639;
  wire       [31:0]   _zz_640;
  wire       [51:0]   memory_MUL_LOW;
  wire       [33:0]   memory_MUL_HH;
  wire       [33:0]   execute_MUL_HH;
  wire       [33:0]   execute_MUL_HL;
  wire       [33:0]   execute_MUL_LH;
  wire       [31:0]   execute_MUL_LL;
  wire       [31:0]   memory_REGFILE_WRITE_DATA;
  wire       [31:0]   execute_REGFILE_WRITE_DATA;
  wire       [31:0]   execute_MEMORY_VIRTUAL_ADDRESS;
  wire       [1:0]    memory_MEMORY_ADDRESS_LOW;
  wire       [1:0]    execute_MEMORY_ADDRESS_LOW;
  wire                decode_DO_EBREAK;
  wire                decode_CSR_READ_OPCODE;
  wire                decode_CSR_WRITE_OPCODE;
  wire       [31:0]   decode_SRC2;
  wire       [31:0]   decode_SRC1;
  wire                decode_SRC2_FORCE_ZERO;
  wire       `BranchCtrlEnum_defaultEncoding_type decode_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_1;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_2;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_3;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_4;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_5;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_6;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_7;
  wire       `EnvCtrlEnum_defaultEncoding_type decode_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_8;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_9;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_10;
  wire                decode_IS_CSR;
  wire                decode_IS_RS2_SIGNED;
  wire                decode_IS_RS1_SIGNED;
  wire                decode_IS_DIV;
  wire                memory_IS_MUL;
  wire                execute_IS_MUL;
  wire                decode_IS_MUL;
  wire       `ShiftCtrlEnum_defaultEncoding_type decode_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_11;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_12;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_13;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type decode_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_14;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_15;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_16;
  wire                decode_SRC_LESS_UNSIGNED;
  wire                decode_MEMORY_MANAGMENT;
  wire                memory_MEMORY_WR;
  wire                decode_MEMORY_WR;
  wire                execute_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_EXECUTE_STAGE;
  wire       `AluCtrlEnum_defaultEncoding_type decode_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_17;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_18;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_19;
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
  wire       [31:0]   execute_BRANCH_CALC;
  wire                execute_BRANCH_DO;
  wire       [31:0]   execute_PC;
  wire       `BranchCtrlEnum_defaultEncoding_type execute_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_20;
  wire                execute_CSR_READ_OPCODE;
  wire                execute_CSR_WRITE_OPCODE;
  wire                execute_IS_CSR;
  wire       `EnvCtrlEnum_defaultEncoding_type memory_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_21;
  wire       `EnvCtrlEnum_defaultEncoding_type execute_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_22;
  wire       `EnvCtrlEnum_defaultEncoding_type writeBack_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_23;
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
  wire                execute_REGFILE_WRITE_VALID;
  wire                execute_BYPASSABLE_EXECUTE_STAGE;
  reg        [31:0]   _zz_24;
  wire                memory_REGFILE_WRITE_VALID;
  wire       [31:0]   memory_INSTRUCTION;
  wire                memory_BYPASSABLE_MEMORY_STAGE;
  wire                writeBack_REGFILE_WRITE_VALID;
  reg        [31:0]   decode_RS2;
  reg        [31:0]   decode_RS1;
  wire       [31:0]   execute_SHIFT_RIGHT;
  reg        [31:0]   _zz_25;
  wire       `ShiftCtrlEnum_defaultEncoding_type execute_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_26;
  wire                execute_SRC_LESS_UNSIGNED;
  wire                execute_SRC2_FORCE_ZERO;
  wire                execute_SRC_USE_SUB_LESS;
  wire       [31:0]   _zz_27;
  wire       [31:0]   _zz_28;
  wire       `Src2CtrlEnum_defaultEncoding_type decode_SRC2_CTRL;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_29;
  wire       [31:0]   _zz_30;
  wire       `Src1CtrlEnum_defaultEncoding_type decode_SRC1_CTRL;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_31;
  wire                decode_SRC_USE_SUB_LESS;
  wire                decode_SRC_ADD_ZERO;
  wire       [31:0]   execute_SRC_ADD_SUB;
  wire                execute_SRC_LESS;
  wire       `AluCtrlEnum_defaultEncoding_type execute_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_32;
  wire       [31:0]   execute_SRC2;
  wire       [31:0]   execute_SRC1;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type execute_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_33;
  wire       [31:0]   _zz_34;
  wire                _zz_35;
  reg                 _zz_36;
  reg                 decode_REGFILE_WRITE_VALID;
  wire                decode_LEGAL_INSTRUCTION;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_37;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_38;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_39;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_40;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_41;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_42;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_43;
  wire                writeBack_IS_DBUS_SHARING;
  wire                execute_IS_DBUS_SHARING;
  wire                memory_IS_DBUS_SHARING;
  reg        [31:0]   _zz_44;
  wire       [1:0]    writeBack_MEMORY_ADDRESS_LOW;
  wire                writeBack_MEMORY_WR;
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
  reg                 _zz_45;
  wire                decode_MEMORY_ENABLE;
  wire                decode_FLUSH_ALL;
  reg                 _zz_46;
  reg                 _zz_46_2;
  reg                 _zz_46_1;
  reg                 _zz_46_0;
  wire       [31:0]   decode_INSTRUCTION;
  reg        [31:0]   _zz_47;
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
  wire                memory_arbitration_haltByOther;
  reg                 memory_arbitration_removeIt;
  wire                memory_arbitration_flushIt;
  wire                memory_arbitration_flushNext;
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
  reg                 _zz_48;
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
  reg                 BranchPlugin_branchExceptionPort_valid;
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
  reg                 MmuPlugin_ports_0_dirty;
  reg                 MmuPlugin_ports_0_requireMmuLockupCalc;
  reg        [3:0]    MmuPlugin_ports_0_cacheHitsCalc;
  reg                 MmuPlugin_ports_0_requireMmuLockup;
  reg        [3:0]    MmuPlugin_ports_0_cacheHits;
  wire                MmuPlugin_ports_0_cacheHit;
  wire                _zz_49;
  wire                _zz_50;
  wire                _zz_51;
  wire       [1:0]    _zz_52;
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
  reg                 MmuPlugin_ports_1_dirty;
  reg                 MmuPlugin_ports_1_requireMmuLockupCalc;
  reg        [3:0]    MmuPlugin_ports_1_cacheHitsCalc;
  reg                 MmuPlugin_ports_1_requireMmuLockup;
  reg        [3:0]    MmuPlugin_ports_1_cacheHits;
  wire                MmuPlugin_ports_1_cacheHit;
  wire                _zz_53;
  wire                _zz_54;
  wire                _zz_55;
  wire       [1:0]    _zz_56;
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
  reg        [1:0]    _zz_57;
  wire       [1:0]    _zz_58;
  reg        [1:0]    _zz_59;
  wire       [1:0]    MmuPlugin_shared_refills;
  wire       [1:0]    _zz_60;
  reg        [1:0]    _zz_61;
  wire       [31:0]   _zz_62;
  wire                IBusCachedPlugin_externalFlush;
  wire                IBusCachedPlugin_jump_pcLoad_valid;
  wire       [31:0]   IBusCachedPlugin_jump_pcLoad_payload;
  wire       [3:0]    _zz_63;
  wire       [3:0]    _zz_64;
  wire                _zz_65;
  wire                _zz_66;
  wire                _zz_67;
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
  reg                 IBusCachedPlugin_iBusRsp_stages_0_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_output_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_1_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_2_halt;
  wire                _zz_68;
  wire                _zz_69;
  wire                _zz_70;
  wire                IBusCachedPlugin_iBusRsp_flush;
  wire                _zz_71;
  wire                _zz_72;
  reg                 _zz_73;
  wire                _zz_74;
  reg                 _zz_75;
  reg        [31:0]   _zz_76;
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
  wire       [31:0]   _zz_77;
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
  wire                dataCache_1_io_mem_cmd_s2mPipe_payload_last;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rValid;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rData_wr;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rData_uncached;
  reg        [31:0]   dataCache_1_io_mem_cmd_s2mPipe_rData_address;
  reg        [31:0]   dataCache_1_io_mem_cmd_s2mPipe_rData_data;
  reg        [3:0]    dataCache_1_io_mem_cmd_s2mPipe_rData_mask;
  reg        [3:0]    dataCache_1_io_mem_cmd_s2mPipe_rData_length;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rData_last;
  reg                 dBus_rsp_regNext_valid;
  reg        [2:0]    dBus_rsp_regNext_payload_aggregated;
  reg                 dBus_rsp_regNext_payload_last;
  reg        [63:0]   dBus_rsp_regNext_payload_data;
  reg                 dBus_rsp_regNext_payload_error;
  wire       [31:0]   _zz_78;
  reg        [31:0]   DBusCachedPlugin_rspCounter;
  wire       [1:0]    execute_DBusCachedPlugin_size;
  reg        [31:0]   _zz_79;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspShifted;
  wire                _zz_80;
  reg        [31:0]   _zz_81;
  wire                _zz_82;
  reg        [31:0]   _zz_83;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspFormated;
  reg                 DBusCachedPlugin_forceDatapath;
  wire       [35:0]   _zz_84;
  wire                _zz_85;
  wire                _zz_86;
  wire                _zz_87;
  wire                _zz_88;
  wire                _zz_89;
  wire                _zz_90;
  wire                _zz_91;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_92;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_93;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_94;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_95;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_96;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_97;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_98;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress1;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress2;
  wire       [31:0]   decode_RegFilePlugin_rs1Data;
  wire       [31:0]   decode_RegFilePlugin_rs2Data;
  reg                 lastStageRegFileWrite_valid /* verilator public */ ;
  wire       [4:0]    lastStageRegFileWrite_payload_address /* verilator public */ ;
  wire       [31:0]   lastStageRegFileWrite_payload_data /* verilator public */ ;
  reg        [31:0]   execute_IntAluPlugin_bitwise;
  reg        [31:0]   _zz_99;
  reg        [31:0]   _zz_100;
  wire                _zz_101;
  reg        [19:0]   _zz_102;
  wire                _zz_103;
  reg        [19:0]   _zz_104;
  reg        [31:0]   _zz_105;
  reg        [31:0]   execute_SrcPlugin_addSub;
  wire                execute_SrcPlugin_less;
  wire       [4:0]    execute_FullBarrelShifterPlugin_amplitude;
  reg        [31:0]   _zz_106;
  wire       [31:0]   execute_FullBarrelShifterPlugin_reversed;
  reg        [31:0]   _zz_107;
  reg                 _zz_108;
  reg                 _zz_109;
  reg                 _zz_110;
  reg        [4:0]    _zz_111;
  reg        [31:0]   _zz_112;
  wire                _zz_113;
  wire                _zz_114;
  wire                _zz_115;
  wire                _zz_116;
  wire                _zz_117;
  wire                _zz_118;
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
  wire       [31:0]   _zz_119;
  wire       [32:0]   memory_MulDivIterativePlugin_div_stage_0_remainderShifted;
  wire       [32:0]   memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator;
  wire       [31:0]   memory_MulDivIterativePlugin_div_stage_0_outRemainder;
  wire       [31:0]   memory_MulDivIterativePlugin_div_stage_0_outNumerator;
  wire       [31:0]   _zz_120;
  wire                _zz_121;
  wire                _zz_122;
  reg        [32:0]   _zz_123;
  reg        [1:0]    _zz_124;
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
  wire                _zz_125;
  wire                _zz_126;
  wire                _zz_127;
  wire                _zz_128;
  wire                _zz_129;
  wire                _zz_130;
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
  wire       [1:0]    _zz_131;
  wire                _zz_132;
  wire       [1:0]    _zz_133;
  wire                _zz_134;
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
  wire       [2:0]    _zz_135;
  reg                 _zz_136;
  reg                 _zz_137;
  wire       [31:0]   execute_BranchPlugin_branch_src1;
  wire                _zz_138;
  reg        [10:0]   _zz_139;
  wire                _zz_140;
  reg        [19:0]   _zz_141;
  wire                _zz_142;
  reg        [18:0]   _zz_143;
  reg        [31:0]   _zz_144;
  wire       [31:0]   execute_BranchPlugin_branch_src2;
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
  reg                 _zz_145;
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
  reg                 decode_to_execute_MEMORY_AMO;
  reg                 decode_to_execute_MEMORY_MANAGMENT;
  reg                 decode_to_execute_SRC_LESS_UNSIGNED;
  reg        `AluBitwiseCtrlEnum_defaultEncoding_type decode_to_execute_ALU_BITWISE_CTRL;
  reg        `ShiftCtrlEnum_defaultEncoding_type decode_to_execute_SHIFT_CTRL;
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
  reg                 decode_to_execute_DO_EBREAK;
  reg        [1:0]    execute_to_memory_MEMORY_ADDRESS_LOW;
  reg        [1:0]    memory_to_writeBack_MEMORY_ADDRESS_LOW;
  (* keep , syn_keep *) reg        [31:0]   execute_to_memory_MEMORY_VIRTUAL_ADDRESS /* synthesis syn_keep = 1 */ ;
  reg                 execute_to_memory_IS_DBUS_SHARING;
  reg                 memory_to_writeBack_IS_DBUS_SHARING;
  reg        [31:0]   execute_to_memory_REGFILE_WRITE_DATA;
  reg        [31:0]   memory_to_writeBack_REGFILE_WRITE_DATA;
  reg        [31:0]   execute_to_memory_MUL_LL;
  reg        [33:0]   execute_to_memory_MUL_LH;
  reg        [33:0]   execute_to_memory_MUL_HL;
  reg        [33:0]   execute_to_memory_MUL_HH;
  reg        [33:0]   memory_to_writeBack_MUL_HH;
  reg        [51:0]   memory_to_writeBack_MUL_LOW;
  reg        [2:0]    _zz_146;
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
  reg        [31:0]   _zz_147;
  reg        [31:0]   _zz_148;
  reg        [31:0]   _zz_149;
  reg        [31:0]   _zz_150;
  reg        [31:0]   _zz_151;
  reg        [31:0]   _zz_152;
  reg        [31:0]   _zz_153;
  reg        [31:0]   _zz_154;
  reg        [31:0]   _zz_155;
  reg        [31:0]   _zz_156;
  reg        [31:0]   _zz_157;
  reg        [31:0]   _zz_158;
  reg        [31:0]   _zz_159;
  reg        [31:0]   _zz_160;
  reg        [31:0]   _zz_161;
  reg        [31:0]   _zz_162;
  reg        [31:0]   _zz_163;
  reg        [31:0]   _zz_164;
  reg        [31:0]   _zz_165;
  reg        [31:0]   _zz_166;
  reg        [31:0]   _zz_167;
  reg        [31:0]   _zz_168;
  `ifndef SYNTHESIS
  reg [31:0] decode_BRANCH_CTRL_string;
  reg [31:0] _zz_1_string;
  reg [31:0] _zz_2_string;
  reg [31:0] _zz_3_string;
  reg [39:0] _zz_4_string;
  reg [39:0] _zz_5_string;
  reg [39:0] _zz_6_string;
  reg [39:0] _zz_7_string;
  reg [39:0] decode_ENV_CTRL_string;
  reg [39:0] _zz_8_string;
  reg [39:0] _zz_9_string;
  reg [39:0] _zz_10_string;
  reg [71:0] decode_SHIFT_CTRL_string;
  reg [71:0] _zz_11_string;
  reg [71:0] _zz_12_string;
  reg [71:0] _zz_13_string;
  reg [39:0] decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_14_string;
  reg [39:0] _zz_15_string;
  reg [39:0] _zz_16_string;
  reg [63:0] decode_ALU_CTRL_string;
  reg [63:0] _zz_17_string;
  reg [63:0] _zz_18_string;
  reg [63:0] _zz_19_string;
  reg [31:0] execute_BRANCH_CTRL_string;
  reg [31:0] _zz_20_string;
  reg [39:0] memory_ENV_CTRL_string;
  reg [39:0] _zz_21_string;
  reg [39:0] execute_ENV_CTRL_string;
  reg [39:0] _zz_22_string;
  reg [39:0] writeBack_ENV_CTRL_string;
  reg [39:0] _zz_23_string;
  reg [71:0] execute_SHIFT_CTRL_string;
  reg [71:0] _zz_26_string;
  reg [23:0] decode_SRC2_CTRL_string;
  reg [23:0] _zz_29_string;
  reg [95:0] decode_SRC1_CTRL_string;
  reg [95:0] _zz_31_string;
  reg [63:0] execute_ALU_CTRL_string;
  reg [63:0] _zz_32_string;
  reg [39:0] execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_33_string;
  reg [31:0] _zz_37_string;
  reg [39:0] _zz_38_string;
  reg [71:0] _zz_39_string;
  reg [39:0] _zz_40_string;
  reg [23:0] _zz_41_string;
  reg [63:0] _zz_42_string;
  reg [95:0] _zz_43_string;
  reg [47:0] MmuPlugin_shared_state_1_string;
  reg [95:0] _zz_92_string;
  reg [63:0] _zz_93_string;
  reg [23:0] _zz_94_string;
  reg [39:0] _zz_95_string;
  reg [71:0] _zz_96_string;
  reg [39:0] _zz_97_string;
  reg [31:0] _zz_98_string;
  reg [63:0] decode_to_execute_ALU_CTRL_string;
  reg [39:0] decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [71:0] decode_to_execute_SHIFT_CTRL_string;
  reg [39:0] decode_to_execute_ENV_CTRL_string;
  reg [39:0] execute_to_memory_ENV_CTRL_string;
  reg [39:0] memory_to_writeBack_ENV_CTRL_string;
  reg [31:0] decode_to_execute_BRANCH_CTRL_string;
  `endif

  (* ram_style = "distributed" *) reg [31:0] RegFilePlugin_regFile [0:31] /* verilator public */ ;

  assign _zz_228 = (memory_arbitration_isValid && memory_IS_DIV);
  assign _zz_229 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign _zz_230 = 1'b1;
  assign _zz_231 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_232 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_233 = (execute_arbitration_isValid && execute_IS_CSR);
  assign _zz_234 = ((_zz_174 && IBusCachedPlugin_cache_io_cpu_decode_error) && (! _zz_46_2));
  assign _zz_235 = ((_zz_174 && IBusCachedPlugin_cache_io_cpu_decode_cacheMiss) && (! _zz_46_1));
  assign _zz_236 = ((_zz_174 && IBusCachedPlugin_cache_io_cpu_decode_mmuException) && (! _zz_46_0));
  assign _zz_237 = ((_zz_174 && IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling) && (! IBusCachedPlugin_rsp_issueDetected));
  assign _zz_238 = ({decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid} != 2'b00);
  assign _zz_239 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_WFI));
  assign _zz_240 = (execute_arbitration_isValid && execute_DO_EBREAK);
  assign _zz_241 = ({BranchPlugin_branchExceptionPort_valid,CsrPlugin_selfException_valid} != 2'b00);
  assign _zz_242 = (({writeBack_arbitration_isValid,memory_arbitration_isValid} != 2'b00) == 1'b0);
  assign _zz_243 = (CsrPlugin_hadException || CsrPlugin_interruptJump);
  assign _zz_244 = (writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET));
  assign _zz_245 = (DebugPlugin_stepIt && IBusCachedPlugin_incomingInstruction);
  assign _zz_246 = writeBack_INSTRUCTION[29 : 28];
  assign _zz_247 = ((MmuPlugin_shared_dBusRspStaged_valid && (! MmuPlugin_shared_dBusRspStaged_payload_redo)) && (MmuPlugin_shared_dBusRsp_leaf || MmuPlugin_shared_dBusRsp_exception));
  assign _zz_248 = MmuPlugin_shared_portSortedOh[0];
  assign _zz_249 = MmuPlugin_shared_portSortedOh[1];
  assign _zz_250 = (! ({(writeBack_arbitration_isValid || CsrPlugin_exceptionPendings_3),{(memory_arbitration_isValid || CsrPlugin_exceptionPendings_2),(execute_arbitration_isValid || CsrPlugin_exceptionPendings_1)}} != 3'b000));
  assign _zz_251 = (! dataCache_1_io_cpu_redo);
  assign _zz_252 = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign _zz_253 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign _zz_254 = (1'b0 || (! 1'b1));
  assign _zz_255 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_256 = (1'b0 || (! memory_BYPASSABLE_MEMORY_STAGE));
  assign _zz_257 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_258 = (1'b0 || (! execute_BYPASSABLE_EXECUTE_STAGE));
  assign _zz_259 = execute_INSTRUCTION[13 : 12];
  assign _zz_260 = (memory_MulDivIterativePlugin_frontendOk && (! memory_MulDivIterativePlugin_div_done));
  assign _zz_261 = (! memory_arbitration_isStuck);
  assign _zz_262 = (execute_CsrPlugin_illegalAccess || execute_CsrPlugin_illegalInstruction);
  assign _zz_263 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_ECALL));
  assign _zz_264 = debug_bus_cmd_payload_address[7 : 2];
  assign _zz_265 = (MmuPlugin_shared_refills != 2'b00);
  assign _zz_266 = (MmuPlugin_ports_0_entryToReplace_value == 2'b00);
  assign _zz_267 = (MmuPlugin_ports_0_entryToReplace_value == 2'b01);
  assign _zz_268 = (MmuPlugin_ports_0_entryToReplace_value == 2'b10);
  assign _zz_269 = (MmuPlugin_ports_0_entryToReplace_value == 2'b11);
  assign _zz_270 = (MmuPlugin_ports_1_entryToReplace_value == 2'b00);
  assign _zz_271 = (MmuPlugin_ports_1_entryToReplace_value == 2'b01);
  assign _zz_272 = (MmuPlugin_ports_1_entryToReplace_value == 2'b10);
  assign _zz_273 = (MmuPlugin_ports_1_entryToReplace_value == 2'b11);
  assign _zz_274 = (_zz_202 && (! dataCache_1_io_mem_cmd_s2mPipe_ready));
  assign _zz_275 = ((CsrPlugin_sstatus_SIE && (CsrPlugin_privilege == 2'b01)) || (CsrPlugin_privilege < 2'b01));
  assign _zz_276 = ((_zz_125 && (1'b1 && CsrPlugin_mideleg_ST)) && (! 1'b0));
  assign _zz_277 = ((_zz_126 && (1'b1 && CsrPlugin_mideleg_SS)) && (! 1'b0));
  assign _zz_278 = ((_zz_127 && (1'b1 && CsrPlugin_mideleg_SE)) && (! 1'b0));
  assign _zz_279 = (CsrPlugin_mstatus_MIE || (CsrPlugin_privilege < 2'b11));
  assign _zz_280 = ((_zz_125 && 1'b1) && (! (CsrPlugin_mideleg_ST != 1'b0)));
  assign _zz_281 = ((_zz_126 && 1'b1) && (! (CsrPlugin_mideleg_SS != 1'b0)));
  assign _zz_282 = ((_zz_127 && 1'b1) && (! (CsrPlugin_mideleg_SE != 1'b0)));
  assign _zz_283 = ((_zz_128 && 1'b1) && (! 1'b0));
  assign _zz_284 = ((_zz_129 && 1'b1) && (! 1'b0));
  assign _zz_285 = ((_zz_130 && 1'b1) && (! 1'b0));
  assign _zz_286 = writeBack_INSTRUCTION[13 : 12];
  assign _zz_287 = writeBack_INSTRUCTION[13 : 12];
  assign _zz_288 = execute_INSTRUCTION[13];
  assign _zz_289 = ($signed(_zz_290) + $signed(_zz_295));
  assign _zz_290 = ($signed(_zz_291) + $signed(_zz_293));
  assign _zz_291 = 52'h0;
  assign _zz_292 = {1'b0,memory_MUL_LL};
  assign _zz_293 = {{19{_zz_292[32]}}, _zz_292};
  assign _zz_294 = ({16'd0,memory_MUL_LH} <<< 16);
  assign _zz_295 = {{2{_zz_294[49]}}, _zz_294};
  assign _zz_296 = ({16'd0,memory_MUL_HL} <<< 16);
  assign _zz_297 = {{2{_zz_296[49]}}, _zz_296};
  assign _zz_298 = _zz_84[30 : 30];
  assign _zz_299 = _zz_84[29 : 29];
  assign _zz_300 = _zz_84[28 : 28];
  assign _zz_301 = _zz_84[27 : 27];
  assign _zz_302 = _zz_84[26 : 26];
  assign _zz_303 = _zz_84[21 : 21];
  assign _zz_304 = _zz_84[20 : 20];
  assign _zz_305 = _zz_84[14 : 14];
  assign _zz_306 = _zz_84[13 : 13];
  assign _zz_307 = _zz_84[12 : 12];
  assign _zz_308 = _zz_84[0 : 0];
  assign _zz_309 = _zz_84[35 : 35];
  assign _zz_310 = _zz_84[18 : 18];
  assign _zz_311 = _zz_84[6 : 6];
  assign _zz_312 = ($signed(_zz_314) >>> execute_FullBarrelShifterPlugin_amplitude);
  assign _zz_313 = _zz_312[31 : 0];
  assign _zz_314 = {((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SRA_1) && execute_FullBarrelShifterPlugin_reversed[31]),execute_FullBarrelShifterPlugin_reversed};
  assign _zz_315 = _zz_84[4 : 4];
  assign _zz_316 = _zz_84[19 : 19];
  assign _zz_317 = _zz_84[11 : 11];
  assign _zz_318 = _zz_84[17 : 17];
  assign _zz_319 = _zz_84[16 : 16];
  assign _zz_320 = _zz_84[5 : 5];
  assign _zz_321 = _zz_84[1 : 1];
  assign _zz_322 = MmuPlugin_ports_0_entryToReplace_willIncrement;
  assign _zz_323 = {1'd0, _zz_322};
  assign _zz_324 = MmuPlugin_ports_1_entryToReplace_willIncrement;
  assign _zz_325 = {1'd0, _zz_324};
  assign _zz_326 = MmuPlugin_shared_dBusRspStaged_payload_data[0 : 0];
  assign _zz_327 = MmuPlugin_shared_dBusRspStaged_payload_data[1 : 1];
  assign _zz_328 = MmuPlugin_shared_dBusRspStaged_payload_data[2 : 2];
  assign _zz_329 = MmuPlugin_shared_dBusRspStaged_payload_data[3 : 3];
  assign _zz_330 = MmuPlugin_shared_dBusRspStaged_payload_data[4 : 4];
  assign _zz_331 = MmuPlugin_shared_dBusRspStaged_payload_data[5 : 5];
  assign _zz_332 = MmuPlugin_shared_dBusRspStaged_payload_data[6 : 6];
  assign _zz_333 = MmuPlugin_shared_dBusRspStaged_payload_data[7 : 7];
  assign _zz_334 = (_zz_59 - 2'b01);
  assign _zz_335 = (_zz_63 - 4'b0001);
  assign _zz_336 = {IBusCachedPlugin_fetchPc_inc,2'b00};
  assign _zz_337 = {29'd0, _zz_336};
  assign _zz_338 = (writeBack_MEMORY_WR ? 3'b111 : 3'b101);
  assign _zz_339 = (writeBack_MEMORY_WR ? 3'b110 : 3'b100);
  assign _zz_340 = execute_SRC_LESS;
  assign _zz_341 = 3'b100;
  assign _zz_342 = decode_INSTRUCTION[19 : 15];
  assign _zz_343 = decode_INSTRUCTION[31 : 20];
  assign _zz_344 = {decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]};
  assign _zz_345 = ($signed(_zz_346) + $signed(_zz_349));
  assign _zz_346 = ($signed(_zz_347) + $signed(_zz_348));
  assign _zz_347 = execute_SRC1;
  assign _zz_348 = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign _zz_349 = (execute_SRC_USE_SUB_LESS ? _zz_350 : _zz_351);
  assign _zz_350 = 32'h00000001;
  assign _zz_351 = 32'h0;
  assign _zz_352 = {{14{writeBack_MUL_LOW[51]}}, writeBack_MUL_LOW};
  assign _zz_353 = ({32'd0,writeBack_MUL_HH} <<< 32);
  assign _zz_354 = writeBack_MUL_LOW[31 : 0];
  assign _zz_355 = writeBack_MulPlugin_result[63 : 32];
  assign _zz_356 = memory_MulDivIterativePlugin_div_counter_willIncrement;
  assign _zz_357 = {5'd0, _zz_356};
  assign _zz_358 = {1'd0, memory_MulDivIterativePlugin_rs2};
  assign _zz_359 = memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[31:0];
  assign _zz_360 = memory_MulDivIterativePlugin_div_stage_0_remainderShifted[31:0];
  assign _zz_361 = {_zz_119,(! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32])};
  assign _zz_362 = _zz_363;
  assign _zz_363 = _zz_364;
  assign _zz_364 = ({1'b0,(memory_MulDivIterativePlugin_div_needRevert ? (~ _zz_120) : _zz_120)} + _zz_366);
  assign _zz_365 = memory_MulDivIterativePlugin_div_needRevert;
  assign _zz_366 = {32'd0, _zz_365};
  assign _zz_367 = _zz_122;
  assign _zz_368 = {32'd0, _zz_367};
  assign _zz_369 = _zz_121;
  assign _zz_370 = {31'd0, _zz_369};
  assign _zz_371 = (_zz_131 & (~ _zz_372));
  assign _zz_372 = (_zz_131 - 2'b01);
  assign _zz_373 = (_zz_133 & (~ _zz_374));
  assign _zz_374 = (_zz_133 - 2'b01);
  assign _zz_375 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_376 = execute_INSTRUCTION[31 : 20];
  assign _zz_377 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_378 = execute_CsrPlugin_writeData[19 : 19];
  assign _zz_379 = execute_CsrPlugin_writeData[18 : 18];
  assign _zz_380 = execute_CsrPlugin_writeData[17 : 17];
  assign _zz_381 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_382 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_383 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_384 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_385 = execute_CsrPlugin_writeData[19 : 19];
  assign _zz_386 = execute_CsrPlugin_writeData[18 : 18];
  assign _zz_387 = execute_CsrPlugin_writeData[17 : 17];
  assign _zz_388 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_389 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_390 = execute_CsrPlugin_writeData[31 : 31];
  assign _zz_391 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_392 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_393 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_394 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_395 = execute_CsrPlugin_writeData[11 : 11];
  assign _zz_396 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_397 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_398 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_399 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_400 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_401 = execute_CsrPlugin_writeData[0 : 0];
  assign _zz_402 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_403 = execute_CsrPlugin_writeData[2 : 2];
  assign _zz_404 = execute_CsrPlugin_writeData[4 : 4];
  assign _zz_405 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_406 = execute_CsrPlugin_writeData[6 : 6];
  assign _zz_407 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_408 = execute_CsrPlugin_writeData[8 : 8];
  assign _zz_409 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_410 = execute_CsrPlugin_writeData[12 : 12];
  assign _zz_411 = execute_CsrPlugin_writeData[13 : 13];
  assign _zz_412 = execute_CsrPlugin_writeData[15 : 15];
  assign _zz_413 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_414 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_415 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_416 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_417 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_418 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_419 = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_420 = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_421 = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_422 = execute_CsrPlugin_writeData[31 : 31];
  assign _zz_423 = {_zz_67,_zz_66};
  assign _zz_424 = 32'h0000107f;
  assign _zz_425 = (decode_INSTRUCTION & 32'h0000207f);
  assign _zz_426 = 32'h00002073;
  assign _zz_427 = ((decode_INSTRUCTION & 32'h0000407f) == 32'h00004063);
  assign _zz_428 = ((decode_INSTRUCTION & 32'h0000207f) == 32'h00002013);
  assign _zz_429 = {((decode_INSTRUCTION & 32'h0000603f) == 32'h00000023),{((decode_INSTRUCTION & 32'h0000207f) == 32'h00000003),{((decode_INSTRUCTION & _zz_430) == 32'h00000003),{(_zz_431 == _zz_432),{_zz_433,{_zz_434,_zz_435}}}}}};
  assign _zz_430 = 32'h0000505f;
  assign _zz_431 = (decode_INSTRUCTION & 32'h0000707b);
  assign _zz_432 = 32'h00000063;
  assign _zz_433 = ((decode_INSTRUCTION & 32'h0000607f) == 32'h0000000f);
  assign _zz_434 = ((decode_INSTRUCTION & 32'h1800707f) == 32'h0000202f);
  assign _zz_435 = {((decode_INSTRUCTION & 32'hfc00007f) == 32'h00000033),{((decode_INSTRUCTION & 32'he800707f) == 32'h0800202f),{((decode_INSTRUCTION & _zz_436) == 32'h0000500f),{(_zz_437 == _zz_438),{_zz_439,{_zz_440,_zz_441}}}}}};
  assign _zz_436 = 32'h01f0707f;
  assign _zz_437 = (decode_INSTRUCTION & 32'hbc00707f);
  assign _zz_438 = 32'h00005013;
  assign _zz_439 = ((decode_INSTRUCTION & 32'hfc00307f) == 32'h00001013);
  assign _zz_440 = ((decode_INSTRUCTION & 32'hbe00707f) == 32'h00005033);
  assign _zz_441 = {((decode_INSTRUCTION & 32'hbe00707f) == 32'h00000033),{((decode_INSTRUCTION & 32'hf9f0707f) == 32'h1000202f),{((decode_INSTRUCTION & _zz_442) == 32'h12000073),{(_zz_443 == _zz_444),{_zz_445,_zz_446}}}}};
  assign _zz_442 = 32'hfe007fff;
  assign _zz_443 = (decode_INSTRUCTION & 32'hdfffffff);
  assign _zz_444 = 32'h10200073;
  assign _zz_445 = ((decode_INSTRUCTION & 32'hffefffff) == 32'h00000073);
  assign _zz_446 = ((decode_INSTRUCTION & 32'hffffffff) == 32'h10500073);
  assign _zz_447 = 32'h10103050;
  assign _zz_448 = ((decode_INSTRUCTION & 32'h0000001c) == 32'h00000004);
  assign _zz_449 = ((decode_INSTRUCTION & 32'h00000058) == 32'h00000040);
  assign _zz_450 = {(_zz_455 == _zz_456),(_zz_457 == _zz_458)};
  assign _zz_451 = 2'b00;
  assign _zz_452 = ((_zz_459 == _zz_460) != 1'b0);
  assign _zz_453 = ({_zz_461,_zz_462} != 2'b00);
  assign _zz_454 = {(_zz_463 != _zz_464),{_zz_465,{_zz_466,_zz_467}}};
  assign _zz_455 = (decode_INSTRUCTION & 32'h10103050);
  assign _zz_456 = 32'h00000050;
  assign _zz_457 = (decode_INSTRUCTION & 32'h12203050);
  assign _zz_458 = 32'h10000050;
  assign _zz_459 = (decode_INSTRUCTION & 32'h02103050);
  assign _zz_460 = 32'h00000050;
  assign _zz_461 = ((decode_INSTRUCTION & 32'h00001050) == 32'h00001050);
  assign _zz_462 = ((decode_INSTRUCTION & 32'h00002050) == 32'h00002050);
  assign _zz_463 = _zz_91;
  assign _zz_464 = 1'b0;
  assign _zz_465 = (_zz_91 != 1'b0);
  assign _zz_466 = ((_zz_468 == _zz_469) != 1'b0);
  assign _zz_467 = {(_zz_470 != 1'b0),{(_zz_471 != _zz_472),{_zz_473,{_zz_474,_zz_475}}}};
  assign _zz_468 = (decode_INSTRUCTION & 32'h02004064);
  assign _zz_469 = 32'h02004020;
  assign _zz_470 = ((decode_INSTRUCTION & 32'h02004074) == 32'h02000030);
  assign _zz_471 = {(_zz_476 == _zz_477),(_zz_478 == _zz_479)};
  assign _zz_472 = 2'b00;
  assign _zz_473 = ({_zz_480,{_zz_481,_zz_482}} != 3'b000);
  assign _zz_474 = (_zz_483 != 1'b0);
  assign _zz_475 = {(_zz_484 != _zz_485),{_zz_486,{_zz_487,_zz_488}}};
  assign _zz_476 = (decode_INSTRUCTION & 32'h00007034);
  assign _zz_477 = 32'h00005010;
  assign _zz_478 = (decode_INSTRUCTION & 32'h02007064);
  assign _zz_479 = 32'h00005020;
  assign _zz_480 = ((decode_INSTRUCTION & 32'h40003054) == 32'h40001010);
  assign _zz_481 = ((decode_INSTRUCTION & _zz_489) == 32'h00001010);
  assign _zz_482 = ((decode_INSTRUCTION & _zz_490) == 32'h00001010);
  assign _zz_483 = ((decode_INSTRUCTION & 32'h00001000) == 32'h00001000);
  assign _zz_484 = ((decode_INSTRUCTION & _zz_491) == 32'h00002000);
  assign _zz_485 = 1'b0;
  assign _zz_486 = ({_zz_492,_zz_493} != 2'b00);
  assign _zz_487 = (_zz_494 != 1'b0);
  assign _zz_488 = {(_zz_495 != _zz_496),{_zz_497,{_zz_498,_zz_499}}};
  assign _zz_489 = 32'h00007034;
  assign _zz_490 = 32'h02007054;
  assign _zz_491 = 32'h00003000;
  assign _zz_492 = ((decode_INSTRUCTION & 32'h00002010) == 32'h00002000);
  assign _zz_493 = ((decode_INSTRUCTION & 32'h00005000) == 32'h00001000);
  assign _zz_494 = ((decode_INSTRUCTION & 32'h00004048) == 32'h00004008);
  assign _zz_495 = ((decode_INSTRUCTION & _zz_500) == 32'h00000024);
  assign _zz_496 = 1'b0;
  assign _zz_497 = ({_zz_501,{_zz_502,_zz_503}} != 4'b0000);
  assign _zz_498 = (_zz_504 != 1'b0);
  assign _zz_499 = {(_zz_505 != _zz_506),{_zz_507,{_zz_508,_zz_509}}};
  assign _zz_500 = 32'h00000064;
  assign _zz_501 = ((decode_INSTRUCTION & 32'h00000034) == 32'h00000020);
  assign _zz_502 = ((decode_INSTRUCTION & _zz_510) == 32'h00000020);
  assign _zz_503 = {(_zz_511 == _zz_512),(_zz_513 == _zz_514)};
  assign _zz_504 = ((decode_INSTRUCTION & 32'h10000008) == 32'h00000008);
  assign _zz_505 = ((decode_INSTRUCTION & _zz_515) == 32'h10000008);
  assign _zz_506 = 1'b0;
  assign _zz_507 = ({_zz_516,{_zz_517,_zz_518}} != 6'h0);
  assign _zz_508 = ({_zz_519,_zz_520} != 3'b000);
  assign _zz_509 = {(_zz_521 != _zz_522),{_zz_523,{_zz_524,_zz_525}}};
  assign _zz_510 = 32'h00000064;
  assign _zz_511 = (decode_INSTRUCTION & 32'h08000070);
  assign _zz_512 = 32'h08000020;
  assign _zz_513 = (decode_INSTRUCTION & 32'h10000070);
  assign _zz_514 = 32'h00000020;
  assign _zz_515 = 32'h10000008;
  assign _zz_516 = ((decode_INSTRUCTION & _zz_526) == 32'h00002040);
  assign _zz_517 = (_zz_527 == _zz_528);
  assign _zz_518 = {_zz_529,{_zz_530,_zz_531}};
  assign _zz_519 = (_zz_532 == _zz_533);
  assign _zz_520 = {_zz_534,_zz_535};
  assign _zz_521 = {_zz_536,{_zz_537,_zz_538}};
  assign _zz_522 = 5'h0;
  assign _zz_523 = ({_zz_539,_zz_540} != 3'b000);
  assign _zz_524 = (_zz_541 != _zz_542);
  assign _zz_525 = {_zz_543,{_zz_544,_zz_545}};
  assign _zz_526 = 32'h00002040;
  assign _zz_527 = (decode_INSTRUCTION & 32'h00001040);
  assign _zz_528 = 32'h00001040;
  assign _zz_529 = ((decode_INSTRUCTION & _zz_546) == 32'h00000040);
  assign _zz_530 = (_zz_547 == _zz_548);
  assign _zz_531 = {_zz_549,_zz_550};
  assign _zz_532 = (decode_INSTRUCTION & 32'h08000020);
  assign _zz_533 = 32'h08000020;
  assign _zz_534 = ((decode_INSTRUCTION & _zz_551) == 32'h00000020);
  assign _zz_535 = ((decode_INSTRUCTION & _zz_552) == 32'h00000020);
  assign _zz_536 = ((decode_INSTRUCTION & _zz_553) == 32'h00000040);
  assign _zz_537 = (_zz_554 == _zz_555);
  assign _zz_538 = {_zz_90,{_zz_556,_zz_557}};
  assign _zz_539 = _zz_90;
  assign _zz_540 = {_zz_89,_zz_558};
  assign _zz_541 = {_zz_86,{_zz_559,_zz_560}};
  assign _zz_542 = 7'h0;
  assign _zz_543 = ({_zz_561,_zz_562} != 2'b00);
  assign _zz_544 = (_zz_563 != _zz_564);
  assign _zz_545 = {_zz_565,{_zz_566,_zz_567}};
  assign _zz_546 = 32'h00000050;
  assign _zz_547 = (decode_INSTRUCTION & 32'h02100040);
  assign _zz_548 = 32'h00000040;
  assign _zz_549 = ((decode_INSTRUCTION & _zz_568) == 32'h0);
  assign _zz_550 = ((decode_INSTRUCTION & _zz_569) == 32'h10002008);
  assign _zz_551 = 32'h10000020;
  assign _zz_552 = 32'h00000028;
  assign _zz_553 = 32'h00000040;
  assign _zz_554 = (decode_INSTRUCTION & 32'h00004020);
  assign _zz_555 = 32'h00004020;
  assign _zz_556 = _zz_89;
  assign _zz_557 = (_zz_570 == _zz_571);
  assign _zz_558 = ((decode_INSTRUCTION & _zz_572) == 32'h00000020);
  assign _zz_559 = (_zz_573 == _zz_574);
  assign _zz_560 = {_zz_575,{_zz_576,_zz_577}};
  assign _zz_561 = _zz_88;
  assign _zz_562 = (_zz_578 == _zz_579);
  assign _zz_563 = {_zz_88,_zz_580};
  assign _zz_564 = 2'b00;
  assign _zz_565 = (_zz_581 != 1'b0);
  assign _zz_566 = (_zz_582 != _zz_583);
  assign _zz_567 = {_zz_584,{_zz_585,_zz_586}};
  assign _zz_568 = 32'h00000038;
  assign _zz_569 = 32'h18002008;
  assign _zz_570 = (decode_INSTRUCTION & 32'h02000028);
  assign _zz_571 = 32'h00000020;
  assign _zz_572 = 32'h02000068;
  assign _zz_573 = (decode_INSTRUCTION & 32'h00001010);
  assign _zz_574 = 32'h00001010;
  assign _zz_575 = ((decode_INSTRUCTION & _zz_587) == 32'h00002010);
  assign _zz_576 = (_zz_588 == _zz_589);
  assign _zz_577 = {_zz_590,{_zz_591,_zz_592}};
  assign _zz_578 = (decode_INSTRUCTION & 32'h00000070);
  assign _zz_579 = 32'h00000020;
  assign _zz_580 = ((decode_INSTRUCTION & _zz_593) == 32'h0);
  assign _zz_581 = ((decode_INSTRUCTION & _zz_594) == 32'h00004010);
  assign _zz_582 = (_zz_595 == _zz_596);
  assign _zz_583 = 1'b0;
  assign _zz_584 = ({_zz_597,_zz_598} != 5'h0);
  assign _zz_585 = (_zz_599 != _zz_600);
  assign _zz_586 = {_zz_601,{_zz_602,_zz_603}};
  assign _zz_587 = 32'h00002010;
  assign _zz_588 = (decode_INSTRUCTION & 32'h00002008);
  assign _zz_589 = 32'h00002008;
  assign _zz_590 = ((decode_INSTRUCTION & _zz_604) == 32'h00000010);
  assign _zz_591 = _zz_89;
  assign _zz_592 = (_zz_605 == _zz_606);
  assign _zz_593 = 32'h00000020;
  assign _zz_594 = 32'h00004014;
  assign _zz_595 = (decode_INSTRUCTION & 32'h00006014);
  assign _zz_596 = 32'h00002010;
  assign _zz_597 = (_zz_607 == _zz_608);
  assign _zz_598 = {_zz_609,{_zz_610,_zz_611}};
  assign _zz_599 = {_zz_87,_zz_612};
  assign _zz_600 = 2'b00;
  assign _zz_601 = ({_zz_613,_zz_614} != 3'b000);
  assign _zz_602 = (_zz_615 != _zz_616);
  assign _zz_603 = {_zz_617,{_zz_618,_zz_619}};
  assign _zz_604 = 32'h00000050;
  assign _zz_605 = (decode_INSTRUCTION & 32'h00000028);
  assign _zz_606 = 32'h0;
  assign _zz_607 = (decode_INSTRUCTION & 32'h00000044);
  assign _zz_608 = 32'h0;
  assign _zz_609 = ((decode_INSTRUCTION & _zz_620) == 32'h0);
  assign _zz_610 = (_zz_621 == _zz_622);
  assign _zz_611 = {_zz_623,_zz_87};
  assign _zz_612 = ((decode_INSTRUCTION & _zz_624) == 32'h0);
  assign _zz_613 = (_zz_625 == _zz_626);
  assign _zz_614 = {_zz_627,_zz_628};
  assign _zz_615 = {_zz_86,{_zz_629,_zz_630}};
  assign _zz_616 = 3'b000;
  assign _zz_617 = ({_zz_631,_zz_632} != 2'b00);
  assign _zz_618 = (_zz_633 != _zz_634);
  assign _zz_619 = (_zz_635 != _zz_636);
  assign _zz_620 = 32'h00000018;
  assign _zz_621 = (decode_INSTRUCTION & 32'h00006004);
  assign _zz_622 = 32'h00002000;
  assign _zz_623 = ((decode_INSTRUCTION & 32'h00005004) == 32'h00001000);
  assign _zz_624 = 32'h00000058;
  assign _zz_625 = (decode_INSTRUCTION & 32'h00000044);
  assign _zz_626 = 32'h00000040;
  assign _zz_627 = ((decode_INSTRUCTION & 32'h00002014) == 32'h00002010);
  assign _zz_628 = ((decode_INSTRUCTION & 32'h40000034) == 32'h40000030);
  assign _zz_629 = _zz_85;
  assign _zz_630 = ((decode_INSTRUCTION & 32'h00002014) == 32'h00000004);
  assign _zz_631 = _zz_85;
  assign _zz_632 = ((decode_INSTRUCTION & 32'h0000004c) == 32'h00000004);
  assign _zz_633 = ((decode_INSTRUCTION & 32'h00005048) == 32'h00001008);
  assign _zz_634 = 1'b0;
  assign _zz_635 = ((decode_INSTRUCTION & 32'h02003050) == 32'h02000050);
  assign _zz_636 = 1'b0;
  assign _zz_637 = 32'h0;
  assign _zz_638 = 32'h0;
  assign _zz_639 = 32'h0;
  assign _zz_640 = 32'h0;
  initial begin
    $readmemb("VexRiscvLitexSmpCluster_Cc1_Iw64Is8192Iy2_Dw64Ds8192Dy2_Ldw128.v_toplevel_cores_0_cpu_logic_cpu_RegFilePlugin_regFile.bin",RegFilePlugin_regFile);
  end
  assign _zz_203 = RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress1];
  assign _zz_204 = RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress2];
  always @ (posedge debugCd_external_clk) begin
    if(_zz_36) begin
      RegFilePlugin_regFile[lastStageRegFileWrite_payload_address] <= lastStageRegFileWrite_payload_data;
    end
  end

  InstructionCache IBusCachedPlugin_cache (
    .io_flush                                 (_zz_169                                                     ), //i
    .io_cpu_prefetch_isValid                  (_zz_170                                                     ), //i
    .io_cpu_prefetch_haltIt                   (IBusCachedPlugin_cache_io_cpu_prefetch_haltIt               ), //o
    .io_cpu_prefetch_pc                       (IBusCachedPlugin_iBusRsp_stages_0_input_payload[31:0]       ), //i
    .io_cpu_fetch_isValid                     (_zz_171                                                     ), //i
    .io_cpu_fetch_isStuck                     (_zz_172                                                     ), //i
    .io_cpu_fetch_isRemoved                   (_zz_173                                                     ), //i
    .io_cpu_fetch_pc                          (IBusCachedPlugin_iBusRsp_stages_1_input_payload[31:0]       ), //i
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
    .io_cpu_decode_isValid                    (_zz_174                                                     ), //i
    .io_cpu_decode_isStuck                    (_zz_175                                                     ), //i
    .io_cpu_decode_pc                         (IBusCachedPlugin_iBusRsp_stages_2_input_payload[31:0]       ), //i
    .io_cpu_decode_physicalAddress            (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]  ), //o
    .io_cpu_decode_data                       (IBusCachedPlugin_cache_io_cpu_decode_data[31:0]             ), //o
    .io_cpu_decode_cacheMiss                  (IBusCachedPlugin_cache_io_cpu_decode_cacheMiss              ), //o
    .io_cpu_decode_error                      (IBusCachedPlugin_cache_io_cpu_decode_error                  ), //o
    .io_cpu_decode_mmuRefilling               (IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling           ), //o
    .io_cpu_decode_mmuException               (IBusCachedPlugin_cache_io_cpu_decode_mmuException           ), //o
    .io_cpu_decode_isUser                     (_zz_176                                                     ), //i
    .io_cpu_fill_valid                        (_zz_177                                                     ), //i
    .io_cpu_fill_payload                      (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]  ), //i
    .io_mem_cmd_valid                         (IBusCachedPlugin_cache_io_mem_cmd_valid                     ), //o
    .io_mem_cmd_ready                         (iBus_cmd_ready                                              ), //i
    .io_mem_cmd_payload_address               (IBusCachedPlugin_cache_io_mem_cmd_payload_address[31:0]     ), //o
    .io_mem_cmd_payload_size                  (IBusCachedPlugin_cache_io_mem_cmd_payload_size[2:0]         ), //o
    .io_mem_rsp_valid                         (iBus_rsp_valid                                              ), //i
    .io_mem_rsp_payload_data                  (iBus_rsp_payload_data[63:0]                                 ), //i
    .io_mem_rsp_payload_error                 (iBus_rsp_payload_error                                      ), //i
    ._zz_18                                   (_zz_146[2:0]                                                ), //i
    ._zz_19                                   (IBusCachedPlugin_injectionPort_payload[31:0]                ), //i
    .debugCd_external_clk                     (debugCd_external_clk                                        ), //i
    .systemCd_logic_outputReset               (systemCd_logic_outputReset                                  )  //i
  );
  DataCache dataCache_1 (
    .io_cpu_execute_isValid                    (_zz_178                                            ), //i
    .io_cpu_execute_address                    (_zz_179[31:0]                                      ), //i
    .io_cpu_execute_haltIt                     (dataCache_1_io_cpu_execute_haltIt                  ), //o
    .io_cpu_execute_args_wr                    (_zz_180                                            ), //i
    .io_cpu_execute_args_data                  (_zz_181[31:0]                                      ), //i
    .io_cpu_execute_args_size                  (_zz_182[1:0]                                       ), //i
    .io_cpu_execute_args_isLrsc                (_zz_183                                            ), //i
    .io_cpu_execute_args_isAmo                 (_zz_184                                            ), //i
    .io_cpu_execute_args_amoCtrl_swap          (_zz_185                                            ), //i
    .io_cpu_execute_args_amoCtrl_alu           (_zz_186[2:0]                                       ), //i
    .io_cpu_execute_args_totalyConsistent      (execute_MEMORY_FORCE_CONSTISTENCY                  ), //i
    .io_cpu_memory_isValid                     (_zz_187                                            ), //i
    .io_cpu_memory_isStuck                     (memory_arbitration_isStuck                         ), //i
    .io_cpu_memory_isWrite                     (dataCache_1_io_cpu_memory_isWrite                  ), //o
    .io_cpu_memory_address                     (memory_MEMORY_VIRTUAL_ADDRESS[31:0]                ), //i
    .io_cpu_memory_mmuRsp_physicalAddress      (DBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]  ), //i
    .io_cpu_memory_mmuRsp_isIoAccess           (_zz_188                                            ), //i
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
    .io_cpu_writeBack_isValid                  (_zz_189                                            ), //i
    .io_cpu_writeBack_isStuck                  (writeBack_arbitration_isStuck                      ), //i
    .io_cpu_writeBack_isUser                   (_zz_190                                            ), //i
    .io_cpu_writeBack_haltIt                   (dataCache_1_io_cpu_writeBack_haltIt                ), //o
    .io_cpu_writeBack_isWrite                  (dataCache_1_io_cpu_writeBack_isWrite               ), //o
    .io_cpu_writeBack_data                     (dataCache_1_io_cpu_writeBack_data[31:0]            ), //o
    .io_cpu_writeBack_address                  (_zz_191[31:0]                                      ), //i
    .io_cpu_writeBack_mmuException             (dataCache_1_io_cpu_writeBack_mmuException          ), //o
    .io_cpu_writeBack_unalignedAccess          (dataCache_1_io_cpu_writeBack_unalignedAccess       ), //o
    .io_cpu_writeBack_accessError              (dataCache_1_io_cpu_writeBack_accessError           ), //o
    .io_cpu_writeBack_keepMemRspData           (dataCache_1_io_cpu_writeBack_keepMemRspData        ), //o
    .io_cpu_writeBack_fence_SW                 (_zz_192                                            ), //i
    .io_cpu_writeBack_fence_SR                 (_zz_193                                            ), //i
    .io_cpu_writeBack_fence_SO                 (_zz_194                                            ), //i
    .io_cpu_writeBack_fence_SI                 (_zz_195                                            ), //i
    .io_cpu_writeBack_fence_PW                 (_zz_196                                            ), //i
    .io_cpu_writeBack_fence_PR                 (_zz_197                                            ), //i
    .io_cpu_writeBack_fence_PO                 (_zz_198                                            ), //i
    .io_cpu_writeBack_fence_PI                 (_zz_199                                            ), //i
    .io_cpu_writeBack_fence_FM                 (_zz_200[3:0]                                       ), //i
    .io_cpu_redo                               (dataCache_1_io_cpu_redo                            ), //o
    .io_cpu_flush_valid                        (_zz_201                                            ), //i
    .io_cpu_flush_ready                        (dataCache_1_io_cpu_flush_ready                     ), //o
    .io_mem_cmd_valid                          (dataCache_1_io_mem_cmd_valid                       ), //o
    .io_mem_cmd_ready                          (_zz_202                                            ), //i
    .io_mem_cmd_payload_wr                     (dataCache_1_io_mem_cmd_payload_wr                  ), //o
    .io_mem_cmd_payload_uncached               (dataCache_1_io_mem_cmd_payload_uncached            ), //o
    .io_mem_cmd_payload_address                (dataCache_1_io_mem_cmd_payload_address[31:0]       ), //o
    .io_mem_cmd_payload_data                   (dataCache_1_io_mem_cmd_payload_data[31:0]          ), //o
    .io_mem_cmd_payload_mask                   (dataCache_1_io_mem_cmd_payload_mask[3:0]           ), //o
    .io_mem_cmd_payload_length                 (dataCache_1_io_mem_cmd_payload_length[3:0]         ), //o
    .io_mem_cmd_payload_last                   (dataCache_1_io_mem_cmd_payload_last                ), //o
    .io_mem_rsp_valid                          (dBus_rsp_regNext_valid                             ), //i
    .io_mem_rsp_payload_aggregated             (dBus_rsp_regNext_payload_aggregated[2:0]           ), //i
    .io_mem_rsp_payload_last                   (dBus_rsp_regNext_payload_last                      ), //i
    .io_mem_rsp_payload_data                   (dBus_rsp_regNext_payload_data[63:0]                ), //i
    .io_mem_rsp_payload_error                  (dBus_rsp_regNext_payload_error                     ), //i
    .debugCd_external_clk                      (debugCd_external_clk                               ), //i
    .systemCd_logic_outputReset                (systemCd_logic_outputReset                         )  //i
  );
  always @(*) begin
    case(_zz_52)
      2'b00 : begin
        _zz_205 = MmuPlugin_ports_0_cache_0_valid;
        _zz_206 = MmuPlugin_ports_0_cache_0_exception;
        _zz_207 = MmuPlugin_ports_0_cache_0_superPage;
        _zz_208 = MmuPlugin_ports_0_cache_0_virtualAddress_0;
        _zz_209 = MmuPlugin_ports_0_cache_0_virtualAddress_1;
        _zz_210 = MmuPlugin_ports_0_cache_0_physicalAddress_0;
        _zz_211 = MmuPlugin_ports_0_cache_0_physicalAddress_1;
        _zz_212 = MmuPlugin_ports_0_cache_0_allowRead;
        _zz_213 = MmuPlugin_ports_0_cache_0_allowWrite;
        _zz_214 = MmuPlugin_ports_0_cache_0_allowExecute;
        _zz_215 = MmuPlugin_ports_0_cache_0_allowUser;
      end
      2'b01 : begin
        _zz_205 = MmuPlugin_ports_0_cache_1_valid;
        _zz_206 = MmuPlugin_ports_0_cache_1_exception;
        _zz_207 = MmuPlugin_ports_0_cache_1_superPage;
        _zz_208 = MmuPlugin_ports_0_cache_1_virtualAddress_0;
        _zz_209 = MmuPlugin_ports_0_cache_1_virtualAddress_1;
        _zz_210 = MmuPlugin_ports_0_cache_1_physicalAddress_0;
        _zz_211 = MmuPlugin_ports_0_cache_1_physicalAddress_1;
        _zz_212 = MmuPlugin_ports_0_cache_1_allowRead;
        _zz_213 = MmuPlugin_ports_0_cache_1_allowWrite;
        _zz_214 = MmuPlugin_ports_0_cache_1_allowExecute;
        _zz_215 = MmuPlugin_ports_0_cache_1_allowUser;
      end
      2'b10 : begin
        _zz_205 = MmuPlugin_ports_0_cache_2_valid;
        _zz_206 = MmuPlugin_ports_0_cache_2_exception;
        _zz_207 = MmuPlugin_ports_0_cache_2_superPage;
        _zz_208 = MmuPlugin_ports_0_cache_2_virtualAddress_0;
        _zz_209 = MmuPlugin_ports_0_cache_2_virtualAddress_1;
        _zz_210 = MmuPlugin_ports_0_cache_2_physicalAddress_0;
        _zz_211 = MmuPlugin_ports_0_cache_2_physicalAddress_1;
        _zz_212 = MmuPlugin_ports_0_cache_2_allowRead;
        _zz_213 = MmuPlugin_ports_0_cache_2_allowWrite;
        _zz_214 = MmuPlugin_ports_0_cache_2_allowExecute;
        _zz_215 = MmuPlugin_ports_0_cache_2_allowUser;
      end
      default : begin
        _zz_205 = MmuPlugin_ports_0_cache_3_valid;
        _zz_206 = MmuPlugin_ports_0_cache_3_exception;
        _zz_207 = MmuPlugin_ports_0_cache_3_superPage;
        _zz_208 = MmuPlugin_ports_0_cache_3_virtualAddress_0;
        _zz_209 = MmuPlugin_ports_0_cache_3_virtualAddress_1;
        _zz_210 = MmuPlugin_ports_0_cache_3_physicalAddress_0;
        _zz_211 = MmuPlugin_ports_0_cache_3_physicalAddress_1;
        _zz_212 = MmuPlugin_ports_0_cache_3_allowRead;
        _zz_213 = MmuPlugin_ports_0_cache_3_allowWrite;
        _zz_214 = MmuPlugin_ports_0_cache_3_allowExecute;
        _zz_215 = MmuPlugin_ports_0_cache_3_allowUser;
      end
    endcase
  end

  always @(*) begin
    case(_zz_56)
      2'b00 : begin
        _zz_216 = MmuPlugin_ports_1_cache_0_valid;
        _zz_217 = MmuPlugin_ports_1_cache_0_exception;
        _zz_218 = MmuPlugin_ports_1_cache_0_superPage;
        _zz_219 = MmuPlugin_ports_1_cache_0_virtualAddress_0;
        _zz_220 = MmuPlugin_ports_1_cache_0_virtualAddress_1;
        _zz_221 = MmuPlugin_ports_1_cache_0_physicalAddress_0;
        _zz_222 = MmuPlugin_ports_1_cache_0_physicalAddress_1;
        _zz_223 = MmuPlugin_ports_1_cache_0_allowRead;
        _zz_224 = MmuPlugin_ports_1_cache_0_allowWrite;
        _zz_225 = MmuPlugin_ports_1_cache_0_allowExecute;
        _zz_226 = MmuPlugin_ports_1_cache_0_allowUser;
      end
      2'b01 : begin
        _zz_216 = MmuPlugin_ports_1_cache_1_valid;
        _zz_217 = MmuPlugin_ports_1_cache_1_exception;
        _zz_218 = MmuPlugin_ports_1_cache_1_superPage;
        _zz_219 = MmuPlugin_ports_1_cache_1_virtualAddress_0;
        _zz_220 = MmuPlugin_ports_1_cache_1_virtualAddress_1;
        _zz_221 = MmuPlugin_ports_1_cache_1_physicalAddress_0;
        _zz_222 = MmuPlugin_ports_1_cache_1_physicalAddress_1;
        _zz_223 = MmuPlugin_ports_1_cache_1_allowRead;
        _zz_224 = MmuPlugin_ports_1_cache_1_allowWrite;
        _zz_225 = MmuPlugin_ports_1_cache_1_allowExecute;
        _zz_226 = MmuPlugin_ports_1_cache_1_allowUser;
      end
      2'b10 : begin
        _zz_216 = MmuPlugin_ports_1_cache_2_valid;
        _zz_217 = MmuPlugin_ports_1_cache_2_exception;
        _zz_218 = MmuPlugin_ports_1_cache_2_superPage;
        _zz_219 = MmuPlugin_ports_1_cache_2_virtualAddress_0;
        _zz_220 = MmuPlugin_ports_1_cache_2_virtualAddress_1;
        _zz_221 = MmuPlugin_ports_1_cache_2_physicalAddress_0;
        _zz_222 = MmuPlugin_ports_1_cache_2_physicalAddress_1;
        _zz_223 = MmuPlugin_ports_1_cache_2_allowRead;
        _zz_224 = MmuPlugin_ports_1_cache_2_allowWrite;
        _zz_225 = MmuPlugin_ports_1_cache_2_allowExecute;
        _zz_226 = MmuPlugin_ports_1_cache_2_allowUser;
      end
      default : begin
        _zz_216 = MmuPlugin_ports_1_cache_3_valid;
        _zz_217 = MmuPlugin_ports_1_cache_3_exception;
        _zz_218 = MmuPlugin_ports_1_cache_3_superPage;
        _zz_219 = MmuPlugin_ports_1_cache_3_virtualAddress_0;
        _zz_220 = MmuPlugin_ports_1_cache_3_virtualAddress_1;
        _zz_221 = MmuPlugin_ports_1_cache_3_physicalAddress_0;
        _zz_222 = MmuPlugin_ports_1_cache_3_physicalAddress_1;
        _zz_223 = MmuPlugin_ports_1_cache_3_allowRead;
        _zz_224 = MmuPlugin_ports_1_cache_3_allowWrite;
        _zz_225 = MmuPlugin_ports_1_cache_3_allowExecute;
        _zz_226 = MmuPlugin_ports_1_cache_3_allowUser;
      end
    endcase
  end

  always @(*) begin
    case(_zz_423)
      2'b00 : begin
        _zz_227 = DBusCachedPlugin_redoBranch_payload;
      end
      2'b01 : begin
        _zz_227 = CsrPlugin_jumpInterface_payload;
      end
      2'b10 : begin
        _zz_227 = CsrPlugin_redoInterface_payload;
      end
      default : begin
        _zz_227 = BranchPlugin_jumpInterface_payload;
      end
    endcase
  end

  `ifndef SYNTHESIS
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
      `BranchCtrlEnum_defaultEncoding_INC : _zz_3_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_3_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_3_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_3_string = "JALR";
      default : _zz_3_string = "????";
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
    case(_zz_7)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_7_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_7_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_7_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_7_string = "ECALL";
      default : _zz_7_string = "?????";
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
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_10_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_10_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_10_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_10_string = "ECALL";
      default : _zz_10_string = "?????";
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
    case(_zz_11)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_11_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_11_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_11_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_11_string = "SRA_1    ";
      default : _zz_11_string = "?????????";
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
    case(decode_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : decode_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_14)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_14_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_14_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_14_string = "AND_1";
      default : _zz_14_string = "?????";
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
    case(decode_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : decode_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : decode_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : decode_ALU_CTRL_string = "BITWISE ";
      default : decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_17)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_17_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_17_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_17_string = "BITWISE ";
      default : _zz_17_string = "????????";
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
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : execute_BRANCH_CTRL_string = "JALR";
      default : execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_20)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_20_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_20_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_20_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_20_string = "JALR";
      default : _zz_20_string = "????";
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
    case(_zz_21)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_21_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_21_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_21_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_21_string = "ECALL";
      default : _zz_21_string = "?????";
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
    case(_zz_22)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_22_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_22_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_22_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_22_string = "ECALL";
      default : _zz_22_string = "?????";
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
    case(_zz_23)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_23_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_23_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_23_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_23_string = "ECALL";
      default : _zz_23_string = "?????";
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
    case(_zz_26)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_26_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_26_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_26_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_26_string = "SRA_1    ";
      default : _zz_26_string = "?????????";
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
    case(_zz_29)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_29_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_29_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_29_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_29_string = "PC ";
      default : _zz_29_string = "???";
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
    case(_zz_31)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_31_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_31_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_31_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_31_string = "URS1        ";
      default : _zz_31_string = "????????????";
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
    case(_zz_32)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_32_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_32_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_32_string = "BITWISE ";
      default : _zz_32_string = "????????";
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
    case(_zz_33)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_33_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_33_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_33_string = "AND_1";
      default : _zz_33_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_37)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_37_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_37_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_37_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_37_string = "JALR";
      default : _zz_37_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_38)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_38_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_38_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_38_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_38_string = "ECALL";
      default : _zz_38_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_39)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_39_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_39_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_39_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_39_string = "SRA_1    ";
      default : _zz_39_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_40)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_40_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_40_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_40_string = "AND_1";
      default : _zz_40_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_41)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_41_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_41_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_41_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_41_string = "PC ";
      default : _zz_41_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_42)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_42_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_42_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_42_string = "BITWISE ";
      default : _zz_42_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_43)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_43_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_43_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_43_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_43_string = "URS1        ";
      default : _zz_43_string = "????????????";
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
    case(_zz_92)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_92_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_92_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_92_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_92_string = "URS1        ";
      default : _zz_92_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_93)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_93_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_93_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_93_string = "BITWISE ";
      default : _zz_93_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_94)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_94_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_94_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_94_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_94_string = "PC ";
      default : _zz_94_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_95)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_95_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_95_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_95_string = "AND_1";
      default : _zz_95_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_96)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_96_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_96_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_96_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_96_string = "SRA_1    ";
      default : _zz_96_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_97)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_97_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_97_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_WFI : _zz_97_string = "WFI  ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_97_string = "ECALL";
      default : _zz_97_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_98)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_98_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_98_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_98_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_98_string = "JALR";
      default : _zz_98_string = "????";
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

  assign memory_MUL_LOW = ($signed(_zz_289) + $signed(_zz_297));
  assign memory_MUL_HH = execute_to_memory_MUL_HH;
  assign execute_MUL_HH = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bHigh));
  assign execute_MUL_HL = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bSLow));
  assign execute_MUL_LH = ($signed(execute_MulPlugin_aSLow) * $signed(execute_MulPlugin_bHigh));
  assign execute_MUL_LL = (execute_MulPlugin_aULow * execute_MulPlugin_bULow);
  assign memory_REGFILE_WRITE_DATA = execute_to_memory_REGFILE_WRITE_DATA;
  assign execute_REGFILE_WRITE_DATA = _zz_99;
  assign execute_MEMORY_VIRTUAL_ADDRESS = _zz_179;
  assign memory_MEMORY_ADDRESS_LOW = execute_to_memory_MEMORY_ADDRESS_LOW;
  assign execute_MEMORY_ADDRESS_LOW = _zz_179[1 : 0];
  assign decode_DO_EBREAK = ((! DebugPlugin_haltIt) && (decode_IS_EBREAK || 1'b0));
  assign decode_CSR_READ_OPCODE = (decode_INSTRUCTION[13 : 7] != 7'h20);
  assign decode_CSR_WRITE_OPCODE = (! (((decode_INSTRUCTION[14 : 13] == 2'b01) && (decode_INSTRUCTION[19 : 15] == 5'h0)) || ((decode_INSTRUCTION[14 : 13] == 2'b11) && (decode_INSTRUCTION[19 : 15] == 5'h0))));
  assign decode_SRC2 = _zz_105;
  assign decode_SRC1 = _zz_100;
  assign decode_SRC2_FORCE_ZERO = (decode_SRC_ADD_ZERO && (! decode_SRC_USE_SUB_LESS));
  assign decode_BRANCH_CTRL = _zz_1;
  assign _zz_2 = _zz_3;
  assign _zz_4 = _zz_5;
  assign _zz_6 = _zz_7;
  assign decode_ENV_CTRL = _zz_8;
  assign _zz_9 = _zz_10;
  assign decode_IS_CSR = _zz_298[0];
  assign decode_IS_RS2_SIGNED = _zz_299[0];
  assign decode_IS_RS1_SIGNED = _zz_300[0];
  assign decode_IS_DIV = _zz_301[0];
  assign memory_IS_MUL = execute_to_memory_IS_MUL;
  assign execute_IS_MUL = decode_to_execute_IS_MUL;
  assign decode_IS_MUL = _zz_302[0];
  assign decode_SHIFT_CTRL = _zz_11;
  assign _zz_12 = _zz_13;
  assign decode_ALU_BITWISE_CTRL = _zz_14;
  assign _zz_15 = _zz_16;
  assign decode_SRC_LESS_UNSIGNED = _zz_303[0];
  assign decode_MEMORY_MANAGMENT = _zz_304[0];
  assign memory_MEMORY_WR = execute_to_memory_MEMORY_WR;
  assign decode_MEMORY_WR = _zz_305[0];
  assign execute_BYPASSABLE_MEMORY_STAGE = decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  assign decode_BYPASSABLE_MEMORY_STAGE = _zz_306[0];
  assign decode_BYPASSABLE_EXECUTE_STAGE = _zz_307[0];
  assign decode_ALU_CTRL = _zz_17;
  assign _zz_18 = _zz_19;
  assign memory_IS_SFENCE_VMA = execute_to_memory_IS_SFENCE_VMA;
  assign execute_IS_SFENCE_VMA = decode_to_execute_IS_SFENCE_VMA;
  assign decode_IS_SFENCE_VMA = _zz_308[0];
  assign decode_MEMORY_FORCE_CONSTISTENCY = _zz_45;
  assign writeBack_FORMAL_PC_NEXT = memory_to_writeBack_FORMAL_PC_NEXT;
  assign memory_FORMAL_PC_NEXT = execute_to_memory_FORMAL_PC_NEXT;
  assign execute_FORMAL_PC_NEXT = decode_to_execute_FORMAL_PC_NEXT;
  assign decode_FORMAL_PC_NEXT = (decode_PC + 32'h00000004);
  assign memory_PC = execute_to_memory_PC;
  assign execute_DO_EBREAK = decode_to_execute_DO_EBREAK;
  assign decode_IS_EBREAK = _zz_309[0];
  assign execute_BRANCH_CALC = {execute_BranchPlugin_branchAdder[31 : 1],1'b0};
  assign execute_BRANCH_DO = _zz_137;
  assign execute_PC = decode_to_execute_PC;
  assign execute_BRANCH_CTRL = _zz_20;
  assign execute_CSR_READ_OPCODE = decode_to_execute_CSR_READ_OPCODE;
  assign execute_CSR_WRITE_OPCODE = decode_to_execute_CSR_WRITE_OPCODE;
  assign execute_IS_CSR = decode_to_execute_IS_CSR;
  assign memory_ENV_CTRL = _zz_21;
  assign execute_ENV_CTRL = _zz_22;
  assign writeBack_ENV_CTRL = _zz_23;
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
  assign decode_RS2_USE = _zz_310[0];
  assign decode_RS1_USE = _zz_311[0];
  assign execute_REGFILE_WRITE_VALID = decode_to_execute_REGFILE_WRITE_VALID;
  assign execute_BYPASSABLE_EXECUTE_STAGE = decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  always @ (*) begin
    _zz_24 = memory_REGFILE_WRITE_DATA;
    if(_zz_228)begin
      _zz_24 = memory_MulDivIterativePlugin_div_result;
    end
  end

  assign memory_REGFILE_WRITE_VALID = execute_to_memory_REGFILE_WRITE_VALID;
  assign memory_INSTRUCTION = execute_to_memory_INSTRUCTION;
  assign memory_BYPASSABLE_MEMORY_STAGE = execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  assign writeBack_REGFILE_WRITE_VALID = memory_to_writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    decode_RS2 = decode_RegFilePlugin_rs2Data;
    if(_zz_110)begin
      if((_zz_111 == decode_INSTRUCTION[24 : 20]))begin
        decode_RS2 = _zz_112;
      end
    end
    if(_zz_229)begin
      if(_zz_230)begin
        if(_zz_114)begin
          decode_RS2 = _zz_44;
        end
      end
    end
    if(_zz_231)begin
      if(memory_BYPASSABLE_MEMORY_STAGE)begin
        if(_zz_116)begin
          decode_RS2 = _zz_24;
        end
      end
    end
    if(_zz_232)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_118)begin
          decode_RS2 = _zz_25;
        end
      end
    end
  end

  always @ (*) begin
    decode_RS1 = decode_RegFilePlugin_rs1Data;
    if(_zz_110)begin
      if((_zz_111 == decode_INSTRUCTION[19 : 15]))begin
        decode_RS1 = _zz_112;
      end
    end
    if(_zz_229)begin
      if(_zz_230)begin
        if(_zz_113)begin
          decode_RS1 = _zz_44;
        end
      end
    end
    if(_zz_231)begin
      if(memory_BYPASSABLE_MEMORY_STAGE)begin
        if(_zz_115)begin
          decode_RS1 = _zz_24;
        end
      end
    end
    if(_zz_232)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_117)begin
          decode_RS1 = _zz_25;
        end
      end
    end
  end

  assign execute_SHIFT_RIGHT = _zz_313;
  always @ (*) begin
    _zz_25 = execute_REGFILE_WRITE_DATA;
    if(execute_arbitration_isValid)begin
      case(execute_SHIFT_CTRL)
        `ShiftCtrlEnum_defaultEncoding_SLL_1 : begin
          _zz_25 = _zz_107;
        end
        `ShiftCtrlEnum_defaultEncoding_SRL_1, `ShiftCtrlEnum_defaultEncoding_SRA_1 : begin
          _zz_25 = execute_SHIFT_RIGHT;
        end
        default : begin
        end
      endcase
    end
    if(_zz_233)begin
      _zz_25 = execute_CsrPlugin_readData;
    end
    if(DBusCachedPlugin_forceDatapath)begin
      _zz_25 = MmuPlugin_dBusAccess_cmd_payload_address;
    end
  end

  assign execute_SHIFT_CTRL = _zz_26;
  assign execute_SRC_LESS_UNSIGNED = decode_to_execute_SRC_LESS_UNSIGNED;
  assign execute_SRC2_FORCE_ZERO = decode_to_execute_SRC2_FORCE_ZERO;
  assign execute_SRC_USE_SUB_LESS = decode_to_execute_SRC_USE_SUB_LESS;
  assign _zz_27 = decode_PC;
  assign _zz_28 = decode_RS2;
  assign decode_SRC2_CTRL = _zz_29;
  assign _zz_30 = decode_RS1;
  assign decode_SRC1_CTRL = _zz_31;
  assign decode_SRC_USE_SUB_LESS = _zz_315[0];
  assign decode_SRC_ADD_ZERO = _zz_316[0];
  assign execute_SRC_ADD_SUB = execute_SrcPlugin_addSub;
  assign execute_SRC_LESS = execute_SrcPlugin_less;
  assign execute_ALU_CTRL = _zz_32;
  assign execute_SRC2 = decode_to_execute_SRC2;
  assign execute_SRC1 = decode_to_execute_SRC1;
  assign execute_ALU_BITWISE_CTRL = _zz_33;
  assign _zz_34 = writeBack_INSTRUCTION;
  assign _zz_35 = writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    _zz_36 = 1'b0;
    if(lastStageRegFileWrite_valid)begin
      _zz_36 = 1'b1;
    end
  end

  always @ (*) begin
    decode_REGFILE_WRITE_VALID = _zz_317[0];
    if((decode_INSTRUCTION[11 : 7] == 5'h0))begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = ({((decode_INSTRUCTION & 32'h0000005f) == 32'h00000017),{((decode_INSTRUCTION & 32'h0000007f) == 32'h0000006f),{((decode_INSTRUCTION & 32'h0000106f) == 32'h00000003),{((decode_INSTRUCTION & _zz_424) == 32'h00001073),{(_zz_425 == _zz_426),{_zz_427,{_zz_428,_zz_429}}}}}}} != 25'h0);
  assign writeBack_IS_DBUS_SHARING = memory_to_writeBack_IS_DBUS_SHARING;
  assign execute_IS_DBUS_SHARING = (MmuPlugin_dBusAccess_cmd_valid && MmuPlugin_dBusAccess_cmd_ready);
  assign memory_IS_DBUS_SHARING = execute_to_memory_IS_DBUS_SHARING;
  always @ (*) begin
    _zz_44 = writeBack_REGFILE_WRITE_DATA;
    if((writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE))begin
      _zz_44 = writeBack_DBusCachedPlugin_rspFormated;
    end
    if((writeBack_arbitration_isValid && writeBack_IS_MUL))begin
      case(_zz_287)
        2'b00 : begin
          _zz_44 = _zz_354;
        end
        default : begin
          _zz_44 = _zz_355;
        end
      endcase
    end
  end

  assign writeBack_MEMORY_ADDRESS_LOW = memory_to_writeBack_MEMORY_ADDRESS_LOW;
  assign writeBack_MEMORY_WR = memory_to_writeBack_MEMORY_WR;
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
  assign decode_MEMORY_AMO = _zz_318[0];
  assign decode_MEMORY_LRSC = _zz_319[0];
  assign decode_MEMORY_ENABLE = _zz_320[0];
  assign decode_FLUSH_ALL = _zz_321[0];
  always @ (*) begin
    _zz_46 = _zz_46_2;
    if(_zz_234)begin
      _zz_46 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_46_2 = _zz_46_1;
    if(_zz_235)begin
      _zz_46_2 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_46_1 = _zz_46_0;
    if(_zz_236)begin
      _zz_46_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_46_0 = IBusCachedPlugin_rsp_issueDetected;
    if(_zz_237)begin
      _zz_46_0 = 1'b1;
    end
  end

  assign decode_INSTRUCTION = IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  always @ (*) begin
    _zz_47 = execute_FORMAL_PC_NEXT;
    if(CsrPlugin_redoInterface_valid)begin
      _zz_47 = CsrPlugin_redoInterface_payload;
    end
    if(BranchPlugin_jumpInterface_valid)begin
      _zz_47 = BranchPlugin_jumpInterface_payload;
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
    case(_zz_146)
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
    if((decode_arbitration_isValid && (_zz_108 || _zz_109)))begin
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
    if(_zz_238)begin
      decode_arbitration_removeIt = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushIt = 1'b0;
  always @ (*) begin
    decode_arbitration_flushNext = 1'b0;
    if(_zz_238)begin
      decode_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_haltItself = 1'b0;
    if(((_zz_201 && (! dataCache_1_io_cpu_flush_ready)) || dataCache_1_io_cpu_execute_haltIt))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(((dataCache_1_io_cpu_redo && execute_arbitration_isValid) && execute_MEMORY_ENABLE))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(_zz_239)begin
      if((! execute_CsrPlugin_wfiWake))begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_233)begin
      if(execute_CsrPlugin_blockedBySideEffects)begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
  end

  always @ (*) begin
    execute_arbitration_haltByOther = 1'b0;
    if(_zz_240)begin
      execute_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_removeIt = 1'b0;
    if(_zz_241)begin
      execute_arbitration_removeIt = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_flushIt = 1'b0;
    if(_zz_240)begin
      if(_zz_242)begin
        execute_arbitration_flushIt = 1'b1;
      end
    end
  end

  always @ (*) begin
    execute_arbitration_flushNext = 1'b0;
    if(_zz_241)begin
      execute_arbitration_flushNext = 1'b1;
    end
    if(BranchPlugin_jumpInterface_valid)begin
      execute_arbitration_flushNext = 1'b1;
    end
    if(_zz_240)begin
      if(_zz_242)begin
        execute_arbitration_flushNext = 1'b1;
      end
    end
    if(execute_CsrPlugin_csr_384)begin
      if(execute_CsrPlugin_writeInstruction)begin
        execute_arbitration_flushNext = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_arbitration_haltItself = 1'b0;
    if(_zz_228)begin
      if(((! memory_MulDivIterativePlugin_frontendOk) || (! memory_MulDivIterativePlugin_div_done)))begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign memory_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    memory_arbitration_removeIt = 1'b0;
    if(memory_arbitration_isFlushed)begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  assign memory_arbitration_flushIt = 1'b0;
  assign memory_arbitration_flushNext = 1'b0;
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
    if(_zz_243)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_244)begin
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
    if(_zz_243)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_244)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_240)begin
      if(_zz_242)begin
        IBusCachedPlugin_fetcherHalt = 1'b1;
      end
    end
    if(DebugPlugin_haltIt)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_245)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_incomingInstruction = 1'b0;
    if((IBusCachedPlugin_iBusRsp_stages_1_input_valid || IBusCachedPlugin_iBusRsp_stages_2_input_valid))begin
      IBusCachedPlugin_incomingInstruction = 1'b1;
    end
  end

  always @ (*) begin
    _zz_48 = 1'b0;
    if(DebugPlugin_godmode)begin
      _zz_48 = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_inWfi = 1'b0;
    if(_zz_239)begin
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
    if(_zz_243)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_244)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_jumpInterface_payload = 32'h0;
    if(_zz_243)begin
      CsrPlugin_jumpInterface_payload = {CsrPlugin_xtvec_base,2'b00};
    end
    if(_zz_244)begin
      case(_zz_246)
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
  assign _zz_49 = MmuPlugin_ports_0_cacheHits[3];
  assign _zz_50 = (MmuPlugin_ports_0_cacheHits[1] || _zz_49);
  assign _zz_51 = (MmuPlugin_ports_0_cacheHits[2] || _zz_49);
  assign _zz_52 = {_zz_51,_zz_50};
  assign MmuPlugin_ports_0_cacheLine_valid = _zz_205;
  assign MmuPlugin_ports_0_cacheLine_exception = _zz_206;
  assign MmuPlugin_ports_0_cacheLine_superPage = _zz_207;
  assign MmuPlugin_ports_0_cacheLine_virtualAddress_0 = _zz_208;
  assign MmuPlugin_ports_0_cacheLine_virtualAddress_1 = _zz_209;
  assign MmuPlugin_ports_0_cacheLine_physicalAddress_0 = _zz_210;
  assign MmuPlugin_ports_0_cacheLine_physicalAddress_1 = _zz_211;
  assign MmuPlugin_ports_0_cacheLine_allowRead = _zz_212;
  assign MmuPlugin_ports_0_cacheLine_allowWrite = _zz_213;
  assign MmuPlugin_ports_0_cacheLine_allowExecute = _zz_214;
  assign MmuPlugin_ports_0_cacheLine_allowUser = _zz_215;
  always @ (*) begin
    MmuPlugin_ports_0_entryToReplace_willIncrement = 1'b0;
    if(_zz_247)begin
      if(_zz_248)begin
        MmuPlugin_ports_0_entryToReplace_willIncrement = 1'b1;
      end
    end
  end

  assign MmuPlugin_ports_0_entryToReplace_willClear = 1'b0;
  assign MmuPlugin_ports_0_entryToReplace_willOverflowIfInc = (MmuPlugin_ports_0_entryToReplace_value == 2'b11);
  assign MmuPlugin_ports_0_entryToReplace_willOverflow = (MmuPlugin_ports_0_entryToReplace_willOverflowIfInc && MmuPlugin_ports_0_entryToReplace_willIncrement);
  always @ (*) begin
    MmuPlugin_ports_0_entryToReplace_valueNext = (MmuPlugin_ports_0_entryToReplace_value + _zz_323);
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
      IBusCachedPlugin_mmuBus_rsp_exception = (((! MmuPlugin_ports_0_dirty) && MmuPlugin_ports_0_cacheHit) && ((MmuPlugin_ports_0_cacheLine_exception || ((MmuPlugin_ports_0_cacheLine_allowUser && (CsrPlugin_privilege == 2'b01)) && (! MmuPlugin_status_sum))) || ((! MmuPlugin_ports_0_cacheLine_allowUser) && (CsrPlugin_privilege == 2'b00))));
    end else begin
      IBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_0_requireMmuLockup)begin
      IBusCachedPlugin_mmuBus_rsp_refilling = (MmuPlugin_ports_0_dirty || (! MmuPlugin_ports_0_cacheHit));
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
  assign _zz_53 = MmuPlugin_ports_1_cacheHits[3];
  assign _zz_54 = (MmuPlugin_ports_1_cacheHits[1] || _zz_53);
  assign _zz_55 = (MmuPlugin_ports_1_cacheHits[2] || _zz_53);
  assign _zz_56 = {_zz_55,_zz_54};
  assign MmuPlugin_ports_1_cacheLine_valid = _zz_216;
  assign MmuPlugin_ports_1_cacheLine_exception = _zz_217;
  assign MmuPlugin_ports_1_cacheLine_superPage = _zz_218;
  assign MmuPlugin_ports_1_cacheLine_virtualAddress_0 = _zz_219;
  assign MmuPlugin_ports_1_cacheLine_virtualAddress_1 = _zz_220;
  assign MmuPlugin_ports_1_cacheLine_physicalAddress_0 = _zz_221;
  assign MmuPlugin_ports_1_cacheLine_physicalAddress_1 = _zz_222;
  assign MmuPlugin_ports_1_cacheLine_allowRead = _zz_223;
  assign MmuPlugin_ports_1_cacheLine_allowWrite = _zz_224;
  assign MmuPlugin_ports_1_cacheLine_allowExecute = _zz_225;
  assign MmuPlugin_ports_1_cacheLine_allowUser = _zz_226;
  always @ (*) begin
    MmuPlugin_ports_1_entryToReplace_willIncrement = 1'b0;
    if(_zz_247)begin
      if(_zz_249)begin
        MmuPlugin_ports_1_entryToReplace_willIncrement = 1'b1;
      end
    end
  end

  assign MmuPlugin_ports_1_entryToReplace_willClear = 1'b0;
  assign MmuPlugin_ports_1_entryToReplace_willOverflowIfInc = (MmuPlugin_ports_1_entryToReplace_value == 2'b11);
  assign MmuPlugin_ports_1_entryToReplace_willOverflow = (MmuPlugin_ports_1_entryToReplace_willOverflowIfInc && MmuPlugin_ports_1_entryToReplace_willIncrement);
  always @ (*) begin
    MmuPlugin_ports_1_entryToReplace_valueNext = (MmuPlugin_ports_1_entryToReplace_value + _zz_325);
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
      DBusCachedPlugin_mmuBus_rsp_exception = (((! MmuPlugin_ports_1_dirty) && MmuPlugin_ports_1_cacheHit) && ((MmuPlugin_ports_1_cacheLine_exception || ((MmuPlugin_ports_1_cacheLine_allowUser && (CsrPlugin_privilege == 2'b01)) && (! MmuPlugin_status_sum))) || ((! MmuPlugin_ports_1_cacheLine_allowUser) && (CsrPlugin_privilege == 2'b00))));
    end else begin
      DBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
    end
  end

  always @ (*) begin
    if(MmuPlugin_ports_1_requireMmuLockup)begin
      DBusCachedPlugin_mmuBus_rsp_refilling = (MmuPlugin_ports_1_dirty || (! MmuPlugin_ports_1_cacheHit));
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
  assign MmuPlugin_shared_dBusRsp_pte_V = _zz_326[0];
  assign MmuPlugin_shared_dBusRsp_pte_R = _zz_327[0];
  assign MmuPlugin_shared_dBusRsp_pte_W = _zz_328[0];
  assign MmuPlugin_shared_dBusRsp_pte_X = _zz_329[0];
  assign MmuPlugin_shared_dBusRsp_pte_U = _zz_330[0];
  assign MmuPlugin_shared_dBusRsp_pte_G = _zz_331[0];
  assign MmuPlugin_shared_dBusRsp_pte_A = _zz_332[0];
  assign MmuPlugin_shared_dBusRsp_pte_D = _zz_333[0];
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
    _zz_57[0] = (((IBusCachedPlugin_mmuBus_cmd_1_isValid && MmuPlugin_ports_0_requireMmuLockup) && (! MmuPlugin_ports_0_dirty)) && (! MmuPlugin_ports_0_cacheHit));
    _zz_57[1] = (((DBusCachedPlugin_mmuBus_cmd_1_isValid && MmuPlugin_ports_1_requireMmuLockup) && (! MmuPlugin_ports_1_dirty)) && (! MmuPlugin_ports_1_cacheHit));
  end

  assign _zz_58 = _zz_57;
  always @ (*) begin
    _zz_59[0] = _zz_58[1];
    _zz_59[1] = _zz_58[0];
  end

  assign _zz_60 = (_zz_59 & (~ _zz_334));
  always @ (*) begin
    _zz_61[0] = _zz_60[1];
    _zz_61[1] = _zz_60[0];
  end

  assign MmuPlugin_shared_refills = _zz_61;
  assign _zz_62 = (MmuPlugin_shared_refills[0] ? IBusCachedPlugin_mmuBus_cmd_1_virtualAddress : DBusCachedPlugin_mmuBus_cmd_1_virtualAddress);
  assign IBusCachedPlugin_mmuBus_busy = ((MmuPlugin_shared_state_1 != `MmuPlugin_shared_State_defaultEncoding_IDLE) && MmuPlugin_shared_portSortedOh[0]);
  assign DBusCachedPlugin_mmuBus_busy = ((MmuPlugin_shared_state_1 != `MmuPlugin_shared_State_defaultEncoding_IDLE) && MmuPlugin_shared_portSortedOh[1]);
  assign IBusCachedPlugin_externalFlush = ({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,{execute_arbitration_flushNext,decode_arbitration_flushNext}}} != 4'b0000);
  assign IBusCachedPlugin_jump_pcLoad_valid = ({BranchPlugin_jumpInterface_valid,{CsrPlugin_redoInterface_valid,{CsrPlugin_jumpInterface_valid,DBusCachedPlugin_redoBranch_valid}}} != 4'b0000);
  assign _zz_63 = {BranchPlugin_jumpInterface_valid,{CsrPlugin_redoInterface_valid,{CsrPlugin_jumpInterface_valid,DBusCachedPlugin_redoBranch_valid}}};
  assign _zz_64 = (_zz_63 & (~ _zz_335));
  assign _zz_65 = _zz_64[3];
  assign _zz_66 = (_zz_64[1] || _zz_65);
  assign _zz_67 = (_zz_64[2] || _zz_65);
  assign IBusCachedPlugin_jump_pcLoad_payload = _zz_227;
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
    IBusCachedPlugin_fetchPc_pc = (IBusCachedPlugin_fetchPc_pcReg + _zz_337);
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
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b0;
    if(IBusCachedPlugin_cache_io_cpu_prefetch_haltIt)begin
      IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b1;
    end
    if(IBusCachedPlugin_mmuBus_busy)begin
      IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b1;
    end
  end

  assign _zz_68 = (! IBusCachedPlugin_iBusRsp_stages_0_halt);
  assign IBusCachedPlugin_iBusRsp_stages_0_input_ready = (IBusCachedPlugin_iBusRsp_stages_0_output_ready && _zz_68);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_valid = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && _zz_68);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_payload = IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  assign IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b0;
  assign _zz_69 = (! IBusCachedPlugin_iBusRsp_stages_1_halt);
  assign IBusCachedPlugin_iBusRsp_stages_1_input_ready = (IBusCachedPlugin_iBusRsp_stages_1_output_ready && _zz_69);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_valid = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && _zz_69);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_payload = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b0;
    if((_zz_46 || IBusCachedPlugin_rsp_iBusRspOutputHalt))begin
      IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b1;
    end
  end

  assign _zz_70 = (! IBusCachedPlugin_iBusRsp_stages_2_halt);
  assign IBusCachedPlugin_iBusRsp_stages_2_input_ready = (IBusCachedPlugin_iBusRsp_stages_2_output_ready && _zz_70);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_valid = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && _zz_70);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_fetchPc_redo_valid = IBusCachedPlugin_iBusRsp_redoFetch;
  assign IBusCachedPlugin_fetchPc_redo_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_iBusRsp_flush = ((decode_arbitration_removeIt || (decode_arbitration_flushNext && (! decode_arbitration_isStuck))) || IBusCachedPlugin_iBusRsp_redoFetch);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_ready = _zz_71;
  assign _zz_71 = ((1'b0 && (! _zz_72)) || IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_72 = _zz_73;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_valid = _zz_72;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_payload = IBusCachedPlugin_fetchPc_pcReg;
  assign IBusCachedPlugin_iBusRsp_stages_1_output_ready = ((1'b0 && (! _zz_74)) || IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign _zz_74 = _zz_75;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_valid = _zz_74;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_payload = _zz_76;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_readyForError = 1'b1;
    if((! IBusCachedPlugin_pcValids_0))begin
      IBusCachedPlugin_iBusRsp_readyForError = 1'b0;
    end
  end

  assign IBusCachedPlugin_pcValids_0 = IBusCachedPlugin_injector_nextPcCalc_valids_1;
  assign IBusCachedPlugin_pcValids_1 = IBusCachedPlugin_injector_nextPcCalc_valids_2;
  assign IBusCachedPlugin_pcValids_2 = IBusCachedPlugin_injector_nextPcCalc_valids_3;
  assign IBusCachedPlugin_pcValids_3 = IBusCachedPlugin_injector_nextPcCalc_valids_4;
  assign IBusCachedPlugin_iBusRsp_output_ready = (! decode_arbitration_isStuck);
  always @ (*) begin
    decode_arbitration_isValid = IBusCachedPlugin_iBusRsp_output_valid;
    case(_zz_146)
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

  assign iBus_cmd_valid = IBusCachedPlugin_cache_io_mem_cmd_valid;
  always @ (*) begin
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  end

  assign iBus_cmd_payload_size = IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  assign IBusCachedPlugin_s0_tightlyCoupledHit = 1'b0;
  assign _zz_170 = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && (! IBusCachedPlugin_s0_tightlyCoupledHit));
  assign IBusCachedPlugin_mmuBus_cmd_0_isValid = _zz_170;
  assign IBusCachedPlugin_mmuBus_cmd_0_isStuck = (! IBusCachedPlugin_iBusRsp_stages_0_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_0_virtualAddress = IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  assign IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
  assign _zz_171 = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && (! IBusCachedPlugin_s1_tightlyCoupledHit));
  assign _zz_172 = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_1_isValid = _zz_171;
  assign IBusCachedPlugin_mmuBus_cmd_1_isStuck = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_1_virtualAddress = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  assign IBusCachedPlugin_mmuBus_cmd_1_bypassTranslation = 1'b0;
  assign IBusCachedPlugin_mmuBus_end = (IBusCachedPlugin_iBusRsp_stages_1_input_ready || IBusCachedPlugin_externalFlush);
  assign _zz_174 = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && (! IBusCachedPlugin_s2_tightlyCoupledHit));
  assign _zz_175 = (! IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign _zz_176 = (CsrPlugin_privilege == 2'b00);
  assign IBusCachedPlugin_rsp_iBusRspOutputHalt = 1'b0;
  assign IBusCachedPlugin_rsp_issueDetected = 1'b0;
  always @ (*) begin
    IBusCachedPlugin_rsp_redoFetch = 1'b0;
    if(_zz_237)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
    if(_zz_235)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
  end

  always @ (*) begin
    _zz_177 = (IBusCachedPlugin_rsp_redoFetch && (! IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling));
    if(_zz_235)begin
      _zz_177 = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_valid = 1'b0;
    if(_zz_236)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
    if(_zz_234)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_payload_code = 4'bxxxx;
    if(_zz_236)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b1100;
    end
    if(_zz_234)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b0001;
    end
  end

  assign IBusCachedPlugin_decodeExceptionPort_payload_badAddr = {IBusCachedPlugin_iBusRsp_stages_2_input_payload[31 : 2],2'b00};
  assign IBusCachedPlugin_iBusRsp_output_valid = IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  assign IBusCachedPlugin_iBusRsp_stages_2_output_ready = IBusCachedPlugin_iBusRsp_output_ready;
  assign IBusCachedPlugin_iBusRsp_output_payload_rsp_inst = IBusCachedPlugin_cache_io_cpu_decode_data;
  assign IBusCachedPlugin_iBusRsp_output_payload_pc = IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  assign _zz_169 = (decode_arbitration_isValid && decode_FLUSH_ALL);
  assign dataCache_1_io_mem_cmd_s2mPipe_valid = (dataCache_1_io_mem_cmd_valid || dataCache_1_io_mem_cmd_s2mPipe_rValid);
  assign _zz_202 = (! dataCache_1_io_mem_cmd_s2mPipe_rValid);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_wr = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_wr : dataCache_1_io_mem_cmd_payload_wr);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_uncached = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_uncached : dataCache_1_io_mem_cmd_payload_uncached);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_address = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_address : dataCache_1_io_mem_cmd_payload_address);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_data = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_data : dataCache_1_io_mem_cmd_payload_data);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_mask = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_mask : dataCache_1_io_mem_cmd_payload_mask);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_length = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_length : dataCache_1_io_mem_cmd_payload_length);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_last = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_last : dataCache_1_io_mem_cmd_payload_last);
  assign dBus_cmd_valid = dataCache_1_io_mem_cmd_s2mPipe_valid;
  assign dataCache_1_io_mem_cmd_s2mPipe_ready = dBus_cmd_ready;
  assign dBus_cmd_payload_wr = dataCache_1_io_mem_cmd_s2mPipe_payload_wr;
  assign dBus_cmd_payload_uncached = dataCache_1_io_mem_cmd_s2mPipe_payload_uncached;
  assign dBus_cmd_payload_address = dataCache_1_io_mem_cmd_s2mPipe_payload_address;
  assign dBus_cmd_payload_data = dataCache_1_io_mem_cmd_s2mPipe_payload_data;
  assign dBus_cmd_payload_mask = dataCache_1_io_mem_cmd_s2mPipe_payload_mask;
  assign dBus_cmd_payload_length = dataCache_1_io_mem_cmd_s2mPipe_payload_length;
  assign dBus_cmd_payload_last = dataCache_1_io_mem_cmd_s2mPipe_payload_last;
  always @ (*) begin
    _zz_45 = 1'b0;
    if(decode_INSTRUCTION[25])begin
      if(decode_MEMORY_LRSC)begin
        _zz_45 = 1'b1;
      end
      if(decode_MEMORY_AMO)begin
        _zz_45 = 1'b1;
      end
    end
  end

  assign execute_DBusCachedPlugin_size = execute_INSTRUCTION[13 : 12];
  always @ (*) begin
    _zz_178 = (execute_arbitration_isValid && execute_MEMORY_ENABLE);
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_250)begin
        if(_zz_251)begin
          _zz_178 = 1'b1;
        end
      end
    end
  end

  always @ (*) begin
    _zz_179 = execute_SRC_ADD;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_250)begin
        _zz_179 = MmuPlugin_dBusAccess_cmd_payload_address;
      end
    end
  end

  always @ (*) begin
    _zz_180 = execute_MEMORY_WR;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_250)begin
        _zz_180 = MmuPlugin_dBusAccess_cmd_payload_write;
      end
    end
  end

  always @ (*) begin
    case(execute_DBusCachedPlugin_size)
      2'b00 : begin
        _zz_79 = {{{execute_RS2[7 : 0],execute_RS2[7 : 0]},execute_RS2[7 : 0]},execute_RS2[7 : 0]};
      end
      2'b01 : begin
        _zz_79 = {execute_RS2[15 : 0],execute_RS2[15 : 0]};
      end
      default : begin
        _zz_79 = execute_RS2[31 : 0];
      end
    endcase
  end

  always @ (*) begin
    _zz_181 = _zz_79;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_250)begin
        _zz_181 = MmuPlugin_dBusAccess_cmd_payload_data;
      end
    end
  end

  always @ (*) begin
    _zz_182 = execute_DBusCachedPlugin_size;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_250)begin
        _zz_182 = MmuPlugin_dBusAccess_cmd_payload_size;
      end
    end
  end

  assign DBusCachedPlugin_mmuBus_cmd_0_isValid = _zz_178;
  assign DBusCachedPlugin_mmuBus_cmd_0_isStuck = execute_arbitration_isStuck;
  assign DBusCachedPlugin_mmuBus_cmd_0_virtualAddress = _zz_179;
  always @ (*) begin
    DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
    if(execute_IS_DBUS_SHARING)begin
      DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b1;
    end
  end

  assign _zz_201 = (execute_arbitration_isValid && execute_MEMORY_MANAGMENT);
  always @ (*) begin
    _zz_183 = 1'b0;
    if(execute_MEMORY_LRSC)begin
      _zz_183 = 1'b1;
    end
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_250)begin
        _zz_183 = 1'b0;
      end
    end
  end

  always @ (*) begin
    _zz_184 = execute_MEMORY_AMO;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_250)begin
        _zz_184 = 1'b0;
      end
    end
  end

  assign _zz_186 = execute_INSTRUCTION[31 : 29];
  assign _zz_185 = execute_INSTRUCTION[27];
  always @ (*) begin
    _zz_187 = (memory_arbitration_isValid && memory_MEMORY_ENABLE);
    if(memory_IS_DBUS_SHARING)begin
      _zz_187 = 1'b1;
    end
  end

  assign DBusCachedPlugin_mmuBus_cmd_1_isValid = _zz_187;
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
    _zz_188 = DBusCachedPlugin_mmuBus_rsp_isIoAccess;
    if((_zz_48 && (! dataCache_1_io_cpu_memory_isWrite)))begin
      _zz_188 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_189 = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
    if(writeBack_IS_DBUS_SHARING)begin
      _zz_189 = 1'b1;
    end
  end

  assign _zz_190 = (CsrPlugin_privilege == 2'b00);
  assign _zz_191 = writeBack_REGFILE_WRITE_DATA;
  always @ (*) begin
    DBusCachedPlugin_redoBranch_valid = 1'b0;
    if(_zz_252)begin
      if(dataCache_1_io_cpu_redo)begin
        DBusCachedPlugin_redoBranch_valid = 1'b1;
      end
    end
  end

  assign DBusCachedPlugin_redoBranch_payload = writeBack_PC;
  always @ (*) begin
    DBusCachedPlugin_exceptionBus_valid = 1'b0;
    if(_zz_252)begin
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
    if(_zz_252)begin
      if(dataCache_1_io_cpu_writeBack_accessError)begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_338};
      end
      if(dataCache_1_io_cpu_writeBack_unalignedAccess)begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_339};
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

  assign _zz_80 = (writeBack_DBusCachedPlugin_rspShifted[7] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_81[31] = _zz_80;
    _zz_81[30] = _zz_80;
    _zz_81[29] = _zz_80;
    _zz_81[28] = _zz_80;
    _zz_81[27] = _zz_80;
    _zz_81[26] = _zz_80;
    _zz_81[25] = _zz_80;
    _zz_81[24] = _zz_80;
    _zz_81[23] = _zz_80;
    _zz_81[22] = _zz_80;
    _zz_81[21] = _zz_80;
    _zz_81[20] = _zz_80;
    _zz_81[19] = _zz_80;
    _zz_81[18] = _zz_80;
    _zz_81[17] = _zz_80;
    _zz_81[16] = _zz_80;
    _zz_81[15] = _zz_80;
    _zz_81[14] = _zz_80;
    _zz_81[13] = _zz_80;
    _zz_81[12] = _zz_80;
    _zz_81[11] = _zz_80;
    _zz_81[10] = _zz_80;
    _zz_81[9] = _zz_80;
    _zz_81[8] = _zz_80;
    _zz_81[7 : 0] = writeBack_DBusCachedPlugin_rspShifted[7 : 0];
  end

  assign _zz_82 = (writeBack_DBusCachedPlugin_rspShifted[15] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_83[31] = _zz_82;
    _zz_83[30] = _zz_82;
    _zz_83[29] = _zz_82;
    _zz_83[28] = _zz_82;
    _zz_83[27] = _zz_82;
    _zz_83[26] = _zz_82;
    _zz_83[25] = _zz_82;
    _zz_83[24] = _zz_82;
    _zz_83[23] = _zz_82;
    _zz_83[22] = _zz_82;
    _zz_83[21] = _zz_82;
    _zz_83[20] = _zz_82;
    _zz_83[19] = _zz_82;
    _zz_83[18] = _zz_82;
    _zz_83[17] = _zz_82;
    _zz_83[16] = _zz_82;
    _zz_83[15 : 0] = writeBack_DBusCachedPlugin_rspShifted[15 : 0];
  end

  always @ (*) begin
    case(_zz_286)
      2'b00 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_81;
      end
      2'b01 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_83;
      end
      default : begin
        writeBack_DBusCachedPlugin_rspFormated = writeBack_DBusCachedPlugin_rspShifted;
      end
    endcase
  end

  always @ (*) begin
    MmuPlugin_dBusAccess_cmd_ready = 1'b0;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_250)begin
        if(_zz_251)begin
          MmuPlugin_dBusAccess_cmd_ready = (! execute_arbitration_isStuck);
        end
      end
    end
  end

  always @ (*) begin
    DBusCachedPlugin_forceDatapath = 1'b0;
    if(MmuPlugin_dBusAccess_cmd_valid)begin
      if(_zz_250)begin
        DBusCachedPlugin_forceDatapath = 1'b1;
      end
    end
  end

  assign MmuPlugin_dBusAccess_rsp_valid = ((writeBack_IS_DBUS_SHARING && (! dataCache_1_io_cpu_writeBack_isWrite)) && (dataCache_1_io_cpu_redo || (! dataCache_1_io_cpu_writeBack_haltIt)));
  assign MmuPlugin_dBusAccess_rsp_payload_data = dataCache_1_io_cpu_writeBack_data;
  assign MmuPlugin_dBusAccess_rsp_payload_error = (dataCache_1_io_cpu_writeBack_unalignedAccess || dataCache_1_io_cpu_writeBack_accessError);
  assign MmuPlugin_dBusAccess_rsp_payload_redo = dataCache_1_io_cpu_redo;
  assign _zz_85 = ((decode_INSTRUCTION & 32'h00004050) == 32'h00004050);
  assign _zz_86 = ((decode_INSTRUCTION & 32'h00000048) == 32'h00000048);
  assign _zz_87 = ((decode_INSTRUCTION & 32'h00002050) == 32'h00002000);
  assign _zz_88 = ((decode_INSTRUCTION & 32'h00000004) == 32'h00000004);
  assign _zz_89 = ((decode_INSTRUCTION & 32'h0000000c) == 32'h00000004);
  assign _zz_90 = ((decode_INSTRUCTION & 32'h00000030) == 32'h00000010);
  assign _zz_91 = ((decode_INSTRUCTION & 32'h00001000) == 32'h0);
  assign _zz_84 = {(((decode_INSTRUCTION & _zz_447) == 32'h00100050) != 1'b0),{({_zz_86,_zz_448} != 2'b00),{(_zz_449 != 1'b0),{(_zz_450 != _zz_451),{_zz_452,{_zz_453,_zz_454}}}}}};
  assign _zz_92 = _zz_84[3 : 2];
  assign _zz_43 = _zz_92;
  assign _zz_93 = _zz_84[8 : 7];
  assign _zz_42 = _zz_93;
  assign _zz_94 = _zz_84[10 : 9];
  assign _zz_41 = _zz_94;
  assign _zz_95 = _zz_84[23 : 22];
  assign _zz_40 = _zz_95;
  assign _zz_96 = _zz_84[25 : 24];
  assign _zz_39 = _zz_96;
  assign _zz_97 = _zz_84[32 : 31];
  assign _zz_38 = _zz_97;
  assign _zz_98 = _zz_84[34 : 33];
  assign _zz_37 = _zz_98;
  assign decodeExceptionPort_valid = (decode_arbitration_isValid && (! decode_LEGAL_INSTRUCTION));
  assign decodeExceptionPort_payload_code = 4'b0010;
  assign decodeExceptionPort_payload_badAddr = decode_INSTRUCTION;
  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION[19 : 15];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION[24 : 20];
  assign decode_RegFilePlugin_rs1Data = _zz_203;
  assign decode_RegFilePlugin_rs2Data = _zz_204;
  always @ (*) begin
    lastStageRegFileWrite_valid = (_zz_35 && writeBack_arbitration_isFiring);
    if((lastStageRegFileWrite_payload_address == 5'h0))begin
      lastStageRegFileWrite_valid = 1'b0;
    end
  end

  assign lastStageRegFileWrite_payload_address = _zz_34[11 : 7];
  assign lastStageRegFileWrite_payload_data = _zz_44;
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
        _zz_99 = execute_IntAluPlugin_bitwise;
      end
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : begin
        _zz_99 = {31'd0, _zz_340};
      end
      default : begin
        _zz_99 = execute_SRC_ADD_SUB;
      end
    endcase
  end

  always @ (*) begin
    case(decode_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : begin
        _zz_100 = _zz_30;
      end
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : begin
        _zz_100 = {29'd0, _zz_341};
      end
      `Src1CtrlEnum_defaultEncoding_IMU : begin
        _zz_100 = {decode_INSTRUCTION[31 : 12],12'h0};
      end
      default : begin
        _zz_100 = {27'd0, _zz_342};
      end
    endcase
  end

  assign _zz_101 = _zz_343[11];
  always @ (*) begin
    _zz_102[19] = _zz_101;
    _zz_102[18] = _zz_101;
    _zz_102[17] = _zz_101;
    _zz_102[16] = _zz_101;
    _zz_102[15] = _zz_101;
    _zz_102[14] = _zz_101;
    _zz_102[13] = _zz_101;
    _zz_102[12] = _zz_101;
    _zz_102[11] = _zz_101;
    _zz_102[10] = _zz_101;
    _zz_102[9] = _zz_101;
    _zz_102[8] = _zz_101;
    _zz_102[7] = _zz_101;
    _zz_102[6] = _zz_101;
    _zz_102[5] = _zz_101;
    _zz_102[4] = _zz_101;
    _zz_102[3] = _zz_101;
    _zz_102[2] = _zz_101;
    _zz_102[1] = _zz_101;
    _zz_102[0] = _zz_101;
  end

  assign _zz_103 = _zz_344[11];
  always @ (*) begin
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
    _zz_104[7] = _zz_103;
    _zz_104[6] = _zz_103;
    _zz_104[5] = _zz_103;
    _zz_104[4] = _zz_103;
    _zz_104[3] = _zz_103;
    _zz_104[2] = _zz_103;
    _zz_104[1] = _zz_103;
    _zz_104[0] = _zz_103;
  end

  always @ (*) begin
    case(decode_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : begin
        _zz_105 = _zz_28;
      end
      `Src2CtrlEnum_defaultEncoding_IMI : begin
        _zz_105 = {_zz_102,decode_INSTRUCTION[31 : 20]};
      end
      `Src2CtrlEnum_defaultEncoding_IMS : begin
        _zz_105 = {_zz_104,{decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]}};
      end
      default : begin
        _zz_105 = _zz_27;
      end
    endcase
  end

  always @ (*) begin
    execute_SrcPlugin_addSub = _zz_345;
    if(execute_SRC2_FORCE_ZERO)begin
      execute_SrcPlugin_addSub = execute_SRC1;
    end
  end

  assign execute_SrcPlugin_less = ((execute_SRC1[31] == execute_SRC2[31]) ? execute_SrcPlugin_addSub[31] : (execute_SRC_LESS_UNSIGNED ? execute_SRC2[31] : execute_SRC1[31]));
  assign execute_FullBarrelShifterPlugin_amplitude = execute_SRC2[4 : 0];
  always @ (*) begin
    _zz_106[0] = execute_SRC1[31];
    _zz_106[1] = execute_SRC1[30];
    _zz_106[2] = execute_SRC1[29];
    _zz_106[3] = execute_SRC1[28];
    _zz_106[4] = execute_SRC1[27];
    _zz_106[5] = execute_SRC1[26];
    _zz_106[6] = execute_SRC1[25];
    _zz_106[7] = execute_SRC1[24];
    _zz_106[8] = execute_SRC1[23];
    _zz_106[9] = execute_SRC1[22];
    _zz_106[10] = execute_SRC1[21];
    _zz_106[11] = execute_SRC1[20];
    _zz_106[12] = execute_SRC1[19];
    _zz_106[13] = execute_SRC1[18];
    _zz_106[14] = execute_SRC1[17];
    _zz_106[15] = execute_SRC1[16];
    _zz_106[16] = execute_SRC1[15];
    _zz_106[17] = execute_SRC1[14];
    _zz_106[18] = execute_SRC1[13];
    _zz_106[19] = execute_SRC1[12];
    _zz_106[20] = execute_SRC1[11];
    _zz_106[21] = execute_SRC1[10];
    _zz_106[22] = execute_SRC1[9];
    _zz_106[23] = execute_SRC1[8];
    _zz_106[24] = execute_SRC1[7];
    _zz_106[25] = execute_SRC1[6];
    _zz_106[26] = execute_SRC1[5];
    _zz_106[27] = execute_SRC1[4];
    _zz_106[28] = execute_SRC1[3];
    _zz_106[29] = execute_SRC1[2];
    _zz_106[30] = execute_SRC1[1];
    _zz_106[31] = execute_SRC1[0];
  end

  assign execute_FullBarrelShifterPlugin_reversed = ((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SLL_1) ? _zz_106 : execute_SRC1);
  always @ (*) begin
    _zz_107[0] = execute_SHIFT_RIGHT[31];
    _zz_107[1] = execute_SHIFT_RIGHT[30];
    _zz_107[2] = execute_SHIFT_RIGHT[29];
    _zz_107[3] = execute_SHIFT_RIGHT[28];
    _zz_107[4] = execute_SHIFT_RIGHT[27];
    _zz_107[5] = execute_SHIFT_RIGHT[26];
    _zz_107[6] = execute_SHIFT_RIGHT[25];
    _zz_107[7] = execute_SHIFT_RIGHT[24];
    _zz_107[8] = execute_SHIFT_RIGHT[23];
    _zz_107[9] = execute_SHIFT_RIGHT[22];
    _zz_107[10] = execute_SHIFT_RIGHT[21];
    _zz_107[11] = execute_SHIFT_RIGHT[20];
    _zz_107[12] = execute_SHIFT_RIGHT[19];
    _zz_107[13] = execute_SHIFT_RIGHT[18];
    _zz_107[14] = execute_SHIFT_RIGHT[17];
    _zz_107[15] = execute_SHIFT_RIGHT[16];
    _zz_107[16] = execute_SHIFT_RIGHT[15];
    _zz_107[17] = execute_SHIFT_RIGHT[14];
    _zz_107[18] = execute_SHIFT_RIGHT[13];
    _zz_107[19] = execute_SHIFT_RIGHT[12];
    _zz_107[20] = execute_SHIFT_RIGHT[11];
    _zz_107[21] = execute_SHIFT_RIGHT[10];
    _zz_107[22] = execute_SHIFT_RIGHT[9];
    _zz_107[23] = execute_SHIFT_RIGHT[8];
    _zz_107[24] = execute_SHIFT_RIGHT[7];
    _zz_107[25] = execute_SHIFT_RIGHT[6];
    _zz_107[26] = execute_SHIFT_RIGHT[5];
    _zz_107[27] = execute_SHIFT_RIGHT[4];
    _zz_107[28] = execute_SHIFT_RIGHT[3];
    _zz_107[29] = execute_SHIFT_RIGHT[2];
    _zz_107[30] = execute_SHIFT_RIGHT[1];
    _zz_107[31] = execute_SHIFT_RIGHT[0];
  end

  always @ (*) begin
    _zz_108 = 1'b0;
    if(_zz_253)begin
      if(_zz_254)begin
        if(_zz_113)begin
          _zz_108 = 1'b1;
        end
      end
    end
    if(_zz_255)begin
      if(_zz_256)begin
        if(_zz_115)begin
          _zz_108 = 1'b1;
        end
      end
    end
    if(_zz_257)begin
      if(_zz_258)begin
        if(_zz_117)begin
          _zz_108 = 1'b1;
        end
      end
    end
    if((! decode_RS1_USE))begin
      _zz_108 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_109 = 1'b0;
    if(_zz_253)begin
      if(_zz_254)begin
        if(_zz_114)begin
          _zz_109 = 1'b1;
        end
      end
    end
    if(_zz_255)begin
      if(_zz_256)begin
        if(_zz_116)begin
          _zz_109 = 1'b1;
        end
      end
    end
    if(_zz_257)begin
      if(_zz_258)begin
        if(_zz_118)begin
          _zz_109 = 1'b1;
        end
      end
    end
    if((! decode_RS2_USE))begin
      _zz_109 = 1'b0;
    end
  end

  assign _zz_113 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_114 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_115 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_116 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_117 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_118 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign execute_MulPlugin_a = execute_RS1;
  assign execute_MulPlugin_b = execute_RS2;
  always @ (*) begin
    case(_zz_259)
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
    case(_zz_259)
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
  assign writeBack_MulPlugin_result = ($signed(_zz_352) + $signed(_zz_353));
  assign memory_MulDivIterativePlugin_frontendOk = 1'b1;
  always @ (*) begin
    memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b0;
    if(_zz_228)begin
      if(_zz_260)begin
        memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_MulDivIterativePlugin_div_counter_willClear = 1'b0;
    if(_zz_261)begin
      memory_MulDivIterativePlugin_div_counter_willClear = 1'b1;
    end
  end

  assign memory_MulDivIterativePlugin_div_counter_willOverflowIfInc = (memory_MulDivIterativePlugin_div_counter_value == 6'h21);
  assign memory_MulDivIterativePlugin_div_counter_willOverflow = (memory_MulDivIterativePlugin_div_counter_willOverflowIfInc && memory_MulDivIterativePlugin_div_counter_willIncrement);
  always @ (*) begin
    if(memory_MulDivIterativePlugin_div_counter_willOverflow)begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end else begin
      memory_MulDivIterativePlugin_div_counter_valueNext = (memory_MulDivIterativePlugin_div_counter_value + _zz_357);
    end
    if(memory_MulDivIterativePlugin_div_counter_willClear)begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end
  end

  assign _zz_119 = memory_MulDivIterativePlugin_rs1[31 : 0];
  assign memory_MulDivIterativePlugin_div_stage_0_remainderShifted = {memory_MulDivIterativePlugin_accumulator[31 : 0],_zz_119[31]};
  assign memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator = (memory_MulDivIterativePlugin_div_stage_0_remainderShifted - _zz_358);
  assign memory_MulDivIterativePlugin_div_stage_0_outRemainder = ((! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32]) ? _zz_359 : _zz_360);
  assign memory_MulDivIterativePlugin_div_stage_0_outNumerator = _zz_361[31:0];
  assign _zz_120 = (memory_INSTRUCTION[13] ? memory_MulDivIterativePlugin_accumulator[31 : 0] : memory_MulDivIterativePlugin_rs1[31 : 0]);
  assign _zz_121 = (execute_RS2[31] && execute_IS_RS2_SIGNED);
  assign _zz_122 = (1'b0 || ((execute_IS_DIV && execute_RS1[31]) && execute_IS_RS1_SIGNED));
  always @ (*) begin
    _zz_123[32] = (execute_IS_RS1_SIGNED && execute_RS1[31]);
    _zz_123[31 : 0] = execute_RS1;
  end

  always @ (*) begin
    CsrPlugin_privilege = _zz_124;
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
      if(execute_CsrPlugin_writeInstruction)begin
        CsrPlugin_redoInterface_valid = 1'b1;
      end
    end
  end

  assign CsrPlugin_redoInterface_payload = decode_PC;
  assign _zz_125 = (CsrPlugin_sip_STIP && CsrPlugin_sie_STIE);
  assign _zz_126 = (CsrPlugin_sip_SSIP && CsrPlugin_sie_SSIE);
  assign _zz_127 = (CsrPlugin_sip_SEIP_OR && CsrPlugin_sie_SEIE);
  assign _zz_128 = (CsrPlugin_mip_MTIP && CsrPlugin_mie_MTIE);
  assign _zz_129 = (CsrPlugin_mip_MSIP && CsrPlugin_mie_MSIE);
  assign _zz_130 = (CsrPlugin_mip_MEIP && CsrPlugin_mie_MEIE);
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
  assign _zz_131 = {decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid};
  assign _zz_132 = _zz_371[0];
  assign _zz_133 = {BranchPlugin_branchExceptionPort_valid,CsrPlugin_selfException_valid};
  assign _zz_134 = _zz_373[0];
  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_decode = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
    if(_zz_238)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_execute = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
    if(_zz_241)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_memory = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
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
  assign execute_CsrPlugin_blockedBySideEffects = (({writeBack_arbitration_isValid,memory_arbitration_isValid} != 2'b00) || 1'b0);
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
    if(_zz_262)begin
      CsrPlugin_selfException_valid = 1'b1;
    end
    if(_zz_263)begin
      CsrPlugin_selfException_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_selfException_payload_code = 4'bxxxx;
    if(_zz_262)begin
      CsrPlugin_selfException_payload_code = 4'b0010;
    end
    if(_zz_263)begin
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
    case(_zz_288)
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
  assign _zz_135 = execute_INSTRUCTION[14 : 12];
  always @ (*) begin
    if((_zz_135 == 3'b000)) begin
        _zz_136 = execute_BranchPlugin_eq;
    end else if((_zz_135 == 3'b001)) begin
        _zz_136 = (! execute_BranchPlugin_eq);
    end else if((((_zz_135 & 3'b101) == 3'b101))) begin
        _zz_136 = (! execute_SRC_LESS);
    end else begin
        _zz_136 = execute_SRC_LESS;
    end
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : begin
        _zz_137 = 1'b0;
      end
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_137 = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_137 = 1'b1;
      end
      default : begin
        _zz_137 = _zz_136;
      end
    endcase
  end

  assign execute_BranchPlugin_branch_src1 = ((execute_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JALR) ? execute_RS1 : execute_PC);
  assign _zz_138 = _zz_375[19];
  always @ (*) begin
    _zz_139[10] = _zz_138;
    _zz_139[9] = _zz_138;
    _zz_139[8] = _zz_138;
    _zz_139[7] = _zz_138;
    _zz_139[6] = _zz_138;
    _zz_139[5] = _zz_138;
    _zz_139[4] = _zz_138;
    _zz_139[3] = _zz_138;
    _zz_139[2] = _zz_138;
    _zz_139[1] = _zz_138;
    _zz_139[0] = _zz_138;
  end

  assign _zz_140 = _zz_376[11];
  always @ (*) begin
    _zz_141[19] = _zz_140;
    _zz_141[18] = _zz_140;
    _zz_141[17] = _zz_140;
    _zz_141[16] = _zz_140;
    _zz_141[15] = _zz_140;
    _zz_141[14] = _zz_140;
    _zz_141[13] = _zz_140;
    _zz_141[12] = _zz_140;
    _zz_141[11] = _zz_140;
    _zz_141[10] = _zz_140;
    _zz_141[9] = _zz_140;
    _zz_141[8] = _zz_140;
    _zz_141[7] = _zz_140;
    _zz_141[6] = _zz_140;
    _zz_141[5] = _zz_140;
    _zz_141[4] = _zz_140;
    _zz_141[3] = _zz_140;
    _zz_141[2] = _zz_140;
    _zz_141[1] = _zz_140;
    _zz_141[0] = _zz_140;
  end

  assign _zz_142 = _zz_377[11];
  always @ (*) begin
    _zz_143[18] = _zz_142;
    _zz_143[17] = _zz_142;
    _zz_143[16] = _zz_142;
    _zz_143[15] = _zz_142;
    _zz_143[14] = _zz_142;
    _zz_143[13] = _zz_142;
    _zz_143[12] = _zz_142;
    _zz_143[11] = _zz_142;
    _zz_143[10] = _zz_142;
    _zz_143[9] = _zz_142;
    _zz_143[8] = _zz_142;
    _zz_143[7] = _zz_142;
    _zz_143[6] = _zz_142;
    _zz_143[5] = _zz_142;
    _zz_143[4] = _zz_142;
    _zz_143[3] = _zz_142;
    _zz_143[2] = _zz_142;
    _zz_143[1] = _zz_142;
    _zz_143[0] = _zz_142;
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_144 = {{_zz_139,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0};
      end
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_144 = {_zz_141,execute_INSTRUCTION[31 : 20]};
      end
      default : begin
        _zz_144 = {{_zz_143,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0};
      end
    endcase
  end

  assign execute_BranchPlugin_branch_src2 = _zz_144;
  assign execute_BranchPlugin_branchAdder = (execute_BranchPlugin_branch_src1 + execute_BranchPlugin_branch_src2);
  assign BranchPlugin_jumpInterface_valid = ((execute_arbitration_isValid && execute_BRANCH_DO) && (! 1'b0));
  assign BranchPlugin_jumpInterface_payload = execute_BRANCH_CALC;
  always @ (*) begin
    BranchPlugin_branchExceptionPort_valid = ((execute_arbitration_isValid && execute_BRANCH_DO) && BranchPlugin_jumpInterface_payload[1]);
    if(1'b0)begin
      BranchPlugin_branchExceptionPort_valid = 1'b0;
    end
  end

  assign BranchPlugin_branchExceptionPort_payload_code = 4'b0000;
  assign BranchPlugin_branchExceptionPort_payload_badAddr = BranchPlugin_jumpInterface_payload;
  always @ (*) begin
    debug_bus_cmd_ready = 1'b1;
    if(debug_bus_cmd_valid)begin
      case(_zz_264)
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
    if((! _zz_145))begin
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
      case(_zz_264)
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
  assign _zz_31 = _zz_43;
  assign _zz_19 = decode_ALU_CTRL;
  assign _zz_17 = _zz_42;
  assign _zz_32 = decode_to_execute_ALU_CTRL;
  assign _zz_29 = _zz_41;
  assign _zz_16 = decode_ALU_BITWISE_CTRL;
  assign _zz_14 = _zz_40;
  assign _zz_33 = decode_to_execute_ALU_BITWISE_CTRL;
  assign _zz_13 = decode_SHIFT_CTRL;
  assign _zz_11 = _zz_39;
  assign _zz_26 = decode_to_execute_SHIFT_CTRL;
  assign _zz_10 = decode_ENV_CTRL;
  assign _zz_7 = execute_ENV_CTRL;
  assign _zz_5 = memory_ENV_CTRL;
  assign _zz_8 = _zz_38;
  assign _zz_22 = decode_to_execute_ENV_CTRL;
  assign _zz_21 = execute_to_memory_ENV_CTRL;
  assign _zz_23 = memory_to_writeBack_ENV_CTRL;
  assign _zz_3 = decode_BRANCH_CTRL;
  assign _zz_1 = _zz_37;
  assign _zz_20 = decode_to_execute_BRANCH_CTRL;
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
    case(_zz_146)
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
    _zz_147 = 32'h0;
    if(execute_CsrPlugin_csr_768)begin
      _zz_147[19 : 19] = MmuPlugin_status_mxr;
      _zz_147[18 : 18] = MmuPlugin_status_sum;
      _zz_147[17 : 17] = MmuPlugin_status_mprv;
      _zz_147[12 : 11] = CsrPlugin_mstatus_MPP;
      _zz_147[7 : 7] = CsrPlugin_mstatus_MPIE;
      _zz_147[3 : 3] = CsrPlugin_mstatus_MIE;
      _zz_147[8 : 8] = CsrPlugin_sstatus_SPP;
      _zz_147[5 : 5] = CsrPlugin_sstatus_SPIE;
      _zz_147[1 : 1] = CsrPlugin_sstatus_SIE;
    end
  end

  always @ (*) begin
    _zz_148 = 32'h0;
    if(execute_CsrPlugin_csr_256)begin
      _zz_148[19 : 19] = MmuPlugin_status_mxr;
      _zz_148[18 : 18] = MmuPlugin_status_sum;
      _zz_148[17 : 17] = MmuPlugin_status_mprv;
      _zz_148[8 : 8] = CsrPlugin_sstatus_SPP;
      _zz_148[5 : 5] = CsrPlugin_sstatus_SPIE;
      _zz_148[1 : 1] = CsrPlugin_sstatus_SIE;
    end
  end

  always @ (*) begin
    _zz_149 = 32'h0;
    if(execute_CsrPlugin_csr_384)begin
      _zz_149[31 : 31] = MmuPlugin_satp_mode;
      _zz_149[19 : 0] = MmuPlugin_satp_ppn;
    end
  end

  always @ (*) begin
    _zz_150 = 32'h0;
    if(execute_CsrPlugin_csr_769)begin
      _zz_150[31 : 30] = CsrPlugin_misa_base;
      _zz_150[25 : 0] = CsrPlugin_misa_extensions;
    end
  end

  always @ (*) begin
    _zz_151 = 32'h0;
    if(execute_CsrPlugin_csr_836)begin
      _zz_151[11 : 11] = CsrPlugin_mip_MEIP;
      _zz_151[7 : 7] = CsrPlugin_mip_MTIP;
      _zz_151[3 : 3] = CsrPlugin_mip_MSIP;
      _zz_151[5 : 5] = CsrPlugin_sip_STIP;
      _zz_151[1 : 1] = CsrPlugin_sip_SSIP;
      _zz_151[9 : 9] = CsrPlugin_sip_SEIP_OR;
    end
  end

  always @ (*) begin
    _zz_152 = 32'h0;
    if(execute_CsrPlugin_csr_772)begin
      _zz_152[11 : 11] = CsrPlugin_mie_MEIE;
      _zz_152[7 : 7] = CsrPlugin_mie_MTIE;
      _zz_152[3 : 3] = CsrPlugin_mie_MSIE;
      _zz_152[9 : 9] = CsrPlugin_sie_SEIE;
      _zz_152[5 : 5] = CsrPlugin_sie_STIE;
      _zz_152[1 : 1] = CsrPlugin_sie_SSIE;
    end
  end

  always @ (*) begin
    _zz_153 = 32'h0;
    if(execute_CsrPlugin_csr_773)begin
      _zz_153[31 : 2] = CsrPlugin_mtvec_base;
      _zz_153[1 : 0] = CsrPlugin_mtvec_mode;
    end
  end

  always @ (*) begin
    _zz_154 = 32'h0;
    if(execute_CsrPlugin_csr_833)begin
      _zz_154[31 : 0] = CsrPlugin_mepc;
    end
  end

  always @ (*) begin
    _zz_155 = 32'h0;
    if(execute_CsrPlugin_csr_832)begin
      _zz_155[31 : 0] = CsrPlugin_mscratch;
    end
  end

  always @ (*) begin
    _zz_156 = 32'h0;
    if(execute_CsrPlugin_csr_834)begin
      _zz_156[31 : 31] = CsrPlugin_mcause_interrupt;
      _zz_156[3 : 0] = CsrPlugin_mcause_exceptionCode;
    end
  end

  always @ (*) begin
    _zz_157 = 32'h0;
    if(execute_CsrPlugin_csr_835)begin
      _zz_157[31 : 0] = CsrPlugin_mtval;
    end
  end

  always @ (*) begin
    _zz_158 = 32'h0;
    if(execute_CsrPlugin_csr_770)begin
      _zz_158[0 : 0] = CsrPlugin_medeleg_IAM;
      _zz_158[1 : 1] = CsrPlugin_medeleg_IAF;
      _zz_158[2 : 2] = CsrPlugin_medeleg_II;
      _zz_158[4 : 4] = CsrPlugin_medeleg_LAM;
      _zz_158[5 : 5] = CsrPlugin_medeleg_LAF;
      _zz_158[6 : 6] = CsrPlugin_medeleg_SAM;
      _zz_158[7 : 7] = CsrPlugin_medeleg_SAF;
      _zz_158[8 : 8] = CsrPlugin_medeleg_EU;
      _zz_158[9 : 9] = CsrPlugin_medeleg_ES;
      _zz_158[12 : 12] = CsrPlugin_medeleg_IPF;
      _zz_158[13 : 13] = CsrPlugin_medeleg_LPF;
      _zz_158[15 : 15] = CsrPlugin_medeleg_SPF;
    end
  end

  always @ (*) begin
    _zz_159 = 32'h0;
    if(execute_CsrPlugin_csr_771)begin
      _zz_159[9 : 9] = CsrPlugin_mideleg_SE;
      _zz_159[5 : 5] = CsrPlugin_mideleg_ST;
      _zz_159[1 : 1] = CsrPlugin_mideleg_SS;
    end
  end

  always @ (*) begin
    _zz_160 = 32'h0;
    if(execute_CsrPlugin_csr_3073)begin
      _zz_160[31 : 0] = utime[31 : 0];
    end
  end

  always @ (*) begin
    _zz_161 = 32'h0;
    if(execute_CsrPlugin_csr_3201)begin
      _zz_161[31 : 0] = utime[63 : 32];
    end
  end

  always @ (*) begin
    _zz_162 = 32'h0;
    if(execute_CsrPlugin_csr_324)begin
      _zz_162[5 : 5] = CsrPlugin_sip_STIP;
      _zz_162[1 : 1] = CsrPlugin_sip_SSIP;
      _zz_162[9 : 9] = CsrPlugin_sip_SEIP_OR;
    end
  end

  always @ (*) begin
    _zz_163 = 32'h0;
    if(execute_CsrPlugin_csr_260)begin
      _zz_163[9 : 9] = CsrPlugin_sie_SEIE;
      _zz_163[5 : 5] = CsrPlugin_sie_STIE;
      _zz_163[1 : 1] = CsrPlugin_sie_SSIE;
    end
  end

  always @ (*) begin
    _zz_164 = 32'h0;
    if(execute_CsrPlugin_csr_261)begin
      _zz_164[31 : 2] = CsrPlugin_stvec_base;
      _zz_164[1 : 0] = CsrPlugin_stvec_mode;
    end
  end

  always @ (*) begin
    _zz_165 = 32'h0;
    if(execute_CsrPlugin_csr_321)begin
      _zz_165[31 : 0] = CsrPlugin_sepc;
    end
  end

  always @ (*) begin
    _zz_166 = 32'h0;
    if(execute_CsrPlugin_csr_320)begin
      _zz_166[31 : 0] = CsrPlugin_sscratch;
    end
  end

  always @ (*) begin
    _zz_167 = 32'h0;
    if(execute_CsrPlugin_csr_322)begin
      _zz_167[31 : 31] = CsrPlugin_scause_interrupt;
      _zz_167[3 : 0] = CsrPlugin_scause_exceptionCode;
    end
  end

  always @ (*) begin
    _zz_168 = 32'h0;
    if(execute_CsrPlugin_csr_323)begin
      _zz_168[31 : 0] = CsrPlugin_stval;
    end
  end

  assign execute_CsrPlugin_readData = (((((_zz_147 | _zz_148) | (_zz_149 | _zz_637)) | ((_zz_638 | _zz_639) | (_zz_640 | _zz_150))) | (((_zz_151 | _zz_152) | (_zz_153 | _zz_154)) | ((_zz_155 | _zz_156) | (_zz_157 | _zz_158)))) | ((((_zz_159 | _zz_160) | (_zz_161 | _zz_162)) | ((_zz_163 | _zz_164) | (_zz_165 | _zz_166))) | (_zz_167 | _zz_168)));
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      MmuPlugin_status_sum <= 1'b0;
      MmuPlugin_status_mxr <= 1'b0;
      MmuPlugin_status_mprv <= 1'b0;
      MmuPlugin_satp_mode <= 1'b0;
      MmuPlugin_ports_0_cache_0_valid <= 1'b0;
      MmuPlugin_ports_0_cache_1_valid <= 1'b0;
      MmuPlugin_ports_0_cache_2_valid <= 1'b0;
      MmuPlugin_ports_0_cache_3_valid <= 1'b0;
      MmuPlugin_ports_0_dirty <= 1'b0;
      MmuPlugin_ports_0_entryToReplace_value <= 2'b00;
      MmuPlugin_ports_1_cache_0_valid <= 1'b0;
      MmuPlugin_ports_1_cache_1_valid <= 1'b0;
      MmuPlugin_ports_1_cache_2_valid <= 1'b0;
      MmuPlugin_ports_1_cache_3_valid <= 1'b0;
      MmuPlugin_ports_1_dirty <= 1'b0;
      MmuPlugin_ports_1_entryToReplace_value <= 2'b00;
      MmuPlugin_shared_state_1 <= `MmuPlugin_shared_State_defaultEncoding_IDLE;
      MmuPlugin_shared_dBusRspStaged_valid <= 1'b0;
      IBusCachedPlugin_fetchPc_pcReg <= 32'h0;
      IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      IBusCachedPlugin_fetchPc_booted <= 1'b0;
      IBusCachedPlugin_fetchPc_inc <= 1'b0;
      _zz_73 <= 1'b0;
      _zz_75 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      IBusCachedPlugin_rspCounter <= _zz_77;
      IBusCachedPlugin_rspCounter <= 32'h0;
      dataCache_1_io_mem_cmd_s2mPipe_rValid <= 1'b0;
      dBus_rsp_regNext_valid <= 1'b0;
      DBusCachedPlugin_rspCounter <= _zz_78;
      DBusCachedPlugin_rspCounter <= 32'h0;
      _zz_110 <= 1'b0;
      memory_MulDivIterativePlugin_div_counter_value <= 6'h0;
      _zz_124 <= 2'b11;
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
      _zz_146 <= 3'b000;
      execute_to_memory_IS_DBUS_SHARING <= 1'b0;
      memory_to_writeBack_IS_DBUS_SHARING <= 1'b0;
    end else begin
      if((! IBusCachedPlugin_mmuBus_cmd_1_isStuck))begin
        MmuPlugin_ports_0_dirty <= 1'b0;
      end
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
      if((! DBusCachedPlugin_mmuBus_cmd_1_isStuck))begin
        MmuPlugin_ports_1_dirty <= 1'b0;
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
          if(_zz_265)begin
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
      if(_zz_247)begin
        if(_zz_248)begin
          MmuPlugin_ports_0_dirty <= 1'b1;
          if(_zz_266)begin
            MmuPlugin_ports_0_cache_0_valid <= 1'b1;
          end
          if(_zz_267)begin
            MmuPlugin_ports_0_cache_1_valid <= 1'b1;
          end
          if(_zz_268)begin
            MmuPlugin_ports_0_cache_2_valid <= 1'b1;
          end
          if(_zz_269)begin
            MmuPlugin_ports_0_cache_3_valid <= 1'b1;
          end
        end
        if(_zz_249)begin
          MmuPlugin_ports_1_dirty <= 1'b1;
          if(_zz_270)begin
            MmuPlugin_ports_1_cache_0_valid <= 1'b1;
          end
          if(_zz_271)begin
            MmuPlugin_ports_1_cache_1_valid <= 1'b1;
          end
          if(_zz_272)begin
            MmuPlugin_ports_1_cache_2_valid <= 1'b1;
          end
          if(_zz_273)begin
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
        _zz_73 <= 1'b0;
      end
      if(_zz_71)begin
        _zz_73 <= (IBusCachedPlugin_iBusRsp_stages_0_output_valid && (! 1'b0));
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_75 <= 1'b0;
      end
      if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
        _zz_75 <= (IBusCachedPlugin_iBusRsp_stages_1_output_valid && (! IBusCachedPlugin_iBusRsp_flush));
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
      if((! execute_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= IBusCachedPlugin_injector_nextPcCalc_valids_1;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if((! memory_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= IBusCachedPlugin_injector_nextPcCalc_valids_2;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if((! writeBack_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= IBusCachedPlugin_injector_nextPcCalc_valids_3;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if(iBus_rsp_valid)begin
        IBusCachedPlugin_rspCounter <= (IBusCachedPlugin_rspCounter + 32'h00000001);
      end
      if(dataCache_1_io_mem_cmd_s2mPipe_ready)begin
        dataCache_1_io_mem_cmd_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_274)begin
        dataCache_1_io_mem_cmd_s2mPipe_rValid <= dataCache_1_io_mem_cmd_valid;
      end
      dBus_rsp_regNext_valid <= dBus_rsp_valid;
      if(dBus_rsp_valid)begin
        DBusCachedPlugin_rspCounter <= (DBusCachedPlugin_rspCounter + 32'h00000001);
      end
      _zz_110 <= (_zz_35 && writeBack_arbitration_isFiring);
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
      if(_zz_275)begin
        if(_zz_276)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_277)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_278)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
      end
      if(_zz_279)begin
        if(_zz_280)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_281)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_282)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_283)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_284)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_285)begin
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
      if(_zz_243)begin
        _zz_124 <= CsrPlugin_targetPrivilege;
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
      if(_zz_244)begin
        case(_zz_246)
          2'b11 : begin
            CsrPlugin_mstatus_MPP <= 2'b00;
            CsrPlugin_mstatus_MIE <= CsrPlugin_mstatus_MPIE;
            CsrPlugin_mstatus_MPIE <= 1'b1;
            _zz_124 <= CsrPlugin_mstatus_MPP;
          end
          2'b01 : begin
            CsrPlugin_sstatus_SPP <= 1'b0;
            CsrPlugin_sstatus_SIE <= CsrPlugin_sstatus_SPIE;
            CsrPlugin_sstatus_SPIE <= 1'b1;
            _zz_124 <= {1'b0,CsrPlugin_sstatus_SPP};
          end
          default : begin
          end
        endcase
      end
      execute_CsrPlugin_wfiWake <= (({_zz_130,{_zz_129,{_zz_128,{_zz_127,{_zz_126,_zz_125}}}}} != 6'h0) || CsrPlugin_thirdPartyWake);
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
      case(_zz_146)
        3'b000 : begin
          if(IBusCachedPlugin_injectionPort_valid)begin
            _zz_146 <= 3'b001;
          end
        end
        3'b001 : begin
          _zz_146 <= 3'b010;
        end
        3'b010 : begin
          _zz_146 <= 3'b011;
        end
        3'b011 : begin
          if((! decode_arbitration_isStuck))begin
            _zz_146 <= 3'b100;
          end
        end
        3'b100 : begin
          _zz_146 <= 3'b000;
        end
        default : begin
        end
      endcase
      if(MmuPlugin_dBusAccess_rsp_valid)begin
        memory_to_writeBack_IS_DBUS_SHARING <= 1'b0;
      end
      if(execute_CsrPlugin_csr_768)begin
        if(execute_CsrPlugin_writeEnable)begin
          MmuPlugin_status_mxr <= _zz_378[0];
          MmuPlugin_status_sum <= _zz_379[0];
          MmuPlugin_status_mprv <= _zz_380[0];
          CsrPlugin_mstatus_MPP <= execute_CsrPlugin_writeData[12 : 11];
          CsrPlugin_mstatus_MPIE <= _zz_381[0];
          CsrPlugin_mstatus_MIE <= _zz_382[0];
          CsrPlugin_sstatus_SPP <= execute_CsrPlugin_writeData[8 : 8];
          CsrPlugin_sstatus_SPIE <= _zz_383[0];
          CsrPlugin_sstatus_SIE <= _zz_384[0];
        end
      end
      if(execute_CsrPlugin_csr_256)begin
        if(execute_CsrPlugin_writeEnable)begin
          MmuPlugin_status_mxr <= _zz_385[0];
          MmuPlugin_status_sum <= _zz_386[0];
          MmuPlugin_status_mprv <= _zz_387[0];
          CsrPlugin_sstatus_SPP <= execute_CsrPlugin_writeData[8 : 8];
          CsrPlugin_sstatus_SPIE <= _zz_388[0];
          CsrPlugin_sstatus_SIE <= _zz_389[0];
        end
      end
      if(execute_CsrPlugin_csr_384)begin
        if(execute_CsrPlugin_writeInstruction)begin
          MmuPlugin_ports_0_cache_0_valid <= 1'b0;
          MmuPlugin_ports_0_cache_1_valid <= 1'b0;
          MmuPlugin_ports_0_cache_2_valid <= 1'b0;
          MmuPlugin_ports_0_cache_3_valid <= 1'b0;
          MmuPlugin_ports_1_cache_0_valid <= 1'b0;
          MmuPlugin_ports_1_cache_1_valid <= 1'b0;
          MmuPlugin_ports_1_cache_2_valid <= 1'b0;
          MmuPlugin_ports_1_cache_3_valid <= 1'b0;
          MmuPlugin_ports_0_dirty <= 1'b1;
          MmuPlugin_ports_1_dirty <= 1'b1;
        end
        if(execute_CsrPlugin_writeEnable)begin
          MmuPlugin_satp_mode <= _zz_390[0];
        end
      end
      if(execute_CsrPlugin_csr_836)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_sip_STIP <= _zz_392[0];
          CsrPlugin_sip_SSIP <= _zz_393[0];
          CsrPlugin_sip_SEIP_SOFT <= _zz_394[0];
        end
      end
      if(execute_CsrPlugin_csr_772)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mie_MEIE <= _zz_395[0];
          CsrPlugin_mie_MTIE <= _zz_396[0];
          CsrPlugin_mie_MSIE <= _zz_397[0];
          CsrPlugin_sie_SEIE <= _zz_398[0];
          CsrPlugin_sie_STIE <= _zz_399[0];
          CsrPlugin_sie_SSIE <= _zz_400[0];
        end
      end
      if(execute_CsrPlugin_csr_770)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_medeleg_IAM <= _zz_401[0];
          CsrPlugin_medeleg_IAF <= _zz_402[0];
          CsrPlugin_medeleg_II <= _zz_403[0];
          CsrPlugin_medeleg_LAM <= _zz_404[0];
          CsrPlugin_medeleg_LAF <= _zz_405[0];
          CsrPlugin_medeleg_SAM <= _zz_406[0];
          CsrPlugin_medeleg_SAF <= _zz_407[0];
          CsrPlugin_medeleg_EU <= _zz_408[0];
          CsrPlugin_medeleg_ES <= _zz_409[0];
          CsrPlugin_medeleg_IPF <= _zz_410[0];
          CsrPlugin_medeleg_LPF <= _zz_411[0];
          CsrPlugin_medeleg_SPF <= _zz_412[0];
        end
      end
      if(execute_CsrPlugin_csr_771)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mideleg_SE <= _zz_413[0];
          CsrPlugin_mideleg_ST <= _zz_414[0];
          CsrPlugin_mideleg_SS <= _zz_415[0];
        end
      end
      if(execute_CsrPlugin_csr_324)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_sip_STIP <= _zz_416[0];
          CsrPlugin_sip_SSIP <= _zz_417[0];
          CsrPlugin_sip_SEIP_SOFT <= _zz_418[0];
        end
      end
      if(execute_CsrPlugin_csr_260)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_sie_SEIE <= _zz_419[0];
          CsrPlugin_sie_STIE <= _zz_420[0];
          CsrPlugin_sie_SSIE <= _zz_421[0];
        end
      end
    end
  end

  always @ (posedge debugCd_external_clk) begin
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
        if(_zz_265)begin
          MmuPlugin_shared_portSortedOh <= MmuPlugin_shared_refills;
          MmuPlugin_shared_vpn_1 <= _zz_62[31 : 22];
          MmuPlugin_shared_vpn_0 <= _zz_62[21 : 12];
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
    if(_zz_247)begin
      if(_zz_248)begin
        if(_zz_266)begin
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
        if(_zz_267)begin
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
        if(_zz_268)begin
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
        if(_zz_269)begin
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
      if(_zz_249)begin
        if(_zz_270)begin
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
        if(_zz_271)begin
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
        if(_zz_272)begin
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
        if(_zz_273)begin
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
      _zz_76 <= IBusCachedPlugin_iBusRsp_stages_1_output_payload;
    end
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready)begin
      IBusCachedPlugin_s1_tightlyCoupledHit <= IBusCachedPlugin_s0_tightlyCoupledHit;
    end
    if(IBusCachedPlugin_iBusRsp_stages_2_input_ready)begin
      IBusCachedPlugin_s2_tightlyCoupledHit <= IBusCachedPlugin_s1_tightlyCoupledHit;
    end
    if(_zz_274)begin
      dataCache_1_io_mem_cmd_s2mPipe_rData_wr <= dataCache_1_io_mem_cmd_payload_wr;
      dataCache_1_io_mem_cmd_s2mPipe_rData_uncached <= dataCache_1_io_mem_cmd_payload_uncached;
      dataCache_1_io_mem_cmd_s2mPipe_rData_address <= dataCache_1_io_mem_cmd_payload_address;
      dataCache_1_io_mem_cmd_s2mPipe_rData_data <= dataCache_1_io_mem_cmd_payload_data;
      dataCache_1_io_mem_cmd_s2mPipe_rData_mask <= dataCache_1_io_mem_cmd_payload_mask;
      dataCache_1_io_mem_cmd_s2mPipe_rData_length <= dataCache_1_io_mem_cmd_payload_length;
      dataCache_1_io_mem_cmd_s2mPipe_rData_last <= dataCache_1_io_mem_cmd_payload_last;
    end
    dBus_rsp_regNext_payload_aggregated <= dBus_rsp_payload_aggregated;
    dBus_rsp_regNext_payload_last <= dBus_rsp_payload_last;
    dBus_rsp_regNext_payload_data <= dBus_rsp_payload_data;
    dBus_rsp_regNext_payload_error <= dBus_rsp_payload_error;
    _zz_111 <= _zz_34[11 : 7];
    _zz_112 <= _zz_44;
    if((memory_MulDivIterativePlugin_div_counter_value == 6'h20))begin
      memory_MulDivIterativePlugin_div_done <= 1'b1;
    end
    if((! memory_arbitration_isStuck))begin
      memory_MulDivIterativePlugin_div_done <= 1'b0;
    end
    if(_zz_228)begin
      if(_zz_260)begin
        memory_MulDivIterativePlugin_rs1[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outNumerator;
        memory_MulDivIterativePlugin_accumulator[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outRemainder;
        if((memory_MulDivIterativePlugin_div_counter_value == 6'h20))begin
          memory_MulDivIterativePlugin_div_result <= _zz_362[31:0];
        end
      end
    end
    if(_zz_261)begin
      memory_MulDivIterativePlugin_accumulator <= 65'h0;
      memory_MulDivIterativePlugin_rs1 <= ((_zz_122 ? (~ _zz_123) : _zz_123) + _zz_368);
      memory_MulDivIterativePlugin_rs2 <= ((_zz_121 ? (~ execute_RS2) : execute_RS2) + _zz_370);
      memory_MulDivIterativePlugin_div_needRevert <= ((_zz_122 ^ (_zz_121 && (! execute_INSTRUCTION[13]))) && (! (((execute_RS2 == 32'h0) && execute_IS_RS2_SIGNED) && (! execute_INSTRUCTION[13]))));
    end
    CsrPlugin_mip_MEIP <= externalInterrupt;
    CsrPlugin_mip_MTIP <= timerInterrupt;
    CsrPlugin_mip_MSIP <= softwareInterrupt;
    CsrPlugin_sip_SEIP_INPUT <= externalInterruptS;
    CsrPlugin_mcycle <= (CsrPlugin_mcycle + 64'h0000000000000001);
    if(writeBack_arbitration_isFiring)begin
      CsrPlugin_minstret <= (CsrPlugin_minstret + 64'h0000000000000001);
    end
    if(_zz_238)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_132 ? IBusCachedPlugin_decodeExceptionPort_payload_code : decodeExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_132 ? IBusCachedPlugin_decodeExceptionPort_payload_badAddr : decodeExceptionPort_payload_badAddr);
    end
    if(_zz_241)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_134 ? CsrPlugin_selfException_payload_code : BranchPlugin_branchExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_134 ? CsrPlugin_selfException_payload_badAddr : BranchPlugin_branchExceptionPort_payload_badAddr);
    end
    if(DBusCachedPlugin_exceptionBus_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= DBusCachedPlugin_exceptionBus_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= DBusCachedPlugin_exceptionBus_payload_badAddr;
    end
    if(_zz_275)begin
      if(_zz_276)begin
        CsrPlugin_interrupt_code <= 4'b0101;
        CsrPlugin_interrupt_targetPrivilege <= 2'b01;
      end
      if(_zz_277)begin
        CsrPlugin_interrupt_code <= 4'b0001;
        CsrPlugin_interrupt_targetPrivilege <= 2'b01;
      end
      if(_zz_278)begin
        CsrPlugin_interrupt_code <= 4'b1001;
        CsrPlugin_interrupt_targetPrivilege <= 2'b01;
      end
    end
    if(_zz_279)begin
      if(_zz_280)begin
        CsrPlugin_interrupt_code <= 4'b0101;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_281)begin
        CsrPlugin_interrupt_code <= 4'b0001;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_282)begin
        CsrPlugin_interrupt_code <= 4'b1001;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_283)begin
        CsrPlugin_interrupt_code <= 4'b0111;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_284)begin
        CsrPlugin_interrupt_code <= 4'b0011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_285)begin
        CsrPlugin_interrupt_code <= 4'b1011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
    end
    if(_zz_243)begin
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
      decode_to_execute_PC <= _zz_27;
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
      decode_to_execute_FORMAL_PC_NEXT <= decode_FORMAL_PC_NEXT;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_FORMAL_PC_NEXT <= _zz_47;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_FORMAL_PC_NEXT <= memory_FORMAL_PC_NEXT;
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
      decode_to_execute_ALU_CTRL <= _zz_18;
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
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_AMO <= decode_MEMORY_AMO;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_MANAGMENT <= decode_MEMORY_MANAGMENT;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_LESS_UNSIGNED <= decode_SRC_LESS_UNSIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_BITWISE_CTRL <= _zz_15;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SHIFT_CTRL <= _zz_12;
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
      decode_to_execute_ENV_CTRL <= _zz_9;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_ENV_CTRL <= _zz_6;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_ENV_CTRL <= _zz_4;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BRANCH_CTRL <= _zz_2;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS1 <= _zz_30;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS2 <= _zz_28;
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
      memory_to_writeBack_REGFILE_WRITE_DATA <= _zz_24;
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
        CsrPlugin_mip_MSIP <= _zz_391[0];
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
        CsrPlugin_scause_interrupt <= _zz_422[0];
        CsrPlugin_scause_exceptionCode <= execute_CsrPlugin_writeData[3 : 0];
      end
    end
    if(execute_CsrPlugin_csr_323)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_stval <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
  end

  always @ (posedge debugCd_external_clk) begin
    DebugPlugin_firstCycle <= 1'b0;
    if(debug_bus_cmd_ready)begin
      DebugPlugin_firstCycle <= 1'b1;
    end
    DebugPlugin_secondCycle <= DebugPlugin_firstCycle;
    DebugPlugin_isPipBusy <= (({writeBack_arbitration_isValid,{memory_arbitration_isValid,{execute_arbitration_isValid,decode_arbitration_isValid}}} != 4'b0000) || IBusCachedPlugin_incomingInstruction);
    if(writeBack_arbitration_isValid)begin
      DebugPlugin_busReadDataReg <= _zz_44;
    end
    _zz_145 <= debug_bus_cmd_payload_address[2];
    if(_zz_240)begin
      DebugPlugin_busReadDataReg <= execute_PC;
    end
    DebugPlugin_resetIt_regNext <= DebugPlugin_resetIt;
  end

  always @ (posedge debugCd_external_clk) begin
    if(debugCd_logic_outputReset) begin
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
        case(_zz_264)
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
      if(_zz_240)begin
        if(_zz_242)begin
          DebugPlugin_haltIt <= 1'b1;
          DebugPlugin_haltedByBreak <= 1'b1;
        end
      end
      if(_zz_245)begin
        if(decode_arbitration_isValid)begin
          DebugPlugin_haltIt <= 1'b1;
        end
      end
    end
  end


endmodule

module BufferCC_1 (
  input               io_initial,
  input               io_dataIn,
  output              io_dataOut,
  input               debugCd_external_clk,
  input               debugCd_external_reset
);
  reg                 buffers_0;
  reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge debugCd_external_clk or posedge debugCd_external_reset) begin
    if (debugCd_external_reset) begin
      buffers_0 <= io_initial;
      buffers_1 <= io_initial;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module WishboneToBmb_1 (
  input               io_input_CYC,
  input               io_input_STB,
  output              io_input_ACK,
  input               io_input_WE,
  input      [13:0]   io_input_ADR,
  output     [31:0]   io_input_DAT_MISO,
  input      [31:0]   io_input_DAT_MOSI,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [15:0]   io_output_cmd_payload_fragment_address,
  output     [1:0]    io_output_cmd_payload_fragment_length,
  output     [31:0]   io_output_cmd_payload_fragment_data,
  output     [3:0]    io_output_cmd_payload_fragment_mask,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  reg                 _zz_1;

  assign io_output_cmd_payload_fragment_address = ({2'd0,io_input_ADR} <<< 2);
  assign io_output_cmd_payload_fragment_opcode = (io_input_WE ? 1'b1 : 1'b0);
  assign io_output_cmd_payload_fragment_data = io_input_DAT_MOSI;
  assign io_output_cmd_payload_fragment_mask = 4'b1111;
  assign io_output_cmd_payload_fragment_length = 2'b11;
  assign io_output_cmd_payload_last = 1'b1;
  assign io_output_cmd_valid = ((io_input_CYC && io_input_STB) && (! _zz_1));
  assign io_input_ACK = (io_output_rsp_valid && io_output_rsp_ready);
  assign io_input_DAT_MISO = io_output_rsp_payload_fragment_data;
  assign io_output_rsp_ready = 1'b1;
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      _zz_1 <= 1'b0;
    end else begin
      if((io_output_cmd_valid && io_output_cmd_ready))begin
        _zz_1 <= 1'b1;
      end
      if((io_output_rsp_valid && io_output_rsp_ready))begin
        _zz_1 <= 1'b0;
      end
    end
  end


endmodule

module WishboneToBmb (
  input               io_input_CYC,
  input               io_input_STB,
  output              io_input_ACK,
  input               io_input_WE,
  input      [19:0]   io_input_ADR,
  output     [31:0]   io_input_DAT_MISO,
  input      [31:0]   io_input_DAT_MOSI,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [21:0]   io_output_cmd_payload_fragment_address,
  output     [1:0]    io_output_cmd_payload_fragment_length,
  output     [31:0]   io_output_cmd_payload_fragment_data,
  output     [3:0]    io_output_cmd_payload_fragment_mask,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  reg                 _zz_1;

  assign io_output_cmd_payload_fragment_address = ({2'd0,io_input_ADR} <<< 2);
  assign io_output_cmd_payload_fragment_opcode = (io_input_WE ? 1'b1 : 1'b0);
  assign io_output_cmd_payload_fragment_data = io_input_DAT_MOSI;
  assign io_output_cmd_payload_fragment_mask = 4'b1111;
  assign io_output_cmd_payload_fragment_length = 2'b11;
  assign io_output_cmd_payload_last = 1'b1;
  assign io_output_cmd_valid = ((io_input_CYC && io_input_STB) && (! _zz_1));
  assign io_input_ACK = (io_output_rsp_valid && io_output_rsp_ready);
  assign io_input_DAT_MISO = io_output_rsp_payload_fragment_data;
  assign io_output_rsp_ready = 1'b1;
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      _zz_1 <= 1'b0;
    end else begin
      if((io_output_cmd_valid && io_output_cmd_ready))begin
        _zz_1 <= 1'b1;
      end
      if((io_output_rsp_valid && io_output_rsp_ready))begin
        _zz_1 <= 1'b0;
      end
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
  input               debugCd_external_clk,
  input               debugCd_logic_outputReset
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
  always @ (posedge debugCd_external_clk) begin
    if(debugCd_logic_outputReset) begin
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

  always @ (posedge debugCd_external_clk) begin
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
  input               debugCd_external_clk,
  input               debugCd_logic_outputReset,
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
    .debugCd_external_clk          (debugCd_external_clk                         ), //i
    .debugCd_logic_outputReset     (debugCd_logic_outputReset                    )  //i
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
  always @ (posedge debugCd_external_clk) begin
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

module StreamArbiter (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input               io_inputs_0_payload_last,
  input      [0:0]    io_inputs_0_payload_fragment_source,
  input      [0:0]    io_inputs_0_payload_fragment_opcode,
  input      [31:0]   io_inputs_0_payload_fragment_address,
  input      [5:0]    io_inputs_0_payload_fragment_length,
  input      [31:0]   io_inputs_0_payload_fragment_data,
  input      [3:0]    io_inputs_0_payload_fragment_mask,
  input      [4:0]    io_inputs_0_payload_fragment_context,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input               io_inputs_1_payload_last,
  input      [0:0]    io_inputs_1_payload_fragment_source,
  input      [0:0]    io_inputs_1_payload_fragment_opcode,
  input      [31:0]   io_inputs_1_payload_fragment_address,
  input      [5:0]    io_inputs_1_payload_fragment_length,
  input      [31:0]   io_inputs_1_payload_fragment_data,
  input      [3:0]    io_inputs_1_payload_fragment_mask,
  input      [4:0]    io_inputs_1_payload_fragment_context,
  output              io_output_valid,
  input               io_output_ready,
  output              io_output_payload_last,
  output     [0:0]    io_output_payload_fragment_source,
  output     [0:0]    io_output_payload_fragment_opcode,
  output     [31:0]   io_output_payload_fragment_address,
  output     [5:0]    io_output_payload_fragment_length,
  output     [31:0]   io_output_payload_fragment_data,
  output     [3:0]    io_output_payload_fragment_mask,
  output     [4:0]    io_output_payload_fragment_context,
  output     [0:0]    io_chosen,
  output     [1:0]    io_chosenOH,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  wire       [3:0]    _zz_6;
  wire       [1:0]    _zz_7;
  wire       [3:0]    _zz_8;
  wire       [0:0]    _zz_9;
  wire       [0:0]    _zz_10;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire       [1:0]    _zz_1;
  wire       [3:0]    _zz_2;
  wire       [3:0]    _zz_3;
  wire       [1:0]    _zz_4;
  wire                _zz_5;

  assign _zz_6 = (_zz_2 - _zz_8);
  assign _zz_7 = {maskLocked_0,maskLocked_1};
  assign _zz_8 = {2'd0, _zz_7};
  assign _zz_9 = _zz_4[0 : 0];
  assign _zz_10 = _zz_4[1 : 1];
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign _zz_1 = {io_inputs_1_valid,io_inputs_0_valid};
  assign _zz_2 = {_zz_1,_zz_1};
  assign _zz_3 = (_zz_2 & (~ _zz_6));
  assign _zz_4 = (_zz_3[3 : 2] | _zz_3[1 : 0]);
  assign maskProposal_0 = _zz_9[0];
  assign maskProposal_1 = _zz_10[0];
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
  assign _zz_5 = io_chosenOH[1];
  assign io_chosen = _zz_5;
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b1;
    end else begin
      if(io_output_valid)begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
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

//StreamFifoLowLatency replaced by StreamFifoLowLatency

module StreamFifo_1 (
  input               io_push_valid,
  output              io_push_ready,
  input      [7:0]    io_push_payload_context,
  input               io_push_payload_isWrite,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [7:0]    io_pop_payload_context,
  output              io_pop_payload_isWrite,
  input               io_flush,
  output     [5:0]    io_occupancy,
  output     [5:0]    io_availability,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  reg        [8:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [4:0]    _zz_6;
  wire       [0:0]    _zz_7;
  wire       [4:0]    _zz_8;
  wire       [0:0]    _zz_9;
  wire       [4:0]    _zz_10;
  wire                _zz_11;
  wire       [8:0]    _zz_12;
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
  wire       [8:0]    _zz_3;
  wire       [4:0]    logic_ptrDif;
  reg [8:0] logic_ram [0:31];

  assign _zz_5 = logic_pushPtr_willIncrement;
  assign _zz_6 = {4'd0, _zz_5};
  assign _zz_7 = logic_popPtr_willIncrement;
  assign _zz_8 = {4'd0, _zz_7};
  assign _zz_9 = _zz_3[8 : 8];
  assign _zz_10 = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_11 = 1'b1;
  assign _zz_12 = {io_push_payload_isWrite,io_push_payload_context};
  always @ (posedge debugCd_external_clk) begin
    if(_zz_11) begin
      _zz_4 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @ (posedge debugCd_external_clk) begin
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
  assign io_pop_payload_context = _zz_3[7 : 0];
  assign io_pop_payload_isWrite = _zz_9[0];
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_10};
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
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

module StreamFifoLowLatency_1 (
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
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
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
  always @ (posedge debugCd_external_clk) begin
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
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
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

module StreamFork_1 (
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_last,
  input      [0:0]    io_input_payload_fragment_opcode,
  input      [29:0]   io_input_payload_fragment_address,
  input      [3:0]    io_input_payload_fragment_length,
  input      [127:0]  io_input_payload_fragment_data,
  input      [15:0]   io_input_payload_fragment_mask,
  input      [7:0]    io_input_payload_fragment_context,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output              io_outputs_0_payload_last,
  output     [0:0]    io_outputs_0_payload_fragment_opcode,
  output     [29:0]   io_outputs_0_payload_fragment_address,
  output     [3:0]    io_outputs_0_payload_fragment_length,
  output     [127:0]  io_outputs_0_payload_fragment_data,
  output     [15:0]   io_outputs_0_payload_fragment_mask,
  output     [7:0]    io_outputs_0_payload_fragment_context,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output              io_outputs_1_payload_last,
  output     [0:0]    io_outputs_1_payload_fragment_opcode,
  output     [29:0]   io_outputs_1_payload_fragment_address,
  output     [3:0]    io_outputs_1_payload_fragment_length,
  output     [127:0]  io_outputs_1_payload_fragment_data,
  output     [15:0]   io_outputs_1_payload_fragment_mask,
  output     [7:0]    io_outputs_1_payload_fragment_context,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
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
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
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
  input      [29:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  input      [127:0]  io_input_cmd_payload_fragment_data,
  input      [15:0]   io_input_cmd_payload_fragment_mask,
  input      [5:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [127:0]  io_input_rsp_payload_fragment_data,
  output     [5:0]    io_input_rsp_payload_fragment_context,
  output reg          io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output reg [0:0]    io_output_cmd_payload_fragment_opcode,
  output reg [29:0]   io_output_cmd_payload_fragment_address,
  output reg [3:0]    io_output_cmd_payload_fragment_length,
  output     [127:0]  io_output_cmd_payload_fragment_data,
  output     [15:0]   io_output_cmd_payload_fragment_mask,
  output     [7:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output reg          io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [127:0]  io_output_rsp_payload_fragment_data,
  input      [7:0]    io_output_rsp_payload_fragment_context,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
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
  reg        [29:0]   buffer_address;
  reg        [5:0]    buffer_context;
  reg        [1:0]    buffer_beat;
  wire                buffer_last;
  wire       [29:0]   buffer_addressIncr;
  wire                buffer_isWrite;
  wire       [1:0]    cmdTransferBeatCount;
  wire                requireBuffer;
  reg                 cmdContext_drop;
  reg                 cmdContext_last;
  reg        [5:0]    cmdContext_context;
  wire                rspContext_drop;
  wire                rspContext_last;
  wire       [5:0]    rspContext_context;
  wire       [7:0]    _zz_1;
  reg                 io_output_rsp_thrown_valid;
  wire                io_output_rsp_thrown_ready;
  wire                io_output_rsp_thrown_payload_last;
  wire       [0:0]    io_output_rsp_thrown_payload_fragment_opcode;
  wire       [127:0]  io_output_rsp_thrown_payload_fragment_data;
  wire       [7:0]    io_output_rsp_thrown_payload_fragment_context;

  assign _zz_2 = (! (rspContext_last || (! rspContext_drop)));
  assign _zz_3 = (io_output_cmd_valid && io_output_cmd_ready);
  assign _zz_4 = (_zz_6 + 12'h010);
  assign _zz_5 = buffer_address[11 : 0];
  assign _zz_6 = _zz_5;
  assign _zz_7 = _zz_1[0 : 0];
  assign _zz_8 = _zz_1[1 : 1];
  assign buffer_last = (buffer_beat == 2'b01);
  assign buffer_addressIncr = {buffer_address[29 : 12],(_zz_4 & (~ 12'h00f))};
  assign buffer_isWrite = (buffer_opcode == 1'b1);
  assign cmdTransferBeatCount = io_input_cmd_payload_fragment_length[5 : 4];
  assign requireBuffer = (cmdTransferBeatCount != 2'b00);
  assign io_output_cmd_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
  assign io_output_cmd_payload_last = 1'b1;
  assign io_output_cmd_payload_fragment_context = {cmdContext_context,{cmdContext_last,cmdContext_drop}};
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
  assign rspContext_drop = _zz_7[0];
  assign rspContext_last = _zz_8[0];
  assign rspContext_context = _zz_1[7 : 2];
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
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
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

  always @ (posedge debugCd_external_clk) begin
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

module BmbUpSizerBridge_1 (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [29:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  input      [63:0]   io_input_cmd_payload_fragment_data,
  input      [7:0]    io_input_cmd_payload_fragment_mask,
  input      [3:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output reg          io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [63:0]   io_input_rsp_payload_fragment_data,
  output     [3:0]    io_input_rsp_payload_fragment_context,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [29:0]   io_output_cmd_payload_fragment_address,
  output     [5:0]    io_output_cmd_payload_fragment_length,
  output reg [127:0]  io_output_cmd_payload_fragment_data,
  output reg [15:0]   io_output_cmd_payload_fragment_mask,
  output     [5:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [127:0]  io_output_rsp_payload_fragment_data,
  input      [5:0]    io_output_rsp_payload_fragment_context,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  reg        [63:0]   _zz_2;
  wire                _zz_3;
  wire       [2:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [2:0]    _zz_6;
  wire       [0:0]    cmdArea_context_selStart;
  reg        [0:0]    cmdArea_context_selEnd;
  wire       [3:0]    cmdArea_context_context;
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
  wire       [3:0]    rspArea_context_context;
  wire       [5:0]    _zz_1;
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

  assign cmdArea_context_context = io_input_cmd_payload_fragment_context;
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
  assign io_output_cmd_payload_fragment_context = {cmdArea_context_context,{cmdArea_context_selEnd,cmdArea_context_selStart}};
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
  assign rspArea_context_context = _zz_1[5 : 2];
  assign io_input_rsp_valid = io_output_rsp_valid;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_context = rspArea_context_context;
  assign rspArea_readLogic_sel = (io_input_rsp_payload_first ? rspArea_context_selStart : rspArea_readLogic_selReg);
  always @ (*) begin
    io_input_rsp_payload_last = (io_output_rsp_payload_last && (rspArea_readLogic_sel == rspArea_context_selEnd));
    if((rspArea_context_selEnd != rspArea_readLogic_sel))begin
      io_input_rsp_payload_last = 1'b0;
    end
  end

  assign io_output_rsp_ready = (io_input_rsp_ready && (io_input_rsp_payload_last || (rspArea_readLogic_sel == 1'b1)));
  assign io_input_rsp_payload_fragment_data = _zz_2;
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
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

  always @ (posedge debugCd_external_clk) begin
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

module StreamFifoLowLatency (
  input               io_push_valid,
  output              io_push_ready,
  input      [127:0]  io_push_payload_data,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [127:0]  io_pop_payload_data,
  input               io_flush,
  output     [5:0]    io_occupancy,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
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
  always @ (posedge debugCd_external_clk) begin
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
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
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

module StreamFifo (
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
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
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
  reg [4:0] logic_ram [0:31];

  assign _zz_5 = logic_pushPtr_willIncrement;
  assign _zz_6 = {4'd0, _zz_5};
  assign _zz_7 = logic_popPtr_willIncrement;
  assign _zz_8 = {4'd0, _zz_7};
  assign _zz_9 = _zz_3[4 : 4];
  assign _zz_10 = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_11 = 1'b1;
  assign _zz_12 = {io_push_payload_isWrite,io_push_payload_context};
  always @ (posedge debugCd_external_clk) begin
    if(_zz_11) begin
      _zz_4 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @ (posedge debugCd_external_clk) begin
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
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
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

module StreamFork (
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_last,
  input      [0:0]    io_input_payload_fragment_opcode,
  input      [29:0]   io_input_payload_fragment_address,
  input      [3:0]    io_input_payload_fragment_length,
  input      [3:0]    io_input_payload_fragment_context,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output              io_outputs_0_payload_last,
  output     [0:0]    io_outputs_0_payload_fragment_opcode,
  output     [29:0]   io_outputs_0_payload_fragment_address,
  output     [3:0]    io_outputs_0_payload_fragment_length,
  output     [3:0]    io_outputs_0_payload_fragment_context,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output              io_outputs_1_payload_last,
  output     [0:0]    io_outputs_1_payload_fragment_opcode,
  output     [29:0]   io_outputs_1_payload_fragment_address,
  output     [3:0]    io_outputs_1_payload_fragment_length,
  output     [3:0]    io_outputs_1_payload_fragment_context,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
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
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
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
  input      [29:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
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
  output reg [29:0]   io_output_cmd_payload_fragment_address,
  output reg [3:0]    io_output_cmd_payload_fragment_length,
  output     [3:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output reg          io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [127:0]  io_output_rsp_payload_fragment_data,
  input      [3:0]    io_output_rsp_payload_fragment_context,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
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
  reg        [29:0]   buffer_address;
  reg        [1:0]    buffer_context;
  reg        [1:0]    buffer_beat;
  wire                buffer_last;
  wire       [29:0]   buffer_addressIncr;
  wire                buffer_isWrite;
  wire       [1:0]    cmdTransferBeatCount;
  wire                requireBuffer;
  reg                 cmdContext_drop;
  reg                 cmdContext_last;
  reg        [1:0]    cmdContext_context;
  wire                rspContext_drop;
  wire                rspContext_last;
  wire       [1:0]    rspContext_context;
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
  assign _zz_7 = _zz_1[0 : 0];
  assign _zz_8 = _zz_1[1 : 1];
  assign buffer_last = (buffer_beat == 2'b01);
  assign buffer_addressIncr = {buffer_address[29 : 12],(_zz_4 & (~ 12'h00f))};
  assign buffer_isWrite = (buffer_opcode == 1'b1);
  assign cmdTransferBeatCount = io_input_cmd_payload_fragment_length[5 : 4];
  assign requireBuffer = (cmdTransferBeatCount != 2'b00);
  assign io_output_cmd_payload_last = 1'b1;
  assign io_output_cmd_payload_fragment_context = {cmdContext_context,{cmdContext_last,cmdContext_drop}};
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
  assign rspContext_drop = _zz_7[0];
  assign rspContext_last = _zz_8[0];
  assign rspContext_context = _zz_1[3 : 2];
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
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
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

  always @ (posedge debugCd_external_clk) begin
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
  input      [29:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output reg          io_input_rsp_payload_last,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [63:0]   io_input_rsp_payload_fragment_data,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [29:0]   io_output_cmd_payload_fragment_address,
  output     [5:0]    io_output_cmd_payload_fragment_length,
  output     [1:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output              io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [127:0]  io_output_rsp_payload_fragment_data,
  input      [1:0]    io_output_rsp_payload_fragment_context,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  reg        [63:0]   _zz_2;
  wire       [2:0]    _zz_3;
  wire       [0:0]    _zz_4;
  wire       [2:0]    _zz_5;
  wire       [0:0]    cmdArea_context_selStart;
  wire       [0:0]    cmdArea_context_selEnd;
  wire       [0:0]    rspArea_context_selStart;
  wire       [0:0]    rspArea_context_selEnd;
  wire       [1:0]    _zz_1;
  reg        [0:0]    rspArea_readLogic_selReg;
  reg                 io_input_rsp_payload_first;
  wire       [0:0]    rspArea_readLogic_sel;

  assign _zz_3 = (_zz_5 + io_input_cmd_payload_fragment_length[5 : 3]);
  assign _zz_4 = io_input_cmd_payload_fragment_address[3 : 3];
  assign _zz_5 = {2'd0, _zz_4};
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
  assign cmdArea_context_selEnd = _zz_3[0:0];
  assign io_output_cmd_payload_last = io_input_cmd_payload_last;
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign io_output_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign io_output_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign io_output_cmd_payload_fragment_context = {cmdArea_context_selEnd,cmdArea_context_selStart};
  assign io_output_cmd_valid = io_input_cmd_valid;
  assign io_input_cmd_ready = io_output_cmd_ready;
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
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      io_input_rsp_payload_first <= 1'b1;
    end else begin
      if((io_input_rsp_valid && io_input_rsp_ready))begin
        io_input_rsp_payload_first <= io_input_rsp_payload_last;
      end
    end
  end

  always @ (posedge debugCd_external_clk) begin
    rspArea_readLogic_selReg <= rspArea_readLogic_sel;
    if((io_input_rsp_valid && io_input_rsp_ready))begin
      rspArea_readLogic_selReg <= (rspArea_readLogic_sel + 1'b1);
    end
  end


endmodule

module DataCache (
  input               io_cpu_execute_isValid,
  input      [31:0]   io_cpu_execute_address,
  output              io_cpu_execute_haltIt,
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
  output              io_cpu_writeBack_keepMemRspData,
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
  output              io_mem_cmd_payload_last,
  input               io_mem_rsp_valid,
  input      [2:0]    io_mem_rsp_payload_aggregated,
  input               io_mem_rsp_payload_last,
  input      [63:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  wire                _zz_20;
  wire                _zz_21;
  wire                _zz_22;
  wire                _zz_23;
  reg        [21:0]   _zz_24;
  reg        [21:0]   _zz_25;
  reg        [31:0]   _zz_26;
  reg        [31:0]   _zz_27;
  reg        [3:0]    _zz_28;
  reg        [3:0]    _zz_29;
  reg        [31:0]   _zz_30;
  wire       [63:0]   ways_0_data_rd_data;
  wire       [63:0]   ways_1_data_rd_data;
  wire                _zz_31;
  wire                _zz_32;
  wire                _zz_33;
  wire                _zz_34;
  wire                _zz_35;
  wire                _zz_36;
  wire                _zz_37;
  wire                _zz_38;
  wire                _zz_39;
  wire                _zz_40;
  wire                _zz_41;
  wire       [2:0]    _zz_42;
  wire       [0:0]    _zz_43;
  wire       [0:0]    _zz_44;
  wire       [0:0]    _zz_45;
  wire       [0:0]    _zz_46;
  wire       [31:0]   _zz_47;
  wire       [31:0]   _zz_48;
  wire       [31:0]   _zz_49;
  wire       [31:0]   _zz_50;
  wire       [1:0]    _zz_51;
  wire       [31:0]   _zz_52;
  wire       [1:0]    _zz_53;
  wire       [1:0]    _zz_54;
  wire       [0:0]    _zz_55;
  wire       [0:0]    _zz_56;
  wire       [2:0]    _zz_57;
  wire       [2:0]    _zz_58;
  wire       [21:0]   _zz_59;
  wire       [21:0]   _zz_60;
  wire       [0:0]    _zz_61;
  wire       [0:0]    _zz_62;
  wire       [0:0]    _zz_63;
  wire       [0:0]    _zz_64;
  wire       [0:0]    _zz_65;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 _zz_3;
  reg                 _zz_4;
  wire                haltCpu;
  reg                 tagsReadCmd_valid;
  reg        [5:0]    tagsReadCmd_payload;
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
  wire                _zz_5;
  wire                ways_0_tagsReadRsp_valid;
  wire                ways_0_tagsReadRsp_error;
  wire       [19:0]   ways_0_tagsReadRsp_address;
  wire       [21:0]   _zz_6;
  wire       [63:0]   ways_0_dataReadRspMem;
  wire       [31:0]   ways_0_dataReadRsp;
  wire                _zz_7;
  wire                ways_1_tagsReadRsp_valid;
  wire                ways_1_tagsReadRsp_error;
  wire       [19:0]   ways_1_tagsReadRsp_address;
  wire       [21:0]   _zz_8;
  wire       [63:0]   ways_1_dataReadRspMem;
  wire       [31:0]   ways_1_dataReadRsp;
  wire                rspSync;
  wire                rspLast;
  reg                 memCmdSent;
  reg        [3:0]    _zz_9;
  wire       [3:0]    stage0_mask;
  wire       [9:0]    _zz_10;
  reg        [1:0]    stage0_dataColisions;
  wire       [8:0]    _zz_11;
  wire       [3:0]    _zz_12;
  wire       [1:0]    stage0_wayInvalidate;
  reg                 stageA_request_wr;
  reg        [31:0]   stageA_request_data;
  reg        [1:0]    stageA_request_size;
  reg                 stageA_request_isLrsc;
  reg                 stageA_request_isAmo;
  reg                 stageA_request_amoCtrl_swap;
  reg        [2:0]    stageA_request_amoCtrl_alu;
  reg                 stageA_request_totalyConsistent;
  reg        [3:0]    stageA_mask;
  wire       [1:0]    stageA_wayHits;
  reg        [1:0]    _zz_13;
  reg        [1:0]    stageA_wayInvalidate;
  reg        [1:0]    stage0_dataColisions_regNextWhen;
  wire       [9:0]    _zz_14;
  reg        [1:0]    _zz_15;
  wire       [8:0]    _zz_16;
  wire       [3:0]    _zz_17;
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
  wire                stageB_consistancyHazard;
  reg        [1:0]    stageB_dataColisions;
  reg        [1:0]    stageB_waysHitsBeforeInvalidate;
  wire       [1:0]    stageB_waysHits;
  wire                stageB_waysHit;
  wire       [31:0]   stageB_dataMux;
  reg        [3:0]    stageB_mask;
  reg                 stageB_loaderValid;
  wire       [31:0]   stageB_ioMemRspMuxed;
  reg                 stageB_flusher_valid;
  wire                stageB_flusher_hold;
  reg                 stageB_flusher_start;
  reg                 stageB_lrSc_reserved;
  wire                stageB_isExternalLsrc;
  wire                stageB_isExternalAmo;
  reg        [31:0]   stageB_requestDataBypass;
  wire                stageB_amo_compare;
  wire                stageB_amo_unsigned;
  wire       [31:0]   stageB_amo_addSub;
  wire                stageB_amo_less;
  wire                stageB_amo_selectRf;
  reg        [31:0]   stageB_amo_result;
  reg        [31:0]   stageB_amo_resultReg;
  reg                 stageB_amo_internal_resultRegValid;
  reg                 stageB_cpuWriteToCache;
  wire       [1:0]    _zz_18;
  wire                stageB_bypassCache;
  reg        [1:0]    _zz_19;
  reg                 loader_valid;
  reg                 loader_counter_willIncrement;
  wire                loader_counter_willClear;
  reg        [2:0]    loader_counter_valueNext;
  reg        [2:0]    loader_counter_value;
  wire                loader_counter_willOverflowIfInc;
  wire                loader_counter_willOverflow;
  reg        [1:0]    loader_waysAllocator;
  reg                 loader_error;
  wire                loader_kill;
  reg                 loader_killReg;
  wire                loader_done;
  reg [21:0] ways_0_tags [0:63];
  reg [21:0] ways_1_tags [0:63];

  assign _zz_31 = (io_cpu_execute_isValid && (! io_cpu_memory_isStuck));
  assign _zz_32 = ((((stageB_consistancyHazard || stageB_mmuRsp_refilling) || io_cpu_writeBack_accessError) || io_cpu_writeBack_mmuException) || io_cpu_writeBack_unalignedAccess);
  assign _zz_33 = (stageB_mmuRsp_isIoAccess || stageB_isExternalLsrc);
  assign _zz_34 = (stageB_waysHit || (stageB_request_wr && (! stageB_request_isAmo)));
  assign _zz_35 = (! stageB_amo_internal_resultRegValid);
  assign _zz_36 = (stageB_request_isLrsc && (! stageB_lrSc_reserved));
  assign _zz_37 = ((loader_valid && io_mem_rsp_valid) && rspLast);
  assign _zz_38 = (stageB_request_isLrsc && (! stageB_lrSc_reserved));
  assign _zz_39 = (((! stageB_request_wr) || stageB_request_isAmo) && ((stageB_dataColisions & stageB_waysHits) != 2'b00));
  assign _zz_40 = (! stageB_flusher_hold);
  assign _zz_41 = (stageB_mmuRsp_physicalAddress[11 : 6] != 6'h3f);
  assign _zz_42 = (stageB_request_amoCtrl_alu | {stageB_request_amoCtrl_swap,2'b00});
  assign _zz_43 = _zz_6[0 : 0];
  assign _zz_44 = _zz_6[1 : 1];
  assign _zz_45 = _zz_8[0 : 0];
  assign _zz_46 = _zz_8[1 : 1];
  assign _zz_47 = ($signed(_zz_48) + $signed(_zz_52));
  assign _zz_48 = ($signed(_zz_49) + $signed(_zz_50));
  assign _zz_49 = stageB_request_data;
  assign _zz_50 = (stageB_amo_compare ? (~ stageB_dataMux) : stageB_dataMux);
  assign _zz_51 = (stageB_amo_compare ? _zz_53 : _zz_54);
  assign _zz_52 = {{30{_zz_51[1]}}, _zz_51};
  assign _zz_53 = 2'b01;
  assign _zz_54 = 2'b00;
  assign _zz_55 = (! stageB_lrSc_reserved);
  assign _zz_56 = loader_counter_willIncrement;
  assign _zz_57 = {2'd0, _zz_56};
  assign _zz_58 = {loader_waysAllocator,loader_waysAllocator[1]};
  assign _zz_59 = {tagsWriteCmd_payload_data_address,{tagsWriteCmd_payload_data_error,tagsWriteCmd_payload_data_valid}};
  assign _zz_60 = {tagsWriteCmd_payload_data_address,{tagsWriteCmd_payload_data_error,tagsWriteCmd_payload_data_valid}};
  assign _zz_61 = io_cpu_memory_address[2 : 2];
  assign _zz_62 = io_cpu_memory_address[2 : 2];
  assign _zz_63 = _zz_10[0 : 0];
  assign _zz_64 = _zz_14[0 : 0];
  assign _zz_65 = io_cpu_writeBack_address[2 : 2];
  always @ (posedge debugCd_external_clk) begin
    if(_zz_5) begin
      _zz_24 <= ways_0_tags[tagsReadCmd_payload];
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if(_zz_4) begin
      ways_0_tags[tagsWriteCmd_payload_address] <= _zz_59;
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if(_zz_7) begin
      _zz_25 <= ways_1_tags[tagsReadCmd_payload];
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if(_zz_2) begin
      ways_1_tags[tagsWriteCmd_payload_address] <= _zz_60;
    end
  end

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
    .wr_clk     (debugCd_external_clk               ), //i
    .wr_en      (_zz_20                             ), //i
    .wr_mask    (dataWriteCmd_payload_mask[7:0]     ), //i
    .wr_addr    (dataWriteCmd_payload_address[8:0]  ), //i
    .wr_data    (dataWriteCmd_payload_data[63:0]    ), //i
    .rd_clk     (debugCd_external_clk               ), //i
    .rd_en      (_zz_21                             ), //i
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
    .wr_clk     (debugCd_external_clk               ), //i
    .wr_en      (_zz_22                             ), //i
    .wr_mask    (dataWriteCmd_payload_mask[7:0]     ), //i
    .wr_addr    (dataWriteCmd_payload_address[8:0]  ), //i
    .wr_data    (dataWriteCmd_payload_data[63:0]    ), //i
    .rd_clk     (debugCd_external_clk               ), //i
    .rd_en      (_zz_23                             ), //i
    .rd_addr    (dataReadCmd_payload[8:0]           ), //i
    .rd_data    (ways_1_data_rd_data[63:0]          )  //o
  );
  always @(*) begin
    case(_zz_61)
      1'b0 : begin
        _zz_26 = ways_0_dataReadRspMem[31 : 0];
      end
      default : begin
        _zz_26 = ways_0_dataReadRspMem[63 : 32];
      end
    endcase
  end

  always @(*) begin
    case(_zz_62)
      1'b0 : begin
        _zz_27 = ways_1_dataReadRspMem[31 : 0];
      end
      default : begin
        _zz_27 = ways_1_dataReadRspMem[63 : 32];
      end
    endcase
  end

  always @(*) begin
    case(_zz_63)
      1'b0 : begin
        _zz_28 = dataWriteCmd_payload_mask[3 : 0];
      end
      default : begin
        _zz_28 = dataWriteCmd_payload_mask[7 : 4];
      end
    endcase
  end

  always @(*) begin
    case(_zz_64)
      1'b0 : begin
        _zz_29 = dataWriteCmd_payload_mask[3 : 0];
      end
      default : begin
        _zz_29 = dataWriteCmd_payload_mask[7 : 4];
      end
    endcase
  end

  always @(*) begin
    case(_zz_65)
      1'b0 : begin
        _zz_30 = io_mem_rsp_payload_data[31 : 0];
      end
      default : begin
        _zz_30 = io_mem_rsp_payload_data[63 : 32];
      end
    endcase
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if((dataWriteCmd_valid && dataWriteCmd_payload_way[1]))begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    if((tagsWriteCmd_valid && tagsWriteCmd_payload_way[1]))begin
      _zz_2 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_3 = 1'b0;
    if((dataWriteCmd_valid && dataWriteCmd_payload_way[0]))begin
      _zz_3 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_4 = 1'b0;
    if((tagsWriteCmd_valid && tagsWriteCmd_payload_way[0]))begin
      _zz_4 = 1'b1;
    end
  end

  assign haltCpu = 1'b0;
  assign _zz_5 = (tagsReadCmd_valid && (! io_cpu_memory_isStuck));
  assign _zz_6 = _zz_24;
  assign ways_0_tagsReadRsp_valid = _zz_43[0];
  assign ways_0_tagsReadRsp_error = _zz_44[0];
  assign ways_0_tagsReadRsp_address = _zz_6[21 : 2];
  assign ways_0_dataReadRspMem = ways_0_data_rd_data;
  assign ways_0_dataReadRsp = _zz_26;
  assign _zz_7 = (tagsReadCmd_valid && (! io_cpu_memory_isStuck));
  assign _zz_8 = _zz_25;
  assign ways_1_tagsReadRsp_valid = _zz_45[0];
  assign ways_1_tagsReadRsp_error = _zz_46[0];
  assign ways_1_tagsReadRsp_address = _zz_8[21 : 2];
  assign ways_1_dataReadRspMem = ways_1_data_rd_data;
  assign ways_1_dataReadRsp = _zz_27;
  always @ (*) begin
    tagsReadCmd_valid = 1'b0;
    if(_zz_31)begin
      tagsReadCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    tagsReadCmd_payload = 6'h0;
    if(_zz_31)begin
      tagsReadCmd_payload = io_cpu_execute_address[11 : 6];
    end
  end

  always @ (*) begin
    dataReadCmd_valid = 1'b0;
    if(_zz_31)begin
      dataReadCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    dataReadCmd_payload = 9'h0;
    if(_zz_31)begin
      dataReadCmd_payload = io_cpu_execute_address[11 : 3];
    end
  end

  always @ (*) begin
    tagsWriteCmd_valid = 1'b0;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_valid = stageB_flusher_valid;
    end
    if(_zz_32)begin
      tagsWriteCmd_valid = 1'b0;
    end
    if(loader_done)begin
      tagsWriteCmd_valid = 1'b1;
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
  end

  always @ (*) begin
    tagsWriteCmd_payload_address = 6'h0;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 6];
    end
    if(loader_done)begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 6];
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
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_33) begin
          if(_zz_34)begin
            if(stageB_request_isAmo)begin
              if(_zz_35)begin
                dataWriteCmd_valid = 1'b0;
              end
            end
            if(_zz_36)begin
              dataWriteCmd_valid = 1'b0;
            end
          end
        end
      end
    end
    if(_zz_32)begin
      dataWriteCmd_valid = 1'b0;
    end
    if(_zz_37)begin
      dataWriteCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_way = 2'bxx;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_way = stageB_waysHits;
    end
    if(_zz_37)begin
      dataWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_address = 9'h0;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 3];
    end
    if(_zz_37)begin
      dataWriteCmd_payload_address = {stageB_mmuRsp_physicalAddress[11 : 6],loader_counter_value};
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_data = 64'h0;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_data[31 : 0] = stageB_requestDataBypass;
      dataWriteCmd_payload_data[63 : 32] = stageB_requestDataBypass;
    end
    if(_zz_37)begin
      dataWriteCmd_payload_data = io_mem_rsp_payload_data;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_mask = 8'h0;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_mask = 8'h0;
      if(_zz_18[0])begin
        dataWriteCmd_payload_mask[3 : 0] = stageB_mask;
      end
      if(_zz_18[1])begin
        dataWriteCmd_payload_mask[7 : 4] = stageB_mask;
      end
    end
    if(_zz_37)begin
      dataWriteCmd_payload_mask = 8'hff;
    end
  end

  assign io_cpu_execute_haltIt = 1'b0;
  assign rspSync = 1'b1;
  assign rspLast = 1'b1;
  always @ (*) begin
    case(io_cpu_execute_args_size)
      2'b00 : begin
        _zz_9 = 4'b0001;
      end
      2'b01 : begin
        _zz_9 = 4'b0011;
      end
      default : begin
        _zz_9 = 4'b1111;
      end
    endcase
  end

  assign stage0_mask = (_zz_9 <<< io_cpu_execute_address[1 : 0]);
  assign _zz_10 = io_cpu_execute_address[11 : 2];
  assign _zz_11 = (_zz_10 >>> 1);
  assign _zz_12 = _zz_28;
  always @ (*) begin
    stage0_dataColisions[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == _zz_11)) && ((stage0_mask & _zz_12) != 4'b0000));
    stage0_dataColisions[1] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[1]) && (dataWriteCmd_payload_address == _zz_11)) && ((stage0_mask & _zz_12) != 4'b0000));
  end

  assign stage0_wayInvalidate = 2'b00;
  assign io_cpu_memory_isWrite = stageA_request_wr;
  always @ (*) begin
    _zz_13[0] = ((io_cpu_memory_mmuRsp_physicalAddress[31 : 12] == ways_0_tagsReadRsp_address) && ways_0_tagsReadRsp_valid);
    _zz_13[1] = ((io_cpu_memory_mmuRsp_physicalAddress[31 : 12] == ways_1_tagsReadRsp_address) && ways_1_tagsReadRsp_valid);
  end

  assign stageA_wayHits = _zz_13;
  assign _zz_14 = io_cpu_memory_address[11 : 2];
  assign _zz_16 = (_zz_14 >>> 1);
  assign _zz_17 = _zz_29;
  always @ (*) begin
    _zz_15[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == _zz_16)) && ((stageA_mask & _zz_17) != 4'b0000));
    _zz_15[1] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[1]) && (dataWriteCmd_payload_address == _zz_16)) && ((stageA_mask & _zz_17) != 4'b0000));
  end

  assign stageA_dataColisions = (stage0_dataColisions_regNextWhen | _zz_15);
  always @ (*) begin
    stageB_mmuRspFreeze = 1'b0;
    if((stageB_loaderValid || loader_valid))begin
      stageB_mmuRspFreeze = 1'b1;
    end
  end

  assign stageB_consistancyHazard = 1'b0;
  assign stageB_waysHits = (stageB_waysHitsBeforeInvalidate & (~ stageB_wayInvalidate));
  assign stageB_waysHit = (stageB_waysHits != 2'b00);
  assign stageB_dataMux = (stageB_waysHits[0] ? stageB_dataReadRsp_0 : stageB_dataReadRsp_1);
  always @ (*) begin
    stageB_loaderValid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_33) begin
          if(! _zz_34) begin
            if(io_mem_cmd_ready)begin
              stageB_loaderValid = 1'b1;
            end
          end
        end
      end
    end
    if(_zz_32)begin
      stageB_loaderValid = 1'b0;
    end
  end

  assign stageB_ioMemRspMuxed = _zz_30;
  always @ (*) begin
    io_cpu_writeBack_haltIt = io_cpu_writeBack_isValid;
    if(stageB_flusher_valid)begin
      io_cpu_writeBack_haltIt = 1'b1;
    end
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(_zz_33)begin
          if(((! stageB_request_wr) ? (io_mem_rsp_valid && rspSync) : io_mem_cmd_ready))begin
            io_cpu_writeBack_haltIt = 1'b0;
          end
          if(_zz_38)begin
            io_cpu_writeBack_haltIt = 1'b0;
          end
        end else begin
          if(_zz_34)begin
            if(((! stageB_request_wr) || io_mem_cmd_ready))begin
              io_cpu_writeBack_haltIt = 1'b0;
            end
            if(stageB_request_isAmo)begin
              if(_zz_35)begin
                io_cpu_writeBack_haltIt = 1'b1;
              end
            end
            if(_zz_36)begin
              io_cpu_writeBack_haltIt = 1'b0;
            end
          end
        end
      end
    end
    if(_zz_32)begin
      io_cpu_writeBack_haltIt = 1'b0;
    end
  end

  assign stageB_flusher_hold = 1'b0;
  always @ (*) begin
    io_cpu_flush_ready = 1'b0;
    if(stageB_flusher_start)begin
      io_cpu_flush_ready = 1'b1;
    end
  end

  assign stageB_isExternalLsrc = 1'b0;
  assign stageB_isExternalAmo = 1'b0;
  always @ (*) begin
    stageB_requestDataBypass = stageB_request_data;
    if(stageB_request_isAmo)begin
      stageB_requestDataBypass = stageB_amo_resultReg;
    end
  end

  assign stageB_amo_compare = stageB_request_amoCtrl_alu[2];
  assign stageB_amo_unsigned = (stageB_request_amoCtrl_alu[2 : 1] == 2'b11);
  assign stageB_amo_addSub = _zz_47;
  assign stageB_amo_less = ((stageB_request_data[31] == stageB_dataMux[31]) ? stageB_amo_addSub[31] : (stageB_amo_unsigned ? stageB_dataMux[31] : stageB_request_data[31]));
  assign stageB_amo_selectRf = (stageB_request_amoCtrl_swap ? 1'b1 : (stageB_request_amoCtrl_alu[0] ^ stageB_amo_less));
  always @ (*) begin
    case(_zz_42)
      3'b000 : begin
        stageB_amo_result = stageB_amo_addSub;
      end
      3'b001 : begin
        stageB_amo_result = (stageB_request_data ^ stageB_dataMux);
      end
      3'b010 : begin
        stageB_amo_result = (stageB_request_data | stageB_dataMux);
      end
      3'b011 : begin
        stageB_amo_result = (stageB_request_data & stageB_dataMux);
      end
      default : begin
        stageB_amo_result = (stageB_amo_selectRf ? stageB_request_data : stageB_dataMux);
      end
    endcase
  end

  always @ (*) begin
    stageB_cpuWriteToCache = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_33) begin
          if(_zz_34)begin
            stageB_cpuWriteToCache = 1'b1;
          end
        end
      end
    end
  end

  assign _zz_18 = ({1'd0,1'b1} <<< io_cpu_writeBack_address[2 : 2]);
  always @ (*) begin
    io_cpu_redo = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_33) begin
          if(_zz_34)begin
            if(_zz_39)begin
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
      io_cpu_writeBack_accessError = ((((! stageB_request_wr) && 1'b1) && io_mem_rsp_valid) && io_mem_rsp_payload_error);
    end else begin
      io_cpu_writeBack_accessError = ((stageB_waysHits & _zz_19) != 2'b00);
    end
  end

  assign io_cpu_writeBack_mmuException = (io_cpu_writeBack_isValid && ((stageB_mmuRsp_exception || ((! stageB_mmuRsp_allowWrite) && stageB_request_wr)) || ((! stageB_mmuRsp_allowRead) && ((! stageB_request_wr) || stageB_request_isAmo))));
  assign io_cpu_writeBack_unalignedAccess = (io_cpu_writeBack_isValid && (((stageB_request_size == 2'b10) && (stageB_mmuRsp_physicalAddress[1 : 0] != 2'b00)) || ((stageB_request_size == 2'b01) && (stageB_mmuRsp_physicalAddress[0 : 0] != 1'b0))));
  assign io_cpu_writeBack_isWrite = stageB_request_wr;
  always @ (*) begin
    io_mem_cmd_valid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(_zz_33)begin
          io_mem_cmd_valid = (! memCmdSent);
          if(_zz_38)begin
            io_mem_cmd_valid = 1'b0;
          end
        end else begin
          if(_zz_34)begin
            if(stageB_request_wr)begin
              io_mem_cmd_valid = 1'b1;
            end
            if(stageB_request_isAmo)begin
              if(_zz_35)begin
                io_mem_cmd_valid = 1'b0;
              end
            end
            if(_zz_39)begin
              io_mem_cmd_valid = 1'b0;
            end
            if(_zz_36)begin
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
    if(_zz_32)begin
      io_mem_cmd_valid = 1'b0;
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 2],2'b00};
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_33) begin
          if(_zz_34)begin
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
      if(! stageB_isExternalAmo) begin
        if(! _zz_33) begin
          if(_zz_34)begin
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
      if(! stageB_isExternalAmo) begin
        if(! _zz_33) begin
          if(! _zz_34) begin
            io_mem_cmd_payload_wr = 1'b0;
          end
        end
      end
    end
  end

  assign io_mem_cmd_payload_mask = stageB_mask;
  assign io_mem_cmd_payload_data = stageB_requestDataBypass;
  assign io_mem_cmd_payload_uncached = stageB_mmuRsp_isIoAccess;
  assign stageB_bypassCache = ((stageB_mmuRsp_isIoAccess || stageB_isExternalLsrc) || stageB_isExternalAmo);
  assign io_cpu_writeBack_keepMemRspData = 1'b0;
  always @ (*) begin
    if(stageB_bypassCache)begin
      io_cpu_writeBack_data = stageB_ioMemRspMuxed;
    end else begin
      io_cpu_writeBack_data = stageB_dataMux;
    end
    if((stageB_request_isLrsc && stageB_request_wr))begin
      io_cpu_writeBack_data = {31'd0, _zz_55};
    end
  end

  always @ (*) begin
    _zz_19[0] = stageB_tagsReadRsp_0_error;
    _zz_19[1] = stageB_tagsReadRsp_1_error;
  end

  always @ (*) begin
    loader_counter_willIncrement = 1'b0;
    if(_zz_37)begin
      loader_counter_willIncrement = 1'b1;
    end
  end

  assign loader_counter_willClear = 1'b0;
  assign loader_counter_willOverflowIfInc = (loader_counter_value == 3'b111);
  assign loader_counter_willOverflow = (loader_counter_willOverflowIfInc && loader_counter_willIncrement);
  always @ (*) begin
    loader_counter_valueNext = (loader_counter_value + _zz_57);
    if(loader_counter_willClear)begin
      loader_counter_valueNext = 3'b000;
    end
  end

  assign loader_kill = 1'b0;
  assign loader_done = loader_counter_willOverflow;
  assign _zz_20 = (_zz_3 && 1'b1);
  assign _zz_21 = ((dataReadCmd_valid && (! io_cpu_memory_isStuck)) && 1'b1);
  assign _zz_22 = (_zz_1 && 1'b1);
  assign _zz_23 = ((dataReadCmd_valid && (! io_cpu_memory_isStuck)) && 1'b1);
  always @ (posedge debugCd_external_clk) begin
    tagsWriteLastCmd_valid <= tagsWriteCmd_valid;
    tagsWriteLastCmd_payload_way <= tagsWriteCmd_payload_way;
    tagsWriteLastCmd_payload_address <= tagsWriteCmd_payload_address;
    tagsWriteLastCmd_payload_data_valid <= tagsWriteCmd_payload_data_valid;
    tagsWriteLastCmd_payload_data_error <= tagsWriteCmd_payload_data_error;
    tagsWriteLastCmd_payload_data_address <= tagsWriteCmd_payload_data_address;
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
      stageB_dataColisions <= stageA_dataColisions;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_waysHitsBeforeInvalidate <= stageA_wayHits;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_mask <= stageA_mask;
    end
    if(stageB_flusher_valid)begin
      if(_zz_40)begin
        if(_zz_41)begin
          stageB_mmuRsp_physicalAddress[11 : 6] <= (stageB_mmuRsp_physicalAddress[11 : 6] + 6'h01);
        end
      end
    end
    if(stageB_flusher_start)begin
      stageB_mmuRsp_physicalAddress[11 : 6] <= 6'h0;
    end
    stageB_amo_internal_resultRegValid <= io_cpu_writeBack_isStuck;
    stageB_amo_resultReg <= stageB_amo_result;
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
  end

  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      memCmdSent <= 1'b0;
      stageB_flusher_valid <= 1'b0;
      stageB_flusher_start <= 1'b1;
      stageB_lrSc_reserved <= 1'b0;
      loader_valid <= 1'b0;
      loader_counter_value <= 3'b000;
      loader_waysAllocator <= 2'b01;
      loader_error <= 1'b0;
      loader_killReg <= 1'b0;
    end else begin
      if(io_mem_cmd_ready)begin
        memCmdSent <= 1'b1;
      end
      if((! io_cpu_writeBack_isStuck))begin
        memCmdSent <= 1'b0;
      end
      if(stageB_flusher_valid)begin
        if(_zz_40)begin
          if(! _zz_41) begin
            stageB_flusher_valid <= 1'b0;
          end
        end
      end
      stageB_flusher_start <= ((((((! stageB_flusher_start) && io_cpu_flush_valid) && (! io_cpu_execute_isValid)) && (! io_cpu_memory_isValid)) && (! io_cpu_writeBack_isValid)) && (! io_cpu_redo));
      if(stageB_flusher_start)begin
        stageB_flusher_valid <= 1'b1;
      end
      if(((io_cpu_writeBack_isValid && (! io_cpu_writeBack_isStuck)) && stageB_request_isLrsc))begin
        stageB_lrSc_reserved <= (! stageB_request_wr);
      end
      if(_zz_32)begin
        stageB_lrSc_reserved <= stageB_lrSc_reserved;
      end
      if(stageB_loaderValid)begin
        loader_valid <= 1'b1;
      end
      loader_counter_value <= loader_counter_valueNext;
      if(loader_kill)begin
        loader_killReg <= 1'b1;
      end
      if(_zz_37)begin
        loader_error <= (loader_error || io_mem_rsp_payload_error);
      end
      if(loader_done)begin
        loader_valid <= 1'b0;
        loader_error <= 1'b0;
        loader_killReg <= 1'b0;
      end
      if((! loader_valid))begin
        loader_waysAllocator <= _zz_58[1:0];
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
  input      [63:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input      [2:0]    _zz_18,
  input      [31:0]   _zz_19,
  input               debugCd_external_clk,
  input               systemCd_logic_outputReset
);
  reg        [31:0]   _zz_20;
  reg        [31:0]   _zz_21;
  reg        [21:0]   _zz_22;
  reg        [21:0]   _zz_23;
  reg        [31:0]   _zz_24;
  reg        [31:0]   _zz_25;
  reg                 _zz_26;
  reg        [31:0]   _zz_27;
  wire                _zz_28;
  wire                _zz_29;
  wire       [0:0]    _zz_30;
  wire       [0:0]    _zz_31;
  wire       [0:0]    _zz_32;
  wire       [0:0]    _zz_33;
  wire       [0:0]    _zz_34;
  wire       [0:0]    _zz_35;
  wire       [0:0]    _zz_36;
  wire       [0:0]    _zz_37;
  wire       [21:0]   _zz_38;
  wire       [21:0]   _zz_39;
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
  (* keep , syn_keep *) reg        [2:0]    lineLoader_wordIndex /* synthesis syn_keep = 1 */ ;
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
  wire       [9:0]    lineLoader_write_data_0_payload_address;
  wire       [31:0]   lineLoader_write_data_0_payload_data;
  wire                lineLoader_write_data_1_valid;
  wire       [9:0]    lineLoader_write_data_1_payload_address;
  wire       [31:0]   lineLoader_write_data_1_payload_data;
  wire       [0:0]    _zz_6;
  wire       [0:0]    _zz_7;
  wire       [9:0]    _zz_8;
  wire                _zz_9;
  wire       [31:0]   fetchStage_read_banksValue_0_dataMem;
  wire       [31:0]   fetchStage_read_banksValue_0_data;
  wire       [9:0]    _zz_10;
  wire                _zz_11;
  wire       [31:0]   fetchStage_read_banksValue_1_dataMem;
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
  reg [31:0] banks_0 [0:1023];
  reg [31:0] banks_1 [0:1023];
  reg [21:0] ways_0_tags [0:63];
  reg [21:0] ways_1_tags [0:63];

  assign _zz_28 = (! lineLoader_flushCounter[6]);
  assign _zz_29 = (lineLoader_flushPending && (! (lineLoader_valid || io_cpu_fetch_isValid)));
  assign _zz_30 = (1'b0 - lineLoader_wayToAllocate_value);
  assign _zz_31 = (1'b1 - lineLoader_wayToAllocate_value);
  assign _zz_32 = _zz_14[0 : 0];
  assign _zz_33 = _zz_14[1 : 1];
  assign _zz_34 = _zz_17[0 : 0];
  assign _zz_35 = _zz_17[1 : 1];
  assign _zz_36 = (fetchStage_hit_wayId + io_cpu_fetch_mmuRsp_physicalAddress[2 : 2]);
  assign _zz_37 = _zz_36;
  assign _zz_38 = {lineLoader_write_tag_0_payload_data_address,{lineLoader_write_tag_0_payload_data_error,lineLoader_write_tag_0_payload_data_valid}};
  assign _zz_39 = {lineLoader_write_tag_1_payload_data_address,{lineLoader_write_tag_1_payload_data_error,lineLoader_write_tag_1_payload_data_valid}};
  always @ (posedge debugCd_external_clk) begin
    if(_zz_2) begin
      banks_0[lineLoader_write_data_0_payload_address] <= lineLoader_write_data_0_payload_data;
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if(_zz_9) begin
      _zz_20 <= banks_0[_zz_8];
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if(_zz_1) begin
      banks_1[lineLoader_write_data_1_payload_address] <= lineLoader_write_data_1_payload_data;
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if(_zz_11) begin
      _zz_21 <= banks_1[_zz_10];
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if(_zz_4) begin
      ways_0_tags[lineLoader_write_tag_0_payload_address] <= _zz_38;
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if(_zz_13) begin
      _zz_22 <= ways_0_tags[_zz_12];
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if(_zz_3) begin
      ways_1_tags[lineLoader_write_tag_1_payload_address] <= _zz_39;
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if(_zz_16) begin
      _zz_23 <= ways_1_tags[_zz_15];
    end
  end

  always @(*) begin
    case(_zz_6)
      1'b0 : begin
        _zz_24 = io_mem_rsp_payload_data[31 : 0];
      end
      default : begin
        _zz_24 = io_mem_rsp_payload_data[63 : 32];
      end
    endcase
  end

  always @(*) begin
    case(_zz_7)
      1'b0 : begin
        _zz_25 = io_mem_rsp_payload_data[31 : 0];
      end
      default : begin
        _zz_25 = io_mem_rsp_payload_data[63 : 32];
      end
    endcase
  end

  always @(*) begin
    case(fetchStage_hit_wayId)
      1'b0 : begin
        _zz_26 = fetchStage_read_waysValues_0_tag_error;
      end
      default : begin
        _zz_26 = fetchStage_read_waysValues_1_tag_error;
      end
    endcase
  end

  always @(*) begin
    case(fetchStage_hit_bankId)
      1'b0 : begin
        _zz_27 = fetchStage_read_banksValue_0_data;
      end
      default : begin
        _zz_27 = fetchStage_read_banksValue_1_data;
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
      if((lineLoader_wordIndex == 3'b111))begin
        lineLoader_fire = 1'b1;
      end
    end
  end

  always @ (*) begin
    io_cpu_prefetch_haltIt = (lineLoader_valid || lineLoader_flushPending);
    if(_zz_28)begin
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
  assign _zz_6 = _zz_30[0 : 0];
  assign lineLoader_write_data_0_valid = (io_mem_rsp_valid && 1'b1);
  assign lineLoader_write_data_0_payload_address = {{lineLoader_address[11 : 6],lineLoader_wordIndex},_zz_6};
  assign lineLoader_write_data_0_payload_data = _zz_24;
  assign _zz_7 = _zz_31[0 : 0];
  assign lineLoader_write_data_1_valid = (io_mem_rsp_valid && 1'b1);
  assign lineLoader_write_data_1_payload_address = {{lineLoader_address[11 : 6],lineLoader_wordIndex},_zz_7};
  assign lineLoader_write_data_1_payload_data = _zz_25;
  assign _zz_8 = io_cpu_prefetch_pc[11 : 2];
  assign _zz_9 = (! io_cpu_fetch_isStuck);
  assign fetchStage_read_banksValue_0_dataMem = _zz_20;
  assign fetchStage_read_banksValue_0_data = fetchStage_read_banksValue_0_dataMem[31 : 0];
  assign _zz_10 = io_cpu_prefetch_pc[11 : 2];
  assign _zz_11 = (! io_cpu_fetch_isStuck);
  assign fetchStage_read_banksValue_1_dataMem = _zz_21;
  assign fetchStage_read_banksValue_1_data = fetchStage_read_banksValue_1_dataMem[31 : 0];
  assign _zz_12 = io_cpu_prefetch_pc[11 : 6];
  assign _zz_13 = (! io_cpu_fetch_isStuck);
  assign _zz_14 = _zz_22;
  assign fetchStage_read_waysValues_0_tag_valid = _zz_32[0];
  assign fetchStage_read_waysValues_0_tag_error = _zz_33[0];
  assign fetchStage_read_waysValues_0_tag_address = _zz_14[21 : 2];
  assign _zz_15 = io_cpu_prefetch_pc[11 : 6];
  assign _zz_16 = (! io_cpu_fetch_isStuck);
  assign _zz_17 = _zz_23;
  assign fetchStage_read_waysValues_1_tag_valid = _zz_34[0];
  assign fetchStage_read_waysValues_1_tag_error = _zz_35[0];
  assign fetchStage_read_waysValues_1_tag_address = _zz_17[21 : 2];
  assign fetchStage_hit_hits_0 = (fetchStage_read_waysValues_0_tag_valid && (fetchStage_read_waysValues_0_tag_address == io_cpu_fetch_mmuRsp_physicalAddress[31 : 12]));
  assign fetchStage_hit_hits_1 = (fetchStage_read_waysValues_1_tag_valid && (fetchStage_read_waysValues_1_tag_address == io_cpu_fetch_mmuRsp_physicalAddress[31 : 12]));
  assign fetchStage_hit_valid = ({fetchStage_hit_hits_1,fetchStage_hit_hits_0} != 2'b00);
  assign fetchStage_hit_wayId = fetchStage_hit_hits_1;
  assign fetchStage_hit_bankId = _zz_37;
  assign fetchStage_hit_error = _zz_26;
  assign fetchStage_hit_data = _zz_27;
  assign fetchStage_hit_word = fetchStage_hit_data;
  assign io_cpu_fetch_data = fetchStage_hit_word;
  assign io_cpu_decode_data = io_cpu_fetch_data_regNextWhen;
  assign io_cpu_fetch_physicalAddress = io_cpu_fetch_mmuRsp_physicalAddress;
  assign io_cpu_decode_cacheMiss = (! decodeStage_hit_valid);
  assign io_cpu_decode_error = decodeStage_hit_error;
  assign io_cpu_decode_mmuRefilling = decodeStage_mmuRsp_refilling;
  assign io_cpu_decode_mmuException = ((! decodeStage_mmuRsp_refilling) && (decodeStage_mmuRsp_exception || (! decodeStage_mmuRsp_allowExecute)));
  assign io_cpu_decode_physicalAddress = decodeStage_mmuRsp_physicalAddress;
  always @ (posedge debugCd_external_clk) begin
    if(systemCd_logic_outputReset) begin
      lineLoader_valid <= 1'b0;
      lineLoader_hadError <= 1'b0;
      lineLoader_flushPending <= 1'b1;
      lineLoader_cmdSent <= 1'b0;
      lineLoader_wayToAllocate_value <= 1'b0;
      lineLoader_wordIndex <= 3'b000;
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
      if(_zz_29)begin
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
        lineLoader_wordIndex <= (lineLoader_wordIndex + 3'b001);
        if(io_mem_rsp_payload_error)begin
          lineLoader_hadError <= 1'b1;
        end
      end
    end
  end

  always @ (posedge debugCd_external_clk) begin
    if(io_cpu_fill_valid)begin
      lineLoader_address <= io_cpu_fill_payload;
    end
    if(_zz_28)begin
      lineLoader_flushCounter <= (lineLoader_flushCounter + 7'h01);
    end
    _zz_5 <= lineLoader_flushCounter[6];
    if(_zz_29)begin
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

module FlowCCByToggle (
  input               io_input_valid,
  input               io_input_payload_last,
  input      [0:0]    io_input_payload_fragment,
  output              io_output_valid,
  output              io_output_payload_last,
  output     [0:0]    io_output_payload_fragment,
  input               jtag_clk,
  input               debugCd_external_clk,
  input               debugCd_logic_outputReset
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
    .io_dataIn                    (inputArea_target                      ), //i
    .io_dataOut                   (inputArea_target_buffercc_io_dataOut  ), //o
    .debugCd_external_clk         (debugCd_external_clk                  ), //i
    .debugCd_logic_outputReset    (debugCd_logic_outputReset             )  //i
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

  always @ (posedge debugCd_external_clk) begin
    outputArea_hit <= outputArea_target;
    outputArea_flow_regNext_payload_last <= outputArea_flow_payload_last;
    outputArea_flow_regNext_payload_fragment <= outputArea_flow_payload_fragment;
  end

  always @ (posedge debugCd_external_clk) begin
    if(debugCd_logic_outputReset) begin
      outputArea_flow_regNext_valid <= 1'b0;
    end else begin
      outputArea_flow_regNext_valid <= outputArea_flow_valid;
    end
  end


endmodule

module BufferCC (
  input               io_dataIn,
  output              io_dataOut,
  input               debugCd_external_clk,
  input               debugCd_logic_outputReset
);
  reg                 buffers_0;
  reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge debugCd_external_clk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule
