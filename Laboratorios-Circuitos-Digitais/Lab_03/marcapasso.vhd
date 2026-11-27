entity marcapasso is
  port(s, z, clk : in bit;
       t, p, est1, est0, prox1, prox0 : out bit);
end marcapasso;

architecture behavior of marcapasso is
  signal n1, n0 : bit; -- prox estado
  signal s1, s0 : bit; -- estado atual

  component reg2 is
    port(i1, i0, c : in bit;
         q1, q0 : out bit);
  end component;

  component combinacional_marcapasso is
    port(s_in, z_in, atual_1, atual_0 : in bit;
         t_out, p_out, proximo_1, proximo_0 : out bit);
  end component;
begin
  u1 : reg2 port map(i1 => n1, i0 => n0, q1 => s1, q0 => s0, c => clk);
  u2 : combinacional_marcapasso port map(s_in => s, z_in => z,
                        atual_1 => s1, atual_0 => s0,
                        proximo_1 => n1, proximo_0 => n0,
                        t_out => t, p_out => p);

  -- saidas dos bits dos eatados
  est1  <= s1;
  est0  <= s0;
  prox1 <= n1;
  prox0 <= n0;
end architecture behavior;