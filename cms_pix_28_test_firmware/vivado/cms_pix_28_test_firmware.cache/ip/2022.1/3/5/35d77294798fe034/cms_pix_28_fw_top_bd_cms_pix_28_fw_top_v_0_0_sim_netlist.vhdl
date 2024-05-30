-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Wed May 29 14:53:29 2024
-- Host        : fasic-beast2.fnal.gov running 64-bit Scientific Linux release 7.9 (Nitrogen)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cms_pix_28_fw_top_bd_cms_pix_28_fw_top_v_0_0_sim_netlist.vhdl
-- Design      : cms_pix_28_fw_top_bd_cms_pix_28_fw_top_v_0_0
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
    axi_arready_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_arready_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_awaddr_reg[2]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_mem_rdAddr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_mem_rdStrobe : STD_LOGIC;
  signal axi_mem_wrAddr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal mem_rddout_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_10_in : STD_LOGIC;
  signal \sw_write32_0[31]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sw_write32_0[31]_i_2\ : label is "soft_lutpair0";
begin
  SR(0) <= \^sr\(0);
  S_AXI_BVALID <= \^s_axi_bvalid\;
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
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
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(8),
      Q => axi_mem_rdAddr(8),
      R => \^sr\(0)
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(0),
      Q => axi_mem_rdAddr(0),
      R => \^sr\(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(1),
      Q => axi_mem_rdAddr(1),
      R => \^sr\(0)
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(2),
      Q => axi_mem_rdAddr(2),
      R => \^sr\(0)
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(3),
      Q => axi_mem_rdAddr(3),
      R => \^sr\(0)
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(4),
      Q => axi_mem_rdAddr(4),
      R => \^sr\(0)
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(5),
      Q => axi_mem_rdAddr(5),
      R => \^sr\(0)
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(6),
      Q => axi_mem_rdAddr(6),
      R => \^sr\(0)
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(7),
      Q => axi_mem_rdAddr(7),
      R => \^sr\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
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
      INIT => X"55555555C0000000"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => S_AXI_WVALID,
      I2 => S_AXI_AWVALID,
      I3 => \^axi_wready_reg_0\,
      I4 => \^axi_awready_reg_0\,
      I5 => \^s_axi_bvalid\,
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
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(0),
      I1 => \axi_rdata_reg[31]_0\(0),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(10),
      I1 => \axi_rdata_reg[31]_0\(10),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(11),
      I1 => \axi_rdata_reg[31]_0\(11),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(12),
      I1 => \axi_rdata_reg[31]_0\(12),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(13),
      I1 => \axi_rdata_reg[31]_0\(13),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(14),
      I1 => \axi_rdata_reg[31]_0\(14),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(15),
      I1 => \axi_rdata_reg[31]_0\(15),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(16),
      I1 => \axi_rdata_reg[31]_0\(16),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(17),
      I1 => \axi_rdata_reg[31]_0\(17),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(18),
      I1 => \axi_rdata_reg[31]_0\(18),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(19),
      I1 => \axi_rdata_reg[31]_0\(19),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(1),
      I1 => \axi_rdata_reg[31]_0\(1),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(20),
      I1 => \axi_rdata_reg[31]_0\(20),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(21),
      I1 => \axi_rdata_reg[31]_0\(21),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(22),
      I1 => \axi_rdata_reg[31]_0\(22),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(23),
      I1 => \axi_rdata_reg[31]_0\(23),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(24),
      I1 => \axi_rdata_reg[31]_0\(24),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(25),
      I1 => \axi_rdata_reg[31]_0\(25),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(26),
      I1 => \axi_rdata_reg[31]_0\(26),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(27),
      I1 => \axi_rdata_reg[31]_0\(27),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(28),
      I1 => \axi_rdata_reg[31]_0\(28),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(29),
      I1 => \axi_rdata_reg[31]_0\(29),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(2),
      I1 => \axi_rdata_reg[31]_0\(2),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(30),
      I1 => \axi_rdata_reg[31]_0\(30),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => S_AXI_ARVALID,
      I2 => \^axi_arready_reg_0\,
      O => axi_mem_rdStrobe
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(31),
      I1 => \axi_rdata_reg[31]_0\(31),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(31)
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => axi_mem_rdAddr(8),
      I1 => axi_mem_rdAddr(7),
      I2 => axi_mem_rdAddr(6),
      I3 => axi_mem_rdAddr(5),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => axi_mem_rdAddr(4),
      I1 => axi_mem_rdAddr(3),
      I2 => axi_mem_rdAddr(2),
      I3 => axi_mem_rdAddr(1),
      O => \axi_rdata[31]_i_4_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(3),
      I1 => \axi_rdata_reg[31]_0\(3),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(4),
      I1 => \axi_rdata_reg[31]_0\(4),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(5),
      I1 => \axi_rdata_reg[31]_0\(5),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(6),
      I1 => \axi_rdata_reg[31]_0\(6),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(7),
      I1 => \axi_rdata_reg[31]_0\(7),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(8),
      I1 => \axi_rdata_reg[31]_0\(8),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => Q(9),
      I1 => \axi_rdata_reg[31]_0\(9),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => axi_mem_rdAddr(0),
      O => mem_rddout_i(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(0),
      Q => S_AXI_RDATA(0),
      R => \^sr\(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(10),
      Q => S_AXI_RDATA(10),
      R => \^sr\(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(11),
      Q => S_AXI_RDATA(11),
      R => \^sr\(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(12),
      Q => S_AXI_RDATA(12),
      R => \^sr\(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(13),
      Q => S_AXI_RDATA(13),
      R => \^sr\(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(14),
      Q => S_AXI_RDATA(14),
      R => \^sr\(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(15),
      Q => S_AXI_RDATA(15),
      R => \^sr\(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(16),
      Q => S_AXI_RDATA(16),
      R => \^sr\(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(17),
      Q => S_AXI_RDATA(17),
      R => \^sr\(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(18),
      Q => S_AXI_RDATA(18),
      R => \^sr\(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(19),
      Q => S_AXI_RDATA(19),
      R => \^sr\(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(1),
      Q => S_AXI_RDATA(1),
      R => \^sr\(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(20),
      Q => S_AXI_RDATA(20),
      R => \^sr\(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(21),
      Q => S_AXI_RDATA(21),
      R => \^sr\(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(22),
      Q => S_AXI_RDATA(22),
      R => \^sr\(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(23),
      Q => S_AXI_RDATA(23),
      R => \^sr\(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(24),
      Q => S_AXI_RDATA(24),
      R => \^sr\(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(25),
      Q => S_AXI_RDATA(25),
      R => \^sr\(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(26),
      Q => S_AXI_RDATA(26),
      R => \^sr\(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(27),
      Q => S_AXI_RDATA(27),
      R => \^sr\(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(28),
      Q => S_AXI_RDATA(28),
      R => \^sr\(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(29),
      Q => S_AXI_RDATA(29),
      R => \^sr\(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(2),
      Q => S_AXI_RDATA(2),
      R => \^sr\(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(30),
      Q => S_AXI_RDATA(30),
      R => \^sr\(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(31),
      Q => S_AXI_RDATA(31),
      R => \^sr\(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(3),
      Q => S_AXI_RDATA(3),
      R => \^sr\(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(4),
      Q => S_AXI_RDATA(4),
      R => \^sr\(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(5),
      Q => S_AXI_RDATA(5),
      R => \^sr\(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(6),
      Q => S_AXI_RDATA(6),
      R => \^sr\(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(7),
      Q => S_AXI_RDATA(7),
      R => \^sr\(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(8),
      Q => S_AXI_RDATA(8),
      R => \^sr\(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_mem_rdStrobe,
      D => mem_rddout_i(9),
      Q => S_AXI_RDATA(9),
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55C0"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => \^axi_arready_reg_0\,
      I2 => S_AXI_ARVALID,
      I3 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
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
\reg_rddin[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => S_AXI_ARVALID,
      I2 => \^axi_rvalid_reg_0\,
      I3 => axi_mem_rdAddr(0),
      I4 => \axi_rdata[31]_i_4_n_0\,
      I5 => \axi_rdata[31]_i_3_n_0\,
      O => axi_arready_reg_1(0)
    );
\reg_rddin[1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => S_AXI_ARVALID,
      I2 => \^axi_rvalid_reg_0\,
      I3 => axi_mem_rdAddr(0),
      I4 => \axi_rdata[31]_i_4_n_0\,
      I5 => \axi_rdata[31]_i_3_n_0\,
      O => E(0)
    );
\sw_write32_0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => p_10_in,
      I1 => \sw_write32_0[31]_i_3_n_0\,
      I2 => axi_mem_wrAddr(0),
      I3 => axi_mem_wrAddr(1),
      I4 => axi_mem_wrAddr(2),
      I5 => S_AXI_WSTRB(1),
      O => \axi_awaddr_reg[2]_0\(1)
    );
\sw_write32_0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => p_10_in,
      I1 => \sw_write32_0[31]_i_3_n_0\,
      I2 => axi_mem_wrAddr(0),
      I3 => axi_mem_wrAddr(1),
      I4 => axi_mem_wrAddr(2),
      I5 => S_AXI_WSTRB(2),
      O => \axi_awaddr_reg[2]_0\(2)
    );
\sw_write32_0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => p_10_in,
      I1 => \sw_write32_0[31]_i_3_n_0\,
      I2 => axi_mem_wrAddr(0),
      I3 => axi_mem_wrAddr(1),
      I4 => axi_mem_wrAddr(2),
      I5 => S_AXI_WSTRB(3),
      O => \axi_awaddr_reg[2]_0\(3)
    );
\sw_write32_0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      O => p_10_in
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
      INIT => X"0000000800000000"
    )
        port map (
      I0 => p_10_in,
      I1 => \sw_write32_0[31]_i_3_n_0\,
      I2 => axi_mem_wrAddr(0),
      I3 => axi_mem_wrAddr(1),
      I4 => axi_mem_wrAddr(2),
      I5 => S_AXI_WSTRB(0),
      O => \axi_awaddr_reg[2]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_common_fw_to_dut_side is
  port (
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
    p_3_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    scan_out_iob : out STD_LOGIC;
    dnn_output_0_iob : out STD_LOGIC;
    dnn_output_1_iob : out STD_LOGIC;
    p_0_in_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sw_write32_0_reg[31]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sw_write32_0_reg[31]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sw_write32_0_reg[31]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sw_write32_0_reg[31]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in : in STD_LOGIC;
    super_pixel_sel_iob_reg_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    config_clk_iob_reg_0 : in STD_LOGIC;
    reset_not_iob_reg_0 : in STD_LOGIC;
    config_in_iob_reg_0 : in STD_LOGIC;
    config_load_iob_reg_0 : in STD_LOGIC;
    bxclk_ana_iob_reg_0 : in STD_LOGIC;
    bxclk_iob_reg_0 : in STD_LOGIC;
    vin_test_trig_out_iob_reg_0 : in STD_LOGIC;
    scan_in_iob_reg_0 : in STD_LOGIC;
    scan_load_iob_reg_0 : in STD_LOGIC;
    config_out : in STD_LOGIC;
    scan_out : in STD_LOGIC;
    dnn_output_0 : in STD_LOGIC;
    dnn_output_1 : in STD_LOGIC;
    dn_event_toggle : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pix_28_fw_ip3_inst : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pix_28_fw_ip3_inst_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pix_28_fw_ip3_inst_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pix_28_fw_ip3_inst_2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pix_28_fw_ip3_inst_3 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_common_fw_to_dut_side;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_common_fw_to_dut_side is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \fw_config_out_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \fw_config_out_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_config_out_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_config_out_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_config_out_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_config_out_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_dn_event_toggle_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_dn_event_toggle_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_dn_event_toggle_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_dn_event_toggle_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_dn_event_toggle_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_dn_event_toggle_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_dnn_output_0_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_dnn_output_0_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_dnn_output_0_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_dnn_output_0_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_dnn_output_0_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_dnn_output_0_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_dnn_output_1_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_dnn_output_1_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_dnn_output_1_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_dnn_output_1_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_dnn_output_1_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_dnn_output_1_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_scan_out_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_scan_out_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_scan_out_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_scan_out_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \fw_scan_out_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \fw_scan_out_reg[2]\ : label is "VCC:GE GND:CLR";
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
config_clk_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => config_clk_iob_reg_0,
      Q => config_clk,
      R => p_0_in
    );
config_in_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => config_in_iob_reg_0,
      Q => config_in,
      R => p_0_in
    );
config_load_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => config_load_iob_reg_0,
      Q => config_load,
      R => p_0_in
    );
config_out_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => config_out,
      Q => p_3_in(0),
      R => p_0_in
    );
dn_event_toggle_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => dn_event_toggle,
      Q => p_0_in_0(0),
      R => p_0_in
    );
dnn_output_0_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => dnn_output_0,
      Q => dnn_output_0_iob,
      R => p_0_in
    );
dnn_output_1_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => dnn_output_1,
      Q => dnn_output_1_iob,
      R => p_0_in
    );
\fw_config_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(0),
      GE => '1',
      Q => Q(0)
    );
\fw_config_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => E(1),
      GE => '1',
      Q => Q(1)
    );
\fw_config_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => E(2),
      GE => '1',
      Q => Q(2)
    );
\fw_dn_event_toggle_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pix_28_fw_ip3_inst_2(0),
      G => E(0),
      GE => '1',
      Q => \sw_write32_0_reg[31]_2\(0)
    );
\fw_dn_event_toggle_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pix_28_fw_ip3_inst_2(1),
      G => pix_28_fw_ip3_inst_3(0),
      GE => '1',
      Q => \sw_write32_0_reg[31]_2\(1)
    );
\fw_dn_event_toggle_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pix_28_fw_ip3_inst_2(2),
      G => pix_28_fw_ip3_inst_3(1),
      GE => '1',
      Q => \sw_write32_0_reg[31]_2\(2)
    );
\fw_dnn_output_0_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pix_28_fw_ip3_inst_0(0),
      G => E(0),
      GE => '1',
      Q => \sw_write32_0_reg[31]_0\(0)
    );
\fw_dnn_output_0_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pix_28_fw_ip3_inst_0(1),
      G => E(1),
      GE => '1',
      Q => \sw_write32_0_reg[31]_0\(1)
    );
\fw_dnn_output_0_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pix_28_fw_ip3_inst_0(2),
      G => E(2),
      GE => '1',
      Q => \sw_write32_0_reg[31]_0\(2)
    );
\fw_dnn_output_1_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pix_28_fw_ip3_inst_1(0),
      G => E(0),
      GE => '1',
      Q => \sw_write32_0_reg[31]_1\(0)
    );
\fw_dnn_output_1_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pix_28_fw_ip3_inst_1(1),
      G => E(1),
      GE => '1',
      Q => \sw_write32_0_reg[31]_1\(1)
    );
\fw_dnn_output_1_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pix_28_fw_ip3_inst_1(2),
      G => E(2),
      GE => '1',
      Q => \sw_write32_0_reg[31]_1\(2)
    );
\fw_scan_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pix_28_fw_ip3_inst(0),
      G => E(0),
      GE => '1',
      Q => \sw_write32_0_reg[31]\(0)
    );
\fw_scan_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pix_28_fw_ip3_inst(1),
      G => E(1),
      GE => '1',
      Q => \sw_write32_0_reg[31]\(1)
    );
\fw_scan_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pix_28_fw_ip3_inst(2),
      G => E(2),
      GE => '1',
      Q => \sw_write32_0_reg[31]\(2)
    );
reset_not_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => reset_not_iob_reg_0,
      Q => reset_not,
      R => p_0_in
    );
scan_in_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => scan_in_iob_reg_0,
      Q => scan_in,
      R => p_0_in
    );
scan_load_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => scan_load_iob_reg_0,
      Q => scan_load,
      R => p_0_in
    );
scan_out_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => scan_out,
      Q => scan_out_iob,
      R => p_0_in
    );
super_pixel_sel_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => super_pixel_sel_iob_reg_0,
      Q => super_pixel_sel,
      R => p_0_in
    );
vin_test_trig_out_iob_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => vin_test_trig_out_iob_reg_0,
      Q => vin_test_trig_out,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_common_sw_to_fw_side is
  port (
    fw_op_code_r_cfg_array_0 : out STD_LOGIC;
    fw_op_code_w_cfg_array_1 : out STD_LOGIC;
    fw_op_code_r_data_array_1 : out STD_LOGIC;
    fw_op_code_r_status : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_common_sw_to_fw_side;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_common_sw_to_fw_side is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fw_op_code_r_cfg_array_0__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \fw_op_code_r_data_array_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fw_op_code_r_status__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fw_op_code_w_cfg_array_1__0\ : label is "soft_lutpair9";
begin
\fw_op_code_r_cfg_array_0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      O => fw_op_code_r_cfg_array_0
    );
\fw_op_code_r_data_array_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(3),
      O => fw_op_code_r_data_array_1
    );
\fw_op_code_r_status__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      O => fw_op_code_r_status
    );
\fw_op_code_w_cfg_array_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => fw_op_code_w_cfg_array_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top is
  port (
    axi_arready_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_awready_reg : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_arready_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_awaddr_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top is
begin
axi4_slave_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface
     port map (
      E(0) => E(0),
      Q(31 downto 0) => Q(31 downto 0),
      SR(0) => SR(0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(8 downto 0) => S_AXI_ARADDR(8 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(8 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      axi_arready_reg_0 => axi_arready_reg,
      axi_arready_reg_1(0) => axi_arready_reg_0(0),
      \axi_awaddr_reg[2]_0\(3 downto 0) => \axi_awaddr_reg[2]\(3 downto 0),
      axi_awready_reg_0 => axi_awready_reg,
      \axi_rdata_reg[31]_0\(31 downto 0) => \axi_rdata_reg[31]\(31 downto 0),
      axi_rvalid_reg_0 => axi_rvalid_reg,
      axi_wready_reg_0 => axi_wready_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw is
  port (
    axi_arready_reg : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 27 downto 0 );
    fw_op_code_w_execute : out STD_LOGIC;
    fw_op_code_r_cfg_array_1 : out STD_LOGIC;
    fw_op_code_r_cfg_static_0 : out STD_LOGIC;
    fw_op_code_w_reset : out STD_LOGIC;
    fw_op_code_w_cfg_static_0 : out STD_LOGIC;
    fw_op_code_w_cfg_array_0 : out STD_LOGIC;
    fw_op_code_r_data_array_0 : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fw_dev_id_enable : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sw_write32_0_reg[29]_0\ : out STD_LOGIC;
    \sw_write32_0_reg[29]_1\ : out STD_LOGIC;
    \sw_write32_0_reg[29]_2\ : out STD_LOGIC;
    \sw_write32_0_reg[29]_3\ : out STD_LOGIC;
    \sw_write32_0_reg[29]_4\ : out STD_LOGIC;
    \sw_write32_0_reg[29]_5\ : out STD_LOGIC;
    \sw_write32_0_reg[29]_6\ : out STD_LOGIC;
    \sw_write32_0_reg[29]_7\ : out STD_LOGIC;
    \sw_write32_0_reg[29]_8\ : out STD_LOGIC;
    \sw_write32_0_reg[29]_9\ : out STD_LOGIC;
    \sw_write32_0_reg[31]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sw_write32_0_reg[31]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sw_write32_0_reg[31]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sw_write32_0_reg[31]_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_0_in_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    fw_scan_load : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fw_scan_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fw_vin_test_trig_out : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fw_bxclk : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fw_bxclk_ana : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fw_config_load : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fw_config_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fw_reset_not : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fw_config_clk : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fw_super_pixel_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dnn_output_1_iob : in STD_LOGIC;
    dnn_output_0_iob : in STD_LOGIC;
    scan_out_iob : in STD_LOGIC;
    p_3_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    fw_read_status32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_rddin_reg[1][31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_rddin_reg[1][31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fw_read_data32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_rddin_reg[0][31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_rddin_reg[0][31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw is
  signal \^q\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \fw_config_out_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \^fw_dev_id_enable\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \fw_dev_id_enable__0\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^p_0_in\ : STD_LOGIC;
  signal \reg_rdStrobe[0]_7\ : STD_LOGIC;
  signal \reg_rdStrobe[1]_6\ : STD_LOGIC;
  signal \reg_rddin[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][10]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][11]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][12]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][13]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][14]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][16]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][17]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][18]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][19]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][20]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][21]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][22]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][23]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][24]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][25]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][26]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][27]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][28]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][29]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][30]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][31]_i_2_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][31]_i_3_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][31]_i_4_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][31]_i_5_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[0][9]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][10]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][11]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][12]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][13]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][14]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][16]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][17]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][18]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][19]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][20]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][21]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][22]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][23]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][24]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][25]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][26]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][27]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][28]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][29]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][30]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][31]_i_2_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin[1][9]_i_1_n_0\ : STD_LOGIC;
  signal \reg_rddin_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_rddin_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_wrByteStrobe[0]_8\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal super_pixel_sel_iob_i_2_n_0 : STD_LOGIC;
  signal super_pixel_sel_iob_i_3_n_0 : STD_LOGIC;
  signal super_pixel_sel_iob_i_4_n_0 : STD_LOGIC;
  signal sw_write32_0 : STD_LOGIC_VECTOR ( 31 downto 28 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fw_config_out_reg[0]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \fw_config_out_reg[1]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fw_config_out_reg[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fw_config_out_reg[2]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \fw_dn_event_toggle_reg[1]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fw_dn_event_toggle_reg[2]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of pix_28_fw_ip1_inst_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of pix_28_fw_ip1_inst_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of pix_28_fw_ip1_inst_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of pix_28_fw_ip1_inst_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of pix_28_fw_ip1_inst_i_5 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of pix_28_fw_ip1_inst_i_6 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of pix_28_fw_ip1_inst_i_8 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of super_pixel_sel_iob_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of super_pixel_sel_iob_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of super_pixel_sel_iob_i_4 : label is "soft_lutpair1";
begin
  Q(27 downto 0) <= \^q\(27 downto 0);
  fw_dev_id_enable(2 downto 0) <= \^fw_dev_id_enable\(2 downto 0);
  p_0_in <= \^p_0_in\;
axi4lite_interface_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top
     port map (
      E(0) => \reg_rdStrobe[1]_6\,
      Q(31 downto 0) => \reg_rddin_reg[1]\(31 downto 0),
      SR(0) => \^p_0_in\,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(8 downto 0) => S_AXI_ARADDR(8 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(8 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      axi_arready_reg => axi_arready_reg,
      axi_arready_reg_0(0) => \reg_rdStrobe[0]_7\,
      \axi_awaddr_reg[2]\(3 downto 0) => \reg_wrByteStrobe[0]_8\(3 downto 0),
      axi_awready_reg => axi_awready_reg,
      \axi_rdata_reg[31]\(31 downto 0) => \reg_rddin_reg[0]\(31 downto 0),
      axi_rvalid_reg => axi_rvalid_reg,
      axi_wready_reg => axi_wready_reg
    );
bxclk_ana_iob_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => super_pixel_sel_iob_i_2_n_0,
      I1 => fw_bxclk_ana(0),
      I2 => super_pixel_sel_iob_i_3_n_0,
      I3 => fw_bxclk_ana(1),
      I4 => fw_bxclk_ana(2),
      I5 => super_pixel_sel_iob_i_4_n_0,
      O => \sw_write32_0_reg[29]_4\
    );
bxclk_iob_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => super_pixel_sel_iob_i_2_n_0,
      I1 => fw_bxclk(0),
      I2 => super_pixel_sel_iob_i_3_n_0,
      I3 => fw_bxclk(1),
      I4 => fw_bxclk(2),
      I5 => super_pixel_sel_iob_i_4_n_0,
      O => \sw_write32_0_reg[29]_3\
    );
config_clk_iob_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => super_pixel_sel_iob_i_2_n_0,
      I1 => fw_config_clk(0),
      I2 => super_pixel_sel_iob_i_3_n_0,
      I3 => fw_config_clk(1),
      I4 => fw_config_clk(2),
      I5 => super_pixel_sel_iob_i_4_n_0,
      O => \sw_write32_0_reg[29]_8\
    );
config_in_iob_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => super_pixel_sel_iob_i_2_n_0,
      I1 => fw_config_in(0),
      I2 => super_pixel_sel_iob_i_3_n_0,
      I3 => fw_config_in(1),
      I4 => fw_config_in(2),
      I5 => super_pixel_sel_iob_i_4_n_0,
      O => \sw_write32_0_reg[29]_6\
    );
