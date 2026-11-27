entity reg2 is
  port(i1, i0, c : in bit;
       q1, q0 : out bit);
end reg2;

architecture behav of reg2 is
begin
  process(c)
  begin
    if (c' EVENT AND c = '1') THEN
      q1 <= i1;
      q0 <= i0;
    end if;
  end process;
end architecture behav;
