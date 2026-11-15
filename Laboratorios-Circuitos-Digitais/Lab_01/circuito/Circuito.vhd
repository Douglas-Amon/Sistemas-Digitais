entity Circuito is
port(A, B, C : in bit;
		S1, S2 : out bit);
end Circuito;

architecture behav of Circuito is
	signal i1 : bit; --aux para AB
	signal i2 : bit; --aux para BC
	signal i3 : bit; --aux para AC
	signal m1 : bit; --aux para A'B'C
	signal m2 : bit; --aux para A'BC'
	signal m3 : bit; --aux para AB'C'
	signal m4 : bit; --aux para ABC
	component PortaAnd2 is
		port(and2_1, and2_2 : in bit;
				saida_and2 : out bit);
		end component;
	component PortaOr3 is
		port(or3_1, or3_2, or3_3 : in bit;
				saida_or3 : out bit);
		end component;
	component PortaAnd is
		port(and3_1, and3_2, and3_3 : in bit;
				saida_and : out bit);
		end component;
	component PortaOr4 is
		port(or4_1, or4_2, or4_3, or4_4: in bit;
				saida_or4 : out bit);
		end component;
		
begin
	u1 : PortaAnd2 port map(and2_1 => A, and2_2 => B, saida_and2 => i1);
	u2 : PortaAnd2 port map(and2_1 => B, and2_2 => C, saida_and2 => i2);
	u3 : PortaAnd2 port map(and2_1 => A, and2_2 => C, saida_and2 => i3);
	u4 : PortaOr3 port map(or3_1 => i1, or3_2 => i2, or3_3 => i3, saida_or3 => S1);
	r1 : PortaAnd port map(and3_1 => not(A), and3_2 => not(B), and3_3 => C, saida_and => m1);
	r2 : PortaAnd port map(and3_1 => not(A), and3_2 => B, and3_3 => not(C), saida_and => m2);
	r3 : PortaAnd port map(and3_1 => A, and3_2 => not(B), and3_3 => not(C), saida_and => m3);
	r4 : PortaAnd port map(and3_1 => A, and3_2 => B, and3_3 => C, saida_and => m4);
	r5 : PortaOr4 port map(or4_1 => m1, or4_2 => m2, or4_3 => m3, or4_4 => m4, saida_or4 => S2);
end architecture behav;