config_load_iob_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => super_pixel_sel_iob_i_2_n_0,
      I1 => fw_config_load(0),
      I2 => super_pixel_sel_iob_i_3_n_0,
      I3 => fw_config_load(1),
      I4 => fw_config_load(2),
      I5 => super_pixel_sel_iob_i_4_n_0,
      O => \sw_write32_0_reg[29]_5\
    );
\fw_config_out_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \fw_config_out_reg[2]_i_3_n_0\,
      I1 => sw_write32_0(31),
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(30),
      I4 => sw_write32_0(29),
      I5 => p_3_in(0),
      O => \sw_write32_0_reg[31]_3\(0)
    );
\fw_config_out_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEB"
    )
        port map (
      I0 => sw_write32_0(28),
      I1 => sw_write32_0(31),
      I2 => sw_write32_0(29),
      I3 => sw_write32_0(30),
      O => E(0)
    );
\fw_config_out_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => sw_write32_0(31),
      I1 => \fw_config_out_reg[2]_i_3_n_0\,
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(29),
      I4 => sw_write32_0(30),
      I5 => p_3_in(0),
      O => \sw_write32_0_reg[31]_3\(1)
    );
\fw_config_out_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEB"
    )
        port map (
      I0 => sw_write32_0(29),
      I1 => sw_write32_0(30),
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(31),
      O => E(1)
    );
