Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity Shifter is

	port(
		FIFO_IN				: in std_logic_vector(7 downto 0);
		bufferin				: in  std_logic_vector(143 downto 0);
		bufferout			: out std_logic_vector(143 downto 0)
	);

end entity;

architecture Calculations of Shifter is

signal BufferCount 	  : integer := 0;
signal buffer1   		  : std_logic_vector(143 downto 0);
signal counter			  : integer := 0;
signal shifter			  : integer := 0;

begin

	process (bufferin,Buffer1)
		begin	
		
			if (FIFO_IN(2) = '1') then --OUTPUT is shifted
			
				buffer1(131 downto 0) <= bufferin(143 downto 12);
				buffer1(143 downto 132) <= "000000000000" ;
			end if;
			
			if (FIFO_IN(3) = '1') then --Shifted OUTPUT onto output
				
				bufferout <= buffer1;
			
			end if;
			
	end process;
end Calculations;
