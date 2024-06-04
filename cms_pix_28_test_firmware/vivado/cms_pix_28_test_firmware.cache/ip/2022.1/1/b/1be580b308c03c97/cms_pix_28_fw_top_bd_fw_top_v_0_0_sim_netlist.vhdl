-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Mon Jun  3 12:25:38 2024
-- Host        : fasic-beast2.fnal.gov running 64-bit Scientific Linux release 7.9 (Nitrogen)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cms_pix_28_fw_top_bd_fw_top_v_0_0_sim_netlist.vhdl
-- Design      : cms_pix_28_fw_top_bd_fw_top_v_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_mem_wrAddr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal \mem_regs_inst/reg_wrSelect_i[0]__8\ : STD_LOGIC;
  signal \sw_write32_0[31]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair0";
begin
  SR(0) <= \^sr\(0);
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFF8888"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \^s_axi_bvalid\,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      I4 => aw_en_reg_n_0,
      I5 => \^axi_awready_reg_0\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \^sr\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => \^sr\(0)
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(8),
      Q => axi_mem_wrAddr(8),
      R => \^sr\(0)
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(0),
      Q => axi_mem_wrAddr(0),
      R => \^sr\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(1),
      Q => axi_mem_wrAddr(1),
      R => \^sr\(0)
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(2),
      Q => axi_mem_wrAddr(2),
      R => \^sr\(0)
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(3),
      Q => axi_mem_wrAddr(3),
      R => \^sr\(0)
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(4),
      Q => axi_mem_wrAddr(4),
      R => \^sr\(0)
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(5),
      Q => axi_mem_wrAddr(5),
      R => \^sr\(0)
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(6),
      Q => axi_mem_wrAddr(6),
      R => \^sr\(0)
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(7),
      Q => axi_mem_wrAddr(7),
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^sr\(0)
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => aw_en_reg_n_0,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => \^sr\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \^s_axi_bvalid\,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => S_AXI_AWVALID,
      I5 => S_AXI_WVALID,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_rvalid\,
      I3 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => \^sr\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => aw_en_reg_n_0,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => \^sr\(0)
    );
\sw_write32_0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => S_AXI_WSTRB(1),
      I1 => \^axi_wready_reg_0\,
      I2 => \^axi_awready_reg_0\,
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_WVALID,
      I5 => \mem_regs_inst/reg_wrSelect_i[0]__8\,
      O => E(1)
    );
\sw_write32_0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => S_AXI_WSTRB(2),
      I1 => \^axi_wready_reg_0\,
      I2 => \^axi_awready_reg_0\,
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_WVALID,
      I5 => \mem_regs_inst/reg_wrSelect_i[0]__8\,
      O => E(2)
    );
\sw_write32_0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \sw_write32_0[31]_i_3_n_0\,
      I1 => axi_mem_wrAddr(0),
      I2 => axi_mem_wrAddr(1),
      I3 => axi_mem_wrAddr(2),
      O => \mem_regs_inst/reg_wrSelect_i[0]__8\
    );
\sw_write32_0[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => axi_mem_wrAddr(3),
      I1 => axi_mem_wrAddr(4),
      I2 => axi_mem_wrAddr(5),
      I3 => axi_mem_wrAddr(6),
      I4 => axi_mem_wrAddr(8),
      I5 => axi_mem_wrAddr(7),
      O => \sw_write32_0[31]_i_3_n_0\
    );