\fw_config_out_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => sw_write32_0(31),
      I1 => \fw_config_out_reg[2]_i_3_n_0\,
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(30),
      I4 => sw_write32_0(29),
      I5 => p_3_in(0),
      O => \sw_write32_0_reg[31]_3\(2)
    );
\fw_config_out_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEB"
    )
        port map (
      I0 => sw_write32_0(30),
      I1 => sw_write32_0(29),
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(31),
      O => E(2)
    );
\fw_config_out_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0116"
    )
        port map (
      I0 => \^fw_dev_id_enable\(0),
      I1 => \^fw_dev_id_enable\(1),
      I2 => \^fw_dev_id_enable\(2),
      I3 => \fw_dev_id_enable__0\(3),
      O => \fw_config_out_reg[2]_i_3_n_0\
    );
\fw_config_out_reg[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sw_write32_0(28),
      I1 => sw_write32_0(31),
      I2 => sw_write32_0(30),
      I3 => sw_write32_0(29),
      O => \fw_dev_id_enable__0\(3)
    );
\fw_dn_event_toggle_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55550000555D0000"
    )
        port map (
      I0 => \fw_config_out_reg[2]_i_3_n_0\,
      I1 => sw_write32_0(28),
      I2 => sw_write32_0(30),
      I3 => sw_write32_0(29),
      I4 => p_0_in_0(0),
      I5 => sw_write32_0(31),
      O => D(0)
    );
\fw_dn_event_toggle_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => sw_write32_0(31),
      I1 => \fw_config_out_reg[2]_i_3_n_0\,
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(29),
      I4 => sw_write32_0(30),
      I5 => p_0_in_0(0),
      O => D(1)
    );
\fw_dn_event_toggle_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sw_write32_0(30),
      I1 => sw_write32_0(29),
      I2 => sw_write32_0(31),
      I3 => sw_write32_0(28),
      O => \^fw_dev_id_enable\(1)
    );
\fw_dn_event_toggle_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => sw_write32_0(31),
      I1 => \fw_config_out_reg[2]_i_3_n_0\,
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(30),
      I4 => sw_write32_0(29),
      I5 => p_0_in_0(0),
      O => D(2)
    );
\fw_dn_event_toggle_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sw_write32_0(29),
      I1 => sw_write32_0(30),
      I2 => sw_write32_0(31),
      I3 => sw_write32_0(28),
      O => \^fw_dev_id_enable\(2)
    );
\fw_dnn_output_0_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \fw_config_out_reg[2]_i_3_n_0\,
      I1 => sw_write32_0(31),
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(30),
      I4 => sw_write32_0(29),
      I5 => dnn_output_0_iob,
      O => \sw_write32_0_reg[31]_1\(0)
    );
\fw_dnn_output_0_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => sw_write32_0(31),
      I1 => \fw_config_out_reg[2]_i_3_n_0\,
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(29),
      I4 => sw_write32_0(30),
      I5 => dnn_output_0_iob,
      O => \sw_write32_0_reg[31]_1\(1)
    );
\fw_dnn_output_0_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => sw_write32_0(31),
      I1 => \fw_config_out_reg[2]_i_3_n_0\,
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(30),
      I4 => sw_write32_0(29),
      I5 => dnn_output_0_iob,
      O => \sw_write32_0_reg[31]_1\(2)
    );
\fw_dnn_output_1_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \fw_config_out_reg[2]_i_3_n_0\,
      I1 => sw_write32_0(31),
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(30),
      I4 => sw_write32_0(29),
      I5 => dnn_output_1_iob,
      O => \sw_write32_0_reg[31]_0\(0)
    );
\fw_dnn_output_1_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => sw_write32_0(31),
      I1 => \fw_config_out_reg[2]_i_3_n_0\,
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(29),
      I4 => sw_write32_0(30),
      I5 => dnn_output_1_iob,
      O => \sw_write32_0_reg[31]_0\(1)
    );
