Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity ADC_in is

	port(
		clk 			: in  std_logic; 							 --Clock
		reset	  		: in  std_logic; 							 --Async reset
		enable		: in  std_logic; 							 --Blue user button on MCU input
		ADC_in 		: in  std_logic_vector(11 downto 0); --Hardware input
		ADC_out 		: buffer std_logic_vector(15 downto 0); --Data output
		BufferCheck : out std_logic_vector(3 downto 0)   --Check how many buffers are in use
	);

end entity;

architecture Calculations of ADC_in is

signal latched 		  : std_logic;
signal BufferCount 	  : std_logic_vector(3 downto 0)  := "0000";
signal Buffer1   		  : std_logic_vector(11 downto 0) := "000000000000";
signal Buffer2 		  : std_logic_vector(11 downto 0) := "000000000000";
signal Buffer3 		  : std_logic_vector(11 downto 0) := "000000000000";
signal Move_to_Buffer1 : std_logic_vector(11 downto 0) := "000000000000";
signal Move_to_Buffer2 : std_logic_vector(11 downto 0) := "000000000000";
signal Move_to_Buffer3 : std_logic_vector(11 downto 0) := "000000000000";

begin

	process (clk,reset,Buffer1,Buffer2,Buffer3,Move_to_Buffer1,ADC_in)
		begin
			if (rising_edge(clk)) then
				if (reset = '1') then
					ADC_out <= "0011" & "000000000000";  --0011 is "reset" on MCU
					latched <= '0';
					BufferCheck <= "0000";
							
				elsif (enable = '1' or latched = '1') then
					latched <= '1';
					
					if (reset = '0') then
						
						if (Buffer1 = "000000000000") then --or ADC_in /= Buffer1
							Buffer1 <= ADC_in;
						end if;
						
						if (Buffer1 /= "000000000000") then
							Buffer2 <= ADC_in;
						end if;
						
						if (Buffer2 /= "000000000000") then --This could be continued infinitely if required
							Buffer3 <= ADC_in;
						end if;
						
						ADC_out <= "1000" & Buffer1;  --1000 is the "recieve data" from MCU
						
						if (ADC_in /= Buffer1) then
							Buffer1 <= ADC_in;
						end if;
						
					end if;
					
				end if;
				
			end  if;
			
	end process;
end Calculations;
