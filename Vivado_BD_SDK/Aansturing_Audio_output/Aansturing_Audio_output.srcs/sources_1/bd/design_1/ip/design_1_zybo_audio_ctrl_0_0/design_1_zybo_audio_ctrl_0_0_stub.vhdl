-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Wed May 31 12:22:10 2017
-- Host        : 5CG4363RFZ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/11401393/Desktop/NCO_audio_output/Vivado_BD_SDK/Aansturing_Audio_output/Aansturing_Audio_output.srcs/sources_1/bd/design_1/ip/design_1_zybo_audio_ctrl_0_0/design_1_zybo_audio_ctrl_0_0_stub.vhdl
-- Design      : design_1_zybo_audio_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_zybo_audio_ctrl_0_0 is
  Port ( 
    BCLK : out STD_LOGIC;
    PBLRCLK : out STD_LOGIC;
    RECLRCLK : out STD_LOGIC;
    RECDAT : in STD_LOGIC;
    PBDATA : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC
  );

end design_1_zybo_audio_ctrl_0_0;

architecture stub of design_1_zybo_audio_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "BCLK,PBLRCLK,RECLRCLK,RECDAT,PBDATA,S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[31:0],S_AXI_AWVALID,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_BREADY,S_AXI_ARADDR[31:0],S_AXI_ARVALID,S_AXI_RREADY,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_AWREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "i2s_ctrl,Vivado 2016.4";
begin
end;