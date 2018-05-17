Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity Finale is

	port(
		clk 					: in  std_logic; 								--Clock
		DATA					: in  std_logic_vector(11 downto 0); 	--Buffered ADC signal
		BufferCheck			: in std_logic_vector(3 downto 0);  	--Check how many buffers are in use
		MASK					: in std_logic_vector(3 downto 0);		--First 4 bits to tell MCU is its DATA or RESET
		Final_Output1		: out std_logic_vector(11 downto 0);	--ADC out
		Final_Output2		: out std_logic_vector(7 downto 0)		--Mask followed by Buffers
	);

end entity;

architecture Calculations of Finale is

begin

	process (clk,DATA,MASK,BufferCheck)
		begin
			
			if (rising_edge(clk)) then
			
				Final_Output1 <= DATA;
				Final_Output2 <= MASK & BufferCheck;
			
			end if; --rising_edge(clk)
			
	end process;
end Calculations;
