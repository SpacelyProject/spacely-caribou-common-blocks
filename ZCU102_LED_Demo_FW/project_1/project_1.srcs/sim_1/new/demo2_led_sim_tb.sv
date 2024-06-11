`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2024 03:22:16 PM
// Design Name: 
// Module Name: demo2_led_sim_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

import axi_vip_pkg::*;
import demo2_led_sim_axi_vip_0_0_pkg::*;

module demo2_led_sim_tb(

);

    logic reset;
    logic clk_100MHz  = 0;

    bit[31:0]  addr, data, base_addr_gpio_1 = 32'h4001_0000;
    bit[31:0]  base_addr_gpio_0 = 32'h4000_0000;
    wire[31:0] GPIO_1_tri_io;
    xil_axi_resp_t 	resp;

    //DUT Instantiation
    demo2_led_sim_wrapper dut(.*);

    //Clock generation
    always #10ns clk_100MHz = ~clk_100MHz;

    initial begin
        reset = 1;
        #300ns;
        reset = 0;
    end


    // Step 3 - Declare the agent for the master VIP
    demo2_led_sim_axi_vip_0_0_mst_t      master_agent;
    //
    initial begin

        // Step 4 - Create a new agent
        master_agent = new("master vip agent",dut.demo2_led_sim_i.axi_vip_0.inst.IF);

        // Step 5 - Start the agent
        master_agent.start_master();

        //Wait for the reset to be released
        wait (reset == 1'b0);

        //Send 10101010 to the AXI GPIO Data register.
        #500ns
        addr = 0;
        data = 8'b10101010;
        master_agent.AXI4LITE_WRITE_BURST(base_addr_gpio_1 + addr,0,data,resp);
        
        //Send 00000000 to the AXI GPIO Tristate register (sets first 8 bits to outputs)
        #500ns
        addr = 32'h4;
        data = 8'b00000000;
        master_agent.AXI4LITE_WRITE_BURST(base_addr_gpio_1 + addr,0,data,resp);

        
        #100ns
        
        //Can check this in simulation window.
        assert(GPIO_1_tri_io == 8'b10101010);
        

    end

endmodule
