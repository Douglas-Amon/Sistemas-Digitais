library ieee;
use ieee.std_logic_1164.all;

entity marcapasso_comp is
	port(s, z : IN STD_LOGIC;
		  t, p : OUT STD_LOGIC;
		  clk, rst : IN STD_LOGIC);
end marcapasso_comp;

architecture behavior of marcapasso_comp is
	type statetype is (S_ResetTemp, S_Espera, S_Contracao);
	signal est_atual, est_prox : statetype;
begin

	reg_estados: process(clk, rst)
	begin
		if (rst = '1') THEN
			est_atual <= S_ResetTemp;
		elsif (clk = '1' and clk'EVENT) THEN
			est_atual <= est_prox;
		end if;
	end process;
	
	logica_comb: process(est_atual, s, z)
	begin
		case est_atual is
			when S_ResetTemp => 
				t <= '1';
				p <= '0';
				est_prox <= S_Espera;
			when S_Espera => 
				t <= '0';
				p <= '0';
				if (s = '1') THEN
					est_prox <= S_ResetTemp;
				elsif (z = '1') THEN
					est_prox <= S_Contracao;
				else
					est_prox <= S_Espera;
				end if;
			when S_Contracao =>
				t <= '0';
				p <= '1';
				est_prox <= S_ResetTemp;
			end case;
		end process;
	end behavior;