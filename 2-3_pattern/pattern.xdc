## Arty constraints file
## chapter: 2
## project: pattern

# Clock Signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { CLK }];
create_clock -add -name CLK -period 10.00 -waveform {0 5} [get_ports { CLK }];
#create_clock -add -name SYSCLK -period 10.00 -waveform {0 5} [get_nets { design_1_i/clk_wiz_1/clk_out1 }];

#Reset
set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 } [get_ports { RST }]; # BTN[3]

## RGB LEDs
#set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { LED_RGB[0] }];  # Blue
#set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { LED_RGB[1] }];  # Green
#set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { LED_RGB[2] }];  # Red

## Buttons
#set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { BTN[0] }];
#set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 } [get_ports { BTN[1] }];
#set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { BTN[2] }];
#set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 } [get_ports { BTN[3] }];

#Pmod VGA

# Pmod Header JB
set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[0] }]; #jb_p[1]
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[1] }]; #jb_n[1]
set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[2] }]; #jb_p[2]
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[3] }]; #jb_n[2]
set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[0] }]; #jb_p[3]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[1] }]; #jb_n[3]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[2] }]; #jb_p[4]
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[3] }]; #jb_n[4]

# Pmod Header JC
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[0] }]; #jc_p[1]
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[1] }]; #jc_n[1]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[2] }]; #jc_p[2]
set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[3] }]; #jc_n[2]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { VGA_HS }];   #jc_p[3]
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { VGA_VS }];   #jc_n[3]

##Pmod HDMI

## Pmod Header JB
#set_property -dict { PACKAGE_PIN E15   IOSTANDARD TMDS_33 } [get_ports { HDMI_P[2] }];  #jb_p[1]
#set_property -dict { PACKAGE_PIN E16   IOSTANDARD TMDS_33 } [get_ports { HDMI_N[2] }];  #jb_n[1]
#set_property -dict { PACKAGE_PIN D15   IOSTANDARD TMDS_33 } [get_ports { HDMI_P[1] }];  #jb_p[2]
#set_property -dict { PACKAGE_PIN C15   IOSTANDARD TMDS_33 } [get_ports { HDMI_N[1] }];  #jb_n[2]
#set_property -dict { PACKAGE_PIN J17   IOSTANDARD TMDS_33 } [get_ports { HDMI_P[0] }];  #jb_p[3]
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD TMDS_33 } [get_ports { HDMI_N[0] }];  #jb_n[3]
#set_property -dict { PACKAGE_PIN K15   IOSTANDARD TMDS_33 } [get_ports { HDMI_CLK_P }]; #jb_p[4]
#set_property -dict { PACKAGE_PIN J15   IOSTANDARD TMDS_33 } [get_ports { HDMI_CLK_N }]; #jb_n[4]

## LEDs
#set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { LED[0] }];
#set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { LED[1] }];
#set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { LED[2] }];
#set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }];

## Switches
#set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { SW[0] }];
#set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { SW[1] }];
#set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { SW[2] }];
#set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { SW[3] }];

## false path
#set_clock_groups -asynchronous -group [get_clocks SYSCLK] \
#    -group [get_clocks -include_generated_clocks SYSCLK -filter {NAME !~ SYSCLK}];
