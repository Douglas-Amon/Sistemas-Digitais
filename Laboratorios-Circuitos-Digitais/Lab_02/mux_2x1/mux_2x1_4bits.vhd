entity mux_2x1_4bits is
    port(
        i0, i1  : in BIT_VECTOR(3 DOWNTO 0);
        s0         : in  BIT;
        d          : out BIT_VECTOR(3 DOWNTO 0));
end mux_2x1_4bits;

architecture portas_logicas of mux_2x1_4bits is
    component mux_2x1_portas is 
        port(
            e0, e1, seletora0 : IN BIT;
            saida_porta       : OUT BIT
        );
    end component;
begin
	bit0 : mux_2x1_portas port map(e0 => i0(0), e1 => i1(0), seletora0 => s0, saida_porta => d(0));
	bit1 : mux_2x1_portas port map(e0 => i0(1), e1 => i1(1), seletora0 => s0, saida_porta => d(1));
	bit2 : mux_2x1_portas port map(e0 => i0(2), e1 => i1(2), seletora0 => s0, saida_porta => d(2));
	bit3 : mux_2x1_portas port map(e0 => i0(3), e1 => i1(3), seletora0 => s0, saida_porta => d(3));
end portas_logicas;