\sw_write32_0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => S_AXI_WSTRB(0),
      I1 => \^axi_wready_reg_0\,
      I2 => \^axi_awready_reg_0\,
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_WVALID,
      I5 => \mem_regs_inst/reg_wrSelect_i[0]__8\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_config_write_regs is
  port (
    \fw_pl_clk1_cnt_reg[0]\ : out STD_LOGIC;
    fw_pl_clk1_cnt : out STD_LOGIC_VECTOR ( 0 to 0 );
    \config_static_0_reg[11]_0\ : out STD_LOGIC;
    \fw_pl_clk1_cnt_reg[2]\ : out STD_LOGIC;
    fw_bxclk_ana_ff_reg : in STD_LOGIC;
    fw_bxclk_ana_ff_reg_0 : in STD_LOGIC;
    fw_bxclk_ana_ff_reg_1 : in STD_LOGIC;
    \fw_pl_clk1_cnt_reg[0]_0\ : in STD_LOGIC;
    op_code_w_reset : in STD_LOGIC;
    fw_bxclk_ff_reg : in STD_LOGIC;
    fw_bxclk_ana_ff_reg_2 : in STD_LOGIC;
    fw_bxclk_ana_ff_reg_3 : in STD_LOGIC;
    \fw_pl_clk1_cnt_reg[3]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    p_0_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_config_write_regs;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_config_write_regs is
  signal config_static_0 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal \config_static_0_reg_n_0_[0]\ : STD_LOGIC;
  signal \config_static_0_reg_n_0_[1]\ : STD_LOGIC;
  signal \config_static_0_reg_n_0_[2]\ : STD_LOGIC;
  signal \config_static_0_reg_n_0_[3]\ : STD_LOGIC;
  signal \config_static_0_reg_n_0_[4]\ : STD_LOGIC;
  signal \config_static_0_reg_n_0_[5]\ : STD_LOGIC;
  signal fw_bxclk_ana_ff_i_2_n_0 : STD_LOGIC;
  signal fw_bxclk_ana_ff_i_4_n_0 : STD_LOGIC;
  signal \fw_bxclk_ff1__19\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal fw_bxclk_ff_i_10_n_0 : STD_LOGIC;
  signal fw_bxclk_ff_i_11_n_0 : STD_LOGIC;
  signal fw_bxclk_ff_i_2_n_0 : STD_LOGIC;
  signal fw_bxclk_ff_i_4_n_0 : STD_LOGIC;
  signal fw_bxclk_ff_i_5_n_0 : STD_LOGIC;
  signal fw_bxclk_ff_i_6_n_0 : STD_LOGIC;
  signal fw_bxclk_ff_i_7_n_0 : STD_LOGIC;
  signal fw_bxclk_ff_i_8_n_0 : STD_LOGIC;
  signal \fw_pl_clk1_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \fw_pl_clk1_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fw_bxclk_ff_i_11 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of fw_bxclk_ff_i_6 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fw_pl_clk1_cnt[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fw_pl_clk1_cnt[5]_i_1\ : label is "soft_lutpair10";
begin
\config_static_0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => p_0_in,
      D => D(0),
      Q => \config_static_0_reg_n_0_[0]\
    );
\config_static_0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => p_0_in,
      D => D(10),
      Q => p_0_in1_in(4)
    );
\config_static_0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => p_0_in,
      D => D(11),
      Q => config_static_0(11)
    );
\config_static_0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => p_0_in,
      D => D(1),
      Q => \config_static_0_reg_n_0_[1]\
    );
\config_static_0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => p_0_in,
      D => D(2),
      Q => \config_static_0_reg_n_0_[2]\
    );
\config_static_0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => p_0_in,
      D => D(3),
      Q => \config_static_0_reg_n_0_[3]\
    );
\config_static_0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => p_0_in,
      D => D(4),
      Q => \config_static_0_reg_n_0_[4]\
    );
\config_static_0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => p_0_in,
      D => D(5),
      Q => \config_static_0_reg_n_0_[5]\
    );
\config_static_0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => p_0_in,
      D => D(6),
      Q => p_0_in1_in(0)
    );
\config_static_0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => p_0_in,
      D => D(7),
      Q => p_0_in1_in(1)
    );
\config_static_0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => p_0_in,
      D => D(8),
      Q => p_0_in1_in(2)
    );
\config_static_0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => p_0_in,
      D => D(9),
      Q => p_0_in1_in(3)
    );
fw_bxclk_ana_ff_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA8A"
    )
        port map (
      I0 => fw_bxclk_ana_ff_i_2_n_0,
      I1 => fw_bxclk_ana_ff_reg_2,
      I2 => fw_bxclk_ana_ff_reg_3,
      I3 => fw_bxclk_ana_ff_reg_1,
      I4 => fw_bxclk_ana_ff_reg_0,
      I5 => fw_bxclk_ana_ff_reg,
      O => \fw_pl_clk1_cnt_reg[2]\
    );
fw_bxclk_ana_ff_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B2BB22B2"
    )
        port map (
      I0 => \config_static_0_reg_n_0_[5]\,
      I1 => fw_bxclk_ana_ff_reg,
      I2 => \config_static_0_reg_n_0_[4]\,
      I3 => fw_bxclk_ana_ff_reg_0,
      I4 => fw_bxclk_ana_ff_i_4_n_0,
      I5 => fw_bxclk_ana_ff_reg_1,
      O => fw_bxclk_ana_ff_i_2_n_0
    );
fw_bxclk_ana_ff_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \fw_pl_clk1_cnt_reg[0]_0\,
      I1 => \config_static_0_reg_n_0_[1]\,
      I2 => \fw_pl_clk1_cnt_reg[3]\,
      I3 => \config_static_0_reg_n_0_[2]\,
      I4 => fw_bxclk_ana_ff_reg_2,
      I5 => \config_static_0_reg_n_0_[3]\,
      O => fw_bxclk_ana_ff_i_4_n_0
    );
