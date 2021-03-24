Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all;

entity hw2 is
	port(
		D_in : in unsigned( 3 downto 0 );
		clk, enable : in std_logic;
		S : in bit_vector( 1 downto 0 );
		A, B, C, Y : out unsigned( 3 downto 0 )
	);
end hw2;

architecture My_ckt_1 of hw2 is
signal X : unsigned( 7 downto 0 );
signal tmp_A, tmp_B, tmp_C : unsigned( 3 downto 0 );
begin
	A <= tmp_A;
	B <= tmp_B;
	C <= tmp_C;
	process
	begin
		tmp_A <= "0000";
		tmp_B <= "0000";
		tmp_C <= "0000";
		wait until(clk'EVENT and clk = '1' and enable = '1' );
		tmp_A <= D_in;
		tmp_B <= tmp_A;
		tmp_C <= tmp_B;
	end process;
	
	process( tmp_A, tmp_B, tmp_C, S, X )
	begin
		case S is
		when "00" =>
			Y <= tmp_A OR tmp_B;
		when "01" =>
			if tmp_A > tmp_B then
				if tmp_A > tmp_C then
					Y <= tmp_A;
				else
					Y <= tmp_C;
				end if;
			else
				if tmp_B > tmp_C then
					Y <= tmp_B;
				else
					Y <= tmp_C;
				end if;
			end if;
		when "10" =>
			X <= tmp_A * tmp_B;
			for i in 3 downto 0 loop
				Y(i) <= X(i);
			end loop;
		when "11" =>
			Y <= tmp_A + tmp_C;
		when others =>
			Y <= "0000";
		end case;
	end process;
end My_ckt_1;