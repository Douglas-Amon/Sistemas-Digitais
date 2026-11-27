entity combinacional_marcapasso is
  port(s_in, z_in, atual_1, atual_0 : in bit;
       t_out, p_out, proximo_1, proximo_0 : out bit);
end combinacional_marcapasso;

architecture behav of combinacional_marcapasso is
begin
  t_out <= NOT(atual_1) AND NOT(atual_0);
  p_out <= atual_1 AND NOT(atual_0);
  proximo_1 <= NOT(atual_1) AND atual_0 AND NOT(s_in) AND z_in;
  proximo_0 <= (NOT(atual_1) AND NOT(atual_0)) OR (NOT(atual_1) AND NOT(s_in) AND NOT(z_in));
end architecture behav;