fw_bxclk_ff_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3102"
    )
        port map (
      I0 => fw_bxclk_ff_i_2_n_0,
      I1 => fw_bxclk_ff_reg,
      I2 => fw_bxclk_ff_i_4_n_0,
      I3 => config_static_0(11),
      O => \config_static_0_reg[11]_0\
    );
fw_bxclk_ff_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \config_static_0_reg_n_0_[3]\,
      I1 => p_0_in1_in(2),
      I2 => \config_static_0_reg_n_0_[1]\,
      I3 => p_0_in1_in(0),
      I4 => p_0_in1_in(1),
      I5 => \config_static_0_reg_n_0_[2]\,
      O => fw_bxclk_ff_i_10_n_0
    );
fw_bxclk_ff_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in1_in(3),
      I1 => \config_static_0_reg_n_0_[4]\,
      O => fw_bxclk_ff_i_11_n_0
    );
fw_bxclk_ff_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2F2F0B2F0B0B02"
    )
        port map (
      I0 => fw_bxclk_ff_i_5_n_0,
      I1 => fw_bxclk_ana_ff_reg,
      I2 => fw_bxclk_ana_ff_reg_1,
      I3 => \config_static_0_reg_n_0_[5]\,
      I4 => p_0_in1_in(4),
      I5 => fw_bxclk_ff_i_6_n_0,
      O => fw_bxclk_ff_i_2_n_0
    );
fw_bxclk_ff_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B2BB22B2"
    )
        port map (
      I0 => p_0_in1_in(4),
      I1 => fw_bxclk_ana_ff_reg,
      I2 => p_0_in1_in(3),
      I3 => fw_bxclk_ana_ff_reg_0,
      I4 => fw_bxclk_ff_i_7_n_0,
      I5 => fw_bxclk_ana_ff_reg_1,
      O => fw_bxclk_ff_i_4_n_0
    );
fw_bxclk_ff_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B2B2FFB2FF00B2"
    )
        port map (
      I0 => fw_bxclk_ff_i_8_n_0,
      I1 => fw_bxclk_ana_ff_reg_2,
      I2 => \fw_bxclk_ff1__19\(2),
      I3 => fw_bxclk_ana_ff_reg_0,
      I4 => fw_bxclk_ff_i_10_n_0,
      I5 => fw_bxclk_ff_i_11_n_0,
      O => fw_bxclk_ff_i_5_n_0
    );
fw_bxclk_ff_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \config_static_0_reg_n_0_[4]\,
      I1 => p_0_in1_in(3),
      I2 => fw_bxclk_ff_i_10_n_0,
      O => fw_bxclk_ff_i_6_n_0
    );
fw_bxclk_ff_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \fw_pl_clk1_cnt_reg[0]_0\,
      I1 => p_0_in1_in(0),
      I2 => \fw_pl_clk1_cnt_reg[3]\,
      I3 => p_0_in1_in(1),
      I4 => fw_bxclk_ana_ff_reg_2,
      I5 => p_0_in1_in(2),
      O => fw_bxclk_ff_i_7_n_0
    );
fw_bxclk_ff_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73311FF71FF77331"
    )
        port map (
      I0 => \fw_pl_clk1_cnt_reg[0]_0\,
      I1 => \fw_pl_clk1_cnt_reg[3]\,
      I2 => p_0_in1_in(0),
      I3 => \config_static_0_reg_n_0_[1]\,
      I4 => \config_static_0_reg_n_0_[2]\,
      I5 => p_0_in1_in(1),
      O => fw_bxclk_ff_i_8_n_0
    );
fw_bxclk_ff_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \config_static_0_reg_n_0_[1]\,
      I1 => p_0_in1_in(0),
      I2 => p_0_in1_in(1),
      I3 => \config_static_0_reg_n_0_[2]\,
      I4 => \config_static_0_reg_n_0_[3]\,
      I5 => p_0_in1_in(2),
      O => \fw_bxclk_ff1__19\(2)
    );
\fw_pl_clk1_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008F"
    )
        port map (
      I0 => \fw_pl_clk1_cnt[5]_i_3_n_0\,
      I1 => \fw_pl_clk1_cnt[5]_i_4_n_0\,
      I2 => \fw_pl_clk1_cnt_reg[0]_0\,
      I3 => op_code_w_reset,
      O => \fw_pl_clk1_cnt_reg[0]\
    );
