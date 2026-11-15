entity PortaOr4 is
port(or4_1, or4_2, or4_3, or4_4 : in bit;
		saida_or4 : out bit);
end PortaOr4;

architecture behav of PortaOr4 is
begin 
	saida_or4 <= or4_1 or or4_2 or or4_3 or or4_4;
end architecture behav;