\fw_dnn_output_1_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => sw_write32_0(31),
      I1 => \fw_config_out_reg[2]_i_3_n_0\,
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(30),
      I4 => sw_write32_0(29),
      I5 => dnn_output_1_iob,
      O => \sw_write32_0_reg[31]_0\(2)
    );
\fw_scan_out_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \fw_config_out_reg[2]_i_3_n_0\,
      I1 => sw_write32_0(31),
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(30),
      I4 => sw_write32_0(29),
      I5 => scan_out_iob,
      O => \sw_write32_0_reg[31]_2\(0)
    );
\fw_scan_out_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => sw_write32_0(31),
      I1 => \fw_config_out_reg[2]_i_3_n_0\,
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(29),
      I4 => sw_write32_0(30),
      I5 => scan_out_iob,
      O => \sw_write32_0_reg[31]_2\(1)
    );
\fw_scan_out_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => sw_write32_0(31),
      I1 => \fw_config_out_reg[2]_i_3_n_0\,
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(30),
      I4 => sw_write32_0(29),
      I5 => scan_out_iob,
      O => \sw_write32_0_reg[31]_2\(2)
    );
pix_28_fw_ip1_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => sw_write32_0(29),
      I1 => sw_write32_0(30),
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(31),
      O => \^fw_dev_id_enable\(0)
    );
pix_28_fw_ip1_inst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^q\(26),
      I2 => \^q\(24),
      I3 => \^q\(25),
      O => fw_op_code_w_reset
    );
pix_28_fw_ip1_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^q\(26),
      I2 => \^q\(25),
      I3 => \^q\(24),
      O => fw_op_code_w_cfg_static_0
    );
pix_28_fw_ip1_inst_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^q\(26),
      I2 => \^q\(24),
      I3 => \^q\(25),
      O => fw_op_code_r_cfg_static_0
    );
pix_28_fw_ip1_inst_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^q\(24),
      I2 => \^q\(26),
      I3 => \^q\(25),
      O => fw_op_code_w_cfg_array_0
    );
pix_28_fw_ip1_inst_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^q\(27),
      I2 => \^q\(24),
      I3 => \^q\(25),
      O => fw_op_code_r_cfg_array_1
    );
pix_28_fw_ip1_inst_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^q\(24),
      I1 => \^q\(26),
      I2 => \^q\(27),
      I3 => \^q\(25),
      O => fw_op_code_r_data_array_0
    );
pix_28_fw_ip1_inst_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^q\(26),
      I2 => \^q\(24),
      I3 => \^q\(25),
      O => fw_op_code_w_execute
    );
\reg_rddin[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(0),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(0),
      I4 => \reg_rddin_reg[0][31]_1\(0),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][0]_i_1_n_0\
    );
\reg_rddin[0][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(10),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(10),
      I4 => \reg_rddin_reg[0][31]_1\(10),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][10]_i_1_n_0\
    );
\reg_rddin[0][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(11),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(11),
      I4 => \reg_rddin_reg[0][31]_1\(11),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][11]_i_1_n_0\
    );
\reg_rddin[0][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(12),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(12),
      I4 => \reg_rddin_reg[0][31]_1\(12),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][12]_i_1_n_0\
    );
\reg_rddin[0][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(13),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(13),
      I4 => \reg_rddin_reg[0][31]_1\(13),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][13]_i_1_n_0\
    );
\reg_rddin[0][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(14),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(14),
      I4 => \reg_rddin_reg[0][31]_1\(14),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][14]_i_1_n_0\
    );
\reg_rddin[0][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(15),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(15),
      I4 => \reg_rddin_reg[0][31]_1\(15),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][15]_i_1_n_0\
    );
\reg_rddin[0][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(16),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(16),
      I4 => \reg_rddin_reg[0][31]_1\(16),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][16]_i_1_n_0\
    );
\reg_rddin[0][17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(17),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(17),
      I4 => \reg_rddin_reg[0][31]_1\(17),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][17]_i_1_n_0\
    );
\reg_rddin[0][18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(18),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(18),
      I4 => \reg_rddin_reg[0][31]_1\(18),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][18]_i_1_n_0\
    );
\reg_rddin[0][19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(19),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(19),
      I4 => \reg_rddin_reg[0][31]_1\(19),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][19]_i_1_n_0\
    );
\reg_rddin[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(1),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(1),
      I4 => \reg_rddin_reg[0][31]_1\(1),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][1]_i_1_n_0\
    );
\reg_rddin[0][20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(20),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(20),
      I4 => \reg_rddin_reg[0][31]_1\(20),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][20]_i_1_n_0\
    );
\reg_rddin[0][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(21),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(21),
      I4 => \reg_rddin_reg[0][31]_1\(21),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][21]_i_1_n_0\
    );
\reg_rddin[0][22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(22),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(22),
      I4 => \reg_rddin_reg[0][31]_1\(22),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][22]_i_1_n_0\
    );
\reg_rddin[0][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(23),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(23),
      I4 => \reg_rddin_reg[0][31]_1\(23),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][23]_i_1_n_0\
    );
\reg_rddin[0][24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(24),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(24),
      I4 => \reg_rddin_reg[0][31]_1\(24),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][24]_i_1_n_0\
    );
\reg_rddin[0][25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(25),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(25),
      I4 => \reg_rddin_reg[0][31]_1\(25),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][25]_i_1_n_0\
    );
\reg_rddin[0][26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(26),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(26),
      I4 => \reg_rddin_reg[0][31]_1\(26),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][26]_i_1_n_0\
    );
\reg_rddin[0][27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(27),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(27),
      I4 => \reg_rddin_reg[0][31]_1\(27),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][27]_i_1_n_0\
    );
\reg_rddin[0][28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(28),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(28),
      I4 => \reg_rddin_reg[0][31]_1\(28),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][28]_i_1_n_0\
    );
\reg_rddin[0][29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(29),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(29),
      I4 => \reg_rddin_reg[0][31]_1\(29),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][29]_i_1_n_0\
    );
\reg_rddin[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(2),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(2),
      I4 => \reg_rddin_reg[0][31]_1\(2),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][2]_i_1_n_0\
    );
\reg_rddin[0][30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(30),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(30),
      I4 => \reg_rddin_reg[0][31]_1\(30),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][30]_i_1_n_0\
    );
\reg_rddin[0][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(31),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(31),
      I4 => \reg_rddin_reg[0][31]_1\(31),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][31]_i_2_n_0\
    );
\reg_rddin[0][31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => sw_write32_0(28),
      I1 => sw_write32_0(29),
      I2 => sw_write32_0(30),
      I3 => sw_write32_0(31),
      O => \reg_rddin[0][31]_i_3_n_0\
    );
\reg_rddin[0][31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sw_write32_0(28),
      I1 => sw_write32_0(29),
      I2 => sw_write32_0(30),
      I3 => sw_write32_0(31),
      O => \reg_rddin[0][31]_i_4_n_0\
    );
\reg_rddin[0][31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => sw_write32_0(28),
      I1 => sw_write32_0(29),
      I2 => sw_write32_0(30),
      I3 => sw_write32_0(31),
      O => \reg_rddin[0][31]_i_5_n_0\
    );
\reg_rddin[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(3),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(3),
      I4 => \reg_rddin_reg[0][31]_1\(3),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][3]_i_1_n_0\
    );
\reg_rddin[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(4),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(4),
      I4 => \reg_rddin_reg[0][31]_1\(4),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][4]_i_1_n_0\
    );
\reg_rddin[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(5),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(5),
      I4 => \reg_rddin_reg[0][31]_1\(5),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][5]_i_1_n_0\
    );
\reg_rddin[0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(6),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(6),
      I4 => \reg_rddin_reg[0][31]_1\(6),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][6]_i_1_n_0\
    );
\reg_rddin[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(7),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(7),
      I4 => \reg_rddin_reg[0][31]_1\(7),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][7]_i_1_n_0\
    );
\reg_rddin[0][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(8),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(8),
      I4 => \reg_rddin_reg[0][31]_1\(8),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][8]_i_1_n_0\
    );
\reg_rddin[0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_data32(9),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[0][31]_0\(9),
      I4 => \reg_rddin_reg[0][31]_1\(9),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[0][9]_i_1_n_0\
    );
\reg_rddin[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(0),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(0),
      I4 => \reg_rddin_reg[1][31]_1\(0),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][0]_i_1_n_0\
    );
\reg_rddin[1][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(10),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(10),
      I4 => \reg_rddin_reg[1][31]_1\(10),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][10]_i_1_n_0\
    );
\reg_rddin[1][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(11),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(11),
      I4 => \reg_rddin_reg[1][31]_1\(11),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][11]_i_1_n_0\
    );
\reg_rddin[1][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(12),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(12),
      I4 => \reg_rddin_reg[1][31]_1\(12),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][12]_i_1_n_0\
    );
\reg_rddin[1][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(13),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(13),
      I4 => \reg_rddin_reg[1][31]_1\(13),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][13]_i_1_n_0\
    );
\reg_rddin[1][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(14),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(14),
      I4 => \reg_rddin_reg[1][31]_1\(14),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][14]_i_1_n_0\
    );
\reg_rddin[1][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(15),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(15),
      I4 => \reg_rddin_reg[1][31]_1\(15),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][15]_i_1_n_0\
    );
\reg_rddin[1][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(16),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(16),
      I4 => \reg_rddin_reg[1][31]_1\(16),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][16]_i_1_n_0\
    );
\reg_rddin[1][17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(17),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(17),
      I4 => \reg_rddin_reg[1][31]_1\(17),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][17]_i_1_n_0\
    );
\reg_rddin[1][18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(18),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(18),
      I4 => \reg_rddin_reg[1][31]_1\(18),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][18]_i_1_n_0\
    );
\reg_rddin[1][19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(19),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(19),
      I4 => \reg_rddin_reg[1][31]_1\(19),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][19]_i_1_n_0\
    );
\reg_rddin[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(1),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(1),
      I4 => \reg_rddin_reg[1][31]_1\(1),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][1]_i_1_n_0\
    );
\reg_rddin[1][20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(20),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(20),
      I4 => \reg_rddin_reg[1][31]_1\(20),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][20]_i_1_n_0\
    );
