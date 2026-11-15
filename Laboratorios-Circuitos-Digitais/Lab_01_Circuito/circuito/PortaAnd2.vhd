entity PortaAnd2 is 
port(and2_1, and2_2 : in bit;
		saida_and2 : out bit);
end PortaAnd2;

architecture behav of PortaAnd2 is
begin
	saida_and2 <= and2_1 and and2_2;
end architecture behav;