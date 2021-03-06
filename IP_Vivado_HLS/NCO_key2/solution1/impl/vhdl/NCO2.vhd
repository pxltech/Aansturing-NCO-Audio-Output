-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity NCO2 is
generic (
    C_S_AXI_AXILITES_ADDR_WIDTH : INTEGER := 5;
    C_S_AXI_AXILITES_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    s_axi_AXILiteS_AWVALID : IN STD_LOGIC;
    s_axi_AXILiteS_AWREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_ADDR_WIDTH-1 downto 0);
    s_axi_AXILiteS_WVALID : IN STD_LOGIC;
    s_axi_AXILiteS_WREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH-1 downto 0);
    s_axi_AXILiteS_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH/8-1 downto 0);
    s_axi_AXILiteS_ARVALID : IN STD_LOGIC;
    s_axi_AXILiteS_ARREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_ADDR_WIDTH-1 downto 0);
    s_axi_AXILiteS_RVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_RREADY : IN STD_LOGIC;
    s_axi_AXILiteS_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH-1 downto 0);
    s_axi_AXILiteS_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_AXILiteS_BVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_BREADY : IN STD_LOGIC;
    s_axi_AXILiteS_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0) );
end;


architecture behav of NCO2 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "NCO2,hls_ip_2016_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.210250,HLS_SYN_LAT=44,HLS_SYN_TPT=none,HLS_SYN_MEM=12,HLS_SYN_DSP=11,HLS_SYN_FF=4276,HLS_SYN_LUT=5789}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000001000000000000000000000000";
    constant ap_ST_fsm_state26 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000010000000000000000000000000";
    constant ap_ST_fsm_state27 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000100000000000000000000000000";
    constant ap_ST_fsm_state28 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000001000000000000000000000000000";
    constant ap_ST_fsm_state29 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000010000000000000000000000000000";
    constant ap_ST_fsm_state30 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000100000000000000000000000000000";
    constant ap_ST_fsm_state31 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000001000000000000000000000000000000";
    constant ap_ST_fsm_state32 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000010000000000000000000000000000000";
    constant ap_ST_fsm_state33 : STD_LOGIC_VECTOR (44 downto 0) := "000000000000100000000000000000000000000000000";
    constant ap_ST_fsm_state34 : STD_LOGIC_VECTOR (44 downto 0) := "000000000001000000000000000000000000000000000";
    constant ap_ST_fsm_state35 : STD_LOGIC_VECTOR (44 downto 0) := "000000000010000000000000000000000000000000000";
    constant ap_ST_fsm_state36 : STD_LOGIC_VECTOR (44 downto 0) := "000000000100000000000000000000000000000000000";
    constant ap_ST_fsm_state37 : STD_LOGIC_VECTOR (44 downto 0) := "000000001000000000000000000000000000000000000";
    constant ap_ST_fsm_state38 : STD_LOGIC_VECTOR (44 downto 0) := "000000010000000000000000000000000000000000000";
    constant ap_ST_fsm_state39 : STD_LOGIC_VECTOR (44 downto 0) := "000000100000000000000000000000000000000000000";
    constant ap_ST_fsm_state40 : STD_LOGIC_VECTOR (44 downto 0) := "000001000000000000000000000000000000000000000";
    constant ap_ST_fsm_state41 : STD_LOGIC_VECTOR (44 downto 0) := "000010000000000000000000000000000000000000000";
    constant ap_ST_fsm_state42 : STD_LOGIC_VECTOR (44 downto 0) := "000100000000000000000000000000000000000000000";
    constant ap_ST_fsm_state43 : STD_LOGIC_VECTOR (44 downto 0) := "001000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state44 : STD_LOGIC_VECTOR (44 downto 0) := "010000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state45 : STD_LOGIC_VECTOR (44 downto 0) := "100000000000000000000000000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_25 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100101";
    constant ap_const_lv32_2B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101011";
    constant ap_const_lv32_2C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101100";
    constant ap_const_lv64_4046800000000000 : STD_LOGIC_VECTOR (63 downto 0) := "0100000001000110100000000000000000000000000000000000000000000000";
    constant ap_const_lv32_26 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100110";
    constant ap_const_lv64_3F97D6B65A9A8049 : STD_LOGIC_VECTOR (63 downto 0) := "0011111110010111110101101011011001011010100110101000000001001001";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_34 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110100";
    constant ap_const_lv32_3E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111110";
    constant ap_const_lv12_C01 : STD_LOGIC_VECTOR (11 downto 0) := "110000000001";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv11_3FF : STD_LOGIC_VECTOR (10 downto 0) := "01111111111";
    constant ap_const_lv32_53 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010011";

    signal ap_rst_n_inv : STD_LOGIC;
    signal freqControl : STD_LOGIC_VECTOR (31 downto 0);
    signal sine_out_V : STD_LOGIC_VECTOR (23 downto 0);
    signal sine_out_V_ap_vld : STD_LOGIC;
    signal accumulator_V : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal sine_V_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal sine_V_ce0 : STD_LOGIC;
    signal sine_V_q0 : STD_LOGIC_VECTOR (22 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (44 downto 0) := "000000000000000000000000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_fu_107_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_reg_296 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_fu_102_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_reg_301 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state38 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state38 : signal is "none";
    signal ap_CS_fsm_state44 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state44 : signal is "none";
    signal grp_fu_97_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal val_assign_reg_311 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_fu_139_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_269_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state45 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state45 : signal is "none";
    signal phitmp_fu_123_p4 : STD_LOGIC_VECTOR (12 downto 0);
    signal result_V_fu_255_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal freqControl_assign_fu_68 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state39 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state39 : signal is "none";
    signal ap_CS_fsm_state8 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal p_Val2_s_fu_144_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal loc_V_1_fu_157_p1 : STD_LOGIC_VECTOR (51 downto 0);
    signal p_Result_s_fu_161_p3 : STD_LOGIC_VECTOR (52 downto 0);
    signal loc_V_fu_147_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_i_i_i_cast1_fu_173_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal sh_assign_fu_177_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_2_i_i_fu_191_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal isNeg_fu_183_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_i_i_cast_fu_197_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal sh_assign_1_fu_201_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal sh_assign_1_cast_fu_209_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_i_i_cast_fu_217_p1 : STD_LOGIC_VECTOR (52 downto 0);
    signal tmp_i_i_fu_169_p1 : STD_LOGIC_VECTOR (135 downto 0);
    signal tmp_4_i_i_fu_213_p1 : STD_LOGIC_VECTOR (135 downto 0);
    signal tmp_5_i_i_fu_221_p2 : STD_LOGIC_VECTOR (52 downto 0);
    signal tmp_fu_233_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_i_i_fu_227_p2 : STD_LOGIC_VECTOR (135 downto 0);
    signal tmp_4_fu_241_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_5_fu_245_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (44 downto 0);

    component NCO2_dmul_64ns_64bkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component NCO2_ddiv_64ns_64cud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component NCO2_sitodp_32ns_dEe IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component NCO2_sine_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (12 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (22 downto 0) );
    end component;


    component NCO2_AXILiteS_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        freqControl : OUT STD_LOGIC_VECTOR (31 downto 0);
        sine_out_V : IN STD_LOGIC_VECTOR (23 downto 0);
        sine_out_V_ap_vld : IN STD_LOGIC );
    end component;



