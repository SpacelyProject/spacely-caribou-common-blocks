-------------------------------------------------------
--! @file
--! @author Julian Mendez <julian.mendez@cern.ch> (CERN - EP-ESE-BE)
--! @version 6.0
--! @brief GBT-FPGA IP - Transceiver reset synchronizer
-------------------------------------------------------

--! IEEE VHDL standard library:
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--! @brief xlx_ku_mgt_ip_reset_synchronizer - Transceiver reset synchronizer
--! @details
--! The xlx_ku_mgt_ip_reset_synchronizer synchronizes the resets with a specific clock domain
entity xlx_ku_mgt_ip_reset_synchronizer is
  port (
    CLK_IN           : in  std_logic;
    RST_IN           : in  std_logic;
    RST_OUT          : out std_logic
  );
end xlx_ku_mgt_ip_reset_synchronizer;

--! @brief xlx_ku_mgt_ip_reset_synchronizer - Transceiver reset
--! @details The xlx_ku_mgt_ip_reset_synchronizer implements a reset bridge system
architecture Behavioral of xlx_ku_mgt_ip_reset_synchronizer is

  -- CG : see similar architecture in /submodules/spacely-caribou-common-blocks/lpGBT/mgt_ip/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v
  -- Use 5 flip-flops as a single synchronizer, and tag each declaration with the appropriate synthesis attribute to
  -- enable clustering. Each flip-flop in the synchronizer is asynchronously reset so that the downstream logic is also
  -- asynchronously reset but encounters no reset assertion latency. The removal of reset is synchronous, so that the
  -- downstream logic is also removed from reset synchronously. This module is designed for active-HIGH reset use.

  -- UG901. The ASYNC_REG is an attribute that affects many processes in the Vivado tools flow. The
  -- purpose of this attribute is to inform the tool that a register is capable of receiving asynchronous
  -- data in the D input pin relative to the source clock, or that the register is a synchronizing register
  -- within a synchronization chain. The Vivado synthesis, when encountering this attribute treats it
  -- as a DONT_TOUCH attribute and pushes the ASYNC_REG property forward in the netlist. This
  -- process ensures that the object with the ASYNC_REG property is not optimized out, and that
  -- tools later in the flow receive the property to handle it correctly.

  signal rst_in_meta:     std_logic;
  signal rst_in_sync1:    std_logic;
  signal rst_in_sync2:    std_logic;
  signal rst_in_sync3:    std_logic;
  signal rst_in_out:      std_logic;

  attribute ASYNC_REG : string;
  attribute ASYNC_REG of rst_in_meta  : signal is "TRUE";
  attribute ASYNC_REG of rst_in_sync1 : signal is "TRUE";
  attribute ASYNC_REG of rst_in_sync2 : signal is "TRUE";
  attribute ASYNC_REG of rst_in_sync3 : signal is "TRUE";

begin

  rstFsm_proc: process(CLK_IN, RST_IN)
  begin
    if RST_IN = '1' then
      rst_in_meta     <= '1';
      rst_in_sync1    <= '1';
      rst_in_sync2    <= '1';
      rst_in_sync3    <= '1';
      rst_in_out      <= '1';
    elsif rising_edge(CLK_IN) then
      rst_in_meta     <= '0';
      rst_in_sync1    <= rst_in_meta;
      rst_in_sync2    <= rst_in_sync1;
      rst_in_sync3    <= rst_in_sync2;
      rst_in_out      <= rst_in_sync3;
    end if;
  end process;

  RST_OUT <= rst_in_out;

end Behavioral;
