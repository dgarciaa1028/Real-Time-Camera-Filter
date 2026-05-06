// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat May  2 17:18:55 2026
// Host        : DESKTOP-HFH6M23 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/sammy/Documents/CSUN/Work/ECE524/camera_tracking/camera_tracking.gen/sources_1/bd/Camera_filter_SOC/ip/Camera_filter_SOC_auto_pc_0/Camera_filter_SOC_auto_pc_0_sim_netlist.v
// Design      : Camera_filter_SOC_auto_pc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Camera_filter_SOC_auto_pc_0,axi_protocol_converter_v2_1_29_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_29_axi_protocol_converter,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module Camera_filter_SOC_auto_pc_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Camera_filter_SOC_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input [11:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [3:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [1:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WID" *) input [11:0]s_axi_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [11:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [11:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [3:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [1:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [11:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN Camera_filter_SOC_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Camera_filter_SOC_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [11:0]s_axi_arid;
  wire [3:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [3:0]s_axi_awlen;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [11:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [11:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [11:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "12" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "0" *) 
  (* C_M_AXI_PROTOCOL = "2" *) 
  (* C_S_AXI_PROTOCOL = "1" *) 
  (* C_TRANSLATION_MODE = "2" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[11:0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[11:0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b1),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[11:0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,s_axi_arsize[1:0]}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,s_axi_awsize[1:0]}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "12" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "0" *) (* C_M_AXI_PROTOCOL = "2" *) (* C_S_AXI_PROTOCOL = "1" *) 
(* C_TRANSLATION_MODE = "2" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_axi_protocol_converter" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_AXILITE_SIZE = "3'b010" *) (* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) 
(* P_INCR = "2'b01" *) (* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [11:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [11:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [11:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [11:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [11:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [11:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [11:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [11:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [11:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [11:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [11:0]s_axi_arid;
  wire [3:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [3:0]s_axi_awlen;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[11] = \<const0> ;
  assign m_axi_arid[10] = \<const0> ;
  assign m_axi_arid[9] = \<const0> ;
  assign m_axi_arid[8] = \<const0> ;
  assign m_axi_arid[7] = \<const0> ;
  assign m_axi_arid[6] = \<const0> ;
  assign m_axi_arid[5] = \<const0> ;
  assign m_axi_arid[4] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[11] = \<const0> ;
  assign m_axi_awid[10] = \<const0> ;
  assign m_axi_awid[9] = \<const0> ;
  assign m_axi_awid[8] = \<const0> ;
  assign m_axi_awid[7] = \<const0> ;
  assign m_axi_awid[6] = \<const0> ;
  assign m_axi_awid[5] = \<const0> ;
  assign m_axi_awid[4] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wdata[31:0] = s_axi_wdata;
  assign m_axi_wid[11] = \<const0> ;
  assign m_axi_wid[10] = \<const0> ;
  assign m_axi_wid[9] = \<const0> ;
  assign m_axi_wid[8] = \<const0> ;
  assign m_axi_wid[7] = \<const0> ;
  assign m_axi_wid[6] = \<const0> ;
  assign m_axi_wid[5] = \<const0> ;
  assign m_axi_wid[4] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[3:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = s_axi_wvalid;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_wready = m_axi_wready;
  GND GND
       (.G(\<const0> ));
  Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s \gen_axilite.gen_b2s_conv.axilite_b2s 
       (.Q({m_axi_awprot,m_axi_awaddr[31:12]}),
        .aclk(aclk),
        .aresetn(aresetn),
        .in({m_axi_rresp,m_axi_rdata}),
        .m_axi_araddr(m_axi_araddr[11:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr[11:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[13] ({s_axi_bid,s_axi_bresp}),
        .\m_payload_i_reg[34] ({m_axi_arprot,m_axi_araddr[31:12]}),
        .\m_payload_i_reg[46] ({s_axi_rid,s_axi_rlast,s_axi_rresp,s_axi_rdata}),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize[1:0]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize[1:0]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_b2s" *) 
module Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s
   (s_axi_rvalid,
    s_axi_awready,
    Q,
    s_axi_arready,
    \m_payload_i_reg[34] ,
    s_axi_bvalid,
    \m_payload_i_reg[13] ,
    \m_payload_i_reg[46] ,
    m_axi_awvalid,
    m_axi_bready,
    m_axi_arvalid,
    m_axi_rready,
    m_axi_awaddr,
    m_axi_araddr,
    m_axi_arready,
    s_axi_rready,
    s_axi_awvalid,
    aclk,
    in,
    s_axi_awid,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awsize,
    s_axi_awprot,
    s_axi_awaddr,
    m_axi_bresp,
    s_axi_arid,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arsize,
    s_axi_arprot,
    s_axi_araddr,
    m_axi_awready,
    m_axi_bvalid,
    m_axi_rvalid,
    s_axi_bready,
    s_axi_arvalid,
    aresetn);
  output s_axi_rvalid;
  output s_axi_awready;
  output [22:0]Q;
  output s_axi_arready;
  output [22:0]\m_payload_i_reg[34] ;
  output s_axi_bvalid;
  output [13:0]\m_payload_i_reg[13] ;
  output [46:0]\m_payload_i_reg[46] ;
  output m_axi_awvalid;
  output m_axi_bready;
  output m_axi_arvalid;
  output m_axi_rready;
  output [11:0]m_axi_awaddr;
  output [11:0]m_axi_araddr;
  input m_axi_arready;
  input s_axi_rready;
  input s_axi_awvalid;
  input aclk;
  input [33:0]in;
  input [11:0]s_axi_awid;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awsize;
  input [2:0]s_axi_awprot;
  input [31:0]s_axi_awaddr;
  input [1:0]m_axi_bresp;
  input [11:0]s_axi_arid;
  input [3:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arsize;
  input [2:0]s_axi_arprot;
  input [31:0]s_axi_araddr;
  input m_axi_awready;
  input m_axi_bvalid;
  input m_axi_rvalid;
  input s_axi_bready;
  input s_axi_arvalid;
  input aresetn;

  wire [22:0]Q;
  wire \RD.ar_channel_0_n_1 ;
  wire \RD.ar_channel_0_n_10 ;
  wire \RD.ar_channel_0_n_11 ;
  wire \RD.ar_channel_0_n_12 ;
  wire \RD.ar_channel_0_n_13 ;
  wire \RD.ar_channel_0_n_14 ;
  wire \RD.ar_channel_0_n_15 ;
  wire \RD.ar_channel_0_n_16 ;
  wire \RD.ar_channel_0_n_17 ;
  wire \RD.ar_channel_0_n_18 ;
  wire \RD.ar_channel_0_n_19 ;
  wire \RD.ar_channel_0_n_20 ;
  wire \RD.ar_channel_0_n_21 ;
  wire \RD.ar_channel_0_n_22 ;
  wire \RD.ar_channel_0_n_23 ;
  wire \RD.ar_channel_0_n_24 ;
  wire \RD.ar_channel_0_n_25 ;
  wire \RD.ar_channel_0_n_26 ;
  wire \RD.ar_channel_0_n_27 ;
  wire \RD.ar_channel_0_n_28 ;
  wire \RD.ar_channel_0_n_4 ;
  wire \RD.ar_channel_0_n_47 ;
  wire \RD.ar_channel_0_n_48 ;
  wire \RD.ar_channel_0_n_49 ;
  wire \RD.ar_channel_0_n_5 ;
  wire \RD.ar_channel_0_n_50 ;
  wire \RD.ar_channel_0_n_6 ;
  wire \RD.ar_channel_0_n_7 ;
  wire \RD.ar_channel_0_n_8 ;
  wire \RD.ar_channel_0_n_9 ;
  wire \RD.r_channel_0_n_0 ;
  wire \RD.r_channel_0_n_1 ;
  wire SI_REG_n_10;
  wire SI_REG_n_11;
  wire SI_REG_n_128;
  wire SI_REG_n_129;
  wire SI_REG_n_130;
  wire SI_REG_n_131;
  wire SI_REG_n_144;
  wire SI_REG_n_145;
  wire SI_REG_n_146;
  wire SI_REG_n_147;
  wire SI_REG_n_148;
  wire SI_REG_n_149;
  wire SI_REG_n_150;
  wire SI_REG_n_151;
  wire SI_REG_n_152;
  wire SI_REG_n_153;
  wire SI_REG_n_154;
  wire SI_REG_n_155;
  wire SI_REG_n_156;
  wire SI_REG_n_157;
  wire SI_REG_n_158;
  wire SI_REG_n_160;
  wire SI_REG_n_161;
  wire SI_REG_n_162;
  wire SI_REG_n_163;
  wire SI_REG_n_164;
  wire SI_REG_n_165;
  wire SI_REG_n_166;
  wire SI_REG_n_167;
  wire SI_REG_n_168;
  wire SI_REG_n_169;
  wire SI_REG_n_170;
  wire SI_REG_n_171;
  wire SI_REG_n_172;
  wire SI_REG_n_173;
  wire SI_REG_n_174;
  wire SI_REG_n_175;
  wire SI_REG_n_176;
  wire SI_REG_n_177;
  wire SI_REG_n_178;
  wire SI_REG_n_179;
  wire SI_REG_n_180;
  wire SI_REG_n_181;
  wire SI_REG_n_182;
  wire SI_REG_n_183;
  wire SI_REG_n_184;
  wire SI_REG_n_185;
  wire SI_REG_n_186;
  wire SI_REG_n_187;
  wire SI_REG_n_188;
  wire SI_REG_n_66;
  wire SI_REG_n_67;
  wire SI_REG_n_68;
  wire SI_REG_n_69;
  wire SI_REG_n_70;
  wire SI_REG_n_71;
  wire SI_REG_n_72;
  wire SI_REG_n_73;
  wire SI_REG_n_8;
  wire SI_REG_n_9;
  wire SI_REG_n_91;
  wire SI_REG_n_92;
  wire \WR.aw_channel_0_n_19 ;
  wire \WR.aw_channel_0_n_20 ;
  wire \WR.aw_channel_0_n_21 ;
  wire \WR.aw_channel_0_n_22 ;
  wire \WR.aw_channel_0_n_23 ;
  wire \WR.aw_channel_0_n_24 ;
  wire \WR.aw_channel_0_n_25 ;
  wire \WR.aw_channel_0_n_26 ;
  wire \WR.aw_channel_0_n_27 ;
  wire \WR.aw_channel_0_n_28 ;
  wire \WR.aw_channel_0_n_29 ;
  wire \WR.aw_channel_0_n_30 ;
  wire \WR.aw_channel_0_n_4 ;
  wire \WR.aw_channel_0_n_48 ;
  wire \WR.aw_channel_0_n_49 ;
  wire \WR.aw_channel_0_n_5 ;
  wire \WR.aw_channel_0_n_50 ;
  wire \WR.aw_channel_0_n_51 ;
  wire aclk;
  wire \ar.ar_pipe/m_valid_i0 ;
  wire \ar.ar_pipe/p_1_in ;
  wire \ar.ar_pipe/s_ready_i0 ;
  wire [1:0]\ar_cmd_fsm_0/state ;
  wire areset_d1;
  wire areset_d1_i_1_n_0;
  wire aresetn;
  wire [1:0]\aw_cmd_fsm_0/state ;
  wire [11:0]axaddr_incr;
  wire [11:0]axaddr_wrap;
  wire [1:0]axsize;
  wire [11:0]b_awid;
  wire [3:0]b_awlen;
  wire b_push;
  wire [1:0]\bid_fifo_0/cnt_read ;
  wire \cmd_translator_0/incr_cmd_0/sel_first ;
  wire \cmd_translator_0/incr_cmd_0/sel_first_0 ;
  wire [33:0]in;
  wire [11:0]m_axi_araddr;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [11:0]m_axi_awaddr;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [13:0]\m_payload_i_reg[13] ;
  wire [22:0]\m_payload_i_reg[34] ;
  wire [46:0]\m_payload_i_reg[46] ;
  wire r_push;
  wire r_rlast;
  wire [11:0]s_arid;
  wire [11:0]s_arid_r;
  wire [11:0]s_awid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [11:0]s_axi_arid;
  wire [3:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [1:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [3:0]s_axi_awlen;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [1:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire sel_first;
  wire shandshake;
  wire [11:0]si_rs_araddr;
  wire [1:1]si_rs_arburst;
  wire [3:0]si_rs_arlen;
  wire si_rs_arvalid;
  wire [11:0]si_rs_awaddr;
  wire [1:1]si_rs_awburst;
  wire [3:0]si_rs_awlen;
  wire si_rs_awvalid;
  wire [11:0]si_rs_bid;
  wire si_rs_bready;
  wire [1:0]si_rs_bresp;
  wire si_rs_bvalid;
  wire [31:0]si_rs_rdata;
  wire [11:0]si_rs_rid;
  wire si_rs_rlast;
  wire si_rs_rready;
  wire [1:0]si_rs_rresp;

  Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_ar_channel \RD.ar_channel_0 
       (.D({SI_REG_n_176,SI_REG_n_177,SI_REG_n_178,SI_REG_n_179,SI_REG_n_180,SI_REG_n_181,SI_REG_n_182}),
        .E(\ar.ar_pipe/p_1_in ),
        .\FSM_sequential_state_reg[0] (\RD.r_channel_0_n_1 ),
        .\FSM_sequential_state_reg[1] (\RD.ar_channel_0_n_4 ),
        .O({SI_REG_n_152,SI_REG_n_153,SI_REG_n_154,SI_REG_n_155}),
        .Q(\ar_cmd_fsm_0/state ),
        .S({SI_REG_n_128,SI_REG_n_129,SI_REG_n_130,SI_REG_n_131}),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\axaddr_incr_reg[11] ({\RD.ar_channel_0_n_17 ,\RD.ar_channel_0_n_18 ,\RD.ar_channel_0_n_19 ,\RD.ar_channel_0_n_20 ,\RD.ar_channel_0_n_21 ,\RD.ar_channel_0_n_22 ,\RD.ar_channel_0_n_23 ,\RD.ar_channel_0_n_24 ,\RD.ar_channel_0_n_25 ,\RD.ar_channel_0_n_26 ,\RD.ar_channel_0_n_27 ,\RD.ar_channel_0_n_28 }),
        .\axaddr_incr_reg[3] ({SI_REG_n_70,SI_REG_n_71,SI_REG_n_72,SI_REG_n_73}),
        .\axaddr_incr_reg[3]_0 ({SI_REG_n_144,SI_REG_n_145,SI_REG_n_146,SI_REG_n_147}),
        .\axaddr_incr_reg[7] ({SI_REG_n_148,SI_REG_n_149,SI_REG_n_150,SI_REG_n_151}),
        .\axaddr_offset_r_reg[0] (SI_REG_n_184),
        .\axaddr_offset_r_reg[1] (SI_REG_n_187),
        .\axaddr_offset_r_reg[1]_0 (SI_REG_n_186),
        .\axaddr_offset_r_reg[2] (SI_REG_n_188),
        .\axaddr_offset_r_reg[2]_0 (SI_REG_n_183),
        .\axaddr_offset_r_reg[3] (SI_REG_n_161),
        .\axaddr_wrap_reg[11] ({\RD.ar_channel_0_n_5 ,\RD.ar_channel_0_n_6 ,\RD.ar_channel_0_n_7 ,\RD.ar_channel_0_n_8 ,\RD.ar_channel_0_n_9 ,\RD.ar_channel_0_n_10 ,\RD.ar_channel_0_n_11 ,\RD.ar_channel_0_n_12 ,\RD.ar_channel_0_n_13 ,\RD.ar_channel_0_n_14 ,\RD.ar_channel_0_n_15 ,\RD.ar_channel_0_n_16 }),
        .\axlen_cnt_reg[3] (SI_REG_n_162),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .\m_payload_i_reg[3] ({\RD.ar_channel_0_n_47 ,\RD.ar_channel_0_n_48 ,\RD.ar_channel_0_n_49 ,\RD.ar_channel_0_n_50 }),
        .m_valid_i0(\ar.ar_pipe/m_valid_i0 ),
        .m_valid_i_reg(s_axi_arready),
        .next_pending_r_reg(SI_REG_n_163),
        .r_push(r_push),
        .r_rlast(r_rlast),
        .\s_arid_r_reg[11]_0 (s_arid_r),
        .\s_arid_r_reg[11]_1 ({s_arid,si_rs_arlen,si_rs_arburst,SI_REG_n_91,SI_REG_n_92,si_rs_araddr}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_ready_i0(\ar.ar_pipe/s_ready_i0 ),
        .sel_first(\cmd_translator_0/incr_cmd_0/sel_first ),
        .sel_first_reg(\RD.ar_channel_0_n_1 ),
        .si_rs_arvalid(si_rs_arvalid),
        .\wrap_second_len_r_reg[3] (SI_REG_n_160));
  Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_r_channel \RD.r_channel_0 
       (.D(s_arid_r),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\cnt_read_reg[2] (\RD.r_channel_0_n_0 ),
        .\cnt_read_reg[4] (\RD.r_channel_0_n_1 ),
        .\cnt_read_reg[4]_0 (SI_REG_n_164),
        .in(in),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out({si_rs_rresp,si_rs_rdata}),
        .r_push(r_push),
        .r_push_r_reg_0({si_rs_rid,si_rs_rlast}),
        .r_rlast(r_rlast),
        .si_rs_rready(si_rs_rready));
  Camera_filter_SOC_auto_pc_0_axi_register_slice_v2_1_29_axi_register_slice SI_REG
       (.D({SI_REG_n_165,SI_REG_n_166,SI_REG_n_167,SI_REG_n_168,SI_REG_n_169,SI_REG_n_170,SI_REG_n_171}),
        .E(\WR.aw_channel_0_n_5 ),
        .\FSM_sequential_state_reg[0] (SI_REG_n_157),
        .\FSM_sequential_state_reg[1] (SI_REG_n_160),
        .O({SI_REG_n_152,SI_REG_n_153,SI_REG_n_154,SI_REG_n_155}),
        .Q({\WR.aw_channel_0_n_19 ,\WR.aw_channel_0_n_20 ,\WR.aw_channel_0_n_21 ,\WR.aw_channel_0_n_22 ,\WR.aw_channel_0_n_23 ,\WR.aw_channel_0_n_24 ,\WR.aw_channel_0_n_25 ,\WR.aw_channel_0_n_26 ,\WR.aw_channel_0_n_27 ,\WR.aw_channel_0_n_28 ,\WR.aw_channel_0_n_29 ,\WR.aw_channel_0_n_30 }),
        .S({SI_REG_n_8,SI_REG_n_9,SI_REG_n_10,SI_REG_n_11}),
        .aclk(aclk),
        .aresetn(aresetn),
        .axaddr_incr(axaddr_incr),
        .\axaddr_incr_reg[3] ({SI_REG_n_70,SI_REG_n_71,SI_REG_n_72,SI_REG_n_73}),
        .\axaddr_incr_reg[3]_0 ({\WR.aw_channel_0_n_48 ,\WR.aw_channel_0_n_49 ,\WR.aw_channel_0_n_50 ,\WR.aw_channel_0_n_51 }),
        .\axaddr_incr_reg[3]_1 ({\RD.ar_channel_0_n_47 ,\RD.ar_channel_0_n_48 ,\RD.ar_channel_0_n_49 ,\RD.ar_channel_0_n_50 }),
        .\axaddr_wrap_reg[3] ({SI_REG_n_66,SI_REG_n_67,SI_REG_n_68,SI_REG_n_69}),
        .\axaddr_wrap_reg[3]_0 ({SI_REG_n_128,SI_REG_n_129,SI_REG_n_130,SI_REG_n_131}),
        .\axlen_cnt_reg[3] (\ar_cmd_fsm_0/state ),
        .b_push(b_push),
        .m_axi_araddr(m_axi_araddr),
        .\m_axi_araddr[11] ({\RD.ar_channel_0_n_17 ,\RD.ar_channel_0_n_18 ,\RD.ar_channel_0_n_19 ,\RD.ar_channel_0_n_20 ,\RD.ar_channel_0_n_21 ,\RD.ar_channel_0_n_22 ,\RD.ar_channel_0_n_23 ,\RD.ar_channel_0_n_24 ,\RD.ar_channel_0_n_25 ,\RD.ar_channel_0_n_26 ,\RD.ar_channel_0_n_27 ,\RD.ar_channel_0_n_28 }),
        .\m_axi_araddr[11]_0 ({\RD.ar_channel_0_n_5 ,\RD.ar_channel_0_n_6 ,\RD.ar_channel_0_n_7 ,\RD.ar_channel_0_n_8 ,\RD.ar_channel_0_n_9 ,\RD.ar_channel_0_n_10 ,\RD.ar_channel_0_n_11 ,\RD.ar_channel_0_n_12 ,\RD.ar_channel_0_n_13 ,\RD.ar_channel_0_n_14 ,\RD.ar_channel_0_n_15 ,\RD.ar_channel_0_n_16 }),
        .\m_axi_araddr[11]_1 (\RD.ar_channel_0_n_1 ),
        .m_axi_awaddr(m_axi_awaddr),
        .\m_axi_awaddr[11] (axaddr_wrap),
        .\m_payload_i_reg[0] (\ar.ar_pipe/p_1_in ),
        .\m_payload_i_reg[13] (\m_payload_i_reg[13] ),
        .\m_payload_i_reg[1] (SI_REG_n_173),
        .\m_payload_i_reg[1]_0 (SI_REG_n_175),
        .\m_payload_i_reg[1]_1 (SI_REG_n_184),
        .\m_payload_i_reg[1]_2 (SI_REG_n_186),
        .\m_payload_i_reg[2] (SI_REG_n_174),
        .\m_payload_i_reg[2]_0 (SI_REG_n_183),
        .\m_payload_i_reg[2]_1 (SI_REG_n_185),
        .\m_payload_i_reg[2]_2 (SI_REG_n_187),
        .\m_payload_i_reg[3] ({SI_REG_n_144,SI_REG_n_145,SI_REG_n_146,SI_REG_n_147}),
        .\m_payload_i_reg[45] (SI_REG_n_156),
        .\m_payload_i_reg[45]_0 (SI_REG_n_163),
        .\m_payload_i_reg[46] (\m_payload_i_reg[46] ),
        .\m_payload_i_reg[47] (SI_REG_n_162),
        .\m_payload_i_reg[4] (SI_REG_n_172),
        .\m_payload_i_reg[4]_0 (SI_REG_n_188),
        .\m_payload_i_reg[5] (SI_REG_n_158),
        .\m_payload_i_reg[61] ({s_awid,si_rs_awlen,si_rs_awburst,axsize,Q,si_rs_awaddr}),
        .\m_payload_i_reg[61]_0 ({s_arid,si_rs_arlen,si_rs_arburst,SI_REG_n_91,SI_REG_n_92,\m_payload_i_reg[34] ,si_rs_araddr}),
        .\m_payload_i_reg[6] (SI_REG_n_161),
        .\m_payload_i_reg[6]_0 ({SI_REG_n_176,SI_REG_n_177,SI_REG_n_178,SI_REG_n_179,SI_REG_n_180,SI_REG_n_181,SI_REG_n_182}),
        .\m_payload_i_reg[7] ({SI_REG_n_148,SI_REG_n_149,SI_REG_n_150,SI_REG_n_151}),
        .m_valid_i0(\ar.ar_pipe/m_valid_i0 ),
        .m_valid_i_reg(s_axi_bvalid),
        .m_valid_i_reg_0(s_axi_rvalid),
        .m_valid_i_reg_1(\RD.r_channel_0_n_0 ),
        .next_pending_r_reg(\WR.aw_channel_0_n_4 ),
        .next_pending_r_reg_0(\RD.ar_channel_0_n_4 ),
        .out(si_rs_bid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rready(s_axi_rready),
        .s_ready_i0(\ar.ar_pipe/s_ready_i0 ),
        .s_ready_i_reg(s_axi_awready),
        .s_ready_i_reg_0(s_axi_arready),
        .s_ready_i_reg_1(SI_REG_n_164),
        .sel_first(sel_first),
        .sel_first_0(\cmd_translator_0/incr_cmd_0/sel_first_0 ),
        .sel_first_1(\cmd_translator_0/incr_cmd_0/sel_first ),
        .shandshake(shandshake),
        .si_rs_arvalid(si_rs_arvalid),
        .si_rs_awvalid(si_rs_awvalid),
        .si_rs_bready(si_rs_bready),
        .si_rs_bvalid(si_rs_bvalid),
        .si_rs_rready(si_rs_rready),
        .\skid_buffer_reg[1] (si_rs_bresp),
        .\skid_buffer_reg[33] ({si_rs_rresp,si_rs_rdata}),
        .\skid_buffer_reg[46] ({si_rs_rid,si_rs_rlast}),
        .\wrap_second_len_r_reg[3] (\aw_cmd_fsm_0/state ));
  Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_aw_channel \WR.aw_channel_0 
       (.D({SI_REG_n_165,SI_REG_n_166,SI_REG_n_167,SI_REG_n_168,SI_REG_n_169,SI_REG_n_170,SI_REG_n_171}),
        .E(\WR.aw_channel_0_n_5 ),
        .\FSM_sequential_state_reg[0] (\WR.aw_channel_0_n_4 ),
        .Q(\aw_cmd_fsm_0/state ),
        .S({SI_REG_n_8,SI_REG_n_9,SI_REG_n_10,SI_REG_n_11}),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .axaddr_incr(axaddr_incr),
        .\axaddr_incr_reg[11] ({\WR.aw_channel_0_n_19 ,\WR.aw_channel_0_n_20 ,\WR.aw_channel_0_n_21 ,\WR.aw_channel_0_n_22 ,\WR.aw_channel_0_n_23 ,\WR.aw_channel_0_n_24 ,\WR.aw_channel_0_n_25 ,\WR.aw_channel_0_n_26 ,\WR.aw_channel_0_n_27 ,\WR.aw_channel_0_n_28 ,\WR.aw_channel_0_n_29 ,\WR.aw_channel_0_n_30 }),
        .\axaddr_offset_r_reg[0] (SI_REG_n_175),
        .\axaddr_offset_r_reg[1] (SI_REG_n_185),
        .\axaddr_offset_r_reg[1]_0 (SI_REG_n_173),
        .\axaddr_offset_r_reg[2] (SI_REG_n_172),
        .\axaddr_offset_r_reg[2]_0 (SI_REG_n_174),
        .\axaddr_offset_r_reg[3] (SI_REG_n_158),
        .\axaddr_wrap_reg[11] (axaddr_wrap),
        .\axaddr_wrap_reg[3] ({SI_REG_n_66,SI_REG_n_67,SI_REG_n_68,SI_REG_n_69}),
        .b_push(b_push),
        .cnt_read(\bid_fifo_0/cnt_read ),
        .in({b_awid,b_awlen}),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .\m_payload_i_reg[3] ({\WR.aw_channel_0_n_48 ,\WR.aw_channel_0_n_49 ,\WR.aw_channel_0_n_50 ,\WR.aw_channel_0_n_51 }),
        .next_pending_r_reg(SI_REG_n_156),
        .\s_awid_r_reg[11]_0 ({s_awid,si_rs_awlen,si_rs_awburst,axsize,si_rs_awaddr}),
        .sel_first(sel_first),
        .sel_first_0(\cmd_translator_0/incr_cmd_0/sel_first_0 ),
        .si_rs_awvalid(si_rs_awvalid),
        .\wrap_second_len_r_reg[3] (SI_REG_n_157));
  Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_b_channel \WR.b_channel_0 
       (.aclk(aclk),
        .areset_d1(areset_d1),
        .b_push(b_push),
        .cnt_read(\bid_fifo_0/cnt_read ),
        .in({b_awid,b_awlen}),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .out(si_rs_bid),
        .\s_bresp_acc_reg[1]_0 (si_rs_bresp),
        .shandshake(shandshake),
        .si_rs_bready(si_rs_bready),
        .si_rs_bvalid(si_rs_bvalid));
  LUT1 #(
    .INIT(2'h1)) 
    areset_d1_i_1
       (.I0(aresetn),
        .O(areset_d1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    areset_d1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d1_i_1_n_0),
        .Q(areset_d1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_b2s_ar_channel" *) 
module Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_ar_channel
   (sel_first,
    sel_first_reg,
    Q,
    \FSM_sequential_state_reg[1] ,
    \axaddr_wrap_reg[11] ,
    \axaddr_incr_reg[11] ,
    r_push,
    m_axi_arvalid,
    m_valid_i0,
    s_ready_i0,
    E,
    r_rlast,
    \s_arid_r_reg[11]_0 ,
    \m_payload_i_reg[3] ,
    aclk,
    si_rs_arvalid,
    m_axi_arready,
    \s_arid_r_reg[11]_1 ,
    S,
    \axaddr_incr_reg[3] ,
    \wrap_second_len_r_reg[3] ,
    \axaddr_offset_r_reg[0] ,
    \FSM_sequential_state_reg[0] ,
    \axaddr_offset_r_reg[2] ,
    \axaddr_offset_r_reg[2]_0 ,
    next_pending_r_reg,
    \axlen_cnt_reg[3] ,
    \axaddr_offset_r_reg[1] ,
    \axaddr_offset_r_reg[1]_0 ,
    \axaddr_offset_r_reg[3] ,
    areset_d1,
    s_axi_arvalid,
    m_valid_i_reg,
    O,
    \axaddr_incr_reg[7] ,
    \axaddr_incr_reg[3]_0 ,
    D);
  output sel_first;
  output sel_first_reg;
  output [1:0]Q;
  output \FSM_sequential_state_reg[1] ;
  output [11:0]\axaddr_wrap_reg[11] ;
  output [11:0]\axaddr_incr_reg[11] ;
  output r_push;
  output m_axi_arvalid;
  output m_valid_i0;
  output s_ready_i0;
  output [0:0]E;
  output r_rlast;
  output [11:0]\s_arid_r_reg[11]_0 ;
  output [3:0]\m_payload_i_reg[3] ;
  input aclk;
  input si_rs_arvalid;
  input m_axi_arready;
  input [30:0]\s_arid_r_reg[11]_1 ;
  input [3:0]S;
  input [3:0]\axaddr_incr_reg[3] ;
  input \wrap_second_len_r_reg[3] ;
  input \axaddr_offset_r_reg[0] ;
  input \FSM_sequential_state_reg[0] ;
  input \axaddr_offset_r_reg[2] ;
  input \axaddr_offset_r_reg[2]_0 ;
  input next_pending_r_reg;
  input \axlen_cnt_reg[3] ;
  input \axaddr_offset_r_reg[1] ;
  input \axaddr_offset_r_reg[1]_0 ;
  input \axaddr_offset_r_reg[3] ;
  input areset_d1;
  input s_axi_arvalid;
  input m_valid_i_reg;
  input [3:0]O;
  input [3:0]\axaddr_incr_reg[7] ;
  input [3:0]\axaddr_incr_reg[3]_0 ;
  input [6:0]D;

  wire [6:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire [3:0]O;
  wire [1:0]Q;
  wire [3:0]S;
  wire aclk;
  wire ar_cmd_fsm_0_n_0;
  wire ar_cmd_fsm_0_n_1;
  wire ar_cmd_fsm_0_n_10;
  wire ar_cmd_fsm_0_n_16;
  wire ar_cmd_fsm_0_n_17;
  wire ar_cmd_fsm_0_n_19;
  wire ar_cmd_fsm_0_n_2;
  wire ar_cmd_fsm_0_n_20;
  wire ar_cmd_fsm_0_n_21;
  wire ar_cmd_fsm_0_n_22;
  wire ar_cmd_fsm_0_n_23;
  wire ar_cmd_fsm_0_n_24;
  wire ar_cmd_fsm_0_n_25;
  wire ar_cmd_fsm_0_n_26;
  wire ar_cmd_fsm_0_n_27;
  wire ar_cmd_fsm_0_n_28;
  wire ar_cmd_fsm_0_n_29;
  wire ar_cmd_fsm_0_n_3;
  wire ar_cmd_fsm_0_n_30;
  wire ar_cmd_fsm_0_n_31;
  wire ar_cmd_fsm_0_n_32;
  wire ar_cmd_fsm_0_n_33;
  wire areset_d1;
  wire [11:0]\axaddr_incr_reg[11] ;
  wire [3:0]\axaddr_incr_reg[3] ;
  wire [3:0]\axaddr_incr_reg[3]_0 ;
  wire [3:0]\axaddr_incr_reg[7] ;
  wire \axaddr_offset_r_reg[0] ;
  wire \axaddr_offset_r_reg[1] ;
  wire \axaddr_offset_r_reg[1]_0 ;
  wire \axaddr_offset_r_reg[2] ;
  wire \axaddr_offset_r_reg[2]_0 ;
  wire \axaddr_offset_r_reg[3] ;
  wire [11:0]\axaddr_wrap_reg[11] ;
  wire \axlen_cnt_reg[3] ;
  wire cmd_translator_0_n_0;
  wire cmd_translator_0_n_20;
  wire cmd_translator_0_n_21;
  wire cmd_translator_0_n_22;
  wire cmd_translator_0_n_23;
  wire cmd_translator_0_n_24;
  wire cmd_translator_0_n_25;
  wire cmd_translator_0_n_26;
  wire cmd_translator_0_n_27;
  wire cmd_translator_0_n_3;
  wire cmd_translator_0_n_4;
  wire cmd_translator_0_n_40;
  wire cmd_translator_0_n_42;
  wire cmd_translator_0_n_5;
  wire cmd_translator_0_n_51;
  wire cmd_translator_0_n_52;
  wire cmd_translator_0_n_53;
  wire cmd_translator_0_n_54;
  wire cmd_translator_0_n_55;
  wire cmd_translator_0_n_56;
  wire cmd_translator_0_n_57;
  wire cmd_translator_0_n_58;
  wire cmd_translator_0_n_59;
  wire cmd_translator_0_n_6;
  wire cmd_translator_0_n_60;
  wire cmd_translator_0_n_61;
  wire cmd_translator_0_n_62;
  wire cmd_translator_0_n_7;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [3:0]\m_payload_i_reg[3] ;
  wire m_valid_i0;
  wire m_valid_i_reg;
  wire next_pending_r_reg;
  wire r_push;
  wire r_rlast;
  wire [11:0]\s_arid_r_reg[11]_0 ;
  wire [30:0]\s_arid_r_reg[11]_1 ;
  wire s_axi_arvalid;
  wire s_ready_i0;
  wire sel_first;
  wire sel_first_i;
  wire sel_first_reg;
  wire si_rs_arvalid;
  wire [3:0]\wrap_cmd_0/axaddr_offset ;
  wire [3:0]\wrap_cmd_0/axaddr_offset_r ;
  wire [3:0]\wrap_cmd_0/wrap_second_len ;
  wire [3:0]\wrap_cmd_0/wrap_second_len_r ;
  wire \wrap_second_len_r_reg[3] ;

  Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_rd_cmd_fsm ar_cmd_fsm_0
       (.D({ar_cmd_fsm_0_n_0,ar_cmd_fsm_0_n_1,ar_cmd_fsm_0_n_2,ar_cmd_fsm_0_n_3}),
        .E(ar_cmd_fsm_0_n_20),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[1]_0 (ar_cmd_fsm_0_n_10),
        .\FSM_sequential_state_reg[1]_1 (\FSM_sequential_state_reg[1] ),
        .\FSM_sequential_state_reg[1]_2 (r_push),
        .\FSM_sequential_state_reg[1]_3 (cmd_translator_0_n_40),
        .O({cmd_translator_0_n_24,cmd_translator_0_n_25,cmd_translator_0_n_26,cmd_translator_0_n_27}),
        .Q(Q),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\axaddr_incr_reg[0] (sel_first),
        .axaddr_offset(\wrap_cmd_0/axaddr_offset ),
        .\axaddr_offset_r_reg[0] (\axaddr_offset_r_reg[0] ),
        .\axaddr_offset_r_reg[1] (\axaddr_offset_r_reg[1] ),
        .\axaddr_offset_r_reg[1]_0 (\axaddr_offset_r_reg[1]_0 ),
        .\axaddr_offset_r_reg[2] (\axaddr_offset_r_reg[2] ),
        .\axaddr_offset_r_reg[2]_0 (\axaddr_offset_r_reg[2]_0 ),
        .\axaddr_offset_r_reg[3] (\wrap_cmd_0/axaddr_offset_r ),
        .\axaddr_offset_r_reg[3]_0 ({\s_arid_r_reg[11]_1 [18],\s_arid_r_reg[11]_1 [15],\s_arid_r_reg[11]_1 [11:0]}),
        .\axaddr_offset_r_reg[3]_1 (\axaddr_offset_r_reg[3] ),
        .\axaddr_wrap_reg[10] (cmd_translator_0_n_42),
        .\axaddr_wrap_reg[11] ({cmd_translator_0_n_51,cmd_translator_0_n_52,cmd_translator_0_n_53,cmd_translator_0_n_54,cmd_translator_0_n_55,cmd_translator_0_n_56,cmd_translator_0_n_57,cmd_translator_0_n_58,cmd_translator_0_n_59,cmd_translator_0_n_60,cmd_translator_0_n_61,cmd_translator_0_n_62}),
        .\axaddr_wrap_reg[3] ({cmd_translator_0_n_4,cmd_translator_0_n_5,cmd_translator_0_n_6,cmd_translator_0_n_7}),
        .\axaddr_wrap_reg[7] ({cmd_translator_0_n_20,cmd_translator_0_n_21,cmd_translator_0_n_22,cmd_translator_0_n_23}),
        .\axlen_cnt_reg[7] (cmd_translator_0_n_3),
        .m_axi_arready(m_axi_arready),
        .m_axi_arready_0(ar_cmd_fsm_0_n_16),
        .m_axi_arready_1(ar_cmd_fsm_0_n_17),
        .m_axi_arready_2(ar_cmd_fsm_0_n_19),
        .m_axi_arvalid(m_axi_arvalid),
        .\m_payload_i_reg[11] ({ar_cmd_fsm_0_n_22,ar_cmd_fsm_0_n_23,ar_cmd_fsm_0_n_24,ar_cmd_fsm_0_n_25,ar_cmd_fsm_0_n_26,ar_cmd_fsm_0_n_27,ar_cmd_fsm_0_n_28,ar_cmd_fsm_0_n_29,ar_cmd_fsm_0_n_30,ar_cmd_fsm_0_n_31,ar_cmd_fsm_0_n_32,ar_cmd_fsm_0_n_33}),
        .m_valid_i0(m_valid_i0),
        .m_valid_i_reg(E),
        .m_valid_i_reg_0(m_valid_i_reg),
        .s_axi_arvalid(s_axi_arvalid),
        .s_ready_i0(s_ready_i0),
        .sel_first_i(sel_first_i),
        .sel_first_reg(ar_cmd_fsm_0_n_21),
        .sel_first_reg_0(sel_first_reg),
        .sel_first_reg_1(cmd_translator_0_n_0),
        .si_rs_arvalid(si_rs_arvalid),
        .\wrap_second_len_r_reg[3] (\wrap_cmd_0/wrap_second_len ),
        .\wrap_second_len_r_reg[3]_0 (\wrap_cmd_0/wrap_second_len_r ),
        .\wrap_second_len_r_reg[3]_1 (\wrap_second_len_r_reg[3] ));
  Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_cmd_translator_1 cmd_translator_0
       (.D(\wrap_cmd_0/axaddr_offset ),
        .E(ar_cmd_fsm_0_n_20),
        .O({cmd_translator_0_n_24,cmd_translator_0_n_25,cmd_translator_0_n_26,cmd_translator_0_n_27}),
        .Q(Q),
        .S(S),
        .aclk(aclk),
        .\axaddr_incr_reg[0] (ar_cmd_fsm_0_n_21),
        .\axaddr_incr_reg[11] (\axaddr_incr_reg[11] ),
        .\axaddr_incr_reg[11]_0 (O),
        .\axaddr_incr_reg[3] (\axaddr_incr_reg[3] ),
        .\axaddr_incr_reg[3]_0 (\axaddr_incr_reg[3]_0 ),
        .\axaddr_incr_reg[7] (\axaddr_incr_reg[7] ),
        .\axaddr_offset_r_reg[3] (\wrap_cmd_0/axaddr_offset_r ),
        .\axaddr_wrap_reg[0] (ar_cmd_fsm_0_n_19),
        .\axaddr_wrap_reg[11] (\axaddr_wrap_reg[11] ),
        .\axaddr_wrap_reg[11]_0 ({ar_cmd_fsm_0_n_22,ar_cmd_fsm_0_n_23,ar_cmd_fsm_0_n_24,ar_cmd_fsm_0_n_25,ar_cmd_fsm_0_n_26,ar_cmd_fsm_0_n_27,ar_cmd_fsm_0_n_28,ar_cmd_fsm_0_n_29,ar_cmd_fsm_0_n_30,ar_cmd_fsm_0_n_31,ar_cmd_fsm_0_n_32,ar_cmd_fsm_0_n_33}),
        .\axaddr_wrap_reg[3] ({cmd_translator_0_n_4,cmd_translator_0_n_5,cmd_translator_0_n_6,cmd_translator_0_n_7}),
        .\axaddr_wrap_reg[7] ({cmd_translator_0_n_20,cmd_translator_0_n_21,cmd_translator_0_n_22,cmd_translator_0_n_23}),
        .\axlen_cnt_reg[0] (cmd_translator_0_n_42),
        .\axlen_cnt_reg[1] (\FSM_sequential_state_reg[1] ),
        .\axlen_cnt_reg[2] ({\s_arid_r_reg[11]_1 [17:7],\s_arid_r_reg[11]_1 [3:0]}),
        .\axlen_cnt_reg[3] (\axlen_cnt_reg[3] ),
        .\axlen_cnt_reg[7] (cmd_translator_0_n_3),
        .\axlen_cnt_reg[7]_0 (ar_cmd_fsm_0_n_10),
        .m_axi_arready(m_axi_arready),
        .m_axi_arready_0(cmd_translator_0_n_40),
        .\m_payload_i_reg[3] (\m_payload_i_reg[3] ),
        .next_pending_r_reg(next_pending_r_reg),
        .r_push(r_push),
        .r_rlast(r_rlast),
        .sel_first_i(sel_first_i),
        .sel_first_reg_0(cmd_translator_0_n_0),
        .sel_first_reg_1(sel_first),
        .sel_first_reg_2(sel_first_reg),
        .sel_first_reg_3(ar_cmd_fsm_0_n_17),
        .sel_first_reg_4(ar_cmd_fsm_0_n_16),
        .si_rs_arvalid(si_rs_arvalid),
        .\wrap_boundary_axaddr_r_reg[11] ({cmd_translator_0_n_51,cmd_translator_0_n_52,cmd_translator_0_n_53,cmd_translator_0_n_54,cmd_translator_0_n_55,cmd_translator_0_n_56,cmd_translator_0_n_57,cmd_translator_0_n_58,cmd_translator_0_n_59,cmd_translator_0_n_60,cmd_translator_0_n_61,cmd_translator_0_n_62}),
        .\wrap_boundary_axaddr_r_reg[6] (D),
        .\wrap_cnt_r_reg[3] ({ar_cmd_fsm_0_n_0,ar_cmd_fsm_0_n_1,ar_cmd_fsm_0_n_2,ar_cmd_fsm_0_n_3}),
        .\wrap_second_len_r_reg[3] (\wrap_cmd_0/wrap_second_len_r ),
        .\wrap_second_len_r_reg[3]_0 (\wrap_cmd_0/wrap_second_len ));
  FDRE \s_arid_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[11]_1 [19]),
        .Q(\s_arid_r_reg[11]_0 [0]),
        .R(1'b0));
  FDRE \s_arid_r_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[11]_1 [29]),
        .Q(\s_arid_r_reg[11]_0 [10]),
        .R(1'b0));
  FDRE \s_arid_r_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[11]_1 [30]),
        .Q(\s_arid_r_reg[11]_0 [11]),
        .R(1'b0));
  FDRE \s_arid_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[11]_1 [20]),
        .Q(\s_arid_r_reg[11]_0 [1]),
        .R(1'b0));
  FDRE \s_arid_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[11]_1 [21]),
        .Q(\s_arid_r_reg[11]_0 [2]),
        .R(1'b0));
  FDRE \s_arid_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[11]_1 [22]),
        .Q(\s_arid_r_reg[11]_0 [3]),
        .R(1'b0));
  FDRE \s_arid_r_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[11]_1 [23]),
        .Q(\s_arid_r_reg[11]_0 [4]),
        .R(1'b0));
  FDRE \s_arid_r_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[11]_1 [24]),
        .Q(\s_arid_r_reg[11]_0 [5]),
        .R(1'b0));
  FDRE \s_arid_r_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[11]_1 [25]),
        .Q(\s_arid_r_reg[11]_0 [6]),
        .R(1'b0));
  FDRE \s_arid_r_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[11]_1 [26]),
        .Q(\s_arid_r_reg[11]_0 [7]),
        .R(1'b0));
  FDRE \s_arid_r_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[11]_1 [27]),
        .Q(\s_arid_r_reg[11]_0 [8]),
        .R(1'b0));
  FDRE \s_arid_r_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[11]_1 [28]),
        .Q(\s_arid_r_reg[11]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_b2s_aw_channel" *) 
module Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_aw_channel
   (sel_first_0,
    sel_first,
    Q,
    \FSM_sequential_state_reg[0] ,
    E,
    b_push,
    \axaddr_wrap_reg[11] ,
    \axaddr_incr_reg[11] ,
    m_axi_awvalid,
    in,
    \m_payload_i_reg[3] ,
    aclk,
    \s_awid_r_reg[11]_0 ,
    si_rs_awvalid,
    \axaddr_wrap_reg[3] ,
    S,
    \wrap_second_len_r_reg[3] ,
    \axaddr_offset_r_reg[0] ,
    \axaddr_offset_r_reg[2] ,
    \axaddr_offset_r_reg[2]_0 ,
    next_pending_r_reg,
    m_axi_awready,
    areset_d1,
    \axaddr_offset_r_reg[3] ,
    \axaddr_offset_r_reg[1] ,
    \axaddr_offset_r_reg[1]_0 ,
    cnt_read,
    axaddr_incr,
    D);
  output sel_first_0;
  output sel_first;
  output [1:0]Q;
  output \FSM_sequential_state_reg[0] ;
  output [0:0]E;
  output b_push;
  output [11:0]\axaddr_wrap_reg[11] ;
  output [11:0]\axaddr_incr_reg[11] ;
  output m_axi_awvalid;
  output [15:0]in;
  output [3:0]\m_payload_i_reg[3] ;
  input aclk;
  input [30:0]\s_awid_r_reg[11]_0 ;
  input si_rs_awvalid;
  input [3:0]\axaddr_wrap_reg[3] ;
  input [3:0]S;
  input \wrap_second_len_r_reg[3] ;
  input \axaddr_offset_r_reg[0] ;
  input \axaddr_offset_r_reg[2] ;
  input \axaddr_offset_r_reg[2]_0 ;
  input next_pending_r_reg;
  input m_axi_awready;
  input areset_d1;
  input \axaddr_offset_r_reg[3] ;
  input \axaddr_offset_r_reg[1] ;
  input \axaddr_offset_r_reg[1]_0 ;
  input [1:0]cnt_read;
  input [11:0]axaddr_incr;
  input [6:0]D;

  wire [6:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire [1:0]Q;
  wire [3:0]S;
  wire aclk;
  wire areset_d1;
  wire aw_cmd_fsm_0_n_10;
  wire aw_cmd_fsm_0_n_11;
  wire aw_cmd_fsm_0_n_19;
  wire aw_cmd_fsm_0_n_2;
  wire aw_cmd_fsm_0_n_21;
  wire aw_cmd_fsm_0_n_22;
  wire aw_cmd_fsm_0_n_23;
  wire aw_cmd_fsm_0_n_24;
  wire aw_cmd_fsm_0_n_26;
  wire aw_cmd_fsm_0_n_27;
  wire aw_cmd_fsm_0_n_28;
  wire aw_cmd_fsm_0_n_29;
  wire aw_cmd_fsm_0_n_3;
  wire aw_cmd_fsm_0_n_30;
  wire aw_cmd_fsm_0_n_31;
  wire aw_cmd_fsm_0_n_32;
  wire aw_cmd_fsm_0_n_33;
  wire aw_cmd_fsm_0_n_34;
  wire aw_cmd_fsm_0_n_35;
  wire aw_cmd_fsm_0_n_36;
  wire aw_cmd_fsm_0_n_37;
  wire [11:0]axaddr_incr;
  wire [11:0]\axaddr_incr_reg[11] ;
  wire \axaddr_offset_r_reg[0] ;
  wire \axaddr_offset_r_reg[1] ;
  wire \axaddr_offset_r_reg[1]_0 ;
  wire \axaddr_offset_r_reg[2] ;
  wire \axaddr_offset_r_reg[2]_0 ;
  wire \axaddr_offset_r_reg[3] ;
  wire [11:0]axaddr_wrap0;
  wire [11:0]\axaddr_wrap_reg[11] ;
  wire [3:0]\axaddr_wrap_reg[3] ;
  wire b_push;
  wire cmd_translator_0_n_2;
  wire cmd_translator_0_n_43;
  wire cmd_translator_0_n_44;
  wire cmd_translator_0_n_5;
  wire cmd_translator_0_n_6;
  wire [1:0]cnt_read;
  wire [15:0]in;
  wire \incr_cmd_0/next_pending_r ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [3:0]\m_payload_i_reg[3] ;
  wire next;
  wire next_pending_r_reg;
  wire [30:0]\s_awid_r_reg[11]_0 ;
  wire sel_first;
  wire sel_first_0;
  wire sel_first_i;
  wire si_rs_awvalid;
  wire [11:0]wrap_boundary_axaddr_r;
  wire [3:0]\wrap_cmd_0/axaddr_offset ;
  wire [3:0]\wrap_cmd_0/axaddr_offset_r ;
  wire \wrap_cmd_0/next_pending_r ;
  wire [3:0]\wrap_cmd_0/wrap_second_len ;
  wire [3:0]\wrap_cmd_0/wrap_second_len_r ;
  wire [3:2]wrap_cnt;
  wire \wrap_second_len_r_reg[3] ;

  Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_wr_cmd_fsm aw_cmd_fsm_0
       (.D({wrap_cnt,aw_cmd_fsm_0_n_2,aw_cmd_fsm_0_n_3}),
        .E(E),
        .\FSM_sequential_state_reg[0]_0 (aw_cmd_fsm_0_n_10),
        .\FSM_sequential_state_reg[0]_1 (aw_cmd_fsm_0_n_11),
        .\FSM_sequential_state_reg[0]_2 (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[1]_0 (cmd_translator_0_n_43),
        .Q(Q),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .axaddr_offset(\wrap_cmd_0/axaddr_offset ),
        .\axaddr_offset_r_reg[0] (\axaddr_offset_r_reg[0] ),
        .\axaddr_offset_r_reg[1] (\axaddr_offset_r_reg[1] ),
        .\axaddr_offset_r_reg[1]_0 (\axaddr_offset_r_reg[1]_0 ),
        .\axaddr_offset_r_reg[2] (\axaddr_offset_r_reg[2] ),
        .\axaddr_offset_r_reg[2]_0 (\axaddr_offset_r_reg[2]_0 ),
        .\axaddr_offset_r_reg[3] (\wrap_cmd_0/axaddr_offset_r ),
        .\axaddr_offset_r_reg[3]_0 ({\s_awid_r_reg[11]_0 [18],\s_awid_r_reg[11]_0 [15:14],\s_awid_r_reg[11]_0 [11:0]}),
        .\axaddr_offset_r_reg[3]_1 (\axaddr_offset_r_reg[3] ),
        .axaddr_wrap0(axaddr_wrap0),
        .\axaddr_wrap_reg[10] (cmd_translator_0_n_44),
        .\axaddr_wrap_reg[11] (wrap_boundary_axaddr_r),
        .\axlen_cnt_reg[2] (aw_cmd_fsm_0_n_19),
        .\axlen_cnt_reg[2]_0 (aw_cmd_fsm_0_n_21),
        .cnt_read(cnt_read),
        .m_axi_awready(m_axi_awready),
        .m_axi_awready_0(b_push),
        .m_axi_awvalid(m_axi_awvalid),
        .m_valid_i_reg(aw_cmd_fsm_0_n_22),
        .next(next),
        .next_pending_r(\incr_cmd_0/next_pending_r ),
        .next_pending_r_0(\wrap_cmd_0/next_pending_r ),
        .s_axburst_eq0_reg(cmd_translator_0_n_5),
        .s_axburst_eq0_reg_0(cmd_translator_0_n_6),
        .s_axburst_eq1_reg(next_pending_r_reg),
        .sel_first(sel_first),
        .sel_first_i(sel_first_i),
        .sel_first_reg(aw_cmd_fsm_0_n_23),
        .sel_first_reg_0(aw_cmd_fsm_0_n_24),
        .sel_first_reg_1(sel_first_0),
        .sel_first_reg_2(cmd_translator_0_n_2),
        .si_rs_awvalid(si_rs_awvalid),
        .\wrap_boundary_axaddr_r_reg[11] ({aw_cmd_fsm_0_n_26,aw_cmd_fsm_0_n_27,aw_cmd_fsm_0_n_28,aw_cmd_fsm_0_n_29,aw_cmd_fsm_0_n_30,aw_cmd_fsm_0_n_31,aw_cmd_fsm_0_n_32,aw_cmd_fsm_0_n_33,aw_cmd_fsm_0_n_34,aw_cmd_fsm_0_n_35,aw_cmd_fsm_0_n_36,aw_cmd_fsm_0_n_37}),
        .\wrap_second_len_r_reg[3] (\wrap_cmd_0/wrap_second_len ),
        .\wrap_second_len_r_reg[3]_0 (\wrap_cmd_0/wrap_second_len_r ),
        .\wrap_second_len_r_reg[3]_1 (\wrap_second_len_r_reg[3] ));
  Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_cmd_translator cmd_translator_0
       (.D(\wrap_cmd_0/axaddr_offset ),
        .E(aw_cmd_fsm_0_n_22),
        .Q(Q),
        .S(S),
        .aclk(aclk),
        .axaddr_incr(axaddr_incr),
        .\axaddr_incr_reg[11] (\axaddr_incr_reg[11] ),
        .\axaddr_offset_r_reg[3] (\wrap_cmd_0/axaddr_offset_r ),
        .axaddr_wrap0(axaddr_wrap0),
        .\axaddr_wrap_reg[0] (aw_cmd_fsm_0_n_11),
        .\axaddr_wrap_reg[11] (\axaddr_wrap_reg[11] ),
        .\axaddr_wrap_reg[11]_0 ({aw_cmd_fsm_0_n_26,aw_cmd_fsm_0_n_27,aw_cmd_fsm_0_n_28,aw_cmd_fsm_0_n_29,aw_cmd_fsm_0_n_30,aw_cmd_fsm_0_n_31,aw_cmd_fsm_0_n_32,aw_cmd_fsm_0_n_33,aw_cmd_fsm_0_n_34,aw_cmd_fsm_0_n_35,aw_cmd_fsm_0_n_36,aw_cmd_fsm_0_n_37}),
        .\axaddr_wrap_reg[3] (\axaddr_wrap_reg[3] ),
        .\axlen_cnt_reg[0] (cmd_translator_0_n_44),
        .\axlen_cnt_reg[2] (cmd_translator_0_n_6),
        .\axlen_cnt_reg[3] ({\s_awid_r_reg[11]_0 [18:7],\s_awid_r_reg[11]_0 [3:0]}),
        .\axlen_cnt_reg[3]_0 (\FSM_sequential_state_reg[0] ),
        .\axlen_cnt_reg[5] (cmd_translator_0_n_5),
        .\axlen_cnt_reg[5]_0 (aw_cmd_fsm_0_n_10),
        .\m_payload_i_reg[3] (\m_payload_i_reg[3] ),
        .next(next),
        .next_pending_r(\incr_cmd_0/next_pending_r ),
        .next_pending_r_0(\wrap_cmd_0/next_pending_r ),
        .next_pending_r_reg(next_pending_r_reg),
        .s_axburst_eq0_reg_0(aw_cmd_fsm_0_n_19),
        .s_axburst_eq1_reg_0(cmd_translator_0_n_43),
        .s_axburst_eq1_reg_1(aw_cmd_fsm_0_n_21),
        .sel_first(sel_first),
        .sel_first_i(sel_first_i),
        .sel_first_reg_0(cmd_translator_0_n_2),
        .sel_first_reg_1(sel_first_0),
        .sel_first_reg_2(aw_cmd_fsm_0_n_24),
        .sel_first_reg_3(aw_cmd_fsm_0_n_23),
        .si_rs_awvalid(si_rs_awvalid),
        .\wrap_boundary_axaddr_r_reg[11] (wrap_boundary_axaddr_r),
        .\wrap_boundary_axaddr_r_reg[6] (D),
        .\wrap_cnt_r_reg[3] ({wrap_cnt,aw_cmd_fsm_0_n_2,aw_cmd_fsm_0_n_3}),
        .\wrap_second_len_r_reg[3] (\wrap_cmd_0/wrap_second_len_r ),
        .\wrap_second_len_r_reg[3]_0 (\wrap_cmd_0/wrap_second_len ));
  FDRE \s_awid_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [19]),
        .Q(in[4]),
        .R(1'b0));
  FDRE \s_awid_r_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [29]),
        .Q(in[14]),
        .R(1'b0));
  FDRE \s_awid_r_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [30]),
        .Q(in[15]),
        .R(1'b0));
  FDRE \s_awid_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [20]),
        .Q(in[5]),
        .R(1'b0));
  FDRE \s_awid_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [21]),
        .Q(in[6]),
        .R(1'b0));
  FDRE \s_awid_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [22]),
        .Q(in[7]),
        .R(1'b0));
  FDRE \s_awid_r_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [23]),
        .Q(in[8]),
        .R(1'b0));
  FDRE \s_awid_r_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [24]),
        .Q(in[9]),
        .R(1'b0));
  FDRE \s_awid_r_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [25]),
        .Q(in[10]),
        .R(1'b0));
  FDRE \s_awid_r_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [26]),
        .Q(in[11]),
        .R(1'b0));
  FDRE \s_awid_r_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [27]),
        .Q(in[12]),
        .R(1'b0));
  FDRE \s_awid_r_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [28]),
        .Q(in[13]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [15]),
        .Q(in[0]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [16]),
        .Q(in[1]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [17]),
        .Q(in[2]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[11]_0 [18]),
        .Q(in[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_b2s_b_channel" *) 
module Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_b_channel
   (si_rs_bvalid,
    cnt_read,
    m_axi_bready,
    out,
    \s_bresp_acc_reg[1]_0 ,
    areset_d1,
    shandshake,
    aclk,
    si_rs_bready,
    m_axi_bvalid,
    b_push,
    in,
    m_axi_bresp);
  output si_rs_bvalid;
  output [1:0]cnt_read;
  output m_axi_bready;
  output [11:0]out;
  output [1:0]\s_bresp_acc_reg[1]_0 ;
  input areset_d1;
  input shandshake;
  input aclk;
  input si_rs_bready;
  input m_axi_bvalid;
  input b_push;
  input [15:0]in;
  input [1:0]m_axi_bresp;

  wire aclk;
  wire areset_d1;
  wire b_push;
  wire bid_fifo_0_n_4;
  wire bid_fifo_0_n_5;
  wire \bresp_cnt[7]_i_3_n_0 ;
  wire [7:0]bresp_cnt_reg;
  wire bresp_fifo_0_n_0;
  wire bresp_push;
  wire [1:0]cnt_read;
  wire [15:0]in;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire mhandshake;
  wire mhandshake_r;
  wire [11:0]out;
  wire [7:0]p_0_in;
  wire s_bresp_acc0;
  wire \s_bresp_acc[0]_i_1_n_0 ;
  wire \s_bresp_acc[1]_i_1_n_0 ;
  wire [1:0]\s_bresp_acc_reg[1]_0 ;
  wire \s_bresp_acc_reg_n_0_[0] ;
  wire \s_bresp_acc_reg_n_0_[1] ;
  wire shandshake;
  wire shandshake_r;
  wire si_rs_bready;
  wire si_rs_bvalid;

  Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_simple_fifo bid_fifo_0
       (.Q(bresp_cnt_reg),
        .SR(s_bresp_acc0),
        .aclk(aclk),
        .addr(cnt_read),
        .areset_d1(areset_d1),
        .b_push(b_push),
        .\bresp_cnt_reg[1] (bid_fifo_0_n_4),
        .\cnt_read_reg[1]_0 (bid_fifo_0_n_5),
        .in(in),
        .mhandshake_r(mhandshake_r),
        .out(out),
        .sel(bresp_push),
        .shandshake_r(shandshake_r));
  LUT1 #(
    .INIT(2'h1)) 
    \bresp_cnt[0]_i_1 
       (.I0(bresp_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bresp_cnt[1]_i_1 
       (.I0(bresp_cnt_reg[1]),
        .I1(bresp_cnt_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bresp_cnt[2]_i_1 
       (.I0(bresp_cnt_reg[2]),
        .I1(bresp_cnt_reg[0]),
        .I2(bresp_cnt_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bresp_cnt[3]_i_1 
       (.I0(bresp_cnt_reg[3]),
        .I1(bresp_cnt_reg[1]),
        .I2(bresp_cnt_reg[0]),
        .I3(bresp_cnt_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \bresp_cnt[4]_i_1 
       (.I0(bresp_cnt_reg[4]),
        .I1(bresp_cnt_reg[2]),
        .I2(bresp_cnt_reg[0]),
        .I3(bresp_cnt_reg[1]),
        .I4(bresp_cnt_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \bresp_cnt[5]_i_1 
       (.I0(bresp_cnt_reg[5]),
        .I1(bresp_cnt_reg[3]),
        .I2(bresp_cnt_reg[1]),
        .I3(bresp_cnt_reg[0]),
        .I4(bresp_cnt_reg[2]),
        .I5(bresp_cnt_reg[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bresp_cnt[6]_i_1 
       (.I0(bresp_cnt_reg[6]),
        .I1(\bresp_cnt[7]_i_3_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bresp_cnt[7]_i_2 
       (.I0(bresp_cnt_reg[7]),
        .I1(\bresp_cnt[7]_i_3_n_0 ),
        .I2(bresp_cnt_reg[6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \bresp_cnt[7]_i_3 
       (.I0(bresp_cnt_reg[5]),
        .I1(bresp_cnt_reg[3]),
        .I2(bresp_cnt_reg[1]),
        .I3(bresp_cnt_reg[0]),
        .I4(bresp_cnt_reg[2]),
        .I5(bresp_cnt_reg[4]),
        .O(\bresp_cnt[7]_i_3_n_0 ));
  FDRE \bresp_cnt_reg[0] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[0]),
        .Q(bresp_cnt_reg[0]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[1] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[1]),
        .Q(bresp_cnt_reg[1]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[2] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[2]),
        .Q(bresp_cnt_reg[2]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[3] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[3]),
        .Q(bresp_cnt_reg[3]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[4] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[4]),
        .Q(bresp_cnt_reg[4]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[5] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[5]),
        .Q(bresp_cnt_reg[5]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[6] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[6]),
        .Q(bresp_cnt_reg[6]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[7] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[7]),
        .Q(bresp_cnt_reg[7]),
        .R(s_bresp_acc0));
  Camera_filter_SOC_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_simple_fifo__parameterized0 bresp_fifo_0
       (.aclk(aclk),
        .areset_d1(areset_d1),
        .areset_d1_reg(bresp_fifo_0_n_0),
        .bvalid_i_reg(bid_fifo_0_n_5),
        .\cnt_read_reg[1]_0 (bid_fifo_0_n_4),
        .in({\s_bresp_acc_reg_n_0_[1] ,\s_bresp_acc_reg_n_0_[0] }),
        .m_axi_bready(m_