begin
    sine_V_U : component NCO2_sine_V
    generic map (
        DataWidth => 23,
        AddressRange => 8192,
        AddressWidth => 13)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        address0 => sine_V_address0,
        ce0 => sine_V_ce0,
        q0 => sine_V_q0);

    NCO2_AXILiteS_s_axi_U : component NCO2_AXILiteS_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_AXILITES_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_AXILITES_DATA_WIDTH)
    port map (
        AWVALID => s_axi_AXILiteS_AWVALID,
        AWREADY => s_axi_AXILiteS_AWREADY,
        AWADDR => s_axi_AXILiteS_AWADDR,
        WVALID => s_axi_AXILiteS_WVALID,
        WREADY => s_axi_AXILiteS_WREADY,
        WDATA => s_axi_AXILiteS_WDATA,
        WSTRB => s_axi_AXILiteS_WSTRB,
        ARVALID => s_axi_AXILiteS_ARVALID,
        ARREADY => s_axi_AXILiteS_ARREADY,
        ARADDR => s_axi_AXILiteS_ARADDR,
        RVALID => s_axi_AXILiteS_RVALID,
        RREADY => s_axi_AXILiteS_RREADY,
        RDATA => s_axi_AXILiteS_RDATA,
        RRESP => s_axi_AXILiteS_RRESP,
        BVALID => s_axi_AXILiteS_BVALID,
        BREADY => s_axi_AXILiteS_BREADY,
        BRESP => s_axi_AXILiteS_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        freqControl => freqControl,
        sine_out_V => sine_out_V,
        sine_out_V_ap_vld => sine_out_V_ap_vld);

    NCO2_dmul_64ns_64bkb_U0 : component NCO2_dmul_64ns_64bkb
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => tmp_1_reg_301,
        din1 => ap_const_lv64_4046800000000000,
        ce => ap_const_logic_1,
        dout => grp_fu_97_p2);

    NCO2_ddiv_64ns_64cud_U1 : component NCO2_ddiv_64ns_64cud
    generic map (
        ID => 1,
        NUM_STAGE => 31,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => tmp_s_reg_296,
        din1 => ap_const_lv64_3F97D6B65A9A8049,
        ce => ap_const_logic_1,
        dout => grp_fu_102_p2);

    NCO2_sitodp_32ns_dEe_U2 : component NCO2_sitodp_32ns_dEe
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => freqControl_assign_fu_68,
        ce => ap_const_logic_1,
        dout => grp_fu_107_p1);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state45))) then
                accumulator_V <= tmp_2_fu_269_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state1))) then
                freqControl_assign_fu_68 <= freqControl;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state38))) then
                tmp_1_reg_301 <= grp_fu_102_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state7))) then
                tmp_s_reg_296 <= grp_fu_107_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state44))) then
                val_assign_reg_311 <= grp_fu_97_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 => 
                ap_NS_fsm <= ap_ST_fsm_state25;
            when ap_ST_fsm_state25 => 
                ap_NS_fsm <= ap_ST_fsm_state26;
            when ap_ST_fsm_state26 => 
                ap_NS_fsm <= ap_ST_fsm_state27;
            when ap_ST_fsm_state27 => 
                ap_NS_fsm <= ap_ST_fsm_state28;
            when ap_ST_fsm_state28 => 
                ap_NS_fsm <= ap_ST_fsm_state29;
            when ap_ST_fsm_state29 => 
                ap_NS_fsm <= ap_ST_fsm_state30;
            when ap_ST_fsm_state30 => 
                ap_NS_fsm <= ap_ST_fsm_state31;
            when ap_ST_fsm_state31 => 
                ap_NS_fsm <= ap_ST_fsm_state32;
            when ap_ST_fsm_state32 => 
                ap_NS_fsm <= ap_ST_fsm_state33;
            when ap_ST_fsm_state33 => 
                ap_NS_fsm <= ap_ST_fsm_state34;
            when ap_ST_fsm_state34 => 
                ap_NS_fsm <= ap_ST_fsm_state35;
            when ap_ST_fsm_state35 => 
                ap_NS_fsm <= ap_ST_fsm_state36;
            when ap_ST_fsm_state36 => 
                ap_NS_fsm <= ap_ST_fsm_state37;
            when ap_ST_fsm_state37 => 
                ap_NS_fsm <= ap_ST_fsm_state38;
            when ap_ST_fsm_state38 => 
                ap_NS_fsm <= ap_ST_fsm_state39;
            when ap_ST_fsm_state39 => 
                ap_NS_fsm <= ap_ST_fsm_state40;
            when ap_ST_fsm_state40 => 
                ap_NS_fsm <= ap_ST_fsm_state41;
            when ap_ST_fsm_state41 => 
                ap_NS_fsm <= ap_ST_fsm_state42;
            when ap_ST_fsm_state42 => 
                ap_NS_fsm <= ap_ST_fsm_state43;
            when ap_ST_fsm_state43 => 
                ap_NS_fsm <= ap_ST_fsm_state44;
            when ap_ST_fsm_state44 => 
                ap_NS_fsm <= ap_ST_fsm_state45;
            when ap_ST_fsm_state45 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0 downto 0);
    ap_CS_fsm_state3 <= ap_CS_fsm(2 downto 2);
    ap_CS_fsm_state38 <= ap_CS_fsm(37 downto 37);
    ap_CS_fsm_state39 <= ap_CS_fsm(38 downto 38);
    ap_CS_fsm_state44 <= ap_CS_fsm(43 downto 43);
    ap_CS_fsm_state45 <= ap_CS_fsm(44 downto 44);
    ap_CS_fsm_state7 <= ap_CS_fsm(6 downto 6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7 downto 7);

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    isNeg_fu_183_p3 <= sh_assign_fu_177_p2(11 downto 11);
    loc_V_1_fu_157_p1 <= p_Val2_s_fu_144_p1(52 - 1 downto 0);
    loc_V_fu_147_p4 <= p_Val2_s_fu_144_p1(62 downto 52);
    p_Result_s_fu_161_p3 <= (ap_const_lv1_1 & loc_V_1_fu_157_p1);
    p_Val2_s_fu_144_p1 <= val_assign_reg_311;
    phitmp_fu_123_p4 <= accumulator_V(31 downto 19);
    result_V_fu_255_p3 <= 
        tmp_4_fu_241_p1 when (isNeg_fu_183_p3(0) = '1') else 
        tmp_5_fu_245_p4;
        sh_assign_1_cast_fu_209_p1 <= std_logic_vector(resize(signed(sh_assign_1_fu_201_p3),32));

    sh_assign_1_fu_201_p3 <= 
        tmp_2_i_i_cast_fu_197_p1 when (isNeg_fu_183_p3(0) = '1') else 
        sh_assign_fu_177_p2;
    sh_assign_fu_177_p2 <= std_logic_vector(signed(ap_const_lv12_C01) + signed(tmp_i_i_i_cast1_fu_173_p1));
    sine_V_address0 <= tmp_3_fu_139_p1(13 - 1 downto 0);

    sine_V_ce0_assign_proc : process(ap_CS_fsm_state44)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state44))) then 
            sine_V_ce0 <= ap_const_logic_1;
        else 
            sine_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    sine_out_V <= std_logic_vector(resize(unsigned(sine_V_q0),24));

    sine_out_V_ap_vld_assign_proc : process(ap_CS_fsm_state45)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state45))) then 
            sine_out_V_ap_vld <= ap_const_logic_1;
        else 
            sine_out_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    tmp_2_fu_269_p2 <= std_logic_vector(unsigned(accumulator_V) + unsigned(result_V_fu_255_p3));
        tmp_2_i_i_cast_fu_197_p1 <= std_logic_vector(resize(signed(tmp_2_i_i_fu_191_p2),12));

    tmp_2_i_i_fu_191_p2 <= std_logic_vector(unsigned(ap_const_lv11_3FF) - unsigned(loc_V_fu_147_p4));
    tmp_3_fu_139_p1 <= std_logic_vector(resize(unsigned(phitmp_fu_123_p4),32));
    tmp_4_fu_241_p1 <= std_logic_vector(resize(unsigned(tmp_fu_233_p3),32));
    tmp_4_i_i_cast_fu_217_p1 <= std_logic_vector(resize(unsigned(sh_assign_1_cast_fu_209_p1),53));
    tmp_4_i_i_fu_213_p1 <= std_logic_vector(resize(unsigned(sh_assign_1_cast_fu_209_p1),136));
    tmp_5_fu_245_p4 <= tmp_7_i_i_fu_227_p2(83 downto 52);
    tmp_5_i_i_fu_221_p2 <= std_logic_vector(shift_right(unsigned(p_Result_s_fu_161_p3),to_integer(unsigned('0' & tmp_4_i_i_cast_fu_217_p1(31-1 downto 0)))));
    tmp_7_i_i_fu_227_p2 <= std_logic_vector(shift_left(unsigned(tmp_i_i_fu_169_p1),to_integer(unsigned('0' & tmp_4_i_i_fu_213_p1(31-1 downto 0)))));
    tmp_fu_233_p3 <= tmp_5_i_i_fu_221_p2(52 downto 52);
    tmp_i_i_fu_169_p1 <= std_logic_vector(resize(unsigned(p_Result_s_fu_161_p3),136));
    tmp_i_i_i_cast1_fu_173_p1 <= std_logic_vector(resize(unsigned(loc_V_fu_147_p4),12));
end behav;