\fw_pl_clk1_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \fw_pl_clk1_cnt[5]_i_3_n_0\,
      I1 => \fw_pl_clk1_cnt[5]_i_4_n_0\,
      I2 => op_code_w_reset,
      O => fw_pl_clk1_cnt(0)
    );
\fw_pl_clk1_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \fw_pl_clk1_cnt_reg[0]_0\,
      I1 => \config_static_0_reg_n_0_[0]\,
      I2 => \config_static_0_reg_n_0_[2]\,
      I3 => fw_bxclk_ana_ff_reg_2,
      I4 => \config_static_0_reg_n_0_[1]\,
      I5 => \fw_pl_clk1_cnt_reg[3]\,
      O => \fw_pl_clk1_cnt[5]_i_3_n_0\
    );
\fw_pl_clk1_cnt[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fw_bxclk_ana_ff_reg_0,
      I1 => \config_static_0_reg_n_0_[3]\,
      I2 => \config_static_0_reg_n_0_[5]\,
      I3 => fw_bxclk_ana_ff_reg_1,
      I4 => \config_static_0_reg_n_0_[4]\,
      I5 => fw_bxclk_ana_ff_reg,
      O => \fw_pl_clk1_cnt[5]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_fw_to_dut is
  port (
    bxclk_ana : out STD_LOGIC;
    bxclk : out STD_LOGIC;
    p_0_in : in STD_LOGIC;
    bxclk_ana_iob_reg_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    bxclk_iob_reg_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_fw_to_dut;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_fw_to_dut is
begin
bxclk_ana_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => bxclk_ana_iob_reg_0,
      Q => bxclk_ana,
      R => p_0_in
    );
bxclk_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => bxclk_iob_reg_0,
      Q => bxclk,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_ARESETN_0 : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top is
begin
axi4_slave_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface
     port map (
      E(2 downto 0) => E(2 downto 0),
      SR(0) => S_AXI_ARESETN_0,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(8 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WSTRB(2 downto 0) => S_AXI_WSTRB(2 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      axi_awready_reg_0 => S_AXI_AWREADY,
      axi_wready_reg_0 => S_AXI_WREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_ip2 is
  port (
    fw_bxclk_ana : out STD_LOGIC_VECTOR ( 0 to 0 );
    fw_bxclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    pl_clk1 : in STD_LOGIC;
    op_code_w_reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    p_0_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_ip2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_ip2 is
  signal com_config_write_regs_inst_n_0 : STD_LOGIC;
  signal com_config_write_regs_inst_n_2 : STD_LOGIC;
  signal com_config_write_regs_inst_n_3 : STD_LOGIC;
  signal fw_bxclk_ana_ff_i_3_n_0 : STD_LOGIC;
  signal fw_bxclk_ff_i_3_n_0 : STD_LOGIC;
  signal fw_pl_clk1_cnt : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \fw_pl_clk1_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \fw_pl_clk1_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \fw_pl_clk1_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \fw_pl_clk1_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \fw_pl_clk1_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \fw_pl_clk1_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \fw_pl_clk1_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \fw_pl_clk1_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \fw_pl_clk1_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \fw_pl_clk1_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \fw_pl_clk1_cnt_reg_n_0_[5]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fw_pl_clk1_cnt[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fw_pl_clk1_cnt[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fw_pl_clk1_cnt[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fw_pl_clk1_cnt[4]_i_1\ : label is "soft_lutpair12";
begin
com_config_write_regs_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_config_write_regs
     port map (
      D(11 downto 0) => D(11 downto 0),
      E(0) => E(0),
      S_AXI_ACLK => S_AXI_ACLK,
      \config_static_0_reg[11]_0\ => com_config_write_regs_inst_n_2,
      fw_bxclk_ana_ff_reg => \fw_pl_clk1_cnt_reg_n_0_[4]\,
      fw_bxclk_ana_ff_reg_0 => \fw_pl_clk1_cnt_reg_n_0_[3]\,
      fw_bxclk_ana_ff_reg_1 => \fw_pl_clk1_cnt_reg_n_0_[5]\,
      fw_bxclk_ana_ff_reg_2 => \fw_pl_clk1_cnt_reg_n_0_[2]\,
      fw_bxclk_ana_ff_reg_3 => fw_bxclk_ana_ff_i_3_n_0,
      fw_bxclk_ff_reg => fw_bxclk_ff_i_3_n_0,
      fw_pl_clk1_cnt(0) => fw_pl_clk1_cnt(1),
      \fw_pl_clk1_cnt_reg[0]\ => com_config_write_regs_inst_n_0,
      \fw_pl_clk1_cnt_reg[0]_0\ => \fw_pl_clk1_cnt_reg_n_0_[0]\,
      \fw_pl_clk1_cnt_reg[2]\ => com_config_write_regs_inst_n_3,
      \fw_pl_clk1_cnt_reg[3]\ => \fw_pl_clk1_cnt_reg_n_0_[1]\,
      op_code_w_reset => op_code_w_reset,
      p_0_in => p_0_in
    );
fw_bxclk_ana_ff_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fw_pl_clk1_cnt_reg_n_0_[0]\,
      I1 => \fw_pl_clk1_cnt_reg_n_0_[1]\,
      O => fw_bxclk_ana_ff_i_3_n_0
    );
fw_bxclk_ana_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => pl_clk1,
      CE => '1',
      D => com_config_write_regs_inst_n_3,
      Q => fw_bxclk_ana(0),
      R => '0'
    );
fw_bxclk_ff_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \fw_pl_clk1_cnt_reg_n_0_[5]\,
      I1 => \fw_pl_clk1_cnt_reg_n_0_[4]\,
      I2 => \fw_pl_clk1_cnt_reg_n_0_[0]\,
      I3 => \fw_pl_clk1_cnt_reg_n_0_[1]\,
      I4 => \fw_pl_clk1_cnt_reg_n_0_[3]\,
      I5 => \fw_pl_clk1_cnt_reg_n_0_[2]\,
      O => fw_bxclk_ff_i_3_n_0
    );
fw_bxclk_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => pl_clk1,
      CE => '1',
      D => com_config_write_regs_inst_n_2,
      Q => fw_bxclk(0),
      R => '0'
    );
\fw_pl_clk1_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \fw_pl_clk1_cnt_reg_n_0_[0]\,
      I1 => \fw_pl_clk1_cnt_reg_n_0_[1]\,
      O => \fw_pl_clk1_cnt[1]_i_1_n_0\
    );
\fw_pl_clk1_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \fw_pl_clk1_cnt_reg_n_0_[0]\,
      I1 => \fw_pl_clk1_cnt_reg_n_0_[1]\,
      I2 => \fw_pl_clk1_cnt_reg_n_0_[2]\,
      O => \fw_pl_clk1_cnt[2]_i_1_n_0\
    );
\fw_pl_clk1_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \fw_pl_clk1_cnt_reg_n_0_[1]\,
      I1 => \fw_pl_clk1_cnt_reg_n_0_[0]\,
      I2 => \fw_pl_clk1_cnt_reg_n_0_[2]\,
      I3 => \fw_pl_clk1_cnt_reg_n_0_[3]\,
      O => \fw_pl_clk1_cnt[3]_i_1_n_0\
    );
\fw_pl_clk1_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \fw_pl_clk1_cnt_reg_n_0_[2]\,
      I1 => \fw_pl_clk1_cnt_reg_n_0_[0]\,
      I2 => \fw_pl_clk1_cnt_reg_n_0_[1]\,
      I3 => \fw_pl_clk1_cnt_reg_n_0_[3]\,
      I4 => \fw_pl_clk1_cnt_reg_n_0_[4]\,
      O => \fw_pl_clk1_cnt[4]_i_1_n_0\
    );
