--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Sat May  2 17:12:16 2026
--Host        : DESKTOP-HFH6M23 running 64-bit major release  (build 9200)
--Command     : generate_target Camera_filter_SOC_wrapper.bd
--Design      : Camera_filter_SOC_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Camera_filter_SOC_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LED_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    OV7670_D_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    OV7670_HREF_0 : in STD_LOGIC;
    OV7670_PCLK_0 : in STD_LOGIC;
    OV7670_PWDN_0 : out STD_LOGIC;
    OV7670_RESET_0 : out STD_LOGIC;
    OV7670_SIOC_0 : out STD_LOGIC;
    OV7670_SIOD_0 : inout STD_LOGIC;
    OV7670_VSYNC_0 : in STD_LOGIC;
    OV7670_XCLK_0 : out STD_LOGIC;
    btn_0 : in STD_LOGIC;
    clk100_0 : in STD_LOGIC;
    vga_blue_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hsync_0 : out STD_LOGIC;
    vga_red_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_vsync_0 : out STD_LOGIC
  );
end Camera_filter_SOC_wrapper;

architecture STRUCTURE of Camera_filter_SOC_wrapper is
  component Camera_filter_SOC is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    clk100_0 : in STD_LOGIC;
    OV7670_SIOC_0 : out STD_LOGIC;
    OV7670_SIOD_0 : inout STD_LOGIC;
    OV7670_RESET_0 : out STD_LOGIC;
    OV7670_PWDN_0 : out STD_LOGIC;
    OV7670_VSYNC_0 : in STD_LOGIC;
    OV7670_HREF_0 : in STD_LOGIC;
    OV7670_PCLK_0 : in STD_LOGIC;
    OV7670_XCLK_0 : out STD_LOGIC;
    LED_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    OV7670_D_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vga_red_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_blue_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hsync_0 : out STD_LOGIC;
    vga_vsync_0 : out STD_LOGIC;
    btn_0 : in STD_LOGIC
  );
  end component Camera_filter_SOC;
begin
Camera_filter_SOC_i: component Camera_filter_SOC
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      LED_0(7 downto 0) => LED_0(7 downto 0),
      OV7670_D_0(7 downto 0) => OV7670_D_0(7 downto 0),
      OV7670_HREF_0 => OV7670_HREF_0,
      OV7670_PCLK_0 => OV7670_PCLK_0,
      OV7670_PWDN_0 => OV7670_PWDN_0,
      OV7670_RESET_0 => OV7670_RESET_0,
      OV7670_SIOC_0 => OV7670_SIOC_0,
      OV7670_SIOD_0 => OV7670_SIOD_0,
      OV7670_VSYNC_0 => OV7670_VSYNC_0,
      OV7670_XCLK_0 => OV7670_XCLK_0,
      btn_0 => btn_0,
      clk100_0 => clk100_0,
      vga_blue_0(3 downto 0) => vga_blue_0(3 downto 0),
      vga_green_0(3 downto 0) => vga_green_0(3 downto 0),
      vga_hsync_0 => vga_hsync_0,
      vga_red_0(3 downto 0) => vga_red_0(3 downto 0),
      vga_vsync_0 => vga_vsync_0
    );
end STRUCTURE;
