Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity ADC_in is

	port(
		clk 		: in std_logic; --Clock
		reset	   : in std_logic; --Async reset
		enable	: in std_logic; --Blue user button on MCU input
		ADC_in 	: in std_logic_vector(11 downto 0); --Data word input
		ADC_out 	: out std_logic_vector(15 downto 0) --Data output
	);

end entity;

architecture Calculations of ADC_in is

signal latched : std_logic;

begin

	process (clk, reset)
		begin
			if (reset = '1') then
				ADC_out <= "0011000000000000"; --0011 is reset on MCU
				latched <= '0';
			
			elsif (enable = '1') then
				latched <= '1';
			
			elsif (reset = '0') then
				if (latched = '1') then
					if (rising_edge(clk)) then
						ADC_out <= "1000" & ADC_in(11 downto 0);  --1000 is recieve data from MCU
					end if;
				end if;
			end if;
	end process;
end Calculations;