\fw_pl_clk1_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \fw_pl_clk1_cnt_reg_n_0_[3]\,
      I1 => \fw_pl_clk1_cnt_reg_n_0_[1]\,
      I2 => \fw_pl_clk1_cnt_reg_n_0_[0]\,
      I3 => \fw_pl_clk1_cnt_reg_n_0_[2]\,
      I4 => \fw_pl_clk1_cnt_reg_n_0_[4]\,
      I5 => \fw_pl_clk1_cnt_reg_n_0_[5]\,
      O => \fw_pl_clk1_cnt[5]_i_2_n_0\
    );
\fw_pl_clk1_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pl_clk1,
      CE => '1',
      D => com_config_write_regs_inst_n_0,
      Q => \fw_pl_clk1_cnt_reg_n_0_[0]\,
      R => '0'
    );
\fw_pl_clk1_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pl_clk1,
      CE => '1',
      D => \fw_pl_clk1_cnt[1]_i_1_n_0\,
      Q => \fw_pl_clk1_cnt_reg_n_0_[1]\,
      R => fw_pl_clk1_cnt(1)
    );
\fw_pl_clk1_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pl_clk1,
      CE => '1',
      D => \fw_pl_clk1_cnt[2]_i_1_n_0\,
      Q => \fw_pl_clk1_cnt_reg_n_0_[2]\,
      R => fw_pl_clk1_cnt(1)
    );
\fw_pl_clk1_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pl_clk1,
      CE => '1',
      D => \fw_pl_clk1_cnt[3]_i_1_n_0\,
      Q => \fw_pl_clk1_cnt_reg_n_0_[3]\,
      R => fw_pl_clk1_cnt(1)
    );
