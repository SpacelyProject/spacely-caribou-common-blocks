`timescale 1ns / 1ps

import axi_vip_pkg::*;
import spi_Sim_axi_vip_0_0_pkg::*;

//////////////////////////////////////////////////////////////////////////////////
// Test Bench Signals
//////////////////////////////////////////////////////////////////////////////////
// Clock and Reset
bit aclk = 0, aresetn = 1;
//Simulation input
bit poci = 0;
// Simulation outputs
bit cs_b, pico, spi_clk;
//AXI4-Lite signals
xil_axi_resp_t 	resp;
bit[31:0]  addr, data, base_addr = 11'b000_0000_0000, switch_state;

module spi_Sim_tb( );

spi_Sim_wrapper dut
(
    .clock           (aclk),
    .cs_b            (cs_b),
    .pico            (pico),
    .poci            (poci),
    .reset          (aresetn),
    .spi_clk         (spi_clk)
);

// Generate the clock : 50 MHz    
always #5ns aclk = ~aclk;

// Have poci toggle between low and high
always #10ns poci = ~poci;

//////////////////////////////////////////////////////////////////////////////////
// Main Process
//////////////////////////////////////////////////////////////////////////////////
//
initial begin
    //Assert the reset
    aresetn = 0;
    #340ns
    // Release the reset
    aresetn = 1;
end

//
//////////////////////////////////////////////////////////////////////////////////
// The following part controls the AXI VIP. 
//It follows the "Usefull Coding Guidelines and Examples" section from PG267
//////////////////////////////////////////////////////////////////////////////////
//
// Step 3 - Declare the agent for the master VIP
spi_Sim_axi_vip_0_0_mst_t      master_agent;

initial begin    

    // Step 4 - Create a new agent
    master_agent = new("master vip agent",dut.spi_Sim_i.axi_vip_0.inst.IF);
    
    // Step 5 - Start the agent
    master_agent.start_master();

    
    //Wait for the reset to be released
    wait (aresetn == 1'b1);
	#200ns
	
    
    //Send 0x1 to spi_read_write (address == 0x0)
    #500ns
    addr = 0;
    data = 1;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    
    // //Send 0x0 to the AXI GPIO Data register 1
    // #200ns
    // addr = 0;
    // data = 0;
    // master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
	
    // // Switch in OFF position
    // switch_1 = 0;
    // // Read the AXI GPIO Data register 2
    // #200ns
    // addr = 8;
    // master_agent.AXI4LITE_READ_BURST(base_addr + addr,0,data,resp);
    // switch_state = data&1'h1;
    // if(switch_state == 0)
    //     $display("switch 1 OFF");
    // else
    //     $display("switch 1 ON");
	
    // // Switch in ON position
	// switch_1 = 1;
	// // Read the AXI GPIO Data register 2
    // #200ns
    // addr = 8;
    // master_agent.AXI4LITE_READ_BURST(base_addr + addr,0,data,resp);
    // switch_state = data&1'h1;
    // if(switch_state == 0)
    //     $display("switch 1 OFF");
    // else
    //     $display("switch 1 ON");
	

end

endmodule