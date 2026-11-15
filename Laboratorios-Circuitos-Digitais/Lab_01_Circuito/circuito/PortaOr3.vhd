entity PortaOr3 is
port(or3_1, or3_2, or3_3 : in bit;
		saida_or3 : out bit);
end PortaOr3;

architecture behav of PortaOr3 is
begin 
	saida_or3 <= or3_1 or or3_2 or or3_3;
end architecture behav;