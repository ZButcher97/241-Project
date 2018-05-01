Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity ADC_in is

	port(
		clk 		: in std_logic; --Clock
		reset	   : in std_logic; --Async reset
		enable	: in std_logic; --Blue user button on MCU input
		ADC_in 	: in std_logic_vector(11 downto 0); --Hardware input
		ADC_out 	: out std_logic_vector(15 downto 0); --Data output
		BufferCheck : out std_logic_vector(3 downto 0) --Check how many buffers are in use
	);

end entity;

architecture Calculations of ADC_in is

signal latched : std_logic;
signal BufferCount : std_logic_vector(3 downto 0) := "0000";
signal Buffer1 : std_logic_vector(11 downto 0) := "000000000000";
signal Buffer2 : std_logic_vector(11 downto 0) := "000000000000";
signal Buffer3 : std_logic_vector(11 downto 0) := "000000000000";
signal MovingBuffer : std_logic_vector(11 downto 0) := "000000000000";

begin

	process (clk, reset)
		begin
			if (reset = '1') then
				ADC_out <= "0011000000000000"; --0011 is reset on MCU
				latched <= '0';
			
			elsif (enable = '1') then
				latched <= '1';
			
			if (reset = '0') then
				if (latched = '1') then
					if (rising_edge(clk)) then
												
						if (Buffer1 = "000000000000") then
							Buffer1 <= ADC_in(11 downto 0);
							BufferCount(0) <= '1';
						end if;
						
						elsif (Buffer2 = "000000000000") then
							Buffer2 <= ADC_in(11 downto 0);
							BufferCount(1) <= '1';
						end if;
						
						elsif (Buffer3 = "000000000000") then
							Buffer3 <= ADC_in(11 downto 0);
							BufferCount(2) <= '1';
						end if;
						
					
						ADC_out <= "1000" & Buffer1(11 downto 0);  --1000 is recieve data from MCU
						BufferCheck <= BufferCount;
					end if;
					
					--if (Buffer1 <= ADC_out(11 downto 0)) then
					--	Buffer1 <= Buffer2;
					--	Buffer2 <= Buffer3;
					--end if;
				end if;
	end process;
end Calculations;