\reg_rddin[1][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(21),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(21),
      I4 => \reg_rddin_reg[1][31]_1\(21),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][21]_i_1_n_0\
    );
\reg_rddin[1][22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(22),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(22),
      I4 => \reg_rddin_reg[1][31]_1\(22),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][22]_i_1_n_0\
    );
\reg_rddin[1][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(23),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(23),
      I4 => \reg_rddin_reg[1][31]_1\(23),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][23]_i_1_n_0\
    );
\reg_rddin[1][24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(24),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(24),
      I4 => \reg_rddin_reg[1][31]_1\(24),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][24]_i_1_n_0\
    );
\reg_rddin[1][25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(25),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(25),
      I4 => \reg_rddin_reg[1][31]_1\(25),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][25]_i_1_n_0\
    );
\reg_rddin[1][26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(26),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(26),
      I4 => \reg_rddin_reg[1][31]_1\(26),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][26]_i_1_n_0\
    );
\reg_rddin[1][27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(27),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(27),
      I4 => \reg_rddin_reg[1][31]_1\(27),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][27]_i_1_n_0\
    );
\reg_rddin[1][28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(28),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(28),
      I4 => \reg_rddin_reg[1][31]_1\(28),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][28]_i_1_n_0\
    );
\reg_rddin[1][29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(29),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(29),
      I4 => \reg_rddin_reg[1][31]_1\(29),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][29]_i_1_n_0\
    );
\reg_rddin[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(2),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(2),
      I4 => \reg_rddin_reg[1][31]_1\(2),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][2]_i_1_n_0\
    );
\reg_rddin[1][30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(30),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(30),
      I4 => \reg_rddin_reg[1][31]_1\(30),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][30]_i_1_n_0\
    );
\reg_rddin[1][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(31),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(31),
      I4 => \reg_rddin_reg[1][31]_1\(31),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][31]_i_2_n_0\
    );
\reg_rddin[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(3),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(3),
      I4 => \reg_rddin_reg[1][31]_1\(3),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][3]_i_1_n_0\
    );
\reg_rddin[1][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(4),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(4),
      I4 => \reg_rddin_reg[1][31]_1\(4),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][4]_i_1_n_0\
    );
\reg_rddin[1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(5),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(5),
      I4 => \reg_rddin_reg[1][31]_1\(5),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][5]_i_1_n_0\
    );
\reg_rddin[1][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(6),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(6),
      I4 => \reg_rddin_reg[1][31]_1\(6),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][6]_i_1_n_0\
    );
\reg_rddin[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(7),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(7),
      I4 => \reg_rddin_reg[1][31]_1\(7),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][7]_i_1_n_0\
    );
\reg_rddin[1][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(8),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(8),
      I4 => \reg_rddin_reg[1][31]_1\(8),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][8]_i_1_n_0\
    );
\reg_rddin[1][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg_rddin[0][31]_i_3_n_0\,
      I1 => fw_read_status32(9),
      I2 => \reg_rddin[0][31]_i_4_n_0\,
      I3 => \reg_rddin_reg[1][31]_0\(9),
      I4 => \reg_rddin_reg[1][31]_1\(9),
      I5 => \reg_rddin[0][31]_i_5_n_0\,
      O => \reg_rddin[1][9]_i_1_n_0\
    );
\reg_rddin_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][0]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(0),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][10]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(10),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][11]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(11),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][12]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(12),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][13]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(13),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][14]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(14),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][15]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(15),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][16]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(16),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][17]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(17),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][18]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(18),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][19]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(19),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][1]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(1),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][20]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(20),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][21]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(21),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][22]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(22),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][23]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(23),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][24]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(24),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][25]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(25),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][26]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(26),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][27]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(27),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][28]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(28),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][29]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(29),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][2]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(2),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][30]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(30),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][31]_i_2_n_0\,
      Q => \reg_rddin_reg[0]\(31),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][3]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(3),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][4]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(4),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][5]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(5),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][6]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(6),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][7]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(7),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][8]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(8),
      R => \^p_0_in\
    );
\reg_rddin_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[0]_7\,
      D => \reg_rddin[0][9]_i_1_n_0\,
      Q => \reg_rddin_reg[0]\(9),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][0]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(0),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][10]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(10),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][11]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(11),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][12]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(12),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][13]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(13),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][14]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(14),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][15]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(15),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][16]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(16),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][17]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(17),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][18]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(18),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][19]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(19),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][1]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(1),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][20]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(20),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][21]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(21),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][22]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(22),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][23]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(23),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][24]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(24),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][25]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(25),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][26]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(26),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][27]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(27),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][28]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(28),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][29]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(29),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][2]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(2),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][30]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(30),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][31]_i_2_n_0\,
      Q => \reg_rddin_reg[1]\(31),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][3]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(3),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][4]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(4),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][5]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(5),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][6]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(6),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][7]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(7),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][8]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(8),
      R => \^p_0_in\
    );
\reg_rddin_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_rdStrobe[1]_6\,
      D => \reg_rddin[1][9]_i_1_n_0\,
      Q => \reg_rddin_reg[1]\(9),
      R => \^p_0_in\
    );
reset_not_iob_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => super_pixel_sel_iob_i_2_n_0,
      I1 => fw_reset_not(0),
      I2 => super_pixel_sel_iob_i_3_n_0,
      I3 => fw_reset_not(1),
      I4 => fw_reset_not(2),
      I5 => super_pixel_sel_iob_i_4_n_0,
      O => \sw_write32_0_reg[29]_7\
    );
scan_in_iob_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => super_pixel_sel_iob_i_2_n_0,
      I1 => fw_scan_in(0),
      I2 => super_pixel_sel_iob_i_3_n_0,
      I3 => fw_scan_in(1),
      I4 => fw_scan_in(2),
      I5 => super_pixel_sel_iob_i_4_n_0,
      O => \sw_write32_0_reg[29]_1\
    );
scan_load_iob_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => super_pixel_sel_iob_i_2_n_0,
      I1 => fw_scan_load(0),
      I2 => super_pixel_sel_iob_i_3_n_0,
      I3 => fw_scan_load(1),
      I4 => fw_scan_load(2),
      I5 => super_pixel_sel_iob_i_4_n_0,
      O => \sw_write32_0_reg[29]_0\
    );
super_pixel_sel_iob_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => super_pixel_sel_iob_i_2_n_0,
      I1 => fw_super_pixel_sel(0),
      I2 => super_pixel_sel_iob_i_3_n_0,
      I3 => fw_super_pixel_sel(1),
      I4 => fw_super_pixel_sel(2),
      I5 => super_pixel_sel_iob_i_4_n_0,
      O => \sw_write32_0_reg[29]_9\
    );
super_pixel_sel_iob_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => sw_write32_0(29),
      I1 => sw_write32_0(30),
      I2 => sw_write32_0(28),
      I3 => sw_write32_0(31),
      I4 => \fw_config_out_reg[2]_i_3_n_0\,
      O => super_pixel_sel_iob_i_2_n_0
    );
super_pixel_sel_iob_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => sw_write32_0(30),
      I1 => sw_write32_0(29),
      I2 => sw_write32_0(28),
      I3 => \fw_config_out_reg[2]_i_3_n_0\,
      I4 => sw_write32_0(31),
      O => super_pixel_sel_iob_i_3_n_0
    );
super_pixel_sel_iob_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => sw_write32_0(29),
      I1 => sw_write32_0(30),
      I2 => sw_write32_0(28),
      I3 => \fw_config_out_reg[2]_i_3_n_0\,
      I4 => sw_write32_0(31),
      O => super_pixel_sel_iob_i_4_n_0
    );
\sw_write32_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(0),
      D => S_AXI_WDATA(0),
      Q => \^q\(0),
      R => \^p_0_in\
    );
\sw_write32_0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(1),
      D => S_AXI_WDATA(10),
      Q => \^q\(10),
      R => \^p_0_in\
    );
\sw_write32_0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(1),
      D => S_AXI_WDATA(11),
      Q => \^q\(11),
      R => \^p_0_in\
    );
\sw_write32_0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(1),
      D => S_AXI_WDATA(12),
      Q => \^q\(12),
      R => \^p_0_in\
    );
\sw_write32_0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(1),
      D => S_AXI_WDATA(13),
      Q => \^q\(13),
      R => \^p_0_in\
    );
\sw_write32_0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(1),
      D => S_AXI_WDATA(14),
      Q => \^q\(14),
      R => \^p_0_in\
    );
\sw_write32_0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(1),
      D => S_AXI_WDATA(15),
      Q => \^q\(15),
      R => \^p_0_in\
    );
\sw_write32_0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(2),
      D => S_AXI_WDATA(16),
      Q => \^q\(16),
      R => \^p_0_in\
    );
\sw_write32_0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(2),
      D => S_AXI_WDATA(17),
      Q => \^q\(17),
      R => \^p_0_in\
    );
\sw_write32_0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(2),
      D => S_AXI_WDATA(18),
      Q => \^q\(18),
      R => \^p_0_in\
    );
\sw_write32_0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(2),
      D => S_AXI_WDATA(19),
      Q => \^q\(19),
      R => \^p_0_in\
    );
\sw_write32_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(0),
      D => S_AXI_WDATA(1),
      Q => \^q\(1),
      R => \^p_0_in\
    );
\sw_write32_0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(2),
      D => S_AXI_WDATA(20),
      Q => \^q\(20),
      R => \^p_0_in\
    );
\sw_write32_0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(2),
      D => S_AXI_WDATA(21),
      Q => \^q\(21),
      R => \^p_0_in\
    );
\sw_write32_0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(2),
      D => S_AXI_WDATA(22),
      Q => \^q\(22),
      R => \^p_0_in\
    );
\sw_write32_0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(2),
      D => S_AXI_WDATA(23),
      Q => \^q\(23),
      R => \^p_0_in\
    );
\sw_write32_0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(3),
      D => S_AXI_WDATA(24),
      Q => \^q\(24),
      R => \^p_0_in\
    );
\sw_write32_0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(3),
      D => S_AXI_WDATA(25),
      Q => \^q\(25),
      R => \^p_0_in\
    );
