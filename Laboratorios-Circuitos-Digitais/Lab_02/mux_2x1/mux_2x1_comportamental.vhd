entity mux_2x1_comportamental is 
port(i0, i1, s0 : IN BIT;
					saida : OUT BIT);
end mux_2x1;

architecture comportamental_2x1 of mux_2x1_comportamental is
begin
with s0 select
	saida <= i0 when '0',
				i1 when '1';
end comportamental_2x1;