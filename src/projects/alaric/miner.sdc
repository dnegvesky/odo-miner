create_clock -name "osc_clk" -period 10.000ns [get_ports {osc_clk}]
derive_pll_clocks
derive_clock_uncertainty