\sw_write32_0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(3),
      D => S_AXI_WDATA(26),
      Q => \^q\(26),
      R => \^p_0_in\
    );
\sw_write32_0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(3),
      D => S_AXI_WDATA(27),
      Q => \^q\(27),
      R => \^p_0_in\
    );
\sw_write32_0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(3),
      D => S_AXI_WDATA(28),
      Q => sw_write32_0(28),
      R => \^p_0_in\
    );
\sw_write32_0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(3),
      D => S_AXI_WDATA(29),
      Q => sw_write32_0(29),
      R => \^p_0_in\
    );
\sw_write32_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(0),
      D => S_AXI_WDATA(2),
      Q => \^q\(2),
      R => \^p_0_in\
    );
\sw_write32_0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(3),
      D => S_AXI_WDATA(30),
      Q => sw_write32_0(30),
      R => \^p_0_in\
    );
\sw_write32_0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(3),
      D => S_AXI_WDATA(31),
      Q => sw_write32_0(31),
      R => \^p_0_in\
    );
\sw_write32_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(0),
      D => S_AXI_WDATA(3),
      Q => \^q\(3),
      R => \^p_0_in\
    );
\sw_write32_0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(0),
      D => S_AXI_WDATA(4),
      Q => \^q\(4),
      R => \^p_0_in\
    );
\sw_write32_0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(0),
      D => S_AXI_WDATA(5),
      Q => \^q\(5),
      R => \^p_0_in\
    );
\sw_write32_0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(0),
      D => S_AXI_WDATA(6),
      Q => \^q\(6),
      R => \^p_0_in\
    );
\sw_write32_0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(0),
      D => S_AXI_WDATA(7),
      Q => \^q\(7),
      R => \^p_0_in\
    );
\sw_write32_0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(1),
      D => S_AXI_WDATA(8),
      Q => \^q\(8),
      R => \^p_0_in\
    );
\sw_write32_0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \reg_wrByteStrobe[0]_8\(1),
      D => S_AXI_WDATA(9),
      Q => \^q\(9),
      R => \^p_0_in\
    );
