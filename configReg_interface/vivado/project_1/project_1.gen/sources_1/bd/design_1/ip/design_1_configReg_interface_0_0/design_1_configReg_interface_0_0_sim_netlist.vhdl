-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Tue May 21 11:54:19 2024
-- Host        : fasic-beast1.fnal.gov running 64-bit Scientific Linux release 7.9 (Nitrogen)
-- Command     : write_vhdl -force -mode funcsim
--               /asic/projects/C/CMS_PIX_28/nehak/spacely/spacely-caribou-common-blocks/configReg_interface/vivado_new/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_configReg_interface_0_0/design_1_configReg_interface_0_0_sim_netlist.vhdl
-- Design      : design_1_configReg_interface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_configReg_interface_0_0_axi4lite_slave_interface is
  port (
    axi_arready_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    aw_en_reg_0 : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rddout_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    aw_en_reg_1 : in STD_LOGIC;
    axi_rvalid_reg_0 : in STD_LOGIC;
    \axi_rdata_reg[0]_1\ : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \reg1_reg[2]\ : in STD_LOGIC;
    \fifo_tail0__18\ : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg1_reg[2]_0\ : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \axi_rdata[0]_i_2_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_configReg_interface_0_0_axi4lite_slave_interface : entity is "axi4lite_slave_interface";
end design_1_configReg_interface_0_0_axi4lite_slave_interface;

architecture STRUCTURE of design_1_configReg_interface_0_0_axi4lite_slave_interface is
  signal \^aw_en_reg_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_mem_rdAddr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_mem_wrAddr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal \reg1[3]_i_2_n_0\ : STD_LOGIC;
  signal \reg1[3]_i_4_n_0\ : STD_LOGIC;
  signal \reg1[3]_i_5_n_0\ : STD_LOGIC;
  signal \reg1[3]_i_6_n_0\ : STD_LOGIC;
  signal \reg1[3]_i_7_n_0\ : STD_LOGIC;
begin
  aw_en_reg_0 <= \^aw_en_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => aw_en_reg_1,
      Q => \^aw_en_reg_0\,
      S => \axi_rdata_reg[0]_0\
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => S_AXI_ARADDR(8),
      Q => axi_mem_rdAddr(8),
      R => \axi_rdata_reg[0]_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => S_AXI_ARADDR(0),
      Q => axi_mem_rdAddr(0),
      R => \axi_rdata_reg[0]_0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => S_AXI_ARADDR(1),
      Q => axi_mem_rdAddr(1),
      R => \axi_rdata_reg[0]_0\
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => S_AXI_ARADDR(2),
      Q => axi_mem_rdAddr(2),
      R => \axi_rdata_reg[0]_0\
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => S_AXI_ARADDR(3),
      Q => axi_mem_rdAddr(3),
      R => \axi_rdata_reg[0]_0\
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => S_AXI_ARADDR(4),
      Q => axi_mem_rdAddr(4),
      R => \axi_rdata_reg[0]_0\
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => S_AXI_ARADDR(5),
      Q => axi_mem_rdAddr(5),
      R => \axi_rdata_reg[0]_0\
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => S_AXI_ARADDR(6),
      Q => axi_mem_rdAddr(6),
      R => \axi_rdata_reg[0]_0\
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => S_AXI_ARADDR(7),
      Q => axi_mem_rdAddr(7),
      R => \axi_rdata_reg[0]_0\
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => E(0),
      Q => axi_arready_reg_0,
      R => \axi_rdata_reg[0]_0\
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(8),
      Q => axi_mem_wrAddr(8),
      R => \axi_rdata_reg[0]_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(0),
      Q => axi_mem_wrAddr(0),
      R => \axi_rdata_reg[0]_0\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(1),
      Q => axi_mem_wrAddr(1),
      R => \axi_rdata_reg[0]_0\
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(2),
      Q => axi_mem_wrAddr(2),
      R => \axi_rdata_reg[0]_0\
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(3),
      Q => axi_mem_wrAddr(3),
      R => \axi_rdata_reg[0]_0\
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(4),
      Q => axi_mem_wrAddr(4),
      R => \axi_rdata_reg[0]_0\
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(5),
      Q => axi_mem_wrAddr(5),
      R => \axi_rdata_reg[0]_0\
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(6),
      Q => axi_mem_wrAddr(6),
      R => \axi_rdata_reg[0]_0\
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(7),
      Q => axi_mem_wrAddr(7),
      R => \axi_rdata_reg[0]_0\
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^aw_en_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => \axi_rdata_reg[0]_0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => S_AXI_BVALID,
      R => \axi_rdata_reg[0]_0\
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => axi_mem_rdAddr(8),
      I1 => axi_mem_rdAddr(6),
      I2 => \axi_rdata[0]_i_3_n_0\,
      I3 => axi_mem_rdAddr(7),
      I4 => axi_mem_rdAddr(1),
      O => mem_rddout_i(0)
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => axi_mem_rdAddr(4),
      I1 => axi_mem_rdAddr(3),
      I2 => \axi_rdata[0]_i_2_0\,
      I3 => axi_mem_rdAddr(0),
      I4 => axi_mem_rdAddr(2),
      I5 => axi_mem_rdAddr(5),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_rdata_reg[0]_1\,
      Q => S_AXI_RDATA(0),
      R => \axi_rdata_reg[0]_0\
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_reg_0,
      Q => S_AXI_RVALID,
      R => \axi_rdata_reg[0]_0\
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^aw_en_reg_0\,
      I1 => \^axi_wready_reg_0\,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => \axi_rdata_reg[0]_0\
    );
\reg1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => Q(2),
      I2 => \reg1_reg[2]\,
      I3 => \reg1[3]_i_2_n_0\,
      I4 => Q(0),
      I5 => Q(1),
      O => S_AXI_ARESETN_0(0)
    );
\reg1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \fifo_tail0__18\,
      I1 => S_AXI_WSTRB(0),
      I2 => \reg1_reg[2]_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => \^axi_wready_reg_0\,
      I5 => \reg1[3]_i_4_n_0\,
      O => \reg1[3]_i_2_n_0\
    );
\reg1[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \reg1[3]_i_5_n_0\,
      I1 => \reg1[3]_i_6_n_0\,
      I2 => axi_mem_wrAddr(7),
      I3 => axi_mem_wrAddr(6),
      I4 => axi_mem_wrAddr(8),
      I5 => \reg1[3]_i_7_n_0\,
      O => \reg1[3]_i_4_n_0\
    );
\reg1[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => axi_mem_wrAddr(6),
      I1 => axi_mem_wrAddr(7),
      I2 => axi_mem_wrAddr(4),
      I3 => axi_mem_wrAddr(5),
      O => \reg1[3]_i_5_n_0\
    );
\reg1[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => axi_mem_wrAddr(2),
      I1 => axi_mem_wrAddr(3),
      I2 => axi_mem_wrAddr(0),
      I3 => axi_mem_wrAddr(1),
      O => \reg1[3]_i_6_n_0\
    );
