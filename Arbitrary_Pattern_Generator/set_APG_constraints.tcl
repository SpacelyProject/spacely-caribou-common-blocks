set xdc_file [open "APG_generated_constraints.xdc" "w"]

foreach apg_instance [get_cells -hierarchical *Arbitrary_Pattern_Generator_interface*] {
    # Construct filter expressions for the pins
    set input_signal_filter "NAME =~ ${apg_instance}/input_signals*"
    set wave_clk_filter "NAME =~ ${apg_instance}/wave_clk"

    # Get the pins using the constructed filters
    set input_signal_pins "\[get_pins -hierarchical -filter \{$input_signal_filter\} \]"
    set wave_clk_pin [get_pins -hierarchical -filter $wave_clk_filter]

    # Get the clock driving the wave_clk pin
    set wave_clk [get_clocks -of $wave_clk_pin ]

    # Write the false path constraint to the XDC file
    if {[llength $input_signal_pins] > 0 && [llength $wave_clk] > 0} {
        puts $xdc_file "set_false_path -through $input_signal_pins -to \[ get_clocks $wave_clk \]"
    } else {
        puts "Warning: Unable to find input_signals or wave_clk for instance: $apg_instance"
    }
}

close $xdc_file
puts "Constraints written to APG_generated_constraints.xdc"
