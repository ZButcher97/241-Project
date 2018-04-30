Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity ADC_in is

	port(
		clk 		: in std_logic; --Clock
		reset	   : in std_logic; --Async reset
		ADC_in 	: in std_logic_vector(11 downto 0); --Data word input
		ADC_out 	: out std_logic_vector(11 downto 0) --Data output
	);

end entity;

architecture Calculations of ADC_in is

begin

	process (clk, reset)
		begin
			if (reset = '1') then
				ADC_out <= "001100000000";
			
			elsif (reset = '0') then
				if (rising_edge(clk)) then
					ADC_out <= ADC_in;
				end if;
			end if;
	end process;
end Calculations;
