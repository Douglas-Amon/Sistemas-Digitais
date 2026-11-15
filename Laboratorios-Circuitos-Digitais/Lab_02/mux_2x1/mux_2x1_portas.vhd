entity mux_2x1_portas is 
port(e0, e1, seletora0 : IN BIT;
					saida_porta : OUT BIT);
end;
architecture portas of mux_2x1_portas is
	signal aux_neg: BIT;
	signal aux_and1: BIT;
	signal aux_and2: BIT;
begin
	u1: aux_neg <= NOT seletora0;
	u2: aux_and1 <= e0 AND aux_neg;
	u3: aux_and2 <= e1 AND seletora0;
	u4: saida_porta <= aux_and1 or aux_and2;
end;