\fw_pl_clk1_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pl_clk1,
      CE => '1',
      D => \fw_pl_clk1_cnt[4]_i_1_n_0\,
      Q => \fw_pl_clk1_cnt_reg_n_0_[4]\,
      R => fw_pl_clk1_cnt(1)
    );
\fw_pl_clk1_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pl_clk1,
      CE => '1',
      D => \fw_pl_clk1_cnt[5]_i_2_n_0\,
      Q => \fw_pl_clk1_cnt_reg_n_0_[5]\,
      R => fw_pl_clk1_cnt(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    fw_bxclk_ana_ff_reg : out STD_LOGIC;
    fw_bxclk_ff_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    op_code_w_reset : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    fw_bxclk_ana : in STD_LOGIC_VECTOR ( 0 to 0 );
    fw_bxclk : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 19 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw is
  signal bxclk_ana_iob_i_2_n_0 : STD_LOGIC;
  signal fw_dev_id_enable : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^op_code_w_reset\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal \reg_wrByteStrobe[0]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sw_write32_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of bxclk_ana_iob_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of bxclk_ana_iob_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of bxclk_ana_iob_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \config_static_0[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \config_static_0[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \config_static_0[11]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \config_static_0[11]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \config_static_0[11]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \config_static_0[11]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \config_static_0[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \config_static_0[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \config_static_0[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \config_static_0[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \config_static_0[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \config_static_0[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \config_static_0[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \config_static_0[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \config_static_0[9]_i_1\ : label is "soft_lutpair8";
begin
  op_code_w_reset <= \^op_code_w_reset\;
  p_0_in <= \^p_0_in\;
axi4lite_interface_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top
     port map (
      E(2) => \reg_wrByteStrobe[0]_0\(3),
      E(1 downto 0) => \reg_wrByteStrobe[0]_0\(1 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0 => \^p_0_in\,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(8 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(2 downto 0) => S_AXI_WSTRB(2 downto 0),
      S_AXI_WVALID => S_AXI_WVALID
    );
bxclk_ana_iob_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => bxclk_ana_iob_i_2_n_0,
      I1 => fw_bxclk_ana(0),
      I2 => sw_write32_0(31),
      I3 => sw_write32_0(30),
      I4 => sw_write32_0(29),
      I5 => sw_write32_0(28),
      O => fw_bxclk_ana_ff_reg
    );
bxclk_ana_iob_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0116"
    )
        port map (
      I0 => fw_dev_id_enable(0),
      I1 => fw_dev_id_enable(1),
      I2 => fw_dev_id_enable(2),
      I3 => fw_dev_id_enable(3),
      O => bxclk_ana_iob_i_2_n_0
    );
bxclk_ana_iob_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => sw_write32_0(31),
      I1 => sw_write32_0(30),
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(29),
      O => fw_dev_id_enable(0)
    );
bxclk_ana_iob_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => sw_write32_0(31),
      I1 => sw_write32_0(28),
      I2 => sw_write32_0(30),
      I3 => sw_write32_0(29),
      O => fw_dev_id_enable(2)
    );
bxclk_ana_iob_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => sw_write32_0(28),
      I1 => sw_write32_0(30),
      I2 => sw_write32_0(31),
      I3 => sw_write32_0(29),
      O => fw_dev_id_enable(3)
    );
bxclk_iob_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => bxclk_ana_iob_i_2_n_0,
      I1 => fw_bxclk(0),
      I2 => sw_write32_0(31),
      I3 => sw_write32_0(30),
      I4 => sw_write32_0(29),
      I5 => sw_write32_0(28),
      O => fw_bxclk_ff_reg
    );
\config_static_0[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw_write32_0(0),
      I1 => \^op_code_w_reset\,
      O => D(0)
    );
\config_static_0[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw_write32_0(10),
      I1 => \^op_code_w_reset\,
      O => D(10)
    );
\config_static_0[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01100000"
    )
        port map (
      I0 => sw_write32_0(27),
      I1 => sw_write32_0(26),
      I2 => sw_write32_0(25),
      I3 => sw_write32_0(24),
      I4 => fw_dev_id_enable(1),
      O => E(0)
    );
\config_static_0[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw_write32_0(11),
      I1 => \^op_code_w_reset\,
      O => D(11)
    );
\config_static_0[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => sw_write32_0(31),
      I1 => sw_write32_0(30),
      I2 => sw_write32_0(29),
      I3 => sw_write32_0(28),
      O => fw_dev_id_enable(1)
    );
\config_static_0[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => fw_dev_id_enable(1),
      I1 => sw_write32_0(25),
      I2 => sw_write32_0(24),
      I3 => sw_write32_0(26),
      I4 => sw_write32_0(27),
      O => \^op_code_w_reset\
    );
\config_static_0[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw_write32_0(1),
      I1 => \^op_code_w_reset\,
      O => D(1)
    );
\config_static_0[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw_write32_0(2),
      I1 => \^op_code_w_reset\,
      O => D(2)
    );
\config_static_0[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw_write32_0(3),
      I1 => \^op_code_w_reset\,
      O => D(3)
    );
\config_static_0[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw_write32_0(4),
      I1 => \^op_code_w_reset\,
      O => D(4)
    );
\config_static_0[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw_write32_0(5),
      I1 => \^op_code_w_reset\,
      O => D(5)
    );
\config_static_0[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw_write32_0(6),
      I1 => \^op_code_w_reset\,
      O => D(6)
    );
\config_static_0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw_write32_0(7),
      I1 => \^op_code_w_reset\,
      O => D(7)
    );
\config_static_0[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw_write32_0(8),
      I1 => \^op_code_w_reset\,
      O => D(8)
    );
\config_static_0[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw_write32_0(9),
      I1 => \^op_code_w_reset\,
      O => D(9)
    );
\sw_write32_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(0),
      D => S_AXI_WDATA(0),
      Q => sw_write32_0(0),
      R => \^p_0_in\
    );
\sw_write32_0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(1),
      D => S_AXI_WDATA(10),
      Q => sw_write32_0(10),
      R => \^p_0_in\
    );
\sw_write32_0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(1),
      D => S_AXI_WDATA(11),
      Q => sw_write32_0(11),
      R => \^p_0_in\
    );
\sw_write32_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(0),
      D => S_AXI_WDATA(1),
      Q => sw_write32_0(1),
      R => \^p_0_in\
    );
\sw_write32_0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(3),
      D => S_AXI_WDATA(12),
      Q => sw_write32_0(24),
      R => \^p_0_in\
    );
\sw_write32_0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(3),
      D => S_AXI_WDATA(13),
      Q => sw_write32_0(25),
      R => \^p_0_in\
    );