vin_test_trig_out_iob_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => super_pixel_sel_iob_i_2_n_0,
      I1 => fw_vin_test_trig_out(0),
      I2 => super_pixel_sel_iob_i_3_n_0,
      I3 => fw_vin_test_trig_out(1),
      I4 => fw_vin_test_trig_out(2),
      I5 => super_pixel_sel_iob_i_4_n_0,
      O => \sw_write32_0_reg[29]_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_top is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
    axi_rvalid_reg : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    config_out : in STD_LOGIC;
    scan_out : in STD_LOGIC;
    dnn_output_0 : in STD_LOGIC;
    dnn_output_1 : in STD_LOGIC;
    dn_event_toggle : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_top is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip1 is
  port (
    fw_clk : in STD_LOGIC;
    fw_rst_n : in STD_LOGIC;
    fw_dev_id_enable : in STD_LOGIC;
    fw_op_code_w_reset : in STD_LOGIC;
    fw_op_code_w_cfg_static_0 : in STD_LOGIC;
    fw_op_code_r_cfg_static_0 : in STD_LOGIC;
    fw_op_code_w_cfg_array_0 : in STD_LOGIC;
    fw_op_code_r_cfg_array_0 : in STD_LOGIC;
    fw_op_code_w_cfg_array_1 : in STD_LOGIC;
    fw_op_code_r_cfg_array_1 : in STD_LOGIC;
    fw_op_code_r_data_array_0 : in STD_LOGIC;
    fw_op_code_r_data_array_1 : in STD_LOGIC;
    fw_op_code_r_status : in STD_LOGIC;
    fw_op_code_w_execute : in STD_LOGIC;
    sw_write24_0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    fw_read_data32 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fw_read_status32 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fw_super_pixel_sel : out STD_LOGIC;
    fw_config_clk : out STD_LOGIC;
    fw_reset_not : out STD_LOGIC;
    fw_config_in : out STD_LOGIC;
    fw_config_load : out STD_LOGIC;
    fw_bxclk_ana : out STD_LOGIC;
    fw_bxclk : out STD_LOGIC;
    fw_vin_test_trig_out : out STD_LOGIC;
    fw_scan_in : out STD_LOGIC;
    fw_scan_load : out STD_LOGIC;
    fw_config_out : in STD_LOGIC;
    fw_scan_out : in STD_LOGIC;
    fw_dnn_output_0 : in STD_LOGIC;
    fw_dnn_output_1 : in STD_LOGIC;
    fw_dn_event_toggle : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip1;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip2 is
  port (
    fw_clk : in STD_LOGIC;
    fw_rst_n : in STD_LOGIC;
    fw_dev_id_enable : in STD_LOGIC;
    fw_op_code_w_reset : in STD_LOGIC;
    fw_op_code_w_cfg_static_0 : in STD_LOGIC;
    fw_op_code_r_cfg_static_0 : in STD_LOGIC;
    fw_op_code_w_cfg_array_0 : in STD_LOGIC;
    fw_op_code_r_cfg_array_0 : in STD_LOGIC;
    fw_op_code_w_cfg_array_1 : in STD_LOGIC;
    fw_op_code_r_cfg_array_1 : in STD_LOGIC;
    fw_op_code_r_data_array_0 : in STD_LOGIC;
    fw_op_code_r_data_array_1 : in STD_LOGIC;
    fw_op_code_r_status : in STD_LOGIC;
    fw_op_code_w_execute : in STD_LOGIC;
    sw_write24_0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    fw_read_data32 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fw_read_status32 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fw_super_pixel_sel : out STD_LOGIC;
    fw_config_clk : out STD_LOGIC;
    fw_reset_not : out STD_LOGIC;
    fw_config_in : out STD_LOGIC;
    fw_config_load : out STD_LOGIC;
    fw_bxclk_ana : out STD_LOGIC;
    fw_bxclk : out STD_LOGIC;
    fw_vin_test_trig_out : out STD_LOGIC;
    fw_scan_in : out STD_LOGIC;
    fw_scan_load : out STD_LOGIC;
    fw_config_out : in STD_LOGIC;
    fw_scan_out : in STD_LOGIC;
    fw_dnn_output_0 : in STD_LOGIC;
    fw_dnn_output_1 : in STD_LOGIC;
    fw_dn_event_toggle : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip2;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip3 is
  port (
    fw_clk : in STD_LOGIC;
    fw_rst_n : in STD_LOGIC;
    fw_dev_id_enable : in STD_LOGIC;
    fw_op_code_w_reset : in STD_LOGIC;
    fw_op_code_w_cfg_static_0 : in STD_LOGIC;
    fw_op_code_r_cfg_static_0 : in STD_LOGIC;
    fw_op_code_w_cfg_array_0 : in STD_LOGIC;
    fw_op_code_r_cfg_array_0 : in STD_LOGIC;
    fw_op_code_w_cfg_array_1 : in STD_LOGIC;
    fw_op_code_r_cfg_array_1 : in STD_LOGIC;
    fw_op_code_r_data_array_0 : in STD_LOGIC;
    fw_op_code_r_data_array_1 : in STD_LOGIC;
    fw_op_code_r_status : in STD_LOGIC;
    fw_op_code_w_execute : in STD_LOGIC;
    sw_write24_0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    fw_read_data32 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fw_read_status32 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fw_super_pixel_sel : out STD_LOGIC;
    fw_config_clk : out STD_LOGIC;
    fw_reset_not : out STD_LOGIC;
    fw_config_in : out STD_LOGIC;
    fw_config_load : out STD_LOGIC;
    fw_bxclk_ana : out STD_LOGIC;
    fw_bxclk : out STD_LOGIC;
    fw_vin_test_trig_out : out STD_LOGIC;
    fw_scan_in : out STD_LOGIC;
    fw_scan_load : out STD_LOGIC;
    fw_config_out : in STD_LOGIC;
    fw_scan_out : in STD_LOGIC;
    fw_dnn_output_0 : in STD_LOGIC;
    fw_dnn_output_1 : in STD_LOGIC;
    fw_dn_event_toggle : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip3;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_100 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_101 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_102 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_103 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_76 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_77 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_78 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_79 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_80 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_81 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_82 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_83 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_84 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_85 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_86 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_87 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_88 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_89 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_90 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_91 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_92 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_93 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_94 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_95 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_96 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_97 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_98 : STD_LOGIC;
  signal axi4lite_interface_top_for_pix28_fw_inst_n_99 : STD_LOGIC;
  signal dnn_output_0_iob : STD_LOGIC;
  signal dnn_output_1_iob : STD_LOGIC;
  signal fw_bxclk : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_bxclk_ana : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_config_clk : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_config_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_config_load : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_config_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_dev_id_enable : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_dn_event_toggle : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_dnn_output_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_dnn_output_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_op_code_r_cfg_array_0 : STD_LOGIC;
  signal fw_op_code_r_cfg_array_1 : STD_LOGIC;
  signal fw_op_code_r_cfg_static_0 : STD_LOGIC;
  signal fw_op_code_r_data_array_0 : STD_LOGIC;
  signal fw_op_code_r_data_array_1 : STD_LOGIC;
  signal fw_op_code_r_status : STD_LOGIC;
  signal fw_op_code_w_cfg_array_0 : STD_LOGIC;
  signal fw_op_code_w_cfg_array_1 : STD_LOGIC;
  signal fw_op_code_w_cfg_static_0 : STD_LOGIC;
  signal fw_op_code_w_execute : STD_LOGIC;
  signal fw_op_code_w_reset : STD_LOGIC;
  signal \fw_read_data32[0]_1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \fw_read_data32[1]_3\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \fw_read_data32[2]_5\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \fw_read_status32[0]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \fw_read_status32[1]_2\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \fw_read_status32[2]_4\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fw_reset_not : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_scan_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_scan_load : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_scan_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_super_pixel_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fw_vin_test_trig_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_3_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal scan_out_iob : STD_LOGIC;
  signal sw_write32_0 : STD_LOGIC_VECTOR ( 27 downto 0 );
begin
axi4lite_interface_top_for_pix28_fw_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw
     port map (
      D(2) => axi4lite_interface_top_for_pix28_fw_inst_n_76,
      D(1) => axi4lite_interface_top_for_pix28_fw_inst_n_77,
      D(0) => axi4lite_interface_top_for_pix28_fw_inst_n_78,
      E(2) => axi4lite_interface_top_for_pix28_fw_inst_n_101,
      E(1) => axi4lite_interface_top_for_pix28_fw_inst_n_102,
      E(0) => axi4lite_interface_top_for_pix28_fw_inst_n_103,
      Q(27 downto 0) => sw_write32_0(27 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(8 downto 0) => S_AXI_ARADDR(8 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(8 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      axi_arready_reg => S_AXI_ARREADY,
      axi_awready_reg => S_AXI_AWREADY,
      axi_rvalid_reg => axi_rvalid_reg,
      axi_wready_reg => S_AXI_WREADY,
      dnn_output_0_iob => dnn_output_0_iob,
      dnn_output_1_iob => dnn_output_1_iob,
      fw_bxclk(2 downto 0) => fw_bxclk(2 downto 0),
      fw_bxclk_ana(2 downto 0) => fw_bxclk_ana(2 downto 0),
      fw_config_clk(2 downto 0) => fw_config_clk(2 downto 0),
      fw_config_in(2 downto 0) => fw_config_in(2 downto 0),
      fw_config_load(2 downto 0) => fw_config_load(2 downto 0),
      fw_dev_id_enable(2 downto 0) => fw_dev_id_enable(2 downto 0),
      fw_op_code_r_cfg_array_1 => fw_op_code_r_cfg_array_1,
      fw_op_code_r_cfg_static_0 => fw_op_code_r_cfg_static_0,
      fw_op_code_r_data_array_0 => fw_op_code_r_data_array_0,
      fw_op_code_w_cfg_array_0 => fw_op_code_w_cfg_array_0,
      fw_op_code_w_cfg_static_0 => fw_op_code_w_cfg_static_0,
      fw_op_code_w_execute => fw_op_code_w_execute,
      fw_op_code_w_reset => fw_op_code_w_reset,
      fw_read_data32(31 downto 0) => \fw_read_data32[2]_5\(31 downto 0),
      fw_read_status32(31 downto 0) => \fw_read_status32[2]_4\(31 downto 0),
      fw_reset_not(2 downto 0) => fw_reset_not(2 downto 0),
      fw_scan_in(2 downto 0) => fw_scan_in(2 downto 0),
      fw_scan_load(2 downto 0) => fw_scan_load(2 downto 0),
      fw_super_pixel_sel(2 downto 0) => fw_super_pixel_sel(2 downto 0),
      fw_vin_test_trig_out(2 downto 0) => fw_vin_test_trig_out(2 downto 0),
      p_0_in => p_0_in,
      p_0_in_0(0) => p_0_in_0(0),
      p_3_in(0) => p_3_in(0),
      \reg_rddin_reg[0][31]_0\(31 downto 0) => \fw_read_data32[1]_3\(31 downto 0),
      \reg_rddin_reg[0][31]_1\(31 downto 0) => \fw_read_data32[0]_1\(31 downto 0),
      \reg_rddin_reg[1][31]_0\(31 downto 0) => \fw_read_status32[1]_2\(31 downto 0),
      \reg_rddin_reg[1][31]_1\(31 downto 0) => \fw_read_status32[0]_0\(31 downto 0),
      scan_out_iob => scan_out_iob,
      \sw_write32_0_reg[29]_0\ => axi4lite_interface_top_for_pix28_fw_inst_n_79,
      \sw_write32_0_reg[29]_1\ => axi4lite_interface_top_for_pix28_fw_inst_n_80,
      \sw_write32_0_reg[29]_2\ => axi4lite_interface_top_for_pix28_fw_inst_n_81,
      \sw_write32_0_reg[29]_3\ => axi4lite_interface_top_for_pix28_fw_inst_n_82,
      \sw_write32_0_reg[29]_4\ => axi4lite_interface_top_for_pix28_fw_inst_n_83,
      \sw_write32_0_reg[29]_5\ => axi4lite_interface_top_for_pix28_fw_inst_n_84,
      \sw_write32_0_reg[29]_6\ => axi4lite_interface_top_for_pix28_fw_inst_n_85,
      \sw_write32_0_reg[29]_7\ => axi4lite_interface_top_for_pix28_fw_inst_n_86,
      \sw_write32_0_reg[29]_8\ => axi4lite_interface_top_for_pix28_fw_inst_n_87,
      \sw_write32_0_reg[29]_9\ => axi4lite_interface_top_for_pix28_fw_inst_n_88,
      \sw_write32_0_reg[31]_0\(2) => axi4lite_interface_top_for_pix28_fw_inst_n_89,
      \sw_write32_0_reg[31]_0\(1) => axi4lite_interface_top_for_pix28_fw_inst_n_90,
      \sw_write32_0_reg[31]_0\(0) => axi4lite_interface_top_for_pix28_fw_inst_n_91,
      \sw_write32_0_reg[31]_1\(2) => axi4lite_interface_top_for_pix28_fw_inst_n_92,
      \sw_write32_0_reg[31]_1\(1) => axi4lite_interface_top_for_pix28_fw_inst_n_93,
      \sw_write32_0_reg[31]_1\(0) => axi4lite_interface_top_for_pix28_fw_inst_n_94,
      \sw_write32_0_reg[31]_2\(2) => axi4lite_interface_top_for_pix28_fw_inst_n_95,
      \sw_write32_0_reg[31]_2\(1) => axi4lite_interface_top_for_pix28_fw_inst_n_96,
      \sw_write32_0_reg[31]_2\(0) => axi4lite_interface_top_for_pix28_fw_inst_n_97,
      \sw_write32_0_reg[31]_3\(2) => axi4lite_interface_top_for_pix28_fw_inst_n_98,
      \sw_write32_0_reg[31]_3\(1) => axi4lite_interface_top_for_pix28_fw_inst_n_99,
      \sw_write32_0_reg[31]_3\(0) => axi4lite_interface_top_for_pix28_fw_inst_n_100
    );
common_fw_to_dut_side_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_common_fw_to_dut_side
     port map (
      D(2) => axi4lite_interface_top_for_pix28_fw_inst_n_98,
      D(1) => axi4lite_interface_top_for_pix28_fw_inst_n_99,
      D(0) => axi4lite_interface_top_for_pix28_fw_inst_n_100,
      E(2) => axi4lite_interface_top_for_pix28_fw_inst_n_101,
      E(1) => axi4lite_interface_top_for_pix28_fw_inst_n_102,
      E(0) => axi4lite_interface_top_for_pix28_fw_inst_n_103,
      Q(2 downto 0) => fw_config_out(2 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      bxclk => bxclk,
      bxclk_ana => bxclk_ana,
      bxclk_ana_iob_reg_0 => axi4lite_interface_top_for_pix28_fw_inst_n_83,
      bxclk_iob_reg_0 => axi4lite_interface_top_for_pix28_fw_inst_n_82,
      config_clk => config_clk,
      config_clk_iob_reg_0 => axi4lite_interface_top_for_pix28_fw_inst_n_87,
      config_in => config_in,
      config_in_iob_reg_0 => axi4lite_interface_top_for_pix28_fw_inst_n_85,
      config_load => config_load,
      config_load_iob_reg_0 => axi4lite_interface_top_for_pix28_fw_inst_n_84,
      config_out => config_out,
      dn_event_toggle => dn_event_toggle,
      dnn_output_0 => dnn_output_0,
      dnn_output_0_iob => dnn_output_0_iob,
      dnn_output_1 => dnn_output_1,
      dnn_output_1_iob => dnn_output_1_iob,
      p_0_in => p_0_in,
      p_0_in_0(0) => p_0_in_0(0),
      p_3_in(0) => p_3_in(0),
      pix_28_fw_ip3_inst(2) => axi4lite_interface_top_for_pix28_fw_inst_n_95,
      pix_28_fw_ip3_inst(1) => axi4lite_interface_top_for_pix28_fw_inst_n_96,
      pix_28_fw_ip3_inst(0) => axi4lite_interface_top_for_pix28_fw_inst_n_97,
      pix_28_fw_ip3_inst_0(2) => axi4lite_interface_top_for_pix28_fw_inst_n_92,
      pix_28_fw_ip3_inst_0(1) => axi4lite_interface_top_for_pix28_fw_inst_n_93,
      pix_28_fw_ip3_inst_0(0) => axi4lite_interface_top_for_pix28_fw_inst_n_94,
      pix_28_fw_ip3_inst_1(2) => axi4lite_interface_top_for_pix28_fw_inst_n_89,
      pix_28_fw_ip3_inst_1(1) => axi4lite_interface_top_for_pix28_fw_inst_n_90,
      pix_28_fw_ip3_inst_1(0) => axi4lite_interface_top_for_pix28_fw_inst_n_91,
      pix_28_fw_ip3_inst_2(2) => axi4lite_interface_top_for_pix28_fw_inst_n_76,
      pix_28_fw_ip3_inst_2(1) => axi4lite_interface_top_for_pix28_fw_inst_n_77,
      pix_28_fw_ip3_inst_2(0) => axi4lite_interface_top_for_pix28_fw_inst_n_78,
      pix_28_fw_ip3_inst_3(1 downto 0) => fw_dev_id_enable(2 downto 1),
      reset_not => reset_not,
      reset_not_iob_reg_0 => axi4lite_interface_top_for_pix28_fw_inst_n_86,
      scan_in => scan_in,
      scan_in_iob_reg_0 => axi4lite_interface_top_for_pix28_fw_inst_n_80,
      scan_load => scan_load,
      scan_load_iob_reg_0 => axi4lite_interface_top_for_pix28_fw_inst_n_79,
      scan_out => scan_out,
      scan_out_iob => scan_out_iob,
      super_pixel_sel => super_pixel_sel,
      super_pixel_sel_iob_reg_0 => axi4lite_interface_top_for_pix28_fw_inst_n_88,
      \sw_write32_0_reg[31]\(2 downto 0) => fw_scan_out(2 downto 0),
      \sw_write32_0_reg[31]_0\(2 downto 0) => fw_dnn_output_0(2 downto 0),
      \sw_write32_0_reg[31]_1\(2 downto 0) => fw_dnn_output_1(2 downto 0),
      \sw_write32_0_reg[31]_2\(2 downto 0) => fw_dn_event_toggle(2 downto 0),
      vin_test_trig_out => vin_test_trig_out,
      vin_test_trig_out_iob_reg_0 => axi4lite_interface_top_for_pix28_fw_inst_n_81
    );
common_sw_to_fw_side_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_common_sw_to_fw_side
     port map (
      Q(3 downto 0) => sw_write32_0(27 downto 24),
      fw_op_code_r_cfg_array_0 => fw_op_code_r_cfg_array_0,
      fw_op_code_r_data_array_1 => fw_op_code_r_data_array_1,
      fw_op_code_r_status => fw_op_code_r_status,
      fw_op_code_w_cfg_array_1 => fw_op_code_w_cfg_array_1
    );
pix_28_fw_ip1_inst: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip1
     port map (
      fw_bxclk => fw_bxclk(0),
      fw_bxclk_ana => fw_bxclk_ana(0),
      fw_clk => S_AXI_ACLK,
      fw_config_clk => fw_config_clk(0),
      fw_config_in => fw_config_in(0),
      fw_config_load => fw_config_load(0),
      fw_config_out => fw_config_out(0),
      fw_dev_id_enable => fw_dev_id_enable(0),
      fw_dn_event_toggle => fw_dn_event_toggle(0),
      fw_dnn_output_0 => fw_dnn_output_0(0),
      fw_dnn_output_1 => fw_dnn_output_1(0),
      fw_op_code_r_cfg_array_0 => fw_op_code_r_cfg_array_0,
      fw_op_code_r_cfg_array_1 => fw_op_code_r_cfg_array_1,
      fw_op_code_r_cfg_static_0 => fw_op_code_r_cfg_static_0,
      fw_op_code_r_data_array_0 => fw_op_code_r_data_array_0,
      fw_op_code_r_data_array_1 => fw_op_code_r_data_array_1,
      fw_op_code_r_status => fw_op_code_r_status,
      fw_op_code_w_cfg_array_0 => fw_op_code_w_cfg_array_0,
      fw_op_code_w_cfg_array_1 => fw_op_code_w_cfg_array_1,
      fw_op_code_w_cfg_static_0 => fw_op_code_w_cfg_static_0,
      fw_op_code_w_execute => fw_op_code_w_execute,
      fw_op_code_w_reset => fw_op_code_w_reset,
      fw_read_data32(31 downto 0) => \fw_read_data32[0]_1\(31 downto 0),
      fw_read_status32(31 downto 0) => \fw_read_status32[0]_0\(31 downto 0),
      fw_reset_not => fw_reset_not(0),
      fw_rst_n => S_AXI_ARESETN,
      fw_scan_in => fw_scan_in(0),
      fw_scan_load => fw_scan_load(0),
      fw_scan_out => fw_scan_out(0),
      fw_super_pixel_sel => fw_super_pixel_sel(0),
      fw_vin_test_trig_out => fw_vin_test_trig_out(0),
      sw_write24_0(23 downto 0) => sw_write32_0(23 downto 0)
    );
pix_28_fw_ip2_inst: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip2
     port map (
      fw_bxclk => fw_bxclk(1),
      fw_bxclk_ana => fw_bxclk_ana(1),
      fw_clk => S_AXI_ACLK,
      fw_config_clk => fw_config_clk(1),
      fw_config_in => fw_config_in(1),
      fw_config_load => fw_config_load(1),
      fw_config_out => fw_config_out(1),
      fw_dev_id_enable => fw_dev_id_enable(1),
      fw_dn_event_toggle => fw_dn_event_toggle(1),
      fw_dnn_output_0 => fw_dnn_output_0(1),
      fw_dnn_output_1 => fw_dnn_output_1(1),
      fw_op_code_r_cfg_array_0 => fw_op_code_r_cfg_array_0,
      fw_op_code_r_cfg_array_1 => fw_op_code_r_cfg_array_1,
      fw_op_code_r_cfg_static_0 => fw_op_code_r_cfg_static_0,
      fw_op_code_r_data_array_0 => fw_op_code_r_data_array_0,
      fw_op_code_r_data_array_1 => fw_op_code_r_data_array_1,
      fw_op_code_r_status => fw_op_code_r_status,
      fw_op_code_w_cfg_array_0 => fw_op_code_w_cfg_array_0,
      fw_op_code_w_cfg_array_1 => fw_op_code_w_cfg_array_1,
      fw_op_code_w_cfg_static_0 => fw_op_code_w_cfg_static_0,
      fw_op_code_w_execute => fw_op_code_w_execute,
      fw_op_code_w_reset => fw_op_code_w_reset,
      fw_read_data32(31 downto 0) => \fw_read_data32[1]_3\(31 downto 0),
      fw_read_status32(31 downto 0) => \fw_read_status32[1]_2\(31 downto 0),
      fw_reset_not => fw_reset_not(1),
      fw_rst_n => S_AXI_ARESETN,
      fw_scan_in => fw_scan_in(1),
      fw_scan_load => fw_scan_load(1),
      fw_scan_out => fw_scan_out(1),
      fw_super_pixel_sel => fw_super_pixel_sel(1),
      fw_vin_test_trig_out => fw_vin_test_trig_out(1),
      sw_write24_0(23 downto 0) => sw_write32_0(23 downto 0)
    );
pix_28_fw_ip3_inst: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip3
     port map (
      fw_bxclk => fw_bxclk(2),
      fw_bxclk_ana => fw_bxclk_ana(2),
      fw_clk => S_AXI_ACLK,
      fw_config_clk => fw_config_clk(2),
      fw_config_in => fw_config_in(2),
      fw_config_load => fw_config_load(2),
      fw_config_out => fw_config_out(2),
      fw_dev_id_enable => fw_dev_id_enable(2),
      fw_dn_event_toggle => fw_dn_event_toggle(2),
      fw_dnn_output_0 => fw_dnn_output_0(2),
      fw_dnn_output_1 => fw_dnn_output_1(2),
      fw_op_code_r_cfg_array_0 => fw_op_code_r_cfg_array_0,
      fw_op_code_r_cfg_array_1 => fw_op_code_r_cfg_array_1,
      fw_op_code_r_cfg_static_0 => fw_op_code_r_cfg_static_0,
      fw_op_code_r_data_array_0 => fw_op_code_r_data_array_0,
      fw_op_code_r_data_array_1 => fw_op_code_r_data_array_1,
      fw_op_code_r_status => fw_op_code_r_status,
      fw_op_code_w_cfg_array_0 => fw_op_code_w_cfg_array_0,
      fw_op_code_w_cfg_array_1 => fw_op_code_w_cfg_array_1,
      fw_op_code_w_cfg_static_0 => fw_op_code_w_cfg_static_0,
      fw_op_code_w_execute => fw_op_code_w_execute,
      fw_op_code_w_reset => fw_op_code_w_reset,
      fw_read_data32(31 downto 0) => \fw_read_data32[2]_5\(31 downto 0),
      fw_read_status32(31 downto 0) => \fw_read_status32[2]_4\(31 downto 0),
      fw_reset_not => fw_reset_not(2),
      fw_rst_n => S_AXI_ARESETN,
      fw_scan_in => fw_scan_in(2),
      fw_scan_load => fw_scan_load(2),
      fw_scan_out => fw_scan_out(2),
      fw_super_pixel_sel => fw_super_pixel_sel(2),
      fw_vin_test_trig_out => fw_vin_test_trig_out(2),
      sw_write24_0(23 downto 0) => sw_write32_0(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_top_v is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
    axi_rvalid_reg : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    config_out : in STD_LOGIC;
    scan_out : in STD_LOGIC;
    dnn_output_0 : in STD_LOGIC;
    dnn_output_1 : in STD_LOGIC;
    dn_event_toggle : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_top_v;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_top_v is
begin
cms_pix_28_fw_top_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_top
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(8 downto 0) => S_AXI_ARADDR(8 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(8 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      axi_rvalid_reg => axi_rvalid_reg,
      bxclk => bxclk,
      bxclk_ana => bxclk_ana,
      config_clk => config_clk,
      config_in => config_in,
      config_load => config_load,
      config_out => config_out,
      dn_event_toggle => dn_event_toggle,
      dnn_output_0 => dnn_output_0,
      dnn_output_1 => dnn_output_1,
      reset_not => reset_not,
      scan_in => scan_in,
      scan_load => scan_load,
      scan_out => scan_out,
      super_pixel_sel => super_pixel_sel,
      vin_test_trig_out => vin_test_trig_out
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cms_pix_28_fw_top_bd_cms_pix_28_fw_top_v_0_0,cms_pix_28_fw_top_v,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cms_pix_28_fw_top_v,Vivado 2022.1";
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
  attribute X_INTERFACE_PARAMETER of config_clk : signal is "XIL_INTERFACENAME config_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_pix_28_fw_top_bd_cms_pix_28_fw_top_v_0_0_config_clk, INSERT_VIP 0";
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
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_top_v
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(8 downto 0) => S_AXI_ARADDR(10 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(10 downto 2),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      axi_rvalid_reg => S_AXI_RVALID,
      bxclk => bxclk,
      bxclk_ana => bxclk_ana,
      config_clk => config_clk,
      config_in => config_in,
      config_load => config_load,
      config_out => config_out,
      dn_event_toggle => dn_event_toggle,
      dnn_output_0 => dnn_output_0,
      dnn_output_1 => dnn_output_1,
      reset_not => reset_not,
      scan_in => scan_in,
      scan_load => scan_load,
      scan_out => scan_out,
      super_pixel_sel => super_pixel_sel,
      vin_test_trig_out => vin_test_trig_out
    );
end STRUCTURE;
