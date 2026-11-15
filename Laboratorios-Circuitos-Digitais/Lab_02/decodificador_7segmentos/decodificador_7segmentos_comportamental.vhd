entity decodificador_7segmentos_comportamental is 
port(a4,a3,a2,a1 ,e : in bit ;
				s0,s1,s2,s3,s4,s5,s6 :out bit );

end;

architecture behav of decodificador_7segmentos_comportamental is 
signal out_aux: bit_vector(6 downto 0);
signal in_aux: bit_vector(4 downto 0);

begin 
in_aux <= e & a4 & a3 & a2 & a1 ;
with in_aux select 
out_aux <="1000000" when "10000",
			 "1111001" when"10001" ,
			 "0100100" when "10010",
			 "0110000" when "10011",
			 "0011001" when "10100",
			 "0010010" when "10101",
			 "0000010" when "10110", 
			 "1111000" when "10111",
			 "0000000" when "11000",
			 "0011000" when "11001",
			 "1111111" when others;
			 
s0<=out_aux(0);
s1<=out_aux(1);
s2<=out_aux(2);
s3<=out_aux(3);
s4<=out_aux(4);
s5<=out_aux(5);
s6<=out_aux(6);
end;