\sw_write32_0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(3),
      D => S_AXI_WDATA(14),
      Q => sw_write32_0(26),
      R => \^p_0_in\
    );
\sw_write32_0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(3),
      D => S_AXI_WDATA(15),
      Q => sw_write32_0(27),
      R => \^p_0_in\
    );
\sw_write32_0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(3),
      D => S_AXI_WDATA(16),
      Q => sw_write32_0(28),
      R => \^p_0_in\
    );
\sw_write32_0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(3),
      D => S_AXI_WDATA(17),
      Q => sw_write32_0(29),
      R => \^p_0_in\
    );
\sw_write32_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(0),
      D => S_AXI_WDATA(2),
      Q => sw_write32_0(2),
      R => \^p_0_in\
    );
\sw_write32_0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(3),
      D => S_AXI_WDATA(18),
      Q => sw_write32_0(30),
      R => \^p_0_in\
    );
\sw_write32_0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(3),
      D => S_AXI_WDATA(19),
      Q => sw_write32_0(31),
      R => \^p_0_in\
    );
\sw_write32_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(0),
      D => S_AXI_WDATA(3),
      Q => sw_write32_0(3),
      R => \^p_0_in\
    );
\sw_write32_0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(0),
      D => S_AXI_WDATA(4),
      Q => sw_write32_0(4),
      R => \^p_0_in\
    );
\sw_write32_0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(0),
      D => S_AXI_WDATA(5),
      Q => sw_write32_0(5),
      R => \^p_0_in\
    );
\sw_write32_0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(0),
      D => S_AXI_WDATA(6),
      Q => sw_write32_0(6),
      R => \^p_0_in\
    );
\sw_write32_0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(0),
      D => S_AXI_WDATA(7),
      Q => sw_write32_0(7),
      R => \^p_0_in\
    );
\sw_write32_0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(1),
      D => S_AXI_WDATA(8),
      Q => sw_write32_0(8),
      R => \^p_0_in\
    );
\sw_write32_0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_0\(1),
      D => S_AXI_WDATA(9),
      Q => sw_write32_0(9),
      R => \^p_0_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    bxclk_ana : out STD_LOGIC;
    bxclk : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 19 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    pl_clk1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top is
  signal axi4lite_interface_top_for_pix28_fw_inst_n_0 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_1 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_2 : STD_LOGIC;
  signal fw_bxclk : STD_LOGIC_VECTOR ( 1 to 1 );
  signal fw_bxclk_ana : STD_LOGIC_VECTOR ( 1 to 1 );
  signal op_code_w_reset : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
