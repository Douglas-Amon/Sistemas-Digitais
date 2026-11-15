entity PortaAnd is 
port(and3_1, and3_2, and3_3 : in bit;
		saida_and : out bit);
end PortaAnd;

architecture behav of PortaAnd is
begin
	saida_and <= and3_1 and and3_2 and and3_3;
end architecture behav;