\reg1[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => axi_mem_wrAddr(1),
      I1 => axi_mem_wrAddr(4),
      I2 => axi_mem_wrAddr(5),
      I3 => axi_mem_wrAddr(2),
      I4 => axi_mem_wrAddr(3),
      O => \reg1[3]_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_configReg_interface_0_0_axi4lite_interface_top is
  port (
    axi_arready_reg : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    aw_en_reg : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rddout_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    axi_bvalid_reg : in STD_LOGIC;
    aw_en_reg_0 : in STD_LOGIC;
    axi_rvalid_reg : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \reg1_reg[2]\ : in STD_LOGIC;
    \fifo_tail0__18\ : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg1_reg[2]_0\ : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \axi_rdata[0]_i_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_configReg_interface_0_0_axi4lite_interface_top : entity is "axi4lite_interface_top";
end design_1_configReg_interface_0_0_axi4lite_interface_top;

architecture STRUCTURE of design_1_configReg_interface_0_0_axi4lite_interface_top is
begin
axi4_slave_inst: entity work.design_1_configReg_interface_0_0_axi4lite_slave_interface
     port map (
      E(0) => E(0),
      Q(2 downto 0) => Q(2 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(8 downto 0) => S_AXI_ARADDR(8 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0(0) => S_AXI_ARESETN_0(0),
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(8 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(0) => S_AXI_RDATA(0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WSTRB(0) => S_AXI_WSTRB(0),
      S_AXI_WVALID => S_AXI_WVALID,
      aw_en_reg_0 => aw_en_reg,
      aw_en_reg_1 => aw_en_reg_0,
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_bvalid_reg_0 => axi_bvalid_reg,
      \axi_rdata[0]_i_2_0\ => \axi_rdata[0]_i_2\,
      \axi_rdata_reg[0]_0\ => \axi_rdata_reg[0]\,
      \axi_rdata_reg[0]_1\ => \axi_rdata_reg[0]_0\,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      axi_wready_reg_0 => axi_wready_reg,
      \fifo_tail0__18\ => \fifo_tail0__18\,
      mem_rddout_i(0) => mem_rddout_i(0),
      \reg1_reg[2]\ => \reg1_reg[2]\,
      \reg1_reg[2]_0\ => \reg1_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_configReg_interface_0_0_configReg_interface is
  port (
    axi_arready_reg : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    aw_en_reg : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    ConfigClk_reg_0 : out STD_LOGIC;
    processing_fifo_data_reg_0 : out STD_LOGIC;
    SuperpixSel : out STD_LOGIC;
    Reset_not : out STD_LOGIC;
    ConfigIn : out STD_LOGIC;
    \reg_rddin_reg[0][0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_1\ : out STD_LOGIC;
    \clk_counter_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \reg1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_rddout_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    \clk_counter_reg[6]_0\ : out STD_LOGIC;
    S_AXI_ARESETN_0 : out STD_LOGIC;
    ConfigClk_reg_1 : out STD_LOGIC;
    ConfigIn0_out : out STD_LOGIC;
    S_AXI_ARESETN_1 : out STD_LOGIC;
    processing_fifo_data : out STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_0\ : out STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    axi_bvalid_reg : in STD_LOGIC;
    aw_en_reg_0 : in STD_LOGIC;
    axi_rvalid_reg : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    ConfigClk_reg_2 : in STD_LOGIC;
    processing_fifo_data_reg_1 : in STD_LOGIC;
    SuperpixSel_reg_0 : in STD_LOGIC;
    Reset_not_reg_0 : in STD_LOGIC;
    ConfigIn_reg_0 : in STD_LOGIC;
    \reg_rddin_reg[0][0]_1\ : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_configReg_interface_0_0_configReg_interface : entity is "configReg_interface";
end design_1_configReg_interface_0_0_configReg_interface;

architecture STRUCTURE of design_1_configReg_interface_0_0_configReg_interface is
  signal \^configclk_reg_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi4lite_interface_inst_n_7 : STD_LOGIC;
  signal clk_counter : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \clk_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \^clk_counter_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \clk_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \current_state__1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \fifo[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[0][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[0][3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo[10][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[11][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[11][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[12][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[13][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[14][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[15][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[15][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[16][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[16][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[16][3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo[16][3]_i_4_n_0\ : STD_LOGIC;
  signal \fifo[17][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[17][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[18][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[19][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[19][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[1][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[1][3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo[20][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[21][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[22][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[23][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[23][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[24][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[24][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[25][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[26][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[27][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[27][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[28][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[28][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[29][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[29][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[29][3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo[2][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[2][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[30][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[30][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[31][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[32][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[32][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[33][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[33][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[34][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[35][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[35][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[36][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[36][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[37][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[37][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[38][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[39][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[39][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[39][3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo[39][3]_i_4_n_0\ : STD_LOGIC;
  signal \fifo[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[40][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[40][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[41][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[41][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[42][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[42][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[42][3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo[43][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[43][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[44][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[45][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[46][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[47][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[48][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[48][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[49][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[4][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[4][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[50][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[50][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[51][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[51][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[52][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[53][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[53][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[54][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[55][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[56][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[57][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[58][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[59][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[59][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[5][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[60][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[60][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[61][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[61][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[62][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[62][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[63][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[64][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[65][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[65][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[66][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[67][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[67][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[68][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[68][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[68][3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo[69][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[69][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[6][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[70][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[70][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[71][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[71][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[72][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[72][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[73][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[74][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[74][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[74][3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo[75][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[75][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[75][3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo[76][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[77][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[78][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[79][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[7][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[80][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[81][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[82][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[82][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[83][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[83][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[83][3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo[84][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[85][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[86][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[87][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[88][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[89][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[8][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[8][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[8][3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo[90][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[90][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[91][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[92][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[93][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[94][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[95][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[96][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[97][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[97][3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo[98][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[99][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[9][3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo[9][3]_i_2_n_0\ : STD_LOGIC;
  signal fifo_count : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \fifo_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_count[2]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_count[3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_count[5]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_count[6]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_count[6]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_count[6]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_count[6]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \fifo_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \fifo_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \fifo_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \fifo_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \fifo_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \fifo_count_reg_n_0_[6]\ : STD_LOGIC;
  signal fifo_data : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_22_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_23_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_24_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_25_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_26_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_27_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_28_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_29_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_30_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_31_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_32_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_33_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_34_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_35_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_36_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_37_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_38_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_39_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_40_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_41_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_42_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_43_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_44_n_0\ : STD_LOGIC;
  signal \fifo_data[0]_i_45_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_22_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_23_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_24_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_25_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_26_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_27_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_28_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_29_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_30_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_31_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_32_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_33_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_34_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_35_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_36_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_37_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_38_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_39_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_40_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_41_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_42_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_43_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_44_n_0\ : STD_LOGIC;
  signal \fifo_data[1]_i_45_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_22_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_23_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_24_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_25_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_26_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_27_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_28_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_29_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_30_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_31_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_32_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_33_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_34_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_35_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_36_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_37_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_38_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_39_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_40_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_41_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_42_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_43_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_44_n_0\ : STD_LOGIC;
  signal \fifo_data[2]_i_45_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_25_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_26_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_27_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_28_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_29_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_30_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_31_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_32_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_33_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_34_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_35_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_36_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_37_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_38_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_39_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_40_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_41_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_42_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_43_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_44_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_45_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_46_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_47_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_48_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_data[3]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_15_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_17_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_18_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_19_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_20_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_21_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_13_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_14_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_15_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_16_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_17_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_18_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_19_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_20_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_21_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_14_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_15_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_16_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_17_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_18_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_19_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_20_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_21_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[2]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_15_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_16_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_17_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_18_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_19_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_20_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_21_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_22_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_23_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_24_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_data_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_head[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_head[2]_i_1_n_0\ : STD_LOGIC;
  signal fifo_head_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \fifo_reg[0]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[10]_10\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[11]_11\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[12]_12\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[13]_13\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[14]_14\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[15]_15\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[16]_16\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[17]_17\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[18]_18\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[19]_19\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[1]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[20]_20\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[21]_21\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[22]_22\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[23]_23\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[24]_24\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[25]_25\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[26]_26\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[27]_27\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[28]_28\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[29]_29\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[2]_2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[30]_30\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[31]_31\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[32]_32\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[33]_33\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[34]_34\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[35]_35\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[36]_36\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[37]_37\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[38]_38\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[39]_39\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[3]_3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[40]_40\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[41]_41\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[42]_42\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[43]_43\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[44]_44\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[45]_45\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[46]_46\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[47]_47\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[48]_48\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[49]_49\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[4]_4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[50]_50\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[51]_51\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[52]_52\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[53]_53\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[54]_54\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[55]_55\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[56]_56\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[57]_57\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[58]_58\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[59]_59\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[5]_5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[60]_60\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[61]_61\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[62]_62\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[63]_63\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[64]_64\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[65]_65\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[66]_66\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[67]_67\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[68]_68\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[69]_69\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[6]_6\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[70]_70\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[71]_71\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[72]_72\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[73]_73\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[74]_74\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[75]_75\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[76]_76\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[77]_77\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[78]_78\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[79]_79\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[7]_7\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[80]_80\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[81]_81\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[82]_82\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[83]_83\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[84]_84\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[85]_85\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[86]_86\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[87]_87\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[88]_88\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[89]_89\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[8]_8\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[90]_90\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[91]_91\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[92]_92\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[93]_93\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[94]_94\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[95]_95\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[96]_96\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[97]_97\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[98]_98\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[99]_99\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_reg[9]_9\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_tail0__18\ : STD_LOGIC;
  signal \fifo_tail[6]_i_2_n_0\ : STD_LOGIC;
  signal fifo_tail_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal prev_reg_wrdout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal prev_reg_wrdout0 : STD_LOGIC;
  signal prev_reg_wrdout18_in : STD_LOGIC;
  signal \prev_reg_wrdout1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \prev_reg_wrdout1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \prev_reg_wrdout1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \prev_reg_wrdout1_carry__0_n_6\ : STD_LOGIC;
  signal \prev_reg_wrdout1_carry__0_n_7\ : STD_LOGIC;
  signal prev_reg_wrdout1_carry_i_1_n_0 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_i_2_n_0 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_i_3_n_0 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_i_4_n_0 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_i_5_n_0 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_i_6_n_0 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_i_7_n_0 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_i_8_n_0 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_n_0 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_n_1 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_n_2 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_n_3 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_n_4 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_n_5 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_n_6 : STD_LOGIC;
  signal prev_reg_wrdout1_carry_n_7 : STD_LOGIC;
  signal processing_fifo_data_i_7_n_0 : STD_LOGIC;
  signal \^processing_fifo_data_reg_0\ : STD_LOGIC;
  signal \reg1[3]_i_3_n_0\ : STD_LOGIC;
  signal \reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \^reg_rddin_reg[0][0]_0\ : STD_LOGIC;
  signal wait_counter0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wait_counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \wait_counter0_carry__0_n_5\ : STD_LOGIC;
  signal \wait_counter0_carry__0_n_6\ : STD_LOGIC;
  signal \wait_counter0_carry__0_n_7\ : STD_LOGIC;
  signal wait_counter0_carry_i_1_n_0 : STD_LOGIC;
  signal wait_counter0_carry_i_2_n_0 : STD_LOGIC;
  signal wait_counter0_carry_i_3_n_0 : STD_LOGIC;
  signal wait_counter0_carry_i_4_n_0 : STD_LOGIC;
  signal wait_counter0_carry_i_5_n_0 : STD_LOGIC;
  signal wait_counter0_carry_i_6_n_0 : STD_LOGIC;
  signal wait_counter0_carry_i_7_n_0 : STD_LOGIC;
  signal wait_counter0_carry_i_8_n_0 : STD_LOGIC;
  signal wait_counter0_carry_n_0 : STD_LOGIC;
  signal wait_counter0_carry_n_1 : STD_LOGIC;
  signal wait_counter0_carry_n_2 : STD_LOGIC;
  signal wait_counter0_carry_n_3 : STD_LOGIC;
  signal wait_counter0_carry_n_4 : STD_LOGIC;
  signal wait_counter0_carry_n_5 : STD_LOGIC;
  signal wait_counter0_carry_n_6 : STD_LOGIC;
  signal wait_counter0_carry_n_7 : STD_LOGIC;
  signal \wait_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal wait_counter_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_prev_reg_wrdout1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_prev_reg_wrdout1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_prev_reg_wrdout1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_wait_counter0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_wait_counter0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ConfigIn_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_7\ : label is "soft_lutpair21";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "IDLE_STATE:000,RESET_STATE_DONE:010,CONFIGIN_DONE_STATE:100,CONFIGOUT_STATE:110,WAIT_STATE:101,CONFIGIN_STATE:011,RESET_STATE:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "IDLE_STATE:000,RESET_STATE_DONE:010,CONFIGIN_DONE_STATE:100,CONFIGOUT_STATE:110,WAIT_STATE:101,CONFIGIN_STATE:011,RESET_STATE:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "IDLE_STATE:000,RESET_STATE_DONE:010,CONFIGIN_DONE_STATE:100,CONFIGOUT_STATE:110,WAIT_STATE:101,CONFIGIN_STATE:011,RESET_STATE:001";
  attribute SOFT_HLUTNM of SuperpixSel_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clk_counter[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \clk_counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_counter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_counter[6]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \fifo[0][3]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \fifo[0][3]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \fifo[11][3]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \fifo[15][3]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \fifo[16][3]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \fifo[16][3]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \fifo[17][3]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \fifo[19][3]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \fifo[1][3]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \fifo[1][3]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \fifo[23][3]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \fifo[24][3]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \fifo[27][3]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \fifo[28][3]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \fifo[29][3]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \fifo[29][3]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \fifo[2][3]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \fifo[30][3]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \fifo[32][3]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifo[33][3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \fifo[35][3]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \fifo[36][3]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \fifo[37][3]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \fifo[39][3]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \fifo[39][3]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \fifo[39][3]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \fifo[40][3]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \fifo[41][3]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \fifo[42][3]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \fifo[42][3]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \fifo[43][3]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \fifo[48][3]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \fifo[4][3]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \fifo[50][3]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \fifo[51][3]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \fifo[53][3]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \fifo[59][3]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \fifo[61][3]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \fifo[62][3]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifo[65][3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \fifo[67][3]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \fifo[68][3]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \fifo[68][3]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \fifo[69][3]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \fifo[70][3]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \fifo[71][3]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \fifo[72][3]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \fifo[74][3]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \fifo[74][3]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \fifo[75][3]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \fifo[75][3]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \fifo[82][3]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \fifo[83][3]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \fifo[83][3]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \fifo[8][3]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \fifo[8][3]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \fifo[90][3]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \fifo[97][3]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \fifo[9][3]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \fifo_count[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fifo_count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \fifo_count[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fifo_count[2]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fifo_count[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fifo_count[3]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fifo_count[4]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fifo_count[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \fifo_count[6]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \fifo_count[6]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fifo_count[6]_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fifo_data[3]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \fifo_head[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \fifo_head[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \fifo_head[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \fifo_head[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifo_head[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifo_tail[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \fifo_tail[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \fifo_tail[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fifo_tail[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fifo_tail[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fifo_tail[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \fifo_tail[6]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of processing_fifo_data_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of processing_fifo_data_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of processing_fifo_data_i_5 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of processing_fifo_data_i_7 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg_rddin[0][0]_i_2\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of wait_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \wait_counter0_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \wait_counter[0]_i_1\ : label is "soft_lutpair22";
begin
  ConfigClk_reg_0 <= \^configclk_reg_0\;
  Q(2 downto 0) <= \^q\(2 downto 0);
  \clk_counter_reg[2]_0\(2 downto 0) <= \^clk_counter_reg[2]_0\(2 downto 0);
  processing_fifo_data_reg_0 <= \^processing_fifo_data_reg_0\;
  \reg_rddin_reg[0][0]_0\ <= \^reg_rddin_reg[0][0]_0\;
ConfigClk_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[6]\,
      I1 => \clk_counter_reg_n_0_[3]\,
      I2 => \clk_counter_reg_n_0_[4]\,
      I3 => \clk_counter_reg_n_0_[5]\,
      O => \clk_counter_reg[6]_0\
    );
ConfigClk_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \axi_rdata_reg[0]\,
      D => ConfigClk_reg_2,
      Q => \^configclk_reg_0\
    );
ConfigIn_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200200"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => \^configclk_reg_0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => ConfigIn0_out
    );
ConfigIn_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => ConfigIn_reg_0,
      Q => ConfigIn,
      R => '0'
    );
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14151515"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \reg1_reg_n_0_[1]\,
      I4 => \reg1_reg_n_0_[0]\,
      O => \current_state__1\(0)
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1B1A"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \reg1_reg_n_0_[0]\,
      O => \current_state__1\(1)
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA555511555550"
    )
        port map (
      I0 => \^configclk_reg_0\,
      I1 => \FSM_sequential_current_state[2]_i_3_n_0\,
      I2 => \fifo_tail0__18\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \FSM_sequential_current_state[2]_i_1_n_0\
    );
\FSM_sequential_current_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6564"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \reg1_reg_n_0_[1]\,
      O => \current_state__1\(2)
    );
\FSM_sequential_current_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_current_state[2]_i_5_n_0\,
      I1 => \FSM_sequential_current_state[2]_i_6_n_0\,
      I2 => wait_counter_reg(7),
      I3 => wait_counter_reg(6),
      I4 => wait_counter_reg(9),
      I5 => wait_counter_reg(8),
      O => \FSM_sequential_current_state[2]_i_3_n_0\
    );
\FSM_sequential_current_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \FSM_sequential_current_state[2]_i_7_n_0\,
      I1 => \fifo_count_reg_n_0_[1]\,
      I2 => \fifo_count_reg_n_0_[3]\,
      I3 => \fifo_count_reg_n_0_[2]\,
      I4 => \^processing_fifo_data_reg_0\,
      O => \fifo_tail0__18\
    );
\FSM_sequential_current_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => wait_counter_reg(1),
      I1 => wait_counter_reg(4),
      I2 => wait_counter_reg(5),
      I3 => wait_counter_reg(2),
      I4 => wait_counter_reg(3),
      O => \FSM_sequential_current_state[2]_i_5_n_0\
    );
\FSM_sequential_current_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_counter_reg(11),
      I1 => wait_counter_reg(10),
      I2 => wait_counter_reg(0),
      I3 => wait_counter_reg(12),
      O => \FSM_sequential_current_state[2]_i_6_n_0\
    );
\FSM_sequential_current_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \fifo_count_reg_n_0_[5]\,
      I1 => \fifo_count_reg_n_0_[4]\,
      I2 => \fifo_count_reg_n_0_[0]\,
      I3 => \fifo_count_reg_n_0_[6]\,
      O => \FSM_sequential_current_state[2]_i_7_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \FSM_sequential_current_state[2]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \current_state__1\(0),
      Q => \^q\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \FSM_sequential_current_state[2]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \current_state__1\(1),
      Q => \^q\(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \FSM_sequential_current_state[2]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \current_state__1\(2),
      Q => \^q\(2)
    );
Reset_not_reg: unisim.vcomponents.FDPE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => Reset_not_reg_0,
      PRE => \axi_rdata_reg[0]\,
      Q => Reset_not
    );
SuperpixSel_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      O => \FSM_sequential_current_state_reg[2]_1\
    );
SuperpixSel_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => SuperpixSel_reg_0,
      Q => SuperpixSel,
      R => '0'
    );
axi4lite_interface_inst: entity work.design_1_configReg_interface_0_0_axi4lite_interface_top
     port map (
      E(0) => E(0),
      Q(2 downto 0) => \^q\(2 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(8 downto 0) => S_AXI_ARADDR(8 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0(0) => axi4lite_interface_inst_n_7,
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(8 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(0) => S_AXI_RDATA(0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WSTRB(0) => S_AXI_WSTRB(0),
      S_AXI_WVALID => S_AXI_WVALID,
      aw_en_reg => aw_en_reg,
      aw_en_reg_0 => aw_en_reg_0,
      axi_arready_reg => axi_arready_reg,
      axi_awready_reg => axi_awready_reg,
      axi_bvalid_reg => axi_bvalid_reg,
      \axi_rdata[0]_i_2\ => \^reg_rddin_reg[0][0]_0\,
      \axi_rdata_reg[0]\ => \axi_rdata_reg[0]\,
      \axi_rdata_reg[0]_0\ => \axi_rdata_reg[0]_0\,
      axi_rvalid_reg => axi_rvalid_reg,
      axi_wready_reg => axi_wready_reg,
      \fifo_tail0__18\ => \fifo_tail0__18\,
      mem_rddout_i(0) => mem_rddout_i(0),
      \reg1_reg[2]\ => \^configclk_reg_0\,
      \reg1_reg[2]_0\ => \reg1[3]_i_3_n_0\
    );
\clk_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clk_counter_reg[2]_0\(0),
      O => clk_counter(0)
    );
\clk_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^clk_counter_reg[2]_0\(0),
      I1 => \^clk_counter_reg[2]_0\(1),
      O => clk_counter(1)
    );
\clk_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000FDFF"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[6]\,
      I1 => \clk_counter_reg_n_0_[3]\,
      I2 => \clk_counter_reg_n_0_[4]\,
      I3 => \clk_counter_reg_n_0_[5]\,
      I4 => \clk_counter[6]_i_2_n_0\,
      I5 => \^clk_counter_reg[2]_0\(2),
      O => clk_counter(2)
    );
\clk_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^clk_counter_reg[2]_0\(2),
      I1 => \^clk_counter_reg[2]_0\(0),
      I2 => \^clk_counter_reg[2]_0\(1),
      I3 => \clk_counter_reg_n_0_[3]\,
      O => clk_counter(3)
    );
\clk_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[3]\,
      I1 => \^clk_counter_reg[2]_0\(1),
      I2 => \^clk_counter_reg[2]_0\(0),
      I3 => \^clk_counter_reg[2]_0\(2),
      I4 => \clk_counter_reg_n_0_[4]\,
      O => clk_counter(4)
    );
\clk_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC3CCCCCC4"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[6]\,
      I1 => \clk_counter_reg_n_0_[5]\,
      I2 => \^clk_counter_reg[2]_0\(2),
      I3 => \clk_counter_reg_n_0_[3]\,
      I4 => \clk_counter_reg_n_0_[4]\,
      I5 => \clk_counter[6]_i_2_n_0\,
      O => clk_counter(5)
    );
\clk_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAA2"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[6]\,
      I1 => \clk_counter_reg_n_0_[5]\,
      I2 => \clk_counter[6]_i_2_n_0\,
      I3 => \^clk_counter_reg[2]_0\(2),
      I4 => \clk_counter_reg_n_0_[4]\,
      I5 => \clk_counter_reg_n_0_[3]\,
      O => clk_counter(6)
    );
\clk_counter[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^clk_counter_reg[2]_0\(0),
      I1 => \^clk_counter_reg[2]_0\(1),
      O => \clk_counter[6]_i_2_n_0\
    );
\clk_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \axi_rdata_reg[0]\,
      D => clk_counter(0),
      Q => \^clk_counter_reg[2]_0\(0)
    );
\clk_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \axi_rdata_reg[0]\,
      D => clk_counter(1),
      Q => \^clk_counter_reg[2]_0\(1)
    );
\clk_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \axi_rdata_reg[0]\,
      D => clk_counter(2),
      Q => \^clk_counter_reg[2]_0\(2)
    );
\clk_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \axi_rdata_reg[0]\,
      D => clk_counter(3),
      Q => \clk_counter_reg_n_0_[3]\
    );
\clk_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \axi_rdata_reg[0]\,
      D => clk_counter(4),
      Q => \clk_counter_reg_n_0_[4]\
    );
\clk_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \axi_rdata_reg[0]\,
      D => clk_counter(5),
      Q => \clk_counter_reg_n_0_[5]\
    );
\clk_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \axi_rdata_reg[0]\,
      D => clk_counter(6),
      Q => \clk_counter_reg_n_0_[6]\
    );
\fifo[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(3),
      I2 => \fifo[0][3]_i_2_n_0\,
      I3 => \fifo[0][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[0][3]_i_1_n_0\
    );
\fifo[0][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_head_reg(0),
      I1 => fifo_head_reg(1),
      O => \fifo[0][3]_i_2_n_0\
    );
\fifo[0][3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => fifo_head_reg(5),
      I1 => fifo_head_reg(4),
      I2 => fifo_head_reg(6),
      O => \fifo[0][3]_i_3_n_0\
    );
\fifo[10][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \fifo[8][3]_i_2_n_0\,
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(3),
      I3 => \fifo[2][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[10][3]_i_1_n_0\
    );
\fifo[11][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(4),
      I2 => \fifo[11][3]_i_2_n_0\,
      I3 => \fifo[1][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[11][3]_i_1_n_0\
    );
\fifo[11][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => fifo_head_reg(1),
      I1 => fifo_head_reg(3),
      O => \fifo[11][3]_i_2_n_0\
    );
\fifo[12][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \fifo[9][3]_i_2_n_0\,
      I1 => fifo_head_reg(0),
      I2 => fifo_head_reg(3),
      I3 => \fifo[4][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[12][3]_i_1_n_0\
    );
\fifo[13][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[9][3]_i_2_n_0\,
      I1 => fifo_head_reg(3),
      I2 => fifo_head_reg(2),
      I3 => \fifo[1][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[13][3]_i_1_n_0\
    );
\fifo[14][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[8][3]_i_2_n_0\,
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(3),
      I3 => \fifo[4][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[14][3]_i_1_n_0\
    );
\fifo[15][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \fifo[15][3]_i_2_n_0\,
      I1 => fifo_head_reg(5),
      I2 => fifo_head_reg(4),
      I3 => fifo_head_reg(6),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[15][3]_i_1_n_0\
    );
\fifo[15][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(3),
      I2 => fifo_head_reg(0),
      I3 => fifo_head_reg(1),
      O => \fifo[15][3]_i_2_n_0\
    );
\fifo[16][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \fifo[16][3]_i_2_n_0\,
      I1 => \fifo[16][3]_i_3_n_0\,
      I2 => fifo_head_reg(4),
      I3 => \fifo[16][3]_i_4_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[16][3]_i_1_n_0\
    );
\fifo[16][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_head_reg(0),
      I1 => fifo_head_reg(3),
      O => \fifo[16][3]_i_2_n_0\
    );
\fifo[16][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(1),
      O => \fifo[16][3]_i_3_n_0\
    );
\fifo[16][3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_head_reg(5),
      I1 => fifo_head_reg(6),
      O => \fifo[16][3]_i_4_n_0\
    );
\fifo[17][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \fifo[17][3]_i_2_n_0\,
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(4),
      I3 => \fifo[1][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[17][3]_i_1_n_0\
    );
\fifo[17][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_head_reg(1),
      I1 => fifo_head_reg(3),
      O => \fifo[17][3]_i_2_n_0\
    );
\fifo[18][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \fifo[16][3]_i_2_n_0\,
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(4),
      I3 => \fifo[2][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[18][3]_i_1_n_0\
    );
\fifo[19][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(3),
      I2 => \fifo[19][3]_i_2_n_0\,
      I3 => \fifo[1][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[19][3]_i_1_n_0\
    );
\fifo[19][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => fifo_head_reg(1),
      I1 => fifo_head_reg(4),
      O => \fifo[19][3]_i_2_n_0\
    );
\fifo[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \fifo[1][3]_i_2_n_0\,
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(2),
      I3 => \fifo[1][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[1][3]_i_1_n_0\
    );
\fifo[1][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_head_reg(4),
      I1 => fifo_head_reg(3),
      O => \fifo[1][3]_i_2_n_0\
    );
\fifo[1][3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => fifo_head_reg(0),
      I1 => fifo_head_reg(6),
      I2 => fifo_head_reg(5),
      O => \fifo[1][3]_i_3_n_0\
    );
\fifo[20][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \fifo[17][3]_i_2_n_0\,
      I1 => fifo_head_reg(0),
      I2 => fifo_head_reg(4),
      I3 => \fifo[4][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[20][3]_i_1_n_0\
    );
\fifo[21][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[17][3]_i_2_n_0\,
      I1 => fifo_head_reg(4),
      I2 => fifo_head_reg(2),
      I3 => \fifo[1][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[21][3]_i_1_n_0\
    );
\fifo[22][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[16][3]_i_2_n_0\,
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(4),
      I3 => \fifo[4][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[22][3]_i_1_n_0\
    );
\fifo[23][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \fifo[23][3]_i_2_n_0\,
      I1 => fifo_head_reg(5),
      I2 => fifo_head_reg(3),
      I3 => fifo_head_reg(6),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[23][3]_i_1_n_0\
    );
\fifo[23][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(4),
      I2 => fifo_head_reg(0),
      I3 => fifo_head_reg(1),
      O => \fifo[23][3]_i_2_n_0\
    );
\fifo[24][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => fifo_head_reg(0),
      I1 => fifo_head_reg(1),
      I2 => \fifo[24][3]_i_2_n_0\,
      I3 => \fifo[8][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[24][3]_i_1_n_0\
    );
\fifo[24][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_head_reg(4),
      I1 => fifo_head_reg(2),
      O => \fifo[24][3]_i_2_n_0\
    );
\fifo[25][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[16][3]_i_3_n_0\,
      I1 => fifo_head_reg(3),
      I2 => fifo_head_reg(4),
      I3 => \fifo[1][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[25][3]_i_1_n_0\
    );
\fifo[26][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(0),
      I2 => \fifo[19][3]_i_2_n_0\,
      I3 => \fifo[8][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[26][3]_i_1_n_0\
    );
\fifo[27][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \fifo[27][3]_i_2_n_0\,
      I1 => fifo_head_reg(5),
      I2 => fifo_head_reg(2),
      I3 => fifo_head_reg(6),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[27][3]_i_1_n_0\
    );
\fifo[27][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => fifo_head_reg(3),
      I1 => fifo_head_reg(4),
      I2 => fifo_head_reg(0),
      I3 => fifo_head_reg(1),
      O => \fifo[27][3]_i_2_n_0\
    );
\fifo[28][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => fifo_head_reg(0),
      I1 => fifo_head_reg(1),
      I2 => \fifo[28][3]_i_2_n_0\,
      I3 => \fifo[8][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[28][3]_i_1_n_0\
    );
\fifo[28][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => fifo_head_reg(4),
      I1 => fifo_head_reg(2),
      O => \fifo[28][3]_i_2_n_0\
    );
\fifo[29][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \fifo[28][3]_i_2_n_0\,
      I1 => \fifo[29][3]_i_2_n_0\,
      I2 => fifo_head_reg(5),
      I3 => \fifo[29][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[29][3]_i_1_n_0\
    );
\fifo[29][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => fifo_head_reg(3),
      I1 => fifo_head_reg(0),
      O => \fifo[29][3]_i_2_n_0\
    );
\fifo[29][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fifo_head_reg(6),
      I1 => fifo_head_reg(1),
      O => \fifo[29][3]_i_3_n_0\
    );
\fifo[2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \fifo[1][3]_i_2_n_0\,
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(0),
      I3 => \fifo[2][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[2][3]_i_1_n_0\
    );
\fifo[2][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => fifo_head_reg(1),
      I1 => fifo_head_reg(6),
      I2 => fifo_head_reg(5),
      O => \fifo[2][3]_i_2_n_0\
    );
\fifo[30][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \fifo[28][3]_i_2_n_0\,
      I1 => \fifo[11][3]_i_2_n_0\,
      I2 => fifo_head_reg(5),
      I3 => \fifo[30][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[30][3]_i_1_n_0\
    );
\fifo[30][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fifo_head_reg(6),
      I1 => fifo_head_reg(0),
      O => \fifo[30][3]_i_2_n_0\
    );
\fifo[31][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \fifo[15][3]_i_2_n_0\,
      I1 => fifo_head_reg(5),
      I2 => fifo_head_reg(4),
      I3 => fifo_head_reg(6),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[31][3]_i_1_n_0\
    );
\fifo[32][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \fifo[32][3]_i_2_n_0\,
      I1 => fifo_head_reg(5),
      I2 => fifo_head_reg(6),
      I3 => fifo_head_reg(0),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[32][3]_i_1_n_0\
    );
\fifo[32][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => fifo_head_reg(3),
      I1 => fifo_head_reg(4),
      I2 => fifo_head_reg(1),
      I3 => fifo_head_reg(2),
      O => \fifo[32][3]_i_2_n_0\
    );
\fifo[33][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \fifo[33][3]_i_2_n_0\,
      I1 => fifo_head_reg(0),
      I2 => fifo_head_reg(6),
      I3 => fifo_head_reg(1),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[33][3]_i_1_n_0\
    );
\fifo[33][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => fifo_head_reg(3),
      I1 => fifo_head_reg(4),
      I2 => fifo_head_reg(2),
      I3 => fifo_head_reg(5),
      O => \fifo[33][3]_i_2_n_0\
    );
\fifo[34][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \fifo[33][3]_i_2_n_0\,
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(6),
      I3 => fifo_head_reg(0),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[34][3]_i_1_n_0\
    );
\fifo[35][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \fifo[35][3]_i_2_n_0\,
      I1 => fifo_head_reg(0),
      I2 => fifo_head_reg(6),
      I3 => fifo_head_reg(2),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[35][3]_i_1_n_0\
    );
\fifo[35][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => fifo_head_reg(3),
      I1 => fifo_head_reg(4),
      I2 => fifo_head_reg(1),
      I3 => fifo_head_reg(5),
      O => \fifo[35][3]_i_2_n_0\
    );
\fifo[36][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \fifo[36][3]_i_2_n_0\,
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(6),
      I3 => fifo_head_reg(1),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[36][3]_i_1_n_0\
    );
\fifo[36][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => fifo_head_reg(3),
      I1 => fifo_head_reg(4),
      I2 => fifo_head_reg(0),
      I3 => fifo_head_reg(5),
      O => \fifo[36][3]_i_2_n_0\
    );
\fifo[37][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[1][3]_i_2_n_0\,
      I1 => \fifo[37][3]_i_2_n_0\,
      I2 => fifo_head_reg(0),
      I3 => \fifo[29][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[37][3]_i_1_n_0\
    );
\fifo[37][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_head_reg(5),
      I1 => fifo_head_reg(2),
      O => \fifo[37][3]_i_2_n_0\
    );
\fifo[38][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \fifo[35][3]_i_2_n_0\,
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(6),
      I3 => fifo_head_reg(0),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[38][3]_i_1_n_0\
    );
\fifo[39][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \fifo[39][3]_i_2_n_0\,
      I1 => \fifo[39][3]_i_3_n_0\,
      I2 => fifo_head_reg(3),
      I3 => \fifo[39][3]_i_4_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[39][3]_i_1_n_0\
    );
\fifo[39][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(5),
      O => \fifo[39][3]_i_2_n_0\
    );
\fifo[39][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => fifo_head_reg(1),
      I1 => fifo_head_reg(0),
      O => \fifo[39][3]_i_3_n_0\
    );
\fifo[39][3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fifo_head_reg(6),
      I1 => fifo_head_reg(4),
      O => \fifo[39][3]_i_4_n_0\
    );
\fifo[3][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \fifo[1][3]_i_2_n_0\,
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(1),
      I3 => \fifo[1][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[3][3]_i_1_n_0\
    );
\fifo[40][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \fifo[8][3]_i_2_n_0\,
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(5),
      I3 => \fifo[40][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[40][3]_i_1_n_0\
    );
\fifo[40][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => fifo_head_reg(3),
      I1 => fifo_head_reg(6),
      I2 => fifo_head_reg(1),
      O => \fifo[40][3]_i_2_n_0\
    );
\fifo[41][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[9][3]_i_2_n_0\,
      I1 => fifo_head_reg(3),
      I2 => fifo_head_reg(5),
      I3 => \fifo[41][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[41][3]_i_1_n_0\
    );
\fifo[41][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => fifo_head_reg(0),
      I1 => fifo_head_reg(6),
      I2 => fifo_head_reg(2),
      O => \fifo[41][3]_i_2_n_0\
    );
\fifo[42][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[8][3]_i_2_n_0\,
      I1 => \fifo[42][3]_i_2_n_0\,
      I2 => fifo_head_reg(3),
      I3 => \fifo[42][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[42][3]_i_1_n_0\
    );
\fifo[42][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_head_reg(5),
      I1 => fifo_head_reg(1),
      O => \fifo[42][3]_i_2_n_0\
    );
\fifo[42][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fifo_head_reg(6),
      I1 => fifo_head_reg(2),
      O => \fifo[42][3]_i_3_n_0\
    );
\fifo[43][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \fifo[43][3]_i_2_n_0\,
      I1 => \fifo[39][3]_i_3_n_0\,
      I2 => fifo_head_reg(2),
      I3 => \fifo[39][3]_i_4_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[43][3]_i_1_n_0\
    );
\fifo[43][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_head_reg(5),
      I1 => fifo_head_reg(3),
      O => \fifo[43][3]_i_2_n_0\
    );
\fifo[44][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[8][3]_i_2_n_0\,
      I1 => \fifo[37][3]_i_2_n_0\,
      I2 => fifo_head_reg(3),
      I3 => \fifo[29][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[44][3]_i_1_n_0\
    );
\fifo[45][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \fifo[39][3]_i_2_n_0\,
      I1 => \fifo[29][3]_i_2_n_0\,
      I2 => fifo_head_reg(1),
      I3 => \fifo[39][3]_i_4_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[45][3]_i_1_n_0\
    );
\fifo[46][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \fifo[39][3]_i_2_n_0\,
      I1 => \fifo[11][3]_i_2_n_0\,
      I2 => fifo_head_reg(0),
      I3 => \fifo[39][3]_i_4_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[46][3]_i_1_n_0\
    );
\fifo[47][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \fifo[15][3]_i_2_n_0\,
      I1 => fifo_head_reg(4),
      I2 => fifo_head_reg(5),
      I3 => fifo_head_reg(6),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[47][3]_i_1_n_0\
    );
\fifo[48][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \fifo[16][3]_i_2_n_0\,
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(5),
      I3 => \fifo[48][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[48][3]_i_1_n_0\
    );
\fifo[48][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => fifo_head_reg(4),
      I1 => fifo_head_reg(6),
      I2 => fifo_head_reg(1),
      O => \fifo[48][3]_i_2_n_0\
    );
\fifo[49][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[17][3]_i_2_n_0\,
      I1 => fifo_head_reg(4),
      I2 => fifo_head_reg(5),
      I3 => \fifo[41][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[49][3]_i_1_n_0\
    );
\fifo[4][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \fifo[1][3]_i_2_n_0\,
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(0),
      I3 => \fifo[4][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[4][3]_i_1_n_0\
    );
\fifo[4][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(6),
      I2 => fifo_head_reg(5),
      O => \fifo[4][3]_i_2_n_0\
    );
\fifo[50][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[16][3]_i_2_n_0\,
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(5),
      I3 => \fifo[50][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[50][3]_i_1_n_0\
    );
\fifo[50][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => fifo_head_reg(4),
      I1 => fifo_head_reg(6),
      I2 => fifo_head_reg(2),
      O => \fifo[50][3]_i_2_n_0\
    );
\fifo[51][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \fifo[51][3]_i_2_n_0\,
      I1 => \fifo[39][3]_i_3_n_0\,
      I2 => fifo_head_reg(3),
      I3 => \fifo[42][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[51][3]_i_1_n_0\
    );
\fifo[51][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_head_reg(5),
      I1 => fifo_head_reg(4),
      O => \fifo[51][3]_i_2_n_0\
    );
\fifo[52][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[16][3]_i_2_n_0\,
      I1 => \fifo[37][3]_i_2_n_0\,
      I2 => fifo_head_reg(4),
      I3 => \fifo[29][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[52][3]_i_1_n_0\
    );
\fifo[53][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \fifo[39][3]_i_2_n_0\,
      I1 => \fifo[53][3]_i_2_n_0\,
      I2 => fifo_head_reg(3),
      I3 => \fifo[29][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[53][3]_i_1_n_0\
    );
\fifo[53][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => fifo_head_reg(4),
      I1 => fifo_head_reg(0),
      O => \fifo[53][3]_i_2_n_0\
    );
\fifo[54][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \fifo[39][3]_i_2_n_0\,
      I1 => \fifo[19][3]_i_2_n_0\,
      I2 => fifo_head_reg(3),
      I3 => \fifo[30][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[54][3]_i_1_n_0\
    );
\fifo[55][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \fifo[23][3]_i_2_n_0\,
      I1 => fifo_head_reg(3),
      I2 => fifo_head_reg(5),
      I3 => fifo_head_reg(6),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[55][3]_i_1_n_0\
    );
\fifo[56][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[0][3]_i_2_n_0\,
      I1 => fifo_head_reg(3),
      I2 => fifo_head_reg(5),
      I3 => \fifo[50][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[56][3]_i_1_n_0\
    );
\fifo[57][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \fifo[43][3]_i_2_n_0\,
      I1 => \fifo[53][3]_i_2_n_0\,
      I2 => fifo_head_reg(2),
      I3 => \fifo[29][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[57][3]_i_1_n_0\
    );
\fifo[58][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \fifo[43][3]_i_2_n_0\,
      I1 => \fifo[19][3]_i_2_n_0\,
      I2 => fifo_head_reg(2),
      I3 => \fifo[30][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[58][3]_i_1_n_0\
    );
\fifo[59][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \fifo[59][3]_i_2_n_0\,
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(5),
      I3 => fifo_head_reg(6),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[59][3]_i_1_n_0\
    );
\fifo[59][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => fifo_head_reg(4),
      I1 => fifo_head_reg(3),
      I2 => fifo_head_reg(0),
      I3 => fifo_head_reg(1),
      O => \fifo[59][3]_i_2_n_0\
    );
\fifo[5][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \fifo[1][3]_i_2_n_0\,
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(2),
      I3 => \fifo[1][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[5][3]_i_1_n_0\
    );
\fifo[60][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \fifo[39][3]_i_2_n_0\,
      I1 => \fifo[60][3]_i_2_n_0\,
      I2 => fifo_head_reg(1),
      I3 => \fifo[30][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[60][3]_i_1_n_0\
    );
\fifo[60][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => fifo_head_reg(3),
      I1 => fifo_head_reg(4),
      O => \fifo[60][3]_i_2_n_0\
    );
\fifo[61][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \fifo[61][3]_i_2_n_0\,
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(5),
      I3 => fifo_head_reg(6),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[61][3]_i_1_n_0\
    );
\fifo[61][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(3),
      I2 => fifo_head_reg(0),
      I3 => fifo_head_reg(4),
      O => \fifo[61][3]_i_2_n_0\
    );
\fifo[62][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \fifo[62][3]_i_2_n_0\,
      I1 => fifo_head_reg(0),
      I2 => fifo_head_reg(5),
      I3 => fifo_head_reg(6),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[62][3]_i_1_n_0\
    );
\fifo[62][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(3),
      I2 => fifo_head_reg(4),
      I3 => fifo_head_reg(1),
      O => \fifo[62][3]_i_2_n_0\
    );
\fifo[63][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \fifo[15][3]_i_2_n_0\,
      I1 => fifo_head_reg(6),
      I2 => fifo_head_reg(5),
      I3 => fifo_head_reg(4),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[63][3]_i_1_n_0\
    );
\fifo[64][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \fifo[32][3]_i_2_n_0\,
      I1 => fifo_head_reg(6),
      I2 => fifo_head_reg(0),
      I3 => fifo_head_reg(5),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[64][3]_i_1_n_0\
    );
\fifo[65][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \fifo[65][3]_i_2_n_0\,
      I1 => fifo_head_reg(0),
      I2 => fifo_head_reg(1),
      I3 => fifo_head_reg(5),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[65][3]_i_1_n_0\
    );
\fifo[65][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => fifo_head_reg(3),
      I1 => fifo_head_reg(4),
      I2 => fifo_head_reg(2),
      I3 => fifo_head_reg(6),
      O => \fifo[65][3]_i_2_n_0\
    );
\fifo[66][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \fifo[65][3]_i_2_n_0\,
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(0),
      I3 => fifo_head_reg(5),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[66][3]_i_1_n_0\
    );
\fifo[67][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[1][3]_i_2_n_0\,
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(6),
      I3 => \fifo[67][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[67][3]_i_1_n_0\
    );
\fifo[67][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => fifo_head_reg(0),
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(5),
      O => \fifo[67][3]_i_2_n_0\
    );
\fifo[68][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \fifo[1][3]_i_2_n_0\,
      I1 => \fifo[68][3]_i_2_n_0\,
      I2 => fifo_head_reg(2),
      I3 => \fifo[68][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[68][3]_i_1_n_0\
    );
\fifo[68][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_head_reg(6),
      I1 => fifo_head_reg(0),
      O => \fifo[68][3]_i_2_n_0\
    );
\fifo[68][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_head_reg(5),
      I1 => fifo_head_reg(1),
      O => \fifo[68][3]_i_3_n_0\
    );
\fifo[69][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \fifo[1][3]_i_2_n_0\,
      I1 => \fifo[69][3]_i_2_n_0\,
      I2 => fifo_head_reg(0),
      I3 => \fifo[68][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[69][3]_i_1_n_0\
    );
\fifo[69][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_head_reg(6),
      I1 => fifo_head_reg(2),
      O => \fifo[69][3]_i_2_n_0\
    );
\fifo[6][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \fifo[1][3]_i_2_n_0\,
      I1 => fifo_head_reg(0),
      I2 => fifo_head_reg(2),
      I3 => \fifo[2][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[6][3]_i_1_n_0\
    );
\fifo[70][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \fifo[70][3]_i_2_n_0\,
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(0),
      I3 => fifo_head_reg(5),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[70][3]_i_1_n_0\
    );
\fifo[70][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => fifo_head_reg(3),
      I1 => fifo_head_reg(4),
      I2 => fifo_head_reg(1),
      I3 => fifo_head_reg(6),
      O => \fifo[70][3]_i_2_n_0\
    );
\fifo[71][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \fifo[71][3]_i_2_n_0\,
      I1 => \fifo[39][3]_i_3_n_0\,
      I2 => fifo_head_reg(5),
      I3 => \fifo[1][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[71][3]_i_1_n_0\
    );
\fifo[71][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(6),
      O => \fifo[71][3]_i_2_n_0\
    );
\fifo[72][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \fifo[8][3]_i_2_n_0\,
      I1 => \fifo[72][3]_i_2_n_0\,
      I2 => fifo_head_reg(3),
      I3 => \fifo[68][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[72][3]_i_1_n_0\
    );
\fifo[72][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_head_reg(6),
      I1 => fifo_head_reg(2),
      O => \fifo[72][3]_i_2_n_0\
    );
\fifo[73][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[9][3]_i_2_n_0\,
      I1 => fifo_head_reg(3),
      I2 => fifo_head_reg(6),
      I3 => \fifo[67][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[73][3]_i_1_n_0\
    );
\fifo[74][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \fifo[8][3]_i_2_n_0\,
      I1 => \fifo[74][3]_i_2_n_0\,
      I2 => fifo_head_reg(3),
      I3 => \fifo[74][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[74][3]_i_1_n_0\
    );
\fifo[74][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_head_reg(6),
      I1 => fifo_head_reg(1),
      O => \fifo[74][3]_i_2_n_0\
    );
\fifo[74][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_head_reg(5),
      I1 => fifo_head_reg(2),
      O => \fifo[74][3]_i_3_n_0\
    );
\fifo[75][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \fifo[75][3]_i_2_n_0\,
      I1 => \fifo[39][3]_i_3_n_0\,
      I2 => fifo_head_reg(5),
      I3 => \fifo[75][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[75][3]_i_1_n_0\
    );
\fifo[75][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_head_reg(6),
      I1 => fifo_head_reg(3),
      O => \fifo[75][3]_i_2_n_0\
    );
\fifo[75][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(4),
      O => \fifo[75][3]_i_3_n_0\
    );
\fifo[76][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \fifo[8][3]_i_2_n_0\,
      I1 => \fifo[69][3]_i_2_n_0\,
      I2 => fifo_head_reg(3),
      I3 => \fifo[68][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[76][3]_i_1_n_0\
    );
\fifo[77][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \fifo[71][3]_i_2_n_0\,
      I1 => \fifo[29][3]_i_2_n_0\,
      I2 => fifo_head_reg(5),
      I3 => \fifo[9][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[77][3]_i_1_n_0\
    );
\fifo[78][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \fifo[71][3]_i_2_n_0\,
      I1 => \fifo[11][3]_i_2_n_0\,
      I2 => fifo_head_reg(5),
      I3 => \fifo[8][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[78][3]_i_1_n_0\
    );
\fifo[79][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \fifo[15][3]_i_2_n_0\,
      I1 => fifo_head_reg(5),
      I2 => fifo_head_reg(6),
      I3 => fifo_head_reg(4),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[79][3]_i_1_n_0\
    );
\fifo[7][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[1][3]_i_2_n_0\,
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(2),
      I3 => \fifo[1][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[7][3]_i_1_n_0\
    );
\fifo[80][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \fifo[16][3]_i_2_n_0\,
      I1 => \fifo[72][3]_i_2_n_0\,
      I2 => fifo_head_reg(4),
      I3 => \fifo[68][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[80][3]_i_1_n_0\
    );
\fifo[81][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[17][3]_i_2_n_0\,
      I1 => fifo_head_reg(4),
      I2 => fifo_head_reg(6),
      I3 => \fifo[67][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[81][3]_i_1_n_0\
    );
\fifo[82][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[16][3]_i_2_n_0\,
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(6),
      I3 => \fifo[82][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[82][3]_i_1_n_0\
    );
\fifo[82][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => fifo_head_reg(4),
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(5),
      O => \fifo[82][3]_i_2_n_0\
    );
\fifo[83][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \fifo[83][3]_i_2_n_0\,
      I1 => \fifo[39][3]_i_3_n_0\,
      I2 => fifo_head_reg(5),
      I3 => \fifo[83][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[83][3]_i_1_n_0\
    );
\fifo[83][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_head_reg(6),
      I1 => fifo_head_reg(4),
      O => \fifo[83][3]_i_2_n_0\
    );
\fifo[83][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fifo_head_reg(3),
      I1 => fifo_head_reg(2),
      O => \fifo[83][3]_i_3_n_0\
    );
\fifo[84][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \fifo[16][3]_i_2_n_0\,
      I1 => \fifo[69][3]_i_2_n_0\,
      I2 => fifo_head_reg(4),
      I3 => \fifo[68][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[84][3]_i_1_n_0\
    );
\fifo[85][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \fifo[71][3]_i_2_n_0\,
      I1 => \fifo[53][3]_i_2_n_0\,
      I2 => fifo_head_reg(5),
      I3 => \fifo[17][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[85][3]_i_1_n_0\
    );
\fifo[86][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \fifo[71][3]_i_2_n_0\,
      I1 => \fifo[19][3]_i_2_n_0\,
      I2 => fifo_head_reg(5),
      I3 => \fifo[16][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[86][3]_i_1_n_0\
    );
\fifo[87][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \fifo[23][3]_i_2_n_0\,
      I1 => fifo_head_reg(5),
      I2 => fifo_head_reg(6),
      I3 => fifo_head_reg(3),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[87][3]_i_1_n_0\
    );
\fifo[88][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \fifo[0][3]_i_2_n_0\,
      I1 => fifo_head_reg(3),
      I2 => fifo_head_reg(6),
      I3 => \fifo[82][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[88][3]_i_1_n_0\
    );
\fifo[89][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \fifo[75][3]_i_2_n_0\,
      I1 => \fifo[53][3]_i_2_n_0\,
      I2 => fifo_head_reg(5),
      I3 => \fifo[16][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[89][3]_i_1_n_0\
    );
\fifo[8][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \fifo[8][3]_i_2_n_0\,
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(2),
      I3 => \fifo[8][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[8][3]_i_1_n_0\
    );
\fifo[8][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_head_reg(4),
      I1 => fifo_head_reg(0),
      O => \fifo[8][3]_i_2_n_0\
    );
\fifo[8][3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => fifo_head_reg(3),
      I1 => fifo_head_reg(6),
      I2 => fifo_head_reg(5),
      O => \fifo[8][3]_i_3_n_0\
    );
\fifo[90][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \fifo[75][3]_i_2_n_0\,
      I1 => \fifo[19][3]_i_2_n_0\,
      I2 => fifo_head_reg(5),
      I3 => \fifo[90][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[90][3]_i_1_n_0\
    );
\fifo[90][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(0),
      O => \fifo[90][3]_i_2_n_0\
    );
\fifo[91][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \fifo[59][3]_i_2_n_0\,
      I1 => fifo_head_reg(5),
      I2 => fifo_head_reg(6),
      I3 => fifo_head_reg(2),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[91][3]_i_1_n_0\
    );
\fifo[92][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \fifo[71][3]_i_2_n_0\,
      I1 => \fifo[60][3]_i_2_n_0\,
      I2 => fifo_head_reg(5),
      I3 => \fifo[0][3]_i_2_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[92][3]_i_1_n_0\
    );
\fifo[93][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \fifo[61][3]_i_2_n_0\,
      I1 => fifo_head_reg(5),
      I2 => fifo_head_reg(6),
      I3 => fifo_head_reg(1),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[93][3]_i_1_n_0\
    );
\fifo[94][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \fifo[62][3]_i_2_n_0\,
      I1 => fifo_head_reg(5),
      I2 => fifo_head_reg(6),
      I3 => fifo_head_reg(0),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[94][3]_i_1_n_0\
    );
\fifo[95][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \fifo[15][3]_i_2_n_0\,
      I1 => fifo_head_reg(5),
      I2 => fifo_head_reg(6),
      I3 => fifo_head_reg(4),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[95][3]_i_1_n_0\
    );
\fifo[96][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \fifo[33][3]_i_2_n_0\,
      I1 => fifo_head_reg(6),
      I2 => fifo_head_reg(0),
      I3 => fifo_head_reg(1),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[96][3]_i_1_n_0\
    );
\fifo[97][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \fifo[1][3]_i_2_n_0\,
      I1 => \fifo[97][3]_i_2_n_0\,
      I2 => fifo_head_reg(0),
      I3 => \fifo[16][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[97][3]_i_1_n_0\
    );
\fifo[97][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_head_reg(5),
      I1 => fifo_head_reg(6),
      O => \fifo[97][3]_i_2_n_0\
    );
\fifo[98][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \fifo[35][3]_i_2_n_0\,
      I1 => fifo_head_reg(6),
      I2 => fifo_head_reg(2),
      I3 => fifo_head_reg(0),
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[98][3]_i_1_n_0\
    );
\fifo[99][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \fifo[97][3]_i_2_n_0\,
      I1 => \fifo[39][3]_i_3_n_0\,
      I2 => fifo_head_reg(3),
      I3 => \fifo[75][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[99][3]_i_1_n_0\
    );
\fifo[9][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \fifo[9][3]_i_2_n_0\,
      I1 => fifo_head_reg(2),
      I2 => fifo_head_reg(3),
      I3 => \fifo[1][3]_i_3_n_0\,
      I4 => S_AXI_ARESETN,
      I5 => prev_reg_wrdout0,
      O => \fifo[9][3]_i_1_n_0\
    );
\fifo[9][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_head_reg(4),
      I1 => fifo_head_reg(1),
      O => \fifo[9][3]_i_2_n_0\
    );
\fifo_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => \fifo_count_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => fifo_count(0)
    );
\fifo_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFFFFD00000002"
    )
        port map (
      I0 => \fifo_tail0__18\,
      I1 => \^configclk_reg_0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \fifo_count[1]_i_2_n_0\,
      O => fifo_count(1)
    );
\fifo_count[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \fifo_count_reg_n_0_[0]\,
      I1 => \fifo_count_reg_n_0_[1]\,
      O => \fifo_count[1]_i_2_n_0\
    );
\fifo_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFE0002"
    )
        port map (
      I0 => \fifo_count[2]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \fifo_count[2]_i_3_n_0\,
      O => fifo_count(2)
    );
\fifo_count[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFBB004"
    )
        port map (
      I0 => \^configclk_reg_0\,
      I1 => \fifo_tail0__18\,
      I2 => \fifo_count_reg_n_0_[0]\,
      I3 => \fifo_count_reg_n_0_[1]\,
      I4 => \fifo_count_reg_n_0_[2]\,
      O => \fifo_count[2]_i_2_n_0\
    );
\fifo_count[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \fifo_count_reg_n_0_[0]\,
      I1 => \fifo_count_reg_n_0_[1]\,
      I2 => \fifo_count_reg_n_0_[2]\,
      O => \fifo_count[2]_i_3_n_0\
    );
\fifo_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFE0002"
    )
        port map (
      I0 => \fifo_count[3]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \fifo_count[3]_i_3_n_0\,
      O => fifo_count(3)
    );
\fifo_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFFFFBB0000004"
    )
        port map (
      I0 => \^configclk_reg_0\,
      I1 => \fifo_tail0__18\,
      I2 => \fifo_count_reg_n_0_[1]\,
      I3 => \fifo_count_reg_n_0_[0]\,
      I4 => \fifo_count_reg_n_0_[2]\,
      I5 => \fifo_count_reg_n_0_[3]\,
      O => \fifo_count[3]_i_2_n_0\
    );
\fifo_count[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \fifo_count_reg_n_0_[1]\,
      I1 => \fifo_count_reg_n_0_[0]\,
      I2 => \fifo_count_reg_n_0_[2]\,
      I3 => \fifo_count_reg_n_0_[3]\,
      O => \fifo_count[3]_i_3_n_0\
    );
\fifo_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFFFFE00000002"
    )
        port map (
      I0 => \fifo_count[4]_i_2_n_0\,
      I1 => \^configclk_reg_0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \fifo_count[4]_i_3_n_0\,
      O => fifo_count(4)
    );
\fifo_count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFD40000002"
    )
        port map (
      I0 => \fifo_tail0__18\,
      I1 => \fifo_count_reg_n_0_[2]\,
      I2 => \fifo_count_reg_n_0_[0]\,
      I3 => \fifo_count_reg_n_0_[1]\,
      I4 => \fifo_count_reg_n_0_[3]\,
      I5 => \fifo_count_reg_n_0_[4]\,
      O => \fifo_count[4]_i_2_n_0\
    );
\fifo_count[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \fifo_count_reg_n_0_[2]\,
      I1 => \fifo_count_reg_n_0_[0]\,
      I2 => \fifo_count_reg_n_0_[1]\,
      I3 => \fifo_count_reg_n_0_[3]\,
      I4 => \fifo_count_reg_n_0_[4]\,
      O => \fifo_count[4]_i_3_n_0\
    );
\fifo_count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFE0002"
    )
        port map (
      I0 => \fifo_count[5]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \fifo_count[5]_i_3_n_0\,
      O => fifo_count(5)
    );
\fifo_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBFF4100"
    )
        port map (
      I0 => \^configclk_reg_0\,
      I1 => \fifo_count[6]_i_5_n_0\,
      I2 => \fifo_count_reg_n_0_[5]\,
      I3 => \fifo_tail0__18\,
      I4 => \fifo_count[5]_i_3_n_0\,
      O => \fifo_count[5]_i_2_n_0\
    );
\fifo_count[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \fifo_count_reg_n_0_[3]\,
      I1 => \fifo_count_reg_n_0_[1]\,
      I2 => \fifo_count_reg_n_0_[0]\,
      I3 => \fifo_count_reg_n_0_[2]\,
      I4 => \fifo_count_reg_n_0_[4]\,
      I5 => \fifo_count_reg_n_0_[5]\,
      O => \fifo_count[5]_i_3_n_0\
    );
\fifo_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFFFFF00000002"
    )
        port map (
      I0 => \fifo_tail0__18\,
      I1 => \^configclk_reg_0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => prev_reg_wrdout0,
      O => \fifo_count[6]_i_1_n_0\
    );
\fifo_count[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFE0002"
    )
        port map (
      I0 => \fifo_count[6]_i_3_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \fifo_count[6]_i_4_n_0\,
      O => fifo_count(6)
    );
\fifo_count[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEABFFFF54010000"
    )
        port map (
      I0 => \^configclk_reg_0\,
      I1 => \fifo_count_reg_n_0_[5]\,
      I2 => \fifo_count[6]_i_5_n_0\,
      I3 => \fifo_count_reg_n_0_[6]\,
      I4 => \fifo_tail0__18\,
      I5 => \fifo_count[6]_i_4_n_0\,
      O => \fifo_count[6]_i_3_n_0\
    );
\fifo_count[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \fifo_count[6]_i_6_n_0\,
      I1 => \fifo_count_reg_n_0_[5]\,
      I2 => \fifo_count_reg_n_0_[6]\,
      O => \fifo_count[6]_i_4_n_0\
    );
\fifo_count[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \fifo_count_reg_n_0_[3]\,
      I1 => \fifo_count_reg_n_0_[1]\,
      I2 => \fifo_count_reg_n_0_[0]\,
      I3 => \fifo_count_reg_n_0_[2]\,
      I4 => \fifo_count_reg_n_0_[4]\,
      O => \fifo_count[6]_i_5_n_0\
    );
\fifo_count[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \fifo_count_reg_n_0_[4]\,
      I1 => \fifo_count_reg_n_0_[2]\,
      I2 => \fifo_count_reg_n_0_[0]\,
      I3 => \fifo_count_reg_n_0_[1]\,
      I4 => \fifo_count_reg_n_0_[3]\,
      O => \fifo_count[6]_i_6_n_0\
    );
\fifo_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_count[6]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => fifo_count(0),
      Q => \fifo_count_reg_n_0_[0]\
    );
\fifo_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_count[6]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => fifo_count(1),
      Q => \fifo_count_reg_n_0_[1]\
    );
\fifo_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_count[6]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => fifo_count(2),
      Q => \fifo_count_reg_n_0_[2]\
    );
\fifo_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_count[6]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => fifo_count(3),
      Q => \fifo_count_reg_n_0_[3]\
    );
\fifo_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_count[6]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => fifo_count(4),
      Q => \fifo_count_reg_n_0_[4]\
    );
\fifo_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_count[6]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => fifo_count(5),
      Q => \fifo_count_reg_n_0_[5]\
    );
\fifo_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_count[6]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => fifo_count(6),
      Q => \fifo_count_reg_n_0_[6]\
    );
\fifo_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_data[0]_i_2_n_0\,
      I1 => \fifo_data[0]_i_3_n_0\,
      I2 => \fifo_data[3]_i_5_n_0\,
      I3 => \fifo_data_reg[0]_i_4_n_0\,
      I4 => \fifo_data[3]_i_7_n_0\,
      I5 => \fifo_data_reg[0]_i_5_n_0\,
      O => \fifo_data[0]_i_1_n_0\
    );
\fifo_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_data_reg[0]_i_6_n_0\,
      I1 => \fifo_data_reg[0]_i_7_n_0\,
      I2 => fifo_tail_reg(5),
      I3 => \fifo_data_reg[0]_i_8_n_0\,
      I4 => fifo_tail_reg(4),
      I5 => \fifo_data_reg[0]_i_9_n_0\,
      O => \fifo_data[0]_i_2_n_0\
    );
\fifo_data[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[83]_83\(0),
      I1 => \fifo_reg[82]_82\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[81]_81\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[80]_80\(0),
      O => \fifo_data[0]_i_22_n_0\
    );
\fifo_data[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[87]_87\(0),
      I1 => \fifo_reg[86]_86\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[85]_85\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[84]_84\(0),
      O => \fifo_data[0]_i_23_n_0\
    );
\fifo_data[0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[91]_91\(0),
      I1 => \fifo_reg[90]_90\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[89]_89\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[88]_88\(0),
      O => \fifo_data[0]_i_24_n_0\
    );
\fifo_data[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[95]_95\(0),
      I1 => \fifo_reg[94]_94\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[93]_93\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[92]_92\(0),
      O => \fifo_data[0]_i_25_n_0\
    );
\fifo_data[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[67]_67\(0),
      I1 => \fifo_reg[66]_66\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[65]_65\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[64]_64\(0),
      O => \fifo_data[0]_i_26_n_0\
    );
\fifo_data[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[71]_71\(0),
      I1 => \fifo_reg[70]_70\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[69]_69\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[68]_68\(0),
      O => \fifo_data[0]_i_27_n_0\
    );
\fifo_data[0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[75]_75\(0),
      I1 => \fifo_reg[74]_74\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[73]_73\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[72]_72\(0),
      O => \fifo_data[0]_i_28_n_0\
    );
\fifo_data[0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[79]_79\(0),
      I1 => \fifo_reg[78]_78\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[77]_77\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[76]_76\(0),
      O => \fifo_data[0]_i_29_n_0\
    );
\fifo_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[99]_99\(0),
      I1 => \fifo_reg[98]_98\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[97]_97\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[96]_96\(0),
      O => \fifo_data[0]_i_3_n_0\
    );
\fifo_data[0]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[51]_51\(0),
      I1 => \fifo_reg[50]_50\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[49]_49\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[48]_48\(0),
      O => \fifo_data[0]_i_30_n_0\
    );
\fifo_data[0]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[55]_55\(0),
      I1 => \fifo_reg[54]_54\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[53]_53\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[52]_52\(0),
      O => \fifo_data[0]_i_31_n_0\
    );
\fifo_data[0]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[59]_59\(0),
      I1 => \fifo_reg[58]_58\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[57]_57\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[56]_56\(0),
      O => \fifo_data[0]_i_32_n_0\
    );
\fifo_data[0]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[63]_63\(0),
      I1 => \fifo_reg[62]_62\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[61]_61\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[60]_60\(0),
      O => \fifo_data[0]_i_33_n_0\
    );
\fifo_data[0]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[35]_35\(0),
      I1 => \fifo_reg[34]_34\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[33]_33\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[32]_32\(0),
      O => \fifo_data[0]_i_34_n_0\
    );
\fifo_data[0]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[39]_39\(0),
      I1 => \fifo_reg[38]_38\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[37]_37\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[36]_36\(0),
      O => \fifo_data[0]_i_35_n_0\
    );
\fifo_data[0]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[43]_43\(0),
      I1 => \fifo_reg[42]_42\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[41]_41\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[40]_40\(0),
      O => \fifo_data[0]_i_36_n_0\
    );
\fifo_data[0]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[47]_47\(0),
      I1 => \fifo_reg[46]_46\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[45]_45\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[44]_44\(0),
      O => \fifo_data[0]_i_37_n_0\
    );
\fifo_data[0]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[19]_19\(0),
      I1 => \fifo_reg[18]_18\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[17]_17\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[16]_16\(0),
      O => \fifo_data[0]_i_38_n_0\
    );
\fifo_data[0]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[23]_23\(0),
      I1 => \fifo_reg[22]_22\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[21]_21\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[20]_20\(0),
      O => \fifo_data[0]_i_39_n_0\
    );
\fifo_data[0]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[27]_27\(0),
      I1 => \fifo_reg[26]_26\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[25]_25\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[24]_24\(0),
      O => \fifo_data[0]_i_40_n_0\
    );
\fifo_data[0]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[31]_31\(0),
      I1 => \fifo_reg[30]_30\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[29]_29\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[28]_28\(0),
      O => \fifo_data[0]_i_41_n_0\
    );
\fifo_data[0]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[3]_3\(0),
      I1 => \fifo_reg[2]_2\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[1]_1\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[0]_0\(0),
      O => \fifo_data[0]_i_42_n_0\
    );
\fifo_data[0]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[7]_7\(0),
      I1 => \fifo_reg[6]_6\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[5]_5\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[4]_4\(0),
      O => \fifo_data[0]_i_43_n_0\
    );
\fifo_data[0]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[11]_11\(0),
      I1 => \fifo_reg[10]_10\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[9]_9\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[8]_8\(0),
      O => \fifo_data[0]_i_44_n_0\
    );
\fifo_data[0]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[15]_15\(0),
      I1 => \fifo_reg[14]_14\(0),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[13]_13\(0),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[12]_12\(0),
      O => \fifo_data[0]_i_45_n_0\
    );
\fifo_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_data[1]_i_2_n_0\,
      I1 => \fifo_data[1]_i_3_n_0\,
      I2 => \fifo_data[3]_i_5_n_0\,
      I3 => \fifo_data_reg[1]_i_4_n_0\,
      I4 => \fifo_data[3]_i_7_n_0\,
      I5 => \fifo_data_reg[1]_i_5_n_0\,
      O => \fifo_data[1]_i_1_n_0\
    );
\fifo_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_data_reg[1]_i_6_n_0\,
      I1 => \fifo_data_reg[1]_i_7_n_0\,
      I2 => fifo_tail_reg(5),
      I3 => \fifo_data_reg[1]_i_8_n_0\,
      I4 => fifo_tail_reg(4),
      I5 => \fifo_data_reg[1]_i_9_n_0\,
      O => \fifo_data[1]_i_2_n_0\
    );
\fifo_data[1]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[83]_83\(1),
      I1 => \fifo_reg[82]_82\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[81]_81\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[80]_80\(1),
      O => \fifo_data[1]_i_22_n_0\
    );
\fifo_data[1]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[87]_87\(1),
      I1 => \fifo_reg[86]_86\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[85]_85\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[84]_84\(1),
      O => \fifo_data[1]_i_23_n_0\
    );
\fifo_data[1]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[91]_91\(1),
      I1 => \fifo_reg[90]_90\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[89]_89\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[88]_88\(1),
      O => \fifo_data[1]_i_24_n_0\
    );
\fifo_data[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[95]_95\(1),
      I1 => \fifo_reg[94]_94\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[93]_93\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[92]_92\(1),
      O => \fifo_data[1]_i_25_n_0\
    );
\fifo_data[1]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[67]_67\(1),
      I1 => \fifo_reg[66]_66\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[65]_65\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[64]_64\(1),
      O => \fifo_data[1]_i_26_n_0\
    );
\fifo_data[1]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[71]_71\(1),
      I1 => \fifo_reg[70]_70\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[69]_69\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[68]_68\(1),
      O => \fifo_data[1]_i_27_n_0\
    );
\fifo_data[1]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[75]_75\(1),
      I1 => \fifo_reg[74]_74\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[73]_73\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[72]_72\(1),
      O => \fifo_data[1]_i_28_n_0\
    );
\fifo_data[1]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[79]_79\(1),
      I1 => \fifo_reg[78]_78\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[77]_77\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[76]_76\(1),
      O => \fifo_data[1]_i_29_n_0\
    );
\fifo_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[99]_99\(1),
      I1 => \fifo_reg[98]_98\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[97]_97\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[96]_96\(1),
      O => \fifo_data[1]_i_3_n_0\
    );
\fifo_data[1]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[51]_51\(1),
      I1 => \fifo_reg[50]_50\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[49]_49\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[48]_48\(1),
      O => \fifo_data[1]_i_30_n_0\
    );
\fifo_data[1]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[55]_55\(1),
      I1 => \fifo_reg[54]_54\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[53]_53\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[52]_52\(1),
      O => \fifo_data[1]_i_31_n_0\
    );
\fifo_data[1]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[59]_59\(1),
      I1 => \fifo_reg[58]_58\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[57]_57\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[56]_56\(1),
      O => \fifo_data[1]_i_32_n_0\
    );
\fifo_data[1]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[63]_63\(1),
      I1 => \fifo_reg[62]_62\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[61]_61\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[60]_60\(1),
      O => \fifo_data[1]_i_33_n_0\
    );
\fifo_data[1]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[35]_35\(1),
      I1 => \fifo_reg[34]_34\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[33]_33\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[32]_32\(1),
      O => \fifo_data[1]_i_34_n_0\
    );
\fifo_data[1]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[39]_39\(1),
      I1 => \fifo_reg[38]_38\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[37]_37\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[36]_36\(1),
      O => \fifo_data[1]_i_35_n_0\
    );
\fifo_data[1]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[43]_43\(1),
      I1 => \fifo_reg[42]_42\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[41]_41\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[40]_40\(1),
      O => \fifo_data[1]_i_36_n_0\
    );
\fifo_data[1]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[47]_47\(1),
      I1 => \fifo_reg[46]_46\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[45]_45\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[44]_44\(1),
      O => \fifo_data[1]_i_37_n_0\
    );
\fifo_data[1]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[19]_19\(1),
      I1 => \fifo_reg[18]_18\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[17]_17\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[16]_16\(1),
      O => \fifo_data[1]_i_38_n_0\
    );
\fifo_data[1]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[23]_23\(1),
      I1 => \fifo_reg[22]_22\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[21]_21\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[20]_20\(1),
      O => \fifo_data[1]_i_39_n_0\
    );
\fifo_data[1]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[27]_27\(1),
      I1 => \fifo_reg[26]_26\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[25]_25\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[24]_24\(1),
      O => \fifo_data[1]_i_40_n_0\
    );
\fifo_data[1]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[31]_31\(1),
      I1 => \fifo_reg[30]_30\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[29]_29\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[28]_28\(1),
      O => \fifo_data[1]_i_41_n_0\
    );
\fifo_data[1]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[3]_3\(1),
      I1 => \fifo_reg[2]_2\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[1]_1\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[0]_0\(1),
      O => \fifo_data[1]_i_42_n_0\
    );
\fifo_data[1]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[7]_7\(1),
      I1 => \fifo_reg[6]_6\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[5]_5\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[4]_4\(1),
      O => \fifo_data[1]_i_43_n_0\
    );
\fifo_data[1]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[11]_11\(1),
      I1 => \fifo_reg[10]_10\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[9]_9\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[8]_8\(1),
      O => \fifo_data[1]_i_44_n_0\
    );
\fifo_data[1]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[15]_15\(1),
      I1 => \fifo_reg[14]_14\(1),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[13]_13\(1),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[12]_12\(1),
      O => \fifo_data[1]_i_45_n_0\
    );
\fifo_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_data[2]_i_2_n_0\,
      I1 => \fifo_data[2]_i_3_n_0\,
      I2 => \fifo_data[3]_i_5_n_0\,
      I3 => \fifo_data_reg[2]_i_4_n_0\,
      I4 => \fifo_data[3]_i_7_n_0\,
      I5 => \fifo_data_reg[2]_i_5_n_0\,
      O => \fifo_data[2]_i_1_n_0\
    );
\fifo_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_data_reg[2]_i_6_n_0\,
      I1 => \fifo_data_reg[2]_i_7_n_0\,
      I2 => fifo_tail_reg(5),
      I3 => \fifo_data_reg[2]_i_8_n_0\,
      I4 => fifo_tail_reg(4),
      I5 => \fifo_data_reg[2]_i_9_n_0\,
      O => \fifo_data[2]_i_2_n_0\
    );
\fifo_data[2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[83]_83\(2),
      I1 => \fifo_reg[82]_82\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[81]_81\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[80]_80\(2),
      O => \fifo_data[2]_i_22_n_0\
    );
\fifo_data[2]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[87]_87\(2),
      I1 => \fifo_reg[86]_86\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[85]_85\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[84]_84\(2),
      O => \fifo_data[2]_i_23_n_0\
    );
\fifo_data[2]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[91]_91\(2),
      I1 => \fifo_reg[90]_90\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[89]_89\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[88]_88\(2),
      O => \fifo_data[2]_i_24_n_0\
    );
\fifo_data[2]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[95]_95\(2),
      I1 => \fifo_reg[94]_94\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[93]_93\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[92]_92\(2),
      O => \fifo_data[2]_i_25_n_0\
    );
\fifo_data[2]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[67]_67\(2),
      I1 => \fifo_reg[66]_66\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[65]_65\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[64]_64\(2),
      O => \fifo_data[2]_i_26_n_0\
    );
\fifo_data[2]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[71]_71\(2),
      I1 => \fifo_reg[70]_70\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[69]_69\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[68]_68\(2),
      O => \fifo_data[2]_i_27_n_0\
    );
\fifo_data[2]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[75]_75\(2),
      I1 => \fifo_reg[74]_74\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[73]_73\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[72]_72\(2),
      O => \fifo_data[2]_i_28_n_0\
    );
\fifo_data[2]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[79]_79\(2),
      I1 => \fifo_reg[78]_78\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[77]_77\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[76]_76\(2),
      O => \fifo_data[2]_i_29_n_0\
    );
\fifo_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[99]_99\(2),
      I1 => \fifo_reg[98]_98\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[97]_97\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[96]_96\(2),
      O => \fifo_data[2]_i_3_n_0\
    );
\fifo_data[2]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[51]_51\(2),
      I1 => \fifo_reg[50]_50\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[49]_49\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[48]_48\(2),
      O => \fifo_data[2]_i_30_n_0\
    );
\fifo_data[2]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[55]_55\(2),
      I1 => \fifo_reg[54]_54\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[53]_53\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[52]_52\(2),
      O => \fifo_data[2]_i_31_n_0\
    );
\fifo_data[2]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[59]_59\(2),
      I1 => \fifo_reg[58]_58\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[57]_57\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[56]_56\(2),
      O => \fifo_data[2]_i_32_n_0\
    );
\fifo_data[2]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[63]_63\(2),
      I1 => \fifo_reg[62]_62\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[61]_61\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[60]_60\(2),
      O => \fifo_data[2]_i_33_n_0\
    );
\fifo_data[2]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[35]_35\(2),
      I1 => \fifo_reg[34]_34\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[33]_33\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[32]_32\(2),
      O => \fifo_data[2]_i_34_n_0\
    );
\fifo_data[2]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[39]_39\(2),
      I1 => \fifo_reg[38]_38\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[37]_37\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[36]_36\(2),
      O => \fifo_data[2]_i_35_n_0\
    );
\fifo_data[2]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[43]_43\(2),
      I1 => \fifo_reg[42]_42\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[41]_41\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[40]_40\(2),
      O => \fifo_data[2]_i_36_n_0\
    );
\fifo_data[2]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[47]_47\(2),
      I1 => \fifo_reg[46]_46\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[45]_45\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[44]_44\(2),
      O => \fifo_data[2]_i_37_n_0\
    );
\fifo_data[2]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[19]_19\(2),
      I1 => \fifo_reg[18]_18\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[17]_17\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[16]_16\(2),
      O => \fifo_data[2]_i_38_n_0\
    );
\fifo_data[2]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[23]_23\(2),
      I1 => \fifo_reg[22]_22\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[21]_21\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[20]_20\(2),
      O => \fifo_data[2]_i_39_n_0\
    );
\fifo_data[2]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[27]_27\(2),
      I1 => \fifo_reg[26]_26\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[25]_25\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[24]_24\(2),
      O => \fifo_data[2]_i_40_n_0\
    );
\fifo_data[2]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[31]_31\(2),
      I1 => \fifo_reg[30]_30\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[29]_29\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[28]_28\(2),
      O => \fifo_data[2]_i_41_n_0\
    );
\fifo_data[2]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[3]_3\(2),
      I1 => \fifo_reg[2]_2\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[1]_1\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[0]_0\(2),
      O => \fifo_data[2]_i_42_n_0\
    );
\fifo_data[2]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[7]_7\(2),
      I1 => \fifo_reg[6]_6\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[5]_5\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[4]_4\(2),
      O => \fifo_data[2]_i_43_n_0\
    );
\fifo_data[2]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[11]_11\(2),
      I1 => \fifo_reg[10]_10\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[9]_9\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[8]_8\(2),
      O => \fifo_data[2]_i_44_n_0\
    );
\fifo_data[2]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[15]_15\(2),
      I1 => \fifo_reg[14]_14\(2),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[13]_13\(2),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[12]_12\(2),
      O => \fifo_data[2]_i_45_n_0\
    );
\fifo_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \fifo_tail0__18\,
      I3 => \^configclk_reg_0\,
      I4 => \^q\(1),
      O => \fifo_data[3]_i_1_n_0\
    );
\fifo_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_data[3]_i_3_n_0\,
      I1 => \fifo_data[3]_i_4_n_0\,
      I2 => \fifo_data[3]_i_5_n_0\,
      I3 => \fifo_data_reg[3]_i_6_n_0\,
      I4 => \fifo_data[3]_i_7_n_0\,
      I5 => \fifo_data_reg[3]_i_8_n_0\,
      O => \fifo_data[3]_i_2_n_0\
    );
\fifo_data[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[83]_83\(3),
      I1 => \fifo_reg[82]_82\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[81]_81\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[80]_80\(3),
      O => \fifo_data[3]_i_25_n_0\
    );
\fifo_data[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[87]_87\(3),
      I1 => \fifo_reg[86]_86\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[85]_85\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[84]_84\(3),
      O => \fifo_data[3]_i_26_n_0\
    );
\fifo_data[3]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[91]_91\(3),
      I1 => \fifo_reg[90]_90\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[89]_89\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[88]_88\(3),
      O => \fifo_data[3]_i_27_n_0\
    );
\fifo_data[3]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[95]_95\(3),
      I1 => \fifo_reg[94]_94\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[93]_93\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[92]_92\(3),
      O => \fifo_data[3]_i_28_n_0\
    );
\fifo_data[3]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[67]_67\(3),
      I1 => \fifo_reg[66]_66\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[65]_65\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[64]_64\(3),
      O => \fifo_data[3]_i_29_n_0\
    );
\fifo_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_data_reg[3]_i_9_n_0\,
      I1 => \fifo_data_reg[3]_i_10_n_0\,
      I2 => fifo_tail_reg(5),
      I3 => \fifo_data_reg[3]_i_11_n_0\,
      I4 => fifo_tail_reg(4),
      I5 => \fifo_data_reg[3]_i_12_n_0\,
      O => \fifo_data[3]_i_3_n_0\
    );
\fifo_data[3]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[71]_71\(3),
      I1 => \fifo_reg[70]_70\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[69]_69\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[68]_68\(3),
      O => \fifo_data[3]_i_30_n_0\
    );
\fifo_data[3]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[75]_75\(3),
      I1 => \fifo_reg[74]_74\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[73]_73\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[72]_72\(3),
      O => \fifo_data[3]_i_31_n_0\
    );
\fifo_data[3]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[79]_79\(3),
      I1 => \fifo_reg[78]_78\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[77]_77\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[76]_76\(3),
      O => \fifo_data[3]_i_32_n_0\
    );
\fifo_data[3]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[51]_51\(3),
      I1 => \fifo_reg[50]_50\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[49]_49\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[48]_48\(3),
      O => \fifo_data[3]_i_33_n_0\
    );
\fifo_data[3]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[55]_55\(3),
      I1 => \fifo_reg[54]_54\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[53]_53\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[52]_52\(3),
      O => \fifo_data[3]_i_34_n_0\
    );
\fifo_data[3]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[59]_59\(3),
      I1 => \fifo_reg[58]_58\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[57]_57\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[56]_56\(3),
      O => \fifo_data[3]_i_35_n_0\
    );
\fifo_data[3]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[63]_63\(3),
      I1 => \fifo_reg[62]_62\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[61]_61\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[60]_60\(3),
      O => \fifo_data[3]_i_36_n_0\
    );
\fifo_data[3]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[35]_35\(3),
      I1 => \fifo_reg[34]_34\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[33]_33\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[32]_32\(3),
      O => \fifo_data[3]_i_37_n_0\
    );
\fifo_data[3]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[39]_39\(3),
      I1 => \fifo_reg[38]_38\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[37]_37\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[36]_36\(3),
      O => \fifo_data[3]_i_38_n_0\
    );
\fifo_data[3]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[43]_43\(3),
      I1 => \fifo_reg[42]_42\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[41]_41\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[40]_40\(3),
      O => \fifo_data[3]_i_39_n_0\
    );
\fifo_data[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[99]_99\(3),
      I1 => \fifo_reg[98]_98\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[97]_97\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[96]_96\(3),
      O => \fifo_data[3]_i_4_n_0\
    );
\fifo_data[3]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[47]_47\(3),
      I1 => \fifo_reg[46]_46\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[45]_45\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[44]_44\(3),
      O => \fifo_data[3]_i_40_n_0\
    );
\fifo_data[3]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[19]_19\(3),
      I1 => \fifo_reg[18]_18\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[17]_17\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[16]_16\(3),
      O => \fifo_data[3]_i_41_n_0\
    );
\fifo_data[3]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[23]_23\(3),
      I1 => \fifo_reg[22]_22\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[21]_21\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[20]_20\(3),
      O => \fifo_data[3]_i_42_n_0\
    );
\fifo_data[3]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[27]_27\(3),
      I1 => \fifo_reg[26]_26\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[25]_25\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[24]_24\(3),
      O => \fifo_data[3]_i_43_n_0\
    );
\fifo_data[3]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[31]_31\(3),
      I1 => \fifo_reg[30]_30\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[29]_29\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[28]_28\(3),
      O => \fifo_data[3]_i_44_n_0\
    );
\fifo_data[3]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[3]_3\(3),
      I1 => \fifo_reg[2]_2\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[1]_1\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[0]_0\(3),
      O => \fifo_data[3]_i_45_n_0\
    );
\fifo_data[3]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[7]_7\(3),
      I1 => \fifo_reg[6]_6\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[5]_5\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[4]_4\(3),
      O => \fifo_data[3]_i_46_n_0\
    );
\fifo_data[3]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[11]_11\(3),
      I1 => \fifo_reg[10]_10\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[9]_9\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[8]_8\(3),
      O => \fifo_data[3]_i_47_n_0\
    );
\fifo_data[3]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_reg[15]_15\(3),
      I1 => \fifo_reg[14]_14\(3),
      I2 => fifo_tail_reg(1),
      I3 => \fifo_reg[13]_13\(3),
      I4 => fifo_tail_reg(0),
      I5 => \fifo_reg[12]_12\(3),
      O => \fifo_data[3]_i_48_n_0\
    );
\fifo_data[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => fifo_tail_reg(5),
      I1 => fifo_tail_reg(6),
      O => \fifo_data[3]_i_5_n_0\
    );
\fifo_data[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => fifo_tail_reg(6),
      I1 => fifo_tail_reg(4),
      I2 => fifo_tail_reg(5),
      O => \fifo_data[3]_i_7_n_0\
    );
\fifo_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_data[3]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \fifo_data[0]_i_1_n_0\,
      Q => fifo_data(0)
    );
\fifo_data_reg[0]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[0]_i_22_n_0\,
      I1 => \fifo_data[0]_i_23_n_0\,
      O => \fifo_data_reg[0]_i_10_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[0]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[0]_i_24_n_0\,
      I1 => \fifo_data[0]_i_25_n_0\,
      O => \fifo_data_reg[0]_i_11_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[0]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[0]_i_26_n_0\,
      I1 => \fifo_data[0]_i_27_n_0\,
      O => \fifo_data_reg[0]_i_12_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[0]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[0]_i_28_n_0\,
      I1 => \fifo_data[0]_i_29_n_0\,
      O => \fifo_data_reg[0]_i_13_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[0]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[0]_i_30_n_0\,
      I1 => \fifo_data[0]_i_31_n_0\,
      O => \fifo_data_reg[0]_i_14_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[0]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[0]_i_32_n_0\,
      I1 => \fifo_data[0]_i_33_n_0\,
      O => \fifo_data_reg[0]_i_15_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[0]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[0]_i_34_n_0\,
      I1 => \fifo_data[0]_i_35_n_0\,
      O => \fifo_data_reg[0]_i_16_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[0]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[0]_i_36_n_0\,
      I1 => \fifo_data[0]_i_37_n_0\,
      O => \fifo_data_reg[0]_i_17_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[0]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[0]_i_38_n_0\,
      I1 => \fifo_data[0]_i_39_n_0\,
      O => \fifo_data_reg[0]_i_18_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[0]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[0]_i_40_n_0\,
      I1 => \fifo_data[0]_i_41_n_0\,
      O => \fifo_data_reg[0]_i_19_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[0]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[0]_i_42_n_0\,
      I1 => \fifo_data[0]_i_43_n_0\,
      O => \fifo_data_reg[0]_i_20_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[0]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[0]_i_44_n_0\,
      I1 => \fifo_data[0]_i_45_n_0\,
      O => \fifo_data_reg[0]_i_21_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[0]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[0]_i_10_n_0\,
      I1 => \fifo_data_reg[0]_i_11_n_0\,
      O => \fifo_data_reg[0]_i_4_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[0]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[0]_i_12_n_0\,
      I1 => \fifo_data_reg[0]_i_13_n_0\,
      O => \fifo_data_reg[0]_i_5_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[0]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[0]_i_14_n_0\,
      I1 => \fifo_data_reg[0]_i_15_n_0\,
      O => \fifo_data_reg[0]_i_6_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[0]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[0]_i_16_n_0\,
      I1 => \fifo_data_reg[0]_i_17_n_0\,
      O => \fifo_data_reg[0]_i_7_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[0]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[0]_i_18_n_0\,
      I1 => \fifo_data_reg[0]_i_19_n_0\,
      O => \fifo_data_reg[0]_i_8_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[0]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[0]_i_20_n_0\,
      I1 => \fifo_data_reg[0]_i_21_n_0\,
      O => \fifo_data_reg[0]_i_9_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_data[3]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \fifo_data[1]_i_1_n_0\,
      Q => fifo_data(1)
    );
\fifo_data_reg[1]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[1]_i_22_n_0\,
      I1 => \fifo_data[1]_i_23_n_0\,
      O => \fifo_data_reg[1]_i_10_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[1]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[1]_i_24_n_0\,
      I1 => \fifo_data[1]_i_25_n_0\,
      O => \fifo_data_reg[1]_i_11_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[1]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[1]_i_26_n_0\,
      I1 => \fifo_data[1]_i_27_n_0\,
      O => \fifo_data_reg[1]_i_12_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[1]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[1]_i_28_n_0\,
      I1 => \fifo_data[1]_i_29_n_0\,
      O => \fifo_data_reg[1]_i_13_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[1]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[1]_i_30_n_0\,
      I1 => \fifo_data[1]_i_31_n_0\,
      O => \fifo_data_reg[1]_i_14_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[1]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[1]_i_32_n_0\,
      I1 => \fifo_data[1]_i_33_n_0\,
      O => \fifo_data_reg[1]_i_15_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[1]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[1]_i_34_n_0\,
      I1 => \fifo_data[1]_i_35_n_0\,
      O => \fifo_data_reg[1]_i_16_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[1]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[1]_i_36_n_0\,
      I1 => \fifo_data[1]_i_37_n_0\,
      O => \fifo_data_reg[1]_i_17_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[1]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[1]_i_38_n_0\,
      I1 => \fifo_data[1]_i_39_n_0\,
      O => \fifo_data_reg[1]_i_18_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[1]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[1]_i_40_n_0\,
      I1 => \fifo_data[1]_i_41_n_0\,
      O => \fifo_data_reg[1]_i_19_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[1]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[1]_i_42_n_0\,
      I1 => \fifo_data[1]_i_43_n_0\,
      O => \fifo_data_reg[1]_i_20_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[1]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[1]_i_44_n_0\,
      I1 => \fifo_data[1]_i_45_n_0\,
      O => \fifo_data_reg[1]_i_21_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[1]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[1]_i_10_n_0\,
      I1 => \fifo_data_reg[1]_i_11_n_0\,
      O => \fifo_data_reg[1]_i_4_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[1]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[1]_i_12_n_0\,
      I1 => \fifo_data_reg[1]_i_13_n_0\,
      O => \fifo_data_reg[1]_i_5_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[1]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[1]_i_14_n_0\,
      I1 => \fifo_data_reg[1]_i_15_n_0\,
      O => \fifo_data_reg[1]_i_6_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[1]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[1]_i_16_n_0\,
      I1 => \fifo_data_reg[1]_i_17_n_0\,
      O => \fifo_data_reg[1]_i_7_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[1]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[1]_i_18_n_0\,
      I1 => \fifo_data_reg[1]_i_19_n_0\,
      O => \fifo_data_reg[1]_i_8_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[1]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[1]_i_20_n_0\,
      I1 => \fifo_data_reg[1]_i_21_n_0\,
      O => \fifo_data_reg[1]_i_9_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_data[3]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \fifo_data[2]_i_1_n_0\,
      Q => fifo_data(2)
    );
\fifo_data_reg[2]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[2]_i_22_n_0\,
      I1 => \fifo_data[2]_i_23_n_0\,
      O => \fifo_data_reg[2]_i_10_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[2]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[2]_i_24_n_0\,
      I1 => \fifo_data[2]_i_25_n_0\,
      O => \fifo_data_reg[2]_i_11_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[2]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[2]_i_26_n_0\,
      I1 => \fifo_data[2]_i_27_n_0\,
      O => \fifo_data_reg[2]_i_12_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[2]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[2]_i_28_n_0\,
      I1 => \fifo_data[2]_i_29_n_0\,
      O => \fifo_data_reg[2]_i_13_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[2]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[2]_i_30_n_0\,
      I1 => \fifo_data[2]_i_31_n_0\,
      O => \fifo_data_reg[2]_i_14_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[2]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[2]_i_32_n_0\,
      I1 => \fifo_data[2]_i_33_n_0\,
      O => \fifo_data_reg[2]_i_15_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[2]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[2]_i_34_n_0\,
      I1 => \fifo_data[2]_i_35_n_0\,
      O => \fifo_data_reg[2]_i_16_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[2]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[2]_i_36_n_0\,
      I1 => \fifo_data[2]_i_37_n_0\,
      O => \fifo_data_reg[2]_i_17_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[2]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[2]_i_38_n_0\,
      I1 => \fifo_data[2]_i_39_n_0\,
      O => \fifo_data_reg[2]_i_18_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[2]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[2]_i_40_n_0\,
      I1 => \fifo_data[2]_i_41_n_0\,
      O => \fifo_data_reg[2]_i_19_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[2]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[2]_i_42_n_0\,
      I1 => \fifo_data[2]_i_43_n_0\,
      O => \fifo_data_reg[2]_i_20_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[2]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[2]_i_44_n_0\,
      I1 => \fifo_data[2]_i_45_n_0\,
      O => \fifo_data_reg[2]_i_21_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[2]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[2]_i_10_n_0\,
      I1 => \fifo_data_reg[2]_i_11_n_0\,
      O => \fifo_data_reg[2]_i_4_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[2]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[2]_i_12_n_0\,
      I1 => \fifo_data_reg[2]_i_13_n_0\,
      O => \fifo_data_reg[2]_i_5_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[2]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[2]_i_14_n_0\,
      I1 => \fifo_data_reg[2]_i_15_n_0\,
      O => \fifo_data_reg[2]_i_6_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[2]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[2]_i_16_n_0\,
      I1 => \fifo_data_reg[2]_i_17_n_0\,
      O => \fifo_data_reg[2]_i_7_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[2]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[2]_i_18_n_0\,
      I1 => \fifo_data_reg[2]_i_19_n_0\,
      O => \fifo_data_reg[2]_i_8_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[2]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[2]_i_20_n_0\,
      I1 => \fifo_data_reg[2]_i_21_n_0\,
      O => \fifo_data_reg[2]_i_9_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_data[3]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \fifo_data[3]_i_2_n_0\,
      Q => fifo_data(3)
    );
\fifo_data_reg[3]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[3]_i_19_n_0\,
      I1 => \fifo_data_reg[3]_i_20_n_0\,
      O => \fifo_data_reg[3]_i_10_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[3]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[3]_i_21_n_0\,
      I1 => \fifo_data_reg[3]_i_22_n_0\,
      O => \fifo_data_reg[3]_i_11_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[3]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[3]_i_23_n_0\,
      I1 => \fifo_data_reg[3]_i_24_n_0\,
      O => \fifo_data_reg[3]_i_12_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[3]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[3]_i_25_n_0\,
      I1 => \fifo_data[3]_i_26_n_0\,
      O => \fifo_data_reg[3]_i_13_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[3]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[3]_i_27_n_0\,
      I1 => \fifo_data[3]_i_28_n_0\,
      O => \fifo_data_reg[3]_i_14_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[3]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[3]_i_29_n_0\,
      I1 => \fifo_data[3]_i_30_n_0\,
      O => \fifo_data_reg[3]_i_15_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[3]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[3]_i_31_n_0\,
      I1 => \fifo_data[3]_i_32_n_0\,
      O => \fifo_data_reg[3]_i_16_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[3]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[3]_i_33_n_0\,
      I1 => \fifo_data[3]_i_34_n_0\,
      O => \fifo_data_reg[3]_i_17_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[3]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[3]_i_35_n_0\,
      I1 => \fifo_data[3]_i_36_n_0\,
      O => \fifo_data_reg[3]_i_18_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[3]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[3]_i_37_n_0\,
      I1 => \fifo_data[3]_i_38_n_0\,
      O => \fifo_data_reg[3]_i_19_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[3]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[3]_i_39_n_0\,
      I1 => \fifo_data[3]_i_40_n_0\,
      O => \fifo_data_reg[3]_i_20_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[3]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[3]_i_41_n_0\,
      I1 => \fifo_data[3]_i_42_n_0\,
      O => \fifo_data_reg[3]_i_21_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[3]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[3]_i_43_n_0\,
      I1 => \fifo_data[3]_i_44_n_0\,
      O => \fifo_data_reg[3]_i_22_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[3]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[3]_i_45_n_0\,
      I1 => \fifo_data[3]_i_46_n_0\,
      O => \fifo_data_reg[3]_i_23_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[3]_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \fifo_data[3]_i_47_n_0\,
      I1 => \fifo_data[3]_i_48_n_0\,
      O => \fifo_data_reg[3]_i_24_n_0\,
      S => fifo_tail_reg(2)
    );
\fifo_data_reg[3]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[3]_i_13_n_0\,
      I1 => \fifo_data_reg[3]_i_14_n_0\,
      O => \fifo_data_reg[3]_i_6_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[3]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[3]_i_15_n_0\,
      I1 => \fifo_data_reg[3]_i_16_n_0\,
      O => \fifo_data_reg[3]_i_8_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_data_reg[3]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \fifo_data_reg[3]_i_17_n_0\,
      I1 => \fifo_data_reg[3]_i_18_n_0\,
      O => \fifo_data_reg[3]_i_9_n_0\,
      S => fifo_tail_reg(3)
    );
\fifo_head[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_head_reg(0),
      O => \fifo_head[0]_i_1_n_0\
    );
\fifo_head[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fifo_head_reg(0),
      I1 => fifo_head_reg(1),
      O => p_0_in(1)
    );
\fifo_head[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => fifo_head_reg(0),
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(2),
      O => \fifo_head[2]_i_1_n_0\
    );
\fifo_head[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => fifo_head_reg(1),
      I1 => fifo_head_reg(0),
      I2 => fifo_head_reg(2),
      I3 => fifo_head_reg(3),
      O => p_0_in(3)
    );
\fifo_head[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => fifo_head_reg(2),
      I1 => fifo_head_reg(0),
      I2 => fifo_head_reg(1),
      I3 => fifo_head_reg(3),
      I4 => fifo_head_reg(4),
      O => p_0_in(4)
    );
\fifo_head[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => fifo_head_reg(3),
      I1 => fifo_head_reg(1),
      I2 => fifo_head_reg(0),
      I3 => fifo_head_reg(2),
      I4 => fifo_head_reg(4),
      I5 => fifo_head_reg(5),
      O => p_0_in(5)
    );
\fifo_head[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => fifo_head_reg(4),
      I1 => fifo_head_reg(2),
      I2 => \fifo[39][3]_i_3_n_0\,
      I3 => fifo_head_reg(3),
      I4 => fifo_head_reg(5),
      I5 => fifo_head_reg(6),
      O => p_0_in(6)
    );
\fifo_head_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => \fifo_head[0]_i_1_n_0\,
      Q => fifo_head_reg(0)
    );
\fifo_head_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => p_0_in(1),
      Q => fifo_head_reg(1)
    );
\fifo_head_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => \fifo_head[2]_i_1_n_0\,
      Q => fifo_head_reg(2)
    );
\fifo_head_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => p_0_in(3),
      Q => fifo_head_reg(3)
    );
\fifo_head_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => p_0_in(4),
      Q => fifo_head_reg(4)
    );
\fifo_head_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => p_0_in(5),
      Q => fifo_head_reg(5)
    );
\fifo_head_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => p_0_in(6),
      Q => fifo_head_reg(6)
    );
\fifo_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[0][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[0]_0\(0),
      R => '0'
    );
\fifo_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[0][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[0]_0\(1),
      R => '0'
    );
\fifo_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[0][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[0]_0\(2),
      R => '0'
    );
\fifo_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[0][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[0]_0\(3),
      R => '0'
    );
\fifo_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[10][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[10]_10\(0),
      R => '0'
    );
\fifo_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[10][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[10]_10\(1),
      R => '0'
    );
\fifo_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[10][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[10]_10\(2),
      R => '0'
    );
\fifo_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[10][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[10]_10\(3),
      R => '0'
    );
\fifo_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[11][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[11]_11\(0),
      R => '0'
    );
\fifo_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[11][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[11]_11\(1),
      R => '0'
    );
\fifo_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[11][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[11]_11\(2),
      R => '0'
    );
\fifo_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[11][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[11]_11\(3),
      R => '0'
    );
\fifo_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[12][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[12]_12\(0),
      R => '0'
    );
\fifo_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[12][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[12]_12\(1),
      R => '0'
    );
\fifo_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[12][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[12]_12\(2),
      R => '0'
    );
\fifo_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[12][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[12]_12\(3),
      R => '0'
    );
\fifo_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[13][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[13]_13\(0),
      R => '0'
    );
\fifo_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[13][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[13]_13\(1),
      R => '0'
    );
\fifo_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[13][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[13]_13\(2),
      R => '0'
    );
\fifo_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[13][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[13]_13\(3),
      R => '0'
    );
\fifo_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[14][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[14]_14\(0),
      R => '0'
    );
\fifo_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[14][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[14]_14\(1),
      R => '0'
    );
\fifo_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[14][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[14]_14\(2),
      R => '0'
    );
\fifo_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[14][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[14]_14\(3),
      R => '0'
    );
\fifo_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[15][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[15]_15\(0),
      R => '0'
    );
\fifo_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[15][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[15]_15\(1),
      R => '0'
    );
\fifo_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[15][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[15]_15\(2),
      R => '0'
    );
\fifo_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[15][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[15]_15\(3),
      R => '0'
    );
\fifo_reg[16][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[16][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[16]_16\(0),
      R => '0'
    );
\fifo_reg[16][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[16][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[16]_16\(1),
      R => '0'
    );
\fifo_reg[16][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[16][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[16]_16\(2),
      R => '0'
    );
\fifo_reg[16][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[16][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[16]_16\(3),
      R => '0'
    );
\fifo_reg[17][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[17][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[17]_17\(0),
      R => '0'
    );
\fifo_reg[17][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[17][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[17]_17\(1),
      R => '0'
    );
\fifo_reg[17][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[17][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[17]_17\(2),
      R => '0'
    );
\fifo_reg[17][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[17][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[17]_17\(3),
      R => '0'
    );
\fifo_reg[18][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[18][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[18]_18\(0),
      R => '0'
    );
\fifo_reg[18][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[18][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[18]_18\(1),
      R => '0'
    );
\fifo_reg[18][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[18][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[18]_18\(2),
      R => '0'
    );
\fifo_reg[18][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[18][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[18]_18\(3),
      R => '0'
    );
\fifo_reg[19][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[19][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[19]_19\(0),
      R => '0'
    );
\fifo_reg[19][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[19][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[19]_19\(1),
      R => '0'
    );
\fifo_reg[19][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[19][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[19]_19\(2),
      R => '0'
    );
\fifo_reg[19][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[19][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[19]_19\(3),
      R => '0'
    );
\fifo_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[1][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[1]_1\(0),
      R => '0'
    );
\fifo_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[1][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[1]_1\(1),
      R => '0'
    );
\fifo_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[1][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[1]_1\(2),
      R => '0'
    );
\fifo_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[1][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[1]_1\(3),
      R => '0'
    );
\fifo_reg[20][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[20][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[20]_20\(0),
      R => '0'
    );
\fifo_reg[20][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[20][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[20]_20\(1),
      R => '0'
    );
\fifo_reg[20][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[20][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[20]_20\(2),
      R => '0'
    );
\fifo_reg[20][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[20][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[20]_20\(3),
      R => '0'
    );
\fifo_reg[21][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[21][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[21]_21\(0),
      R => '0'
    );
\fifo_reg[21][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[21][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[21]_21\(1),
      R => '0'
    );
\fifo_reg[21][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[21][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[21]_21\(2),
      R => '0'
    );
\fifo_reg[21][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[21][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[21]_21\(3),
      R => '0'
    );
\fifo_reg[22][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[22][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[22]_22\(0),
      R => '0'
    );
\fifo_reg[22][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[22][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[22]_22\(1),
      R => '0'
    );
\fifo_reg[22][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[22][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[22]_22\(2),
      R => '0'
    );
\fifo_reg[22][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[22][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[22]_22\(3),
      R => '0'
    );
\fifo_reg[23][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[23][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[23]_23\(0),
      R => '0'
    );
\fifo_reg[23][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[23][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[23]_23\(1),
      R => '0'
    );
\fifo_reg[23][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[23][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[23]_23\(2),
      R => '0'
    );
\fifo_reg[23][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[23][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[23]_23\(3),
      R => '0'
    );
\fifo_reg[24][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[24][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[24]_24\(0),
      R => '0'
    );
\fifo_reg[24][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[24][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[24]_24\(1),
      R => '0'
    );
\fifo_reg[24][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[24][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[24]_24\(2),
      R => '0'
    );
\fifo_reg[24][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[24][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[24]_24\(3),
      R => '0'
    );
\fifo_reg[25][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[25][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[25]_25\(0),
      R => '0'
    );
\fifo_reg[25][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[25][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[25]_25\(1),
      R => '0'
    );
\fifo_reg[25][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[25][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[25]_25\(2),
      R => '0'
    );
\fifo_reg[25][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[25][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[25]_25\(3),
      R => '0'
    );
\fifo_reg[26][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[26][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[26]_26\(0),
      R => '0'
    );
\fifo_reg[26][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[26][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[26]_26\(1),
      R => '0'
    );
\fifo_reg[26][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[26][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[26]_26\(2),
      R => '0'
    );
\fifo_reg[26][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[26][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[26]_26\(3),
      R => '0'
    );
\fifo_reg[27][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[27][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[27]_27\(0),
      R => '0'
    );
\fifo_reg[27][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[27][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[27]_27\(1),
      R => '0'
    );
\fifo_reg[27][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[27][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[27]_27\(2),
      R => '0'
    );
\fifo_reg[27][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[27][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[27]_27\(3),
      R => '0'
    );
\fifo_reg[28][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[28][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[28]_28\(0),
      R => '0'
    );
\fifo_reg[28][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[28][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[28]_28\(1),
      R => '0'
    );
\fifo_reg[28][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[28][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[28]_28\(2),
      R => '0'
    );
\fifo_reg[28][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[28][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[28]_28\(3),
      R => '0'
    );
\fifo_reg[29][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[29][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[29]_29\(0),
      R => '0'
    );
\fifo_reg[29][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[29][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[29]_29\(1),
      R => '0'
    );
\fifo_reg[29][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[29][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[29]_29\(2),
      R => '0'
    );
\fifo_reg[29][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[29][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[29]_29\(3),
      R => '0'
    );
\fifo_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[2][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[2]_2\(0),
      R => '0'
    );
\fifo_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[2][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[2]_2\(1),
      R => '0'
    );
\fifo_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[2][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[2]_2\(2),
      R => '0'
    );
\fifo_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[2][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[2]_2\(3),
      R => '0'
    );
\fifo_reg[30][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[30][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[30]_30\(0),
      R => '0'
    );
\fifo_reg[30][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[30][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[30]_30\(1),
      R => '0'
    );
\fifo_reg[30][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[30][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[30]_30\(2),
      R => '0'
    );
\fifo_reg[30][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[30][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[30]_30\(3),
      R => '0'
    );
\fifo_reg[31][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[31][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[31]_31\(0),
      R => '0'
    );
\fifo_reg[31][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[31][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[31]_31\(1),
      R => '0'
    );
\fifo_reg[31][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[31][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[31]_31\(2),
      R => '0'
    );
\fifo_reg[31][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[31][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[31]_31\(3),
      R => '0'
    );
\fifo_reg[32][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[32][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[32]_32\(0),
      R => '0'
    );
\fifo_reg[32][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[32][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[32]_32\(1),
      R => '0'
    );
\fifo_reg[32][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[32][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[32]_32\(2),
      R => '0'
    );
\fifo_reg[32][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[32][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[32]_32\(3),
      R => '0'
    );
\fifo_reg[33][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[33][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[33]_33\(0),
      R => '0'
    );
\fifo_reg[33][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[33][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[33]_33\(1),
      R => '0'
    );
\fifo_reg[33][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[33][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[33]_33\(2),
      R => '0'
    );
\fifo_reg[33][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[33][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[33]_33\(3),
      R => '0'
    );
\fifo_reg[34][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[34][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[34]_34\(0),
      R => '0'
    );
\fifo_reg[34][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[34][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[34]_34\(1),
      R => '0'
    );
\fifo_reg[34][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[34][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[34]_34\(2),
      R => '0'
    );
\fifo_reg[34][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[34][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[34]_34\(3),
      R => '0'
    );
\fifo_reg[35][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[35][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[35]_35\(0),
      R => '0'
    );
\fifo_reg[35][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[35][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[35]_35\(1),
      R => '0'
    );
\fifo_reg[35][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[35][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[35]_35\(2),
      R => '0'
    );
\fifo_reg[35][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[35][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[35]_35\(3),
      R => '0'
    );
\fifo_reg[36][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[36][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[36]_36\(0),
      R => '0'
    );
\fifo_reg[36][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[36][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[36]_36\(1),
      R => '0'
    );
\fifo_reg[36][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[36][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[36]_36\(2),
      R => '0'
    );
\fifo_reg[36][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[36][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[36]_36\(3),
      R => '0'
    );
\fifo_reg[37][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[37][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[37]_37\(0),
      R => '0'
    );
\fifo_reg[37][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[37][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[37]_37\(1),
      R => '0'
    );
\fifo_reg[37][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[37][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[37]_37\(2),
      R => '0'
    );
\fifo_reg[37][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[37][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[37]_37\(3),
      R => '0'
    );
\fifo_reg[38][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[38][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[38]_38\(0),
      R => '0'
    );
\fifo_reg[38][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[38][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[38]_38\(1),
      R => '0'
    );
\fifo_reg[38][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[38][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[38]_38\(2),
      R => '0'
    );
\fifo_reg[38][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[38][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[38]_38\(3),
      R => '0'
    );
\fifo_reg[39][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[39][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[39]_39\(0),
      R => '0'
    );
\fifo_reg[39][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[39][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[39]_39\(1),
      R => '0'
    );
\fifo_reg[39][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[39][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[39]_39\(2),
      R => '0'
    );
\fifo_reg[39][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[39][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[39]_39\(3),
      R => '0'
    );
\fifo_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[3][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[3]_3\(0),
      R => '0'
    );
\fifo_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[3][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[3]_3\(1),
      R => '0'
    );
\fifo_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[3][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[3]_3\(2),
      R => '0'
    );
\fifo_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[3][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[3]_3\(3),
      R => '0'
    );
\fifo_reg[40][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[40][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[40]_40\(0),
      R => '0'
    );
\fifo_reg[40][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[40][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[40]_40\(1),
      R => '0'
    );
\fifo_reg[40][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[40][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[40]_40\(2),
      R => '0'
    );
\fifo_reg[40][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[40][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[40]_40\(3),
      R => '0'
    );
\fifo_reg[41][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[41][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[41]_41\(0),
      R => '0'
    );
\fifo_reg[41][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[41][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[41]_41\(1),
      R => '0'
    );
\fifo_reg[41][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[41][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[41]_41\(2),
      R => '0'
    );
\fifo_reg[41][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[41][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[41]_41\(3),
      R => '0'
    );
\fifo_reg[42][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[42][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[42]_42\(0),
      R => '0'
    );
\fifo_reg[42][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[42][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[42]_42\(1),
      R => '0'
    );
\fifo_reg[42][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[42][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[42]_42\(2),
      R => '0'
    );
\fifo_reg[42][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[42][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[42]_42\(3),
      R => '0'
    );
\fifo_reg[43][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[43][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[43]_43\(0),
      R => '0'
    );
\fifo_reg[43][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[43][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[43]_43\(1),
      R => '0'
    );
\fifo_reg[43][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[43][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[43]_43\(2),
      R => '0'
    );
\fifo_reg[43][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[43][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[43]_43\(3),
      R => '0'
    );
\fifo_reg[44][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[44][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[44]_44\(0),
      R => '0'
    );
\fifo_reg[44][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[44][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[44]_44\(1),
      R => '0'
    );
\fifo_reg[44][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[44][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[44]_44\(2),
      R => '0'
    );
\fifo_reg[44][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[44][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[44]_44\(3),
      R => '0'
    );
\fifo_reg[45][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[45][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[45]_45\(0),
      R => '0'
    );
\fifo_reg[45][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[45][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[45]_45\(1),
      R => '0'
    );
\fifo_reg[45][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[45][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[45]_45\(2),
      R => '0'
    );
\fifo_reg[45][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[45][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[45]_45\(3),
      R => '0'
    );
\fifo_reg[46][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[46][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[46]_46\(0),
      R => '0'
    );
\fifo_reg[46][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[46][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[46]_46\(1),
      R => '0'
    );
\fifo_reg[46][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[46][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[46]_46\(2),
      R => '0'
    );
\fifo_reg[46][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[46][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[46]_46\(3),
      R => '0'
    );
\fifo_reg[47][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[47][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[47]_47\(0),
      R => '0'
    );
\fifo_reg[47][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[47][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[47]_47\(1),
      R => '0'
    );
\fifo_reg[47][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[47][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[47]_47\(2),
      R => '0'
    );
\fifo_reg[47][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[47][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[47]_47\(3),
      R => '0'
    );
\fifo_reg[48][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[48][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[48]_48\(0),
      R => '0'
    );
\fifo_reg[48][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[48][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[48]_48\(1),
      R => '0'
    );
\fifo_reg[48][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[48][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[48]_48\(2),
      R => '0'
    );
\fifo_reg[48][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[48][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[48]_48\(3),
      R => '0'
    );
\fifo_reg[49][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[49][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[49]_49\(0),
      R => '0'
    );
\fifo_reg[49][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[49][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[49]_49\(1),
      R => '0'
    );
\fifo_reg[49][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[49][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[49]_49\(2),
      R => '0'
    );
\fifo_reg[49][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[49][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[49]_49\(3),
      R => '0'
    );
\fifo_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[4][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[4]_4\(0),
      R => '0'
    );
\fifo_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[4][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[4]_4\(1),
      R => '0'
    );
\fifo_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[4][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[4]_4\(2),
      R => '0'
    );
\fifo_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[4][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[4]_4\(3),
      R => '0'
    );
\fifo_reg[50][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[50][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[50]_50\(0),
      R => '0'
    );
\fifo_reg[50][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[50][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[50]_50\(1),
      R => '0'
    );
\fifo_reg[50][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[50][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[50]_50\(2),
      R => '0'
    );
\fifo_reg[50][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[50][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[50]_50\(3),
      R => '0'
    );
\fifo_reg[51][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[51][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[51]_51\(0),
      R => '0'
    );
\fifo_reg[51][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[51][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[51]_51\(1),
      R => '0'
    );
\fifo_reg[51][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[51][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[51]_51\(2),
      R => '0'
    );
\fifo_reg[51][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[51][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[51]_51\(3),
      R => '0'
    );
\fifo_reg[52][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[52][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[52]_52\(0),
      R => '0'
    );
\fifo_reg[52][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[52][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[52]_52\(1),
      R => '0'
    );
\fifo_reg[52][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[52][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[52]_52\(2),
      R => '0'
    );
\fifo_reg[52][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[52][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[52]_52\(3),
      R => '0'
    );
\fifo_reg[53][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[53][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[53]_53\(0),
      R => '0'
    );
\fifo_reg[53][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[53][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[53]_53\(1),
      R => '0'
    );
\fifo_reg[53][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[53][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[53]_53\(2),
      R => '0'
    );
\fifo_reg[53][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[53][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[53]_53\(3),
      R => '0'
    );
\fifo_reg[54][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[54][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[54]_54\(0),
      R => '0'
    );
\fifo_reg[54][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[54][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[54]_54\(1),
      R => '0'
    );
\fifo_reg[54][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[54][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[54]_54\(2),
      R => '0'
    );
\fifo_reg[54][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[54][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[54]_54\(3),
      R => '0'
    );
\fifo_reg[55][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[55][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[55]_55\(0),
      R => '0'
    );
\fifo_reg[55][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[55][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[55]_55\(1),
      R => '0'
    );
\fifo_reg[55][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[55][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[55]_55\(2),
      R => '0'
    );
\fifo_reg[55][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[55][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[55]_55\(3),
      R => '0'
    );
\fifo_reg[56][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[56][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[56]_56\(0),
      R => '0'
    );
\fifo_reg[56][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[56][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[56]_56\(1),
      R => '0'
    );
\fifo_reg[56][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[56][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[56]_56\(2),
      R => '0'
    );
\fifo_reg[56][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[56][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[56]_56\(3),
      R => '0'
    );
\fifo_reg[57][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[57][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[57]_57\(0),
      R => '0'
    );
\fifo_reg[57][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[57][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[57]_57\(1),
      R => '0'
    );
\fifo_reg[57][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[57][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[57]_57\(2),
      R => '0'
    );
\fifo_reg[57][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[57][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[57]_57\(3),
      R => '0'
    );
\fifo_reg[58][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[58][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[58]_58\(0),
      R => '0'
    );
\fifo_reg[58][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[58][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[58]_58\(1),
      R => '0'
    );
\fifo_reg[58][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[58][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[58]_58\(2),
      R => '0'
    );
\fifo_reg[58][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[58][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[58]_58\(3),
      R => '0'
    );
\fifo_reg[59][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[59][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[59]_59\(0),
      R => '0'
    );
\fifo_reg[59][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[59][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[59]_59\(1),
      R => '0'
    );
\fifo_reg[59][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[59][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[59]_59\(2),
      R => '0'
    );
\fifo_reg[59][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[59][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[59]_59\(3),
      R => '0'
    );
\fifo_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[5][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[5]_5\(0),
      R => '0'
    );
\fifo_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[5][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[5]_5\(1),
      R => '0'
    );
\fifo_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[5][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[5]_5\(2),
      R => '0'
    );
\fifo_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[5][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[5]_5\(3),
      R => '0'
    );
\fifo_reg[60][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[60][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[60]_60\(0),
      R => '0'
    );
\fifo_reg[60][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[60][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[60]_60\(1),
      R => '0'
    );
\fifo_reg[60][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[60][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[60]_60\(2),
      R => '0'
    );
\fifo_reg[60][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[60][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[60]_60\(3),
      R => '0'
    );
\fifo_reg[61][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[61][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[61]_61\(0),
      R => '0'
    );
\fifo_reg[61][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[61][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[61]_61\(1),
      R => '0'
    );
\fifo_reg[61][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[61][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[61]_61\(2),
      R => '0'
    );
\fifo_reg[61][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[61][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[61]_61\(3),
      R => '0'
    );
\fifo_reg[62][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[62][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[62]_62\(0),
      R => '0'
    );
\fifo_reg[62][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[62][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[62]_62\(1),
      R => '0'
    );
\fifo_reg[62][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[62][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[62]_62\(2),
      R => '0'
    );
\fifo_reg[62][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[62][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[62]_62\(3),
      R => '0'
    );
\fifo_reg[63][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[63][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[63]_63\(0),
      R => '0'
    );
\fifo_reg[63][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[63][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[63]_63\(1),
      R => '0'
    );
\fifo_reg[63][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[63][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[63]_63\(2),
      R => '0'
    );
\fifo_reg[63][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[63][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[63]_63\(3),
      R => '0'
    );
\fifo_reg[64][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[64][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[64]_64\(0),
      R => '0'
    );
\fifo_reg[64][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[64][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[64]_64\(1),
      R => '0'
    );
\fifo_reg[64][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[64][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[64]_64\(2),
      R => '0'
    );
\fifo_reg[64][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[64][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[64]_64\(3),
      R => '0'
    );
\fifo_reg[65][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[65][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[65]_65\(0),
      R => '0'
    );
\fifo_reg[65][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[65][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[65]_65\(1),
      R => '0'
    );
\fifo_reg[65][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[65][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[65]_65\(2),
      R => '0'
    );
\fifo_reg[65][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[65][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[65]_65\(3),
      R => '0'
    );
\fifo_reg[66][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[66][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[66]_66\(0),
      R => '0'
    );
\fifo_reg[66][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[66][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[66]_66\(1),
      R => '0'
    );
\fifo_reg[66][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[66][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[66]_66\(2),
      R => '0'
    );
\fifo_reg[66][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[66][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[66]_66\(3),
      R => '0'
    );
\fifo_reg[67][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[67][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[67]_67\(0),
      R => '0'
    );
\fifo_reg[67][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[67][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[67]_67\(1),
      R => '0'
    );
\fifo_reg[67][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[67][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[67]_67\(2),
      R => '0'
    );
\fifo_reg[67][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[67][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[67]_67\(3),
      R => '0'
    );
\fifo_reg[68][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[68][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[68]_68\(0),
      R => '0'
    );
\fifo_reg[68][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[68][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[68]_68\(1),
      R => '0'
    );
\fifo_reg[68][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[68][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[68]_68\(2),
      R => '0'
    );
\fifo_reg[68][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[68][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[68]_68\(3),
      R => '0'
    );
\fifo_reg[69][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[69][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[69]_69\(0),
      R => '0'
    );
\fifo_reg[69][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[69][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[69]_69\(1),
      R => '0'
    );
\fifo_reg[69][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[69][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[69]_69\(2),
      R => '0'
    );
\fifo_reg[69][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[69][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[69]_69\(3),
      R => '0'
    );
\fifo_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[6][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[6]_6\(0),
      R => '0'
    );
\fifo_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[6][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[6]_6\(1),
      R => '0'
    );
\fifo_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[6][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[6]_6\(2),
      R => '0'
    );
\fifo_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[6][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[6]_6\(3),
      R => '0'
    );
\fifo_reg[70][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[70][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[70]_70\(0),
      R => '0'
    );
\fifo_reg[70][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[70][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[70]_70\(1),
      R => '0'
    );
\fifo_reg[70][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[70][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[70]_70\(2),
      R => '0'
    );
\fifo_reg[70][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[70][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[70]_70\(3),
      R => '0'
    );
\fifo_reg[71][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[71][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[71]_71\(0),
      R => '0'
    );
\fifo_reg[71][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[71][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[71]_71\(1),
      R => '0'
    );
\fifo_reg[71][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[71][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[71]_71\(2),
      R => '0'
    );
\fifo_reg[71][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[71][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[71]_71\(3),
      R => '0'
    );
\fifo_reg[72][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[72][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[72]_72\(0),
      R => '0'
    );
\fifo_reg[72][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[72][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[72]_72\(1),
      R => '0'
    );
\fifo_reg[72][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[72][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[72]_72\(2),
      R => '0'
    );
\fifo_reg[72][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[72][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[72]_72\(3),
      R => '0'
    );
\fifo_reg[73][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[73][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[73]_73\(0),
      R => '0'
    );
\fifo_reg[73][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[73][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[73]_73\(1),
      R => '0'
    );
\fifo_reg[73][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[73][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[73]_73\(2),
      R => '0'
    );
\fifo_reg[73][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[73][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[73]_73\(3),
      R => '0'
    );
\fifo_reg[74][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[74][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[74]_74\(0),
      R => '0'
    );
\fifo_reg[74][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[74][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[74]_74\(1),
      R => '0'
    );
\fifo_reg[74][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[74][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[74]_74\(2),
      R => '0'
    );
\fifo_reg[74][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[74][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[74]_74\(3),
      R => '0'
    );
\fifo_reg[75][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[75][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[75]_75\(0),
      R => '0'
    );
\fifo_reg[75][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[75][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[75]_75\(1),
      R => '0'
    );
\fifo_reg[75][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[75][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[75]_75\(2),
      R => '0'
    );
\fifo_reg[75][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[75][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[75]_75\(3),
      R => '0'
    );
\fifo_reg[76][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[76][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[76]_76\(0),
      R => '0'
    );
\fifo_reg[76][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[76][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[76]_76\(1),
      R => '0'
    );
\fifo_reg[76][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[76][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[76]_76\(2),
      R => '0'
    );
\fifo_reg[76][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[76][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[76]_76\(3),
      R => '0'
    );
\fifo_reg[77][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[77][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[77]_77\(0),
      R => '0'
    );
\fifo_reg[77][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[77][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[77]_77\(1),
      R => '0'
    );
\fifo_reg[77][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[77][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[77]_77\(2),
      R => '0'
    );
\fifo_reg[77][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[77][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[77]_77\(3),
      R => '0'
    );
\fifo_reg[78][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[78][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[78]_78\(0),
      R => '0'
    );
\fifo_reg[78][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[78][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[78]_78\(1),
      R => '0'
    );
\fifo_reg[78][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[78][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[78]_78\(2),
      R => '0'
    );
\fifo_reg[78][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[78][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[78]_78\(3),
      R => '0'
    );
\fifo_reg[79][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[79][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[79]_79\(0),
      R => '0'
    );
\fifo_reg[79][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[79][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[79]_79\(1),
      R => '0'
    );
\fifo_reg[79][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[79][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[79]_79\(2),
      R => '0'
    );
\fifo_reg[79][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[79][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[79]_79\(3),
      R => '0'
    );
\fifo_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[7][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[7]_7\(0),
      R => '0'
    );
\fifo_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[7][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[7]_7\(1),
      R => '0'
    );
\fifo_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[7][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[7]_7\(2),
      R => '0'
    );
\fifo_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[7][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[7]_7\(3),
      R => '0'
    );
\fifo_reg[80][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[80][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[80]_80\(0),
      R => '0'
    );
\fifo_reg[80][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[80][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[80]_80\(1),
      R => '0'
    );
\fifo_reg[80][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[80][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[80]_80\(2),
      R => '0'
    );
\fifo_reg[80][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[80][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[80]_80\(3),
      R => '0'
    );
\fifo_reg[81][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[81][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[81]_81\(0),
      R => '0'
    );
\fifo_reg[81][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[81][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[81]_81\(1),
      R => '0'
    );
\fifo_reg[81][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[81][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[81]_81\(2),
      R => '0'
    );
\fifo_reg[81][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[81][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[81]_81\(3),
      R => '0'
    );
\fifo_reg[82][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[82][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[82]_82\(0),
      R => '0'
    );
\fifo_reg[82][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[82][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[82]_82\(1),
      R => '0'
    );
\fifo_reg[82][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[82][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[82]_82\(2),
      R => '0'
    );
\fifo_reg[82][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[82][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[82]_82\(3),
      R => '0'
    );
\fifo_reg[83][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[83][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[83]_83\(0),
      R => '0'
    );
\fifo_reg[83][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[83][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[83]_83\(1),
      R => '0'
    );
\fifo_reg[83][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[83][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[83]_83\(2),
      R => '0'
    );
\fifo_reg[83][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[83][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[83]_83\(3),
      R => '0'
    );
\fifo_reg[84][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[84][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[84]_84\(0),
      R => '0'
    );
\fifo_reg[84][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[84][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[84]_84\(1),
      R => '0'
    );
\fifo_reg[84][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[84][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[84]_84\(2),
      R => '0'
    );
\fifo_reg[84][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[84][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[84]_84\(3),
      R => '0'
    );
\fifo_reg[85][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[85][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[85]_85\(0),
      R => '0'
    );
\fifo_reg[85][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[85][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[85]_85\(1),
      R => '0'
    );
\fifo_reg[85][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[85][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[85]_85\(2),
      R => '0'
    );
\fifo_reg[85][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[85][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[85]_85\(3),
      R => '0'
    );
\fifo_reg[86][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[86][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[86]_86\(0),
      R => '0'
    );
\fifo_reg[86][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[86][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[86]_86\(1),
      R => '0'
    );
\fifo_reg[86][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[86][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[86]_86\(2),
      R => '0'
    );
\fifo_reg[86][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[86][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[86]_86\(3),
      R => '0'
    );
\fifo_reg[87][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[87][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[87]_87\(0),
      R => '0'
    );
\fifo_reg[87][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[87][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[87]_87\(1),
      R => '0'
    );
\fifo_reg[87][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[87][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[87]_87\(2),
      R => '0'
    );
\fifo_reg[87][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[87][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[87]_87\(3),
      R => '0'
    );
\fifo_reg[88][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[88][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[88]_88\(0),
      R => '0'
    );
\fifo_reg[88][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[88][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[88]_88\(1),
      R => '0'
    );
\fifo_reg[88][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[88][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[88]_88\(2),
      R => '0'
    );
\fifo_reg[88][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[88][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[88]_88\(3),
      R => '0'
    );
\fifo_reg[89][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[89][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[89]_89\(0),
      R => '0'
    );
\fifo_reg[89][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[89][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[89]_89\(1),
      R => '0'
    );
\fifo_reg[89][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[89][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[89]_89\(2),
      R => '0'
    );
\fifo_reg[89][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[89][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[89]_89\(3),
      R => '0'
    );
\fifo_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[8][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[8]_8\(0),
      R => '0'
    );
\fifo_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[8][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[8]_8\(1),
      R => '0'
    );
\fifo_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[8][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[8]_8\(2),
      R => '0'
    );
\fifo_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[8][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[8]_8\(3),
      R => '0'
    );
\fifo_reg[90][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[90][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[90]_90\(0),
      R => '0'
    );
\fifo_reg[90][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[90][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[90]_90\(1),
      R => '0'
    );
\fifo_reg[90][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[90][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[90]_90\(2),
      R => '0'
    );
\fifo_reg[90][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[90][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[90]_90\(3),
      R => '0'
    );
\fifo_reg[91][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[91][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[91]_91\(0),
      R => '0'
    );
\fifo_reg[91][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[91][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[91]_91\(1),
      R => '0'
    );
\fifo_reg[91][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[91][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[91]_91\(2),
      R => '0'
    );
\fifo_reg[91][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[91][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[91]_91\(3),
      R => '0'
    );
\fifo_reg[92][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[92][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[92]_92\(0),
      R => '0'
    );
\fifo_reg[92][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[92][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[92]_92\(1),
      R => '0'
    );
\fifo_reg[92][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[92][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[92]_92\(2),
      R => '0'
    );
\fifo_reg[92][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[92][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[92]_92\(3),
      R => '0'
    );
\fifo_reg[93][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[93][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[93]_93\(0),
      R => '0'
    );
\fifo_reg[93][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[93][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[93]_93\(1),
      R => '0'
    );
\fifo_reg[93][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[93][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[93]_93\(2),
      R => '0'
    );
\fifo_reg[93][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[93][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[93]_93\(3),
      R => '0'
    );
\fifo_reg[94][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[94][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[94]_94\(0),
      R => '0'
    );
\fifo_reg[94][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[94][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[94]_94\(1),
      R => '0'
    );
\fifo_reg[94][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[94][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[94]_94\(2),
      R => '0'
    );
\fifo_reg[94][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[94][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[94]_94\(3),
      R => '0'
    );
\fifo_reg[95][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[95][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[95]_95\(0),
      R => '0'
    );
\fifo_reg[95][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[95][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[95]_95\(1),
      R => '0'
    );
\fifo_reg[95][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[95][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[95]_95\(2),
      R => '0'
    );
\fifo_reg[95][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[95][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[95]_95\(3),
      R => '0'
    );
\fifo_reg[96][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[96][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[96]_96\(0),
      R => '0'
    );
\fifo_reg[96][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[96][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[96]_96\(1),
      R => '0'
    );
\fifo_reg[96][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[96][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[96]_96\(2),
      R => '0'
    );
\fifo_reg[96][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[96][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[96]_96\(3),
      R => '0'
    );
\fifo_reg[97][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[97][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[97]_97\(0),
      R => '0'
    );
\fifo_reg[97][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[97][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[97]_97\(1),
      R => '0'
    );
\fifo_reg[97][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[97][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[97]_97\(2),
      R => '0'
    );
\fifo_reg[97][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[97][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[97]_97\(3),
      R => '0'
    );
\fifo_reg[98][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[98][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[98]_98\(0),
      R => '0'
    );
\fifo_reg[98][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[98][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[98]_98\(1),
      R => '0'
    );
\fifo_reg[98][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[98][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[98]_98\(2),
      R => '0'
    );
\fifo_reg[98][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[98][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[98]_98\(3),
      R => '0'
    );
\fifo_reg[99][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[99][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[99]_99\(0),
      R => '0'
    );
\fifo_reg[99][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[99][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[99]_99\(1),
      R => '0'
    );
\fifo_reg[99][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[99][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[99]_99\(2),
      R => '0'
    );
\fifo_reg[99][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[99][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[99]_99\(3),
      R => '0'
    );
\fifo_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[9][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \fifo_reg[9]_9\(0),
      R => '0'
    );
\fifo_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[9][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \fifo_reg[9]_9\(1),
      R => '0'
    );
\fifo_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[9][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \fifo_reg[9]_9\(2),
      R => '0'
    );
\fifo_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo[9][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \fifo_reg[9]_9\(3),
      R => '0'
    );
\fifo_tail[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_tail_reg(0),
      O => \p_0_in__0\(0)
    );
\fifo_tail[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fifo_tail_reg(0),
      I1 => fifo_tail_reg(1),
      O => \p_0_in__0\(1)
    );
\fifo_tail[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => fifo_tail_reg(0),
      I1 => fifo_tail_reg(1),
      I2 => fifo_tail_reg(2),
      O => \p_0_in__0\(2)
    );
\fifo_tail[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => fifo_tail_reg(1),
      I1 => fifo_tail_reg(0),
      I2 => fifo_tail_reg(2),
      I3 => fifo_tail_reg(3),
      O => \p_0_in__0\(3)
    );
\fifo_tail[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => fifo_tail_reg(2),
      I1 => fifo_tail_reg(0),
      I2 => fifo_tail_reg(1),
      I3 => fifo_tail_reg(3),
      I4 => fifo_tail_reg(4),
      O => \p_0_in__0\(4)
    );
\fifo_tail[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => fifo_tail_reg(3),
      I1 => fifo_tail_reg(1),
      I2 => fifo_tail_reg(0),
      I3 => fifo_tail_reg(2),
      I4 => fifo_tail_reg(4),
      I5 => fifo_tail_reg(5),
      O => \p_0_in__0\(5)
    );
\fifo_tail[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \fifo_tail[6]_i_2_n_0\,
      I1 => fifo_tail_reg(5),
      I2 => fifo_tail_reg(6),
      O => \p_0_in__0\(6)
    );
\fifo_tail[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => fifo_tail_reg(4),
      I1 => fifo_tail_reg(2),
      I2 => fifo_tail_reg(0),
      I3 => fifo_tail_reg(1),
      I4 => fifo_tail_reg(3),
      O => \fifo_tail[6]_i_2_n_0\
    );
\fifo_tail_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_data[3]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \p_0_in__0\(0),
      Q => fifo_tail_reg(0)
    );
\fifo_tail_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_data[3]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \p_0_in__0\(1),
      Q => fifo_tail_reg(1)
    );
\fifo_tail_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_data[3]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \p_0_in__0\(2),
      Q => fifo_tail_reg(2)
    );
\fifo_tail_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_data[3]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \p_0_in__0\(3),
      Q => fifo_tail_reg(3)
    );
\fifo_tail_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_data[3]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \p_0_in__0\(4),
      Q => fifo_tail_reg(4)
    );
\fifo_tail_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_data[3]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \p_0_in__0\(5),
      Q => fifo_tail_reg(5)
    );
\fifo_tail_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \fifo_data[3]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => \p_0_in__0\(6),
      Q => fifo_tail_reg(6)
    );
prev_reg_wrdout1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => prev_reg_wrdout1_carry_n_0,
      CO(6) => prev_reg_wrdout1_carry_n_1,
      CO(5) => prev_reg_wrdout1_carry_n_2,
      CO(4) => prev_reg_wrdout1_carry_n_3,
      CO(3) => prev_reg_wrdout1_carry_n_4,
      CO(2) => prev_reg_wrdout1_carry_n_5,
      CO(1) => prev_reg_wrdout1_carry_n_6,
      CO(0) => prev_reg_wrdout1_carry_n_7,
      DI(7 downto 0) => B"11111111",
      O(7 downto 0) => NLW_prev_reg_wrdout1_carry_O_UNCONNECTED(7 downto 0),
      S(7) => prev_reg_wrdout1_carry_i_1_n_0,
      S(6) => prev_reg_wrdout1_carry_i_2_n_0,
      S(5) => prev_reg_wrdout1_carry_i_3_n_0,
      S(4) => prev_reg_wrdout1_carry_i_4_n_0,
      S(3) => prev_reg_wrdout1_carry_i_5_n_0,
      S(2) => prev_reg_wrdout1_carry_i_6_n_0,
      S(1) => prev_reg_wrdout1_carry_i_7_n_0,
      S(0) => prev_reg_wrdout1_carry_i_8_n_0
    );
\prev_reg_wrdout1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => prev_reg_wrdout1_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_prev_reg_wrdout1_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => prev_reg_wrdout18_in,
      CO(1) => \prev_reg_wrdout1_carry__0_n_6\,
      CO(0) => \prev_reg_wrdout1_carry__0_n_7\,
      DI(7 downto 0) => B"00000111",
      O(7 downto 0) => \NLW_prev_reg_wrdout1_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \prev_reg_wrdout1_carry__0_i_1_n_0\,
      S(1) => \prev_reg_wrdout1_carry__0_i_2_n_0\,
      S(0) => \prev_reg_wrdout1_carry__0_i_3_n_0\
    );
\prev_reg_wrdout1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => S_AXI_WDATA(30),
      I1 => prev_reg_wrdout(30),
      I2 => S_AXI_WDATA(31),
      I3 => prev_reg_wrdout(31),
      O => \prev_reg_wrdout1_carry__0_i_1_n_0\
    );
\prev_reg_wrdout1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_AXI_WDATA(27),
      I1 => prev_reg_wrdout(27),
      I2 => prev_reg_wrdout(29),
      I3 => S_AXI_WDATA(29),
      I4 => prev_reg_wrdout(28),
      I5 => S_AXI_WDATA(28),
      O => \prev_reg_wrdout1_carry__0_i_2_n_0\
    );
\prev_reg_wrdout1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_AXI_WDATA(24),
      I1 => prev_reg_wrdout(24),
      I2 => prev_reg_wrdout(26),
      I3 => S_AXI_WDATA(26),
      I4 => prev_reg_wrdout(25),
      I5 => S_AXI_WDATA(25),
      O => \prev_reg_wrdout1_carry__0_i_3_n_0\
    );
prev_reg_wrdout1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_AXI_WDATA(21),
      I1 => prev_reg_wrdout(21),
      I2 => prev_reg_wrdout(23),
      I3 => S_AXI_WDATA(23),
      I4 => prev_reg_wrdout(22),
      I5 => S_AXI_WDATA(22),
      O => prev_reg_wrdout1_carry_i_1_n_0
    );
prev_reg_wrdout1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_AXI_WDATA(18),
      I1 => prev_reg_wrdout(18),
      I2 => prev_reg_wrdout(20),
      I3 => S_AXI_WDATA(20),
      I4 => prev_reg_wrdout(19),
      I5 => S_AXI_WDATA(19),
      O => prev_reg_wrdout1_carry_i_2_n_0
    );
prev_reg_wrdout1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_AXI_WDATA(15),
      I1 => prev_reg_wrdout(15),
      I2 => prev_reg_wrdout(17),
      I3 => S_AXI_WDATA(17),
      I4 => prev_reg_wrdout(16),
      I5 => S_AXI_WDATA(16),
      O => prev_reg_wrdout1_carry_i_3_n_0
    );
prev_reg_wrdout1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_AXI_WDATA(12),
      I1 => prev_reg_wrdout(12),
      I2 => prev_reg_wrdout(14),
      I3 => S_AXI_WDATA(14),
      I4 => prev_reg_wrdout(13),
      I5 => S_AXI_WDATA(13),
      O => prev_reg_wrdout1_carry_i_4_n_0
    );
prev_reg_wrdout1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_AXI_WDATA(9),
      I1 => prev_reg_wrdout(9),
      I2 => prev_reg_wrdout(11),
      I3 => S_AXI_WDATA(11),
      I4 => prev_reg_wrdout(10),
      I5 => S_AXI_WDATA(10),
      O => prev_reg_wrdout1_carry_i_5_n_0
    );
prev_reg_wrdout1_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_AXI_WDATA(6),
      I1 => prev_reg_wrdout(6),
      I2 => prev_reg_wrdout(8),
      I3 => S_AXI_WDATA(8),
      I4 => prev_reg_wrdout(7),
      I5 => S_AXI_WDATA(7),
      O => prev_reg_wrdout1_carry_i_6_n_0
    );
prev_reg_wrdout1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_AXI_WDATA(3),
      I1 => prev_reg_wrdout(3),
      I2 => prev_reg_wrdout(5),
      I3 => S_AXI_WDATA(5),
      I4 => prev_reg_wrdout(4),
      I5 => S_AXI_WDATA(4),
      O => prev_reg_wrdout1_carry_i_7_n_0
    );
prev_reg_wrdout1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => prev_reg_wrdout(0),
      I2 => prev_reg_wrdout(2),
      I3 => S_AXI_WDATA(2),
      I4 => prev_reg_wrdout(1),
      I5 => S_AXI_WDATA(1),
      O => prev_reg_wrdout1_carry_i_8_n_0
    );
\prev_reg_wrdout[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2A2A2A2A2AAA"
    )
        port map (
      I0 => prev_reg_wrdout18_in,
      I1 => \fifo_count_reg_n_0_[5]\,
      I2 => \fifo_count_reg_n_0_[6]\,
      I3 => \fifo_count_reg_n_0_[4]\,
      I4 => \fifo_count_reg_n_0_[3]\,
      I5 => \fifo_count_reg_n_0_[2]\,
      O => prev_reg_wrdout0
    );
\prev_reg_wrdout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(0),
      Q => prev_reg_wrdout(0)
    );
\prev_reg_wrdout_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(10),
      Q => prev_reg_wrdout(10)
    );
\prev_reg_wrdout_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(11),
      Q => prev_reg_wrdout(11)
    );
\prev_reg_wrdout_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(12),
      Q => prev_reg_wrdout(12)
    );
\prev_reg_wrdout_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(13),
      Q => prev_reg_wrdout(13)
    );
\prev_reg_wrdout_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(14),
      Q => prev_reg_wrdout(14)
    );
\prev_reg_wrdout_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(15),
      Q => prev_reg_wrdout(15)
    );
\prev_reg_wrdout_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(16),
      Q => prev_reg_wrdout(16)
    );
\prev_reg_wrdout_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(17),
      Q => prev_reg_wrdout(17)
    );
\prev_reg_wrdout_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(18),
      Q => prev_reg_wrdout(18)
    );
\prev_reg_wrdout_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(19),
      Q => prev_reg_wrdout(19)
    );
\prev_reg_wrdout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(1),
      Q => prev_reg_wrdout(1)
    );
\prev_reg_wrdout_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(20),
      Q => prev_reg_wrdout(20)
    );
\prev_reg_wrdout_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(21),
      Q => prev_reg_wrdout(21)
    );
\prev_reg_wrdout_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(22),
      Q => prev_reg_wrdout(22)
    );
\prev_reg_wrdout_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(23),
      Q => prev_reg_wrdout(23)
    );
\prev_reg_wrdout_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(24),
      Q => prev_reg_wrdout(24)
    );
\prev_reg_wrdout_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(25),
      Q => prev_reg_wrdout(25)
    );
\prev_reg_wrdout_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(26),
      Q => prev_reg_wrdout(26)
    );
\prev_reg_wrdout_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(27),
      Q => prev_reg_wrdout(27)
    );
\prev_reg_wrdout_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(28),
      Q => prev_reg_wrdout(28)
    );
\prev_reg_wrdout_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(29),
      Q => prev_reg_wrdout(29)
    );
\prev_reg_wrdout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(2),
      Q => prev_reg_wrdout(2)
    );
\prev_reg_wrdout_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(30),
      Q => prev_reg_wrdout(30)
    );
\prev_reg_wrdout_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(31),
      Q => prev_reg_wrdout(31)
    );
\prev_reg_wrdout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(3),
      Q => prev_reg_wrdout(3)
    );
\prev_reg_wrdout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(4),
      Q => prev_reg_wrdout(4)
    );
\prev_reg_wrdout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(5),
      Q => prev_reg_wrdout(5)
    );
\prev_reg_wrdout_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(6),
      Q => prev_reg_wrdout(6)
    );
\prev_reg_wrdout_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(7),
      Q => prev_reg_wrdout(7)
    );
\prev_reg_wrdout_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(8),
      Q => prev_reg_wrdout(8)
    );
\prev_reg_wrdout_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => prev_reg_wrdout0,
      CLR => \axi_rdata_reg[0]\,
      D => S_AXI_WDATA(9),
      Q => prev_reg_wrdout(9)
    );
processing_fifo_data_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCCCCE"
    )
        port map (
      I0 => \fifo_tail0__18\,
      I1 => \^configclk_reg_0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => processing_fifo_data
    );
processing_fifo_data_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^configclk_reg_0\,
      O => \FSM_sequential_current_state_reg[1]_0\
    );
processing_fifo_data_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444544444444444"
    )
        port map (
      I0 => \^configclk_reg_0\,
      I1 => \fifo_tail0__18\,
      I2 => processing_fifo_data_i_7_n_0,
      I3 => \^q\(0),
      I4 => \FSM_sequential_current_state[2]_i_3_n_0\,
      I5 => S_AXI_ARESETN,
      O => ConfigClk_reg_1
    );
processing_fifo_data_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \FSM_sequential_current_state_reg[2]_0\
    );
processing_fifo_data_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020000F00F0000"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => \FSM_sequential_current_state[2]_i_3_n_0\,
      I2 => \^configclk_reg_0\,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => S_AXI_ARESETN_0
    );
processing_fifo_data_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      O => processing_fifo_data_i_7_n_0
    );
processing_fifo_data_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \axi_rdata_reg[0]\,
      D => processing_fifo_data_reg_1,
      Q => \^processing_fifo_data_reg_0\
    );
\reg1[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      O => \reg1[3]_i_3_n_0\
    );
\reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi4lite_interface_inst_n_7,
      D => fifo_data(0),
      Q => \reg1_reg_n_0_[0]\,
      R => '0'
    );
\reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi4lite_interface_inst_n_7,
      D => fifo_data(1),
      Q => \reg1_reg_n_0_[1]\,
      R => '0'
    );
\reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi4lite_interface_inst_n_7,
      D => fifo_data(2),
      Q => \reg1_reg[3]_0\(0),
      R => '0'
    );
\reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi4lite_interface_inst_n_7,
      D => fifo_data(3),
      Q => \reg1_reg[3]_0\(1),
      R => '0'
    );
\reg_rddin[0][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => \^q\(1),
      I2 => \^configclk_reg_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => S_AXI_ARESETN_1
    );
\reg_rddin_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \reg_rddin_reg[0][0]_1\,
      Q => \^reg_rddin_reg[0][0]_0\,
      R => '0'
    );
wait_counter0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => wait_counter_reg(0),
      CI_TOP => '0',
      CO(7) => wait_counter0_carry_n_0,
      CO(6) => wait_counter0_carry_n_1,
      CO(5) => wait_counter0_carry_n_2,
      CO(4) => wait_counter0_carry_n_3,
      CO(3) => wait_counter0_carry_n_4,
      CO(2) => wait_counter0_carry_n_5,
      CO(1) => wait_counter0_carry_n_6,
      CO(0) => wait_counter0_carry_n_7,
      DI(7 downto 0) => wait_counter_reg(8 downto 1),
      O(7 downto 0) => wait_counter0(8 downto 1),
      S(7) => wait_counter0_carry_i_1_n_0,
      S(6) => wait_counter0_carry_i_2_n_0,
      S(5) => wait_counter0_carry_i_3_n_0,
      S(4) => wait_counter0_carry_i_4_n_0,
      S(3) => wait_counter0_carry_i_5_n_0,
      S(2) => wait_counter0_carry_i_6_n_0,
      S(1) => wait_counter0_carry_i_7_n_0,
      S(0) => wait_counter0_carry_i_8_n_0
    );
\wait_counter0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => wait_counter0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_wait_counter0_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \wait_counter0_carry__0_n_5\,
      CO(1) => \wait_counter0_carry__0_n_6\,
      CO(0) => \wait_counter0_carry__0_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => wait_counter_reg(11 downto 9),
      O(7 downto 4) => \NLW_wait_counter0_carry__0_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => wait_counter0(12 downto 9),
      S(7 downto 4) => B"0000",
      S(3) => \wait_counter0_carry__0_i_1_n_0\,
      S(2) => \wait_counter0_carry__0_i_2_n_0\,
      S(1) => \wait_counter0_carry__0_i_3_n_0\,
      S(0) => \wait_counter0_carry__0_i_4_n_0\
    );
\wait_counter0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter_reg(12),
      O => \wait_counter0_carry__0_i_1_n_0\
    );
\wait_counter0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter_reg(11),
      O => \wait_counter0_carry__0_i_2_n_0\
    );
\wait_counter0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter_reg(10),
      O => \wait_counter0_carry__0_i_3_n_0\
    );
\wait_counter0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter_reg(9),
      O => \wait_counter0_carry__0_i_4_n_0\
    );
wait_counter0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter_reg(8),
      O => wait_counter0_carry_i_1_n_0
    );
wait_counter0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter_reg(7),
      O => wait_counter0_carry_i_2_n_0
    );
wait_counter0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter_reg(6),
      O => wait_counter0_carry_i_3_n_0
    );
wait_counter0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter_reg(5),
      O => wait_counter0_carry_i_4_n_0
    );
wait_counter0_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter_reg(4),
      O => wait_counter0_carry_i_5_n_0
    );
wait_counter0_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter_reg(3),
      O => wait_counter0_carry_i_6_n_0
    );
wait_counter0_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter_reg(2),
      O => wait_counter0_carry_i_7_n_0
    );
wait_counter0_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter_reg(1),
      O => wait_counter0_carry_i_8_n_0
    );
\wait_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_counter_reg(0),
      O => wait_counter0(0)
    );
\wait_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \FSM_sequential_current_state[2]_i_3_n_0\,
      I4 => \^configclk_reg_0\,
      O => \wait_counter[12]_i_1_n_0\
    );
\wait_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \wait_counter[12]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => wait_counter0(0),
      Q => wait_counter_reg(0)
    );
\wait_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \wait_counter[12]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => wait_counter0(10),
      Q => wait_counter_reg(10)
    );
\wait_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \wait_counter[12]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => wait_counter0(11),
      Q => wait_counter_reg(11)
    );
\wait_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \wait_counter[12]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => wait_counter0(12),
      Q => wait_counter_reg(12)
    );
\wait_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \wait_counter[12]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => wait_counter0(1),
      Q => wait_counter_reg(1)
    );
\wait_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \wait_counter[12]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => wait_counter0(2),
      Q => wait_counter_reg(2)
    );
\wait_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \wait_counter[12]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => wait_counter0(3),
      Q => wait_counter_reg(3)
    );
\wait_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \wait_counter[12]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => wait_counter0(4),
      Q => wait_counter_reg(4)
    );
\wait_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \wait_counter[12]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => wait_counter0(5),
      Q => wait_counter_reg(5)
    );
\wait_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \wait_counter[12]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => wait_counter0(6),
      Q => wait_counter_reg(6)
    );
\wait_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \wait_counter[12]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => wait_counter0(7),
      Q => wait_counter_reg(7)
    );
\wait_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \wait_counter[12]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => wait_counter0(8),
      Q => wait_counter_reg(8)
    );
\wait_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \wait_counter[12]_i_1_n_0\,
      CLR => \axi_rdata_reg[0]\,
      D => wait_counter0(9),
      Q => wait_counter_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_configReg_interface_0_0_configReg_interface_top is
  port (
    ConfigClk_reg : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    SuperpixSel : out STD_LOGIC;
    Reset_not : out STD_LOGIC;
    ConfigIn : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    ConfigOut : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_configReg_interface_0_0_configReg_interface_top : entity is "configReg_interface_top";
end design_1_configReg_interface_0_0_configReg_interface_top;

architecture STRUCTURE of design_1_configReg_interface_0_0_configReg_interface_top is
  signal ConfigClk_i_1_n_0 : STD_LOGIC;
  signal ConfigClk_i_2_n_0 : STD_LOGIC;
  signal \^configclk_reg\ : STD_LOGIC;
  signal \^configin\ : STD_LOGIC;
  signal ConfigIn0_out : STD_LOGIC;
  signal ConfigIn_i_1_n_0 : STD_LOGIC;
  signal \^reset_not\ : STD_LOGIC;
  signal Reset_not_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \^superpixsel\ : STD_LOGIC;
  signal SuperpixSel_i_1_n_0 : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal \axi4lite_interface_inst/axi4_slave_inst/axi_arready0\ : STD_LOGIC;
  signal \axi4lite_interface_inst/mem_rddout_i\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal configReg_interface_inst_n_12 : STD_LOGIC;
  signal configReg_interface_inst_n_16 : STD_LOGIC;
  signal configReg_interface_inst_n_17 : STD_LOGIC;
  signal configReg_interface_inst_n_18 : STD_LOGIC;
  signal configReg_interface_inst_n_19 : STD_LOGIC;
  signal configReg_interface_inst_n_20 : STD_LOGIC;
  signal configReg_interface_inst_n_24 : STD_LOGIC;
  signal configReg_interface_inst_n_25 : STD_LOGIC;
  signal configReg_interface_inst_n_26 : STD_LOGIC;
  signal configReg_interface_inst_n_28 : STD_LOGIC;
  signal configReg_interface_inst_n_30 : STD_LOGIC;
  signal configReg_interface_inst_n_4 : STD_LOGIC;
  signal configReg_interface_inst_n_8 : STD_LOGIC;
  signal \current_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal processing_fifo_data : STD_LOGIC;
  signal processing_fifo_data_i_1_n_0 : STD_LOGIC;
  signal \reg_rddin[0][0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_1\ : label is "soft_lutpair50";
begin
  ConfigClk_reg <= \^configclk_reg\;
  ConfigIn <= \^configin\;
  Reset_not <= \^reset_not\;
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RDATA(0) <= \^s_axi_rdata\(0);
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  SuperpixSel <= \^superpixsel\;
ConfigClk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0040"
    )
        port map (
      I0 => configReg_interface_inst_n_24,
      I1 => configReg_interface_inst_n_19,
      I2 => configReg_interface_inst_n_20,
      I3 => configReg_interface_inst_n_18,
      I4 => \^configclk_reg\,
      O => ConfigClk_i_1_n_0
    );
ConfigClk_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => ConfigClk_i_2_n_0
    );
ConfigIn_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F44FFFF4F440000"
    )
        port map (
      I0 => \current_state__0\(0),
      I1 => \^configclk_reg\,
      I2 => \current_state__0\(2),
      I3 => p_0_in,
      I4 => ConfigIn0_out,
      I5 => \^configin\,
      O => ConfigIn_i_1_n_0
    );
Reset_not_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0010"
    )
        port map (
      I0 => \current_state__0\(2),
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(1),
      I3 => \^configclk_reg\,
      I4 => \^reset_not\,
      O => Reset_not_i_1_n_0
    );
SuperpixSel_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => S_AXI_ARESETN,
      I2 => \^configclk_reg\,
      I3 => \current_state__0\(0),
      I4 => configReg_interface_inst_n_17,
      I5 => \^superpixsel\,
      O => SuperpixSel_i_1_n_0
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF700F700F700"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_awready\,
      I3 => configReg_interface_inst_n_4,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => \axi4lite_interface_inst/axi4_slave_inst/axi_arready0\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \axi4lite_interface_inst/mem_rddout_i\(0),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      I3 => \^s_axi_rvalid\,
      I4 => \^s_axi_rdata\(0),
      O => \axi_rdata[0]_i_1_n_0\
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
configReg_interface_inst: entity work.design_1_configReg_interface_0_0_configReg_interface
     port map (
      ConfigClk_reg_0 => \^configclk_reg\,
      ConfigClk_reg_1 => configReg_interface_inst_n_26,
      ConfigClk_reg_2 => ConfigClk_i_1_n_0,
      ConfigIn => \^configin\,
      ConfigIn0_out => ConfigIn0_out,
      ConfigIn_reg_0 => ConfigIn_i_1_n_0,
      E(0) => \axi4lite_interface_inst/axi4_slave_inst/axi_arready0\,
      \FSM_sequential_current_state_reg[1]_0\ => configReg_interface_inst_n_30,
      \FSM_sequential_current_state_reg[2]_0\ => configReg_interface_inst_n_16,
      \FSM_sequential_current_state_reg[2]_1\ => configReg_interface_inst_n_17,
      Q(2 downto 0) => \current_state__0\(2 downto 0),
      Reset_not => \^reset_not\,
      Reset_not_reg_0 => Reset_not_i_1_n_0,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(8 downto 0) => S_AXI_ARADDR(8 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0 => configReg_interface_inst_n_25,
      S_AXI_ARESETN_1 => configReg_interface_inst_n_28,
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(8 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BVALID => \^s_axi_bvalid\,
      S_AXI_RDATA(0) => \^s_axi_rdata\(0),
      S_AXI_RVALID => \^s_axi_rvalid\,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WSTRB(0) => S_AXI_WSTRB(0),
      S_AXI_WVALID => S_AXI_WVALID,
      SuperpixSel => \^superpixsel\,
      SuperpixSel_reg_0 => SuperpixSel_i_1_n_0,
      aw_en_reg => configReg_interface_inst_n_4,
      aw_en_reg_0 => aw_en_i_1_n_0,
      axi_arready_reg => \^s_axi_arready\,
      axi_awready_reg => \^s_axi_awready\,
      axi_bvalid_reg => axi_bvalid_i_1_n_0,
      \axi_rdata_reg[0]\ => ConfigClk_i_2_n_0,
      \axi_rdata_reg[0]_0\ => \axi_rdata[0]_i_1_n_0\,
      axi_rvalid_reg => axi_rvalid_i_1_n_0,
      axi_wready_reg => \^s_axi_wready\,
      \clk_counter_reg[2]_0\(2) => configReg_interface_inst_n_18,
      \clk_counter_reg[2]_0\(1) => configReg_interface_inst_n_19,
      \clk_counter_reg[2]_0\(0) => configReg_interface_inst_n_20,
      \clk_counter_reg[6]_0\ => configReg_interface_inst_n_24,
      mem_rddout_i(0) => \axi4lite_interface_inst/mem_rddout_i\(0),
      processing_fifo_data => processing_fifo_data,
      processing_fifo_data_reg_0 => configReg_interface_inst_n_8,
      processing_fifo_data_reg_1 => processing_fifo_data_i_1_n_0,
      \reg1_reg[3]_0\(1) => p_0_in,
      \reg1_reg[3]_0\(0) => \p_0_in__0\,
      \reg_rddin_reg[0][0]_0\ => configReg_interface_inst_n_12,
      \reg_rddin_reg[0][0]_1\ => \reg_rddin[0][0]_i_1_n_0\
    );
processing_fifo_data_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABBBAAAAA888"
    )
        port map (
      I0 => processing_fifo_data,
      I1 => configReg_interface_inst_n_30,
      I2 => configReg_interface_inst_n_26,
      I3 => configReg_interface_inst_n_16,
      I4 => configReg_interface_inst_n_25,
      I5 => configReg_interface_inst_n_8,
      O => processing_fifo_data_i_1_n_0
    );
\reg_rddin[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ConfigOut,
      I1 => configReg_interface_inst_n_28,
      I2 => configReg_interface_inst_n_12,
      O => \reg_rddin[0][0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_configReg_interface_0_0 is
  port (
    SuperpixSel : out STD_LOGIC;
    ConfigClk : out STD_LOGIC;
    Reset_not : out STD_LOGIC;
    ConfigIn : out STD_LOGIC;
    ConfigLoad : out STD_LOGIC;
    ConfigOut : in STD_LOGIC;
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
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_configReg_interface_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_configReg_interface_0_0 : entity is "design_1_configReg_interface_0_0,configReg_interface_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_configReg_interface_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_configReg_interface_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_configReg_interface_0_0 : entity is "configReg_interface_top,Vivado 2022.1";
end design_1_configReg_interface_0_0;

architecture STRUCTURE of design_1_configReg_interface_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Reset_not : signal is "xilinx.com:signal:reset:1.0 Reset_not RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Reset_not : signal is "XIL_INTERFACENAME Reset_not, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99990005, ID_WIDTH 0, ADDR_WIDTH 11, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
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
  ConfigLoad <= \<const0>\;
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
  S_AXI_RDATA(0) <= \^s_axi_rdata\(0);
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_configReg_interface_0_0_configReg_interface_top
     port map (
      ConfigClk_reg => ConfigClk,
      ConfigIn => ConfigIn,
      ConfigOut => ConfigOut,
      Reset_not => Reset_not,
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
      S_AXI_RDATA(0) => \^s_axi_rdata\(0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(0) => S_AXI_WSTRB(0),
      S_AXI_WVALID => S_AXI_WVALID,
      SuperpixSel => SuperpixSel
    );
end STRUCTURE;
