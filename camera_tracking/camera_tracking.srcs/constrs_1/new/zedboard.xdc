## Clock Source - Bank 13
set_property PACKAGE_PIN Y9 [get_ports clk100_0]
set_property IOSTANDARD LVCMOS33 [get_ports clk100_0]
create_clock -period 10.000 -name clk100 [get_ports clk100_0]

## OV7670 Camera - JA/JB Pmod Pins - Bank 13
set_property PACKAGE_PIN Y11  [get_ports OV7670_PWDN_0]
set_property PACKAGE_PIN AB11 [get_ports OV7670_RESET_0]

set_property PACKAGE_PIN AA11 [get_ports {OV7670_D_0[0]}]
set_property PACKAGE_PIN AB10 [get_ports {OV7670_D_0[1]}]
set_property PACKAGE_PIN Y10  [get_ports {OV7670_D_0[2]}]
set_property PACKAGE_PIN AB9  [get_ports {OV7670_D_0[3]}]
set_property PACKAGE_PIN AA9  [get_ports {OV7670_D_0[4]}]
set_property PACKAGE_PIN AA8  [get_ports {OV7670_D_0[5]}]
set_property PACKAGE_PIN W12  [get_ports {OV7670_D_0[6]}]
set_property PACKAGE_PIN V12  [get_ports {OV7670_D_0[7]}]

set_property PACKAGE_PIN W11 [get_ports OV7670_XCLK_0]
set_property PACKAGE_PIN W10 [get_ports OV7670_PCLK_0]
set_property PACKAGE_PIN V10 [get_ports OV7670_HREF_0]
set_property PACKAGE_PIN V9  [get_ports OV7670_VSYNC_0]
set_property PACKAGE_PIN W8  [get_ports OV7670_SIOD_0]
set_property PACKAGE_PIN V8  [get_ports OV7670_SIOC_0]

set_property IOSTANDARD LVCMOS33 [get_ports OV7670_PWDN_0]
set_property IOSTANDARD LVCMOS33 [get_ports OV7670_RESET_0]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7670_D_0[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports OV7670_XCLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports OV7670_PCLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports OV7670_HREF_0]
set_property IOSTANDARD LVCMOS33 [get_ports OV7670_VSYNC_0]
set_property IOSTANDARD LVCMOS33 [get_ports OV7670_SIOD_0]
set_property IOSTANDARD LVCMOS33 [get_ports OV7670_SIOC_0]

## VGA Output - Bank 33
set_property PACKAGE_PIN Y21  [get_ports {vga_blue_0[0]}]
set_property PACKAGE_PIN Y20  [get_ports {vga_blue_0[1]}]
set_property PACKAGE_PIN AB20 [get_ports {vga_blue_0[2]}]
set_property PACKAGE_PIN AB19 [get_ports {vga_blue_0[3]}]

set_property PACKAGE_PIN AB22 [get_ports {vga_green_0[0]}]
set_property PACKAGE_PIN AA22 [get_ports {vga_green_0[1]}]
set_property PACKAGE_PIN AB21 [get_ports {vga_green_0[2]}]
set_property PACKAGE_PIN AA21 [get_ports {vga_green_0[3]}]

set_property PACKAGE_PIN V20 [get_ports {vga_red_0[0]}]
set_property PACKAGE_PIN U20 [get_ports {vga_red_0[1]}]
set_property PACKAGE_PIN V19 [get_ports {vga_red_0[2]}]
set_property PACKAGE_PIN V18 [get_ports {vga_red_0[3]}]

set_property PACKAGE_PIN AA19 [get_ports vga_hsync_0]
set_property PACKAGE_PIN Y19  [get_ports vga_vsync_0]

set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue_0[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green_0[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red_0[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports vga_hsync_0]
set_property IOSTANDARD LVCMOS33 [get_ports vga_vsync_0]

## User LEDs - Bank 33
set_property PACKAGE_PIN T22 [get_ports {LED_0[0]}]
set_property PACKAGE_PIN T21 [get_ports {LED_0[1]}]
set_property PACKAGE_PIN U22 [get_ports {LED_0[2]}]
set_property PACKAGE_PIN U21 [get_ports {LED_0[3]}]
set_property PACKAGE_PIN V22 [get_ports {LED_0[4]}]
set_property PACKAGE_PIN W22 [get_ports {LED_0[5]}]
set_property PACKAGE_PIN U19 [get_ports {LED_0[6]}]
set_property PACKAGE_PIN U14 [get_ports {LED_0[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {LED_0[*]}]

## User Button
set_property PACKAGE_PIN T18 [get_ports btn_0]
set_property IOSTANDARD LVCMOS18 [get_ports btn_0]

## Optional filter switches
## Uncomment these only if your top module has:
## filter_mode : in STD_LOGIC_VECTOR(2 downto 0)

# set_property PACKAGE_PIN F22 [get_ports {filter_mode[0]}]
# set_property PACKAGE_PIN G22 [get_ports {filter_mode[1]}]
# set_property PACKAGE_PIN H22 [get_ports {filter_mode[2]}]
# set_property PACKAGE_PIN F21 [get_ports {filter_mode[3]}]
# set_property PACKAGE_PIN H19 [get_ports {filter_mode[4]}]
# set_property PACKAGE_PIN H18 [get_ports {filter_mode[5]}]
# set_property PACKAGE_PIN H17 [get_ports {filter_mode[6]}]
# set_property PACKAGE_PIN M15 [get_ports {filter_mode[7]}]

# set_property IOSTANDARD LVCMOS18 [get_ports {filter_mode[*]}]
 
#set_property PACKAGE_PIN F22 [get_ports {SW0}];  # "SW0"
#set_property PACKAGE_PIN G22 [get_ports {SW1}];  # "SW1"
#set_property PACKAGE_PIN H22 [get_ports {SW2}];  # "SW2"
#set_property PACKAGE_PIN F21 [get_ports {SW3}];  # "SW3"
#set_property PACKAGE_PIN H19 [get_ports {SW4}];  # "SW4"
#set_property PACKAGE_PIN H18 [get_ports {SW5}];  # "SW5"
#set_property PACKAGE_PIN H17 [get_ports {SW6}];  # "SW6"
#set_property PACKAGE_PIN M15 [get_ports {SW7}];  # "SW7"
## Camera PCLK routing workaround
## Use only if Vivado gives a dedicated clock route warning for OV7670_PCLK.
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets OV7670_PCLK_0_IBUF]