axi4lite_interface_top_for_pix28_fw_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw
     port map (
      D(11 downto 0) => p_1_in(11 downto 0),
      E(0) => axi4lite_interface_top_for_pix28_fw_inst_n_0,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(8 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(19 downto 0) => S_AXI_WDATA(19 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(2 downto 0) => S_AXI_WSTRB(2 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      fw_bxclk(0) => fw_bxclk(1),
      fw_bxclk_ana(0) => fw_bxclk_ana(1),
      fw_bxclk_ana_ff_reg => axi4lite_interface_top_for_pix28_fw_inst_n_1,
      fw_bxclk_ff_reg => axi4lite_interface_top_for_pix28_fw_inst_n_2,
      op_code_w_reset => op_code_w_reset,
      p_0_in => p_0_in
    );
com_fw_to_dut_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_fw_to_dut
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      bxclk => bxclk,
      bxclk_ana => bxclk_ana,
      bxclk_ana_iob_reg_0 => axi4lite_interface_top_for_pix28_fw_inst_n_1,
      bxclk_iob_reg_0 => axi4lite_interface_top_for_pix28_fw_inst_n_2,
      p_0_in => p_0_in
    );
fw_ip2_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_ip2
     port map (
      D(11 downto 0) => p_1_in(11 downto 0),
      E(0) => axi4lite_interface_top_for_pix28_fw_inst_n_0,
      S_AXI_ACLK => S_AXI_ACLK,
      fw_bxclk(0) => fw_bxclk(1),
      fw_bxclk_ana(0) => fw_bxclk_ana(1),
      op_code_w_reset => op_code_w_reset,
      p_0_in => p_0_in,
      pl_clk1 => pl_clk1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top_v is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    bxclk_ana : out STD_LOGIC;
    bxclk : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 19 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    pl_clk1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top_v;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top_v is
begin
fw_top_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(8 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(19 downto 0) => S_AXI_WDATA(19 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(2 downto 0) => S_AXI_WSTRB(2 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      bxclk => bxclk,
      bxclk_ana => bxclk_ana,
      pl_clk1 => pl_clk1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    pl_clk1 : in STD_LOGIC;
    super_pixel_sel : out STD_LOGIC;
    config_clk : out STD_LOGIC;
    reset_not : out STD_LOGIC;
    config_in : out STD_LOGIC;
    config_load : out STD_LOGIC;
    bxclk_ana : out STD_LOGIC;
    bxclk : out STD_LOGIC;
    vin_test_trig_out : out STD_LOGIC;
    scan_in : out STD_LOGIC;
    scan_load : out STD_LOGIC;
    config_out : in STD_LOGIC;
    scan_out : in STD_LOGIC;
    dnn_output_0 : in STD_LOGIC;
    dnn_output_1 : in STD_LOGIC;
    dn_event_toggle : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cms_pix_28_fw_top_bd_fw_top_v_0_0,fw_top_v,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fw_top_v,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_pix_28_fw_top_bd_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99990005, ID_WIDTH 0, ADDR_WIDTH 11, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cms_pix_28_fw_top_bd_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of config_clk : signal is "xilinx.com:signal:clock:1.0 config_clk CLK";
  attribute X_INTERFACE_PARAMETER of config_clk : signal is "XIL_INTERFACENAME config_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_pix_28_fw_top_bd_fw_top_v_0_0_config_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_not : signal is "xilinx.com:signal:reset:1.0 reset_not RST";
  attribute X_INTERFACE_PARAMETER of reset_not : signal is "XIL_INTERFACENAME reset_not, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3) <= \<const0>\;
  S_AXI_RDATA(2) <= \<const0>\;
  S_AXI_RDATA(1) <= \<const0>\;
  S_AXI_RDATA(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  config_clk <= \<const0>\;
  config_in <= \<const0>\;
  config_load <= \<const0>\;
  reset_not <= \<const0>\;
  scan_in <= \<const0>\;
  scan_load <= \<const0>\;
  super_pixel_sel <= \<const0>\;
  vin_test_trig_out <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top_v
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(10 downto 2),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(19 downto 12) => S_AXI_WDATA(31 downto 24),
      S_AXI_WDATA(11 downto 0) => S_AXI_WDATA(11 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(2) => S_AXI_WSTRB(3),
      S_AXI_WSTRB(1 downto 0) => S_AXI_WSTRB(1 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      bxclk => bxclk,
      bxclk_ana => bxclk_ana,
      pl_clk1 => pl_clk1
    );
end STRUCTURE;
