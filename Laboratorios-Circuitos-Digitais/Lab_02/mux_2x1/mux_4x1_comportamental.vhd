entity mux_4x1_comportamental is 
port(i0, i1, i2, i3, s0, s1 : IN BIT;
					saida_4x1_comportamental : OUT BIT);
end mux_4x1_comportamental;

architecture mux_4x1_comport_com_mux_2x1 of mux_4x1_comportamental is
	component mux_2x1_comportamental is
		port(i0, i1, s0 : IN BIT;
			saida      : OUT BIT);
	end component;
	
	signal aux1, aux2 : BIT; --sinais auxiliares para os muxes
	
begin
	mux1 : mux_2x1_comportamental port map(i0 => i0,
														i1 => i1,
														s0 => s1,
														saida => aux1);
														
	mux2 : mux_2x1_comportamental port map(i0 => i2,
														i1 => i3,
														s0 => s1,
														saida => aux2);
													
	mux3 : mux_2x1_comportamental port map(i0 => aux1,
														i1 => aux2,
														s0 => s0,
														saida => saida_4x1_comportamental);

end mux_4x1_comport_com_mux_2x1;