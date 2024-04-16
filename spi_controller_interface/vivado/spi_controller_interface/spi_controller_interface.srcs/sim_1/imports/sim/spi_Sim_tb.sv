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
    #100ns
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
	
    // WRITING TO global_counter_period (same as Test1 in spi_controller_SP3A_tb.sv)
    
    //Send 1'b1 to spi_read_write (register address = 0x0)
    #500ns
    addr = 0;
    data = 1;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    
    //Send 10'b00_0000_1010 to spi_address (register address = 0x4)
    #200ns
    addr = 4;
    data = 10'b00_0000_1010;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);

    // Send 2'b01 to spi_opcode (register address = 0xC)
    #200ns
    addr = 12;
    data = 2'b01;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);

    // Send 14'b11_0000_1000_1111 to spi_write_data (register address = 0x10)
    // Only writing 1 word of data to spi_command_buffer
    #200ns
    addr = 16;
    data = 14'b11_0000_1000_1111;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);

    // Send 8'd14 to spi_data_len (register address = 0x8) 
    // THIS IS REGISTER IS WRITTEN LAST TO TRIGGER SPI WRITE
    #200ns
    addr = 8;
    data = 8'd14;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);

    wait(dut.spi_Sim_i.spi_controller_inter_0.inst.spi_controller_interface_inst.done == 1'b1);

	// WRITING TO DACclr test pattern (same as Test2 in spi_controller_SP3A_tb.sv)

    // Send 1'b1 to spi_read_write (register address = 0x0)
    #100ns
    addr = 0;
    data = 1;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);

    // Send 10'b00_0000_0000 to spi_address (register address = 0x4)
    #100ns
    addr = 4;
    data = 10'b00_0000_0000;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);

    // Send 2'b10 to spi_opcode (register address = 0xC)
    #100ns
    addr = 12;
    data = 2'b10;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);

    // Send 192'b0 to spi_write_data (register address = 0x10)
    // Need to write the 192 bits in separate words of 32 bits each
    #100ns
    addr = 16;
    // 1st word
    data = {10'd0, 12'b110011001100, 10'b1010101010};
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    #100ns
    // 2nd word
    data = 32'd0;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    #100ns
    // 3rd word
    data = 32'd0;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    #100ns
    // 4th word
    data = 32'd0;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    #100ns
    // 5th word
    data = 32'd0;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    #100ns
    // 6th word
    data = 32'd0;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);

    // Send 8'd192 to spi_data_len (register address = 0x8)
    // THIS IS REGISTER IS WRITTEN LAST TO TRIGGER SPI WRITE
    #100ns
    addr = 8;
    data = 8'd192;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);

    wait(dut.spi_Sim_i.spi_controller_inter_0.inst.spi_controller_interface_inst.done == 1'b1);

    // READING FROM global_counter_period (same as Test4 in spi_controller_SP3A_tb.sv)
    
    // Send 1'b0 to spi_read_write (register address = 0x0)
    #100ns
    addr = 0;
    data = 1'b0;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);

    // Send 10'b00_0000_1010 to spi_address (register address = 0x4)
    #100ns
    addr = 4;
    data = 10'b00_0000_1010;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);

    // Send 2'b01 to spi_opcode (register address = 0xC)
    #100ns
    addr = 12;
    data = 2'b01;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);

    // Send 192'b0 to spi_data_len (register address = 0x8)
    // THIS IS REGISTER IS WRITTEN LAST TO TRIGGER SPI READ
    #100ns
    addr = 8;
    data = 8'd192;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);

    wait(dut.spi_Sim_i.spi_controller_inter_0.inst.spi_controller_interface_inst.done == 1'b1);

    // Start reading back from spi_read_data (register address = 0x14)
    #100ns
    // 1st word
    addr = 20;
    master_agent.AXI4LITE_READ_BURST(base_addr + addr,0,data,resp);
    $display("Global Counter Period [31:0]: %b", data);
    #100ns
    // 2nd word
    addr = 20;
    master_agent.AXI4LITE_READ_BURST(base_addr + addr,0,data,resp);
    $display("Global Counter Period [63:32]: %b", data);
    #100ns
    // 3rd word
    addr = 20;
    master_agent.AXI4LITE_READ_BURST(base_addr + addr,0,data,resp);
    $display("Global Counter Period [95:64]: %b", data);
    #100ns
    // 4th word
    addr = 20;
    master_agent.AXI4LITE_READ_BURST(base_addr + addr,0,data,resp);
    $display("Global Counter Period [127:96]: %b", data);
    #100ns
    // 5th word
    addr = 20;
    master_agent.AXI4LITE_READ_BURST(base_addr + addr,0,data,resp);
    $display("Global Counter Period [159:128]: %b", data);
    #100ns
    // 6th word
    addr = 20;
    master_agent.AXI4LITE_READ_BURST(base_addr + addr,0,data,resp);
    $display("Global Counter Period [191:160]: %b", data);


end

endmodule