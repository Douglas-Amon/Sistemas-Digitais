entity decodificador_7segmentos_portas is 
port(a4,a3,a2,a1,e : in bit ;
				s6,s5,s4,s3,s2,s1,s0 :out bit );
end;

architecture behav of decodificador_7segmentos_portas is 
begin
s0<= e and ((a4 and a3) or (a4 and a2) or (a3 and not(a2) and not(a1)) or (not(a4) and not(a3) and not(a2) and a1));
s1<= e and ((a4 and a3) or (a4 and a2) or (a3 and not(a2) and a1) or (a3 and a2 and not(a1)));
s2<= e and ((a4 and a3) or (a4 and a2) or (not(a3) and a2 and not(a1)));
s3<= e and ((a4 and a1) or (a4 and a2) or (not(a3) and not(a2) and a1) or (a3 and a2 and a1) or (a3 and not(a2) and not(a1)));
s4<= e and ((a4 and a2) or (a3 and not(a2)) or a1);
s5<= e and ((a4 and a3) or (not(a3) and a2) or (a2 and a1) or (not(a4) and not(a3) and a1));
s6<= e and ((a4 and a3) or (a4 and a2) or (a3 and a2 and a1) or (not(a4) and not(a3) and not(a2)));

end;
				