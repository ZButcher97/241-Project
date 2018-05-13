Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity Buffer3 is

	port(
		clk 			: in  std_logic; 							 --Clock
		FIFO_IN		: in  std_logic_vector(7 downto 0); 							 --Blue user button on MCU input
		ADC_in 		: in  std_logic_vector(11 downto 0); --Hardware input
		ADC_out 		: buffer std_logic_vector(15 downto 0); --Data output
		--BufferCheck : out std_logic_vector(3 downto 0);   --Check how many buffers are in use
		buffer10		: out std_logic_vector(11 downto 0);
		buffer20		: out std_logic_vector(11 downto 0);
		buffer30		: out std_logic_vector(11 downto 0);
		--buffer40		: out std_logic_vector(11 downto 0)
		clock_counter : out std_logic_vector(3 downto 0)
	);

end entity;

architecture Calculations of Buffer3 is

signal BufferCount 	  : integer;
signal buffer1   		  : std_logic_vector(143 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
signal counter			  : integer := 0;
signal count	 		  : integer := 11;
signal count_12	 	  : integer := 0;

begin

	process (clk,Buffer1,ADC_in)
		begin
			
			if (rising_edge(clk)) then
				
				if(counter = 0) then
					if (buffer1(11 downto 0) = "000000000000") then
					
						buffer1(11 downto 0) <= ADC_in;
						counter <= 1;
					end if;
				end if;
				
				
				if(counter = 1) then
					if (buffer1(23 downto 12) = "000000000000") then
						
						buffer1(23 downto 12) <= ADC_in;
						counter <= 2;
						
					end if;
				end if;
				
				
				if(counter = 2) then
					if (buffer1(23 downto 12) = buffer1(11 downto 0)) then
						
						buffer1(23 downto 12) <= "000000000000";
						counter <= 1;
						
					elsif (buffer1(23 downto 12) /= buffer1(11 downto 0)) then
					
						counter <= 3;
						
					end if;
				end if;
				
				
				if(counter = 3) then
					if (buffer1(35 downto 24) = "000000000000") then
						
						buffer1(35 downto 24) <= ADC_in;
						counter <= 4;
						
					end if;
				end if;
				
				
				if(counter = 4) then
					if (buffer1(35 downto 24) = buffer1(23 downto 12)) then
						
						buffer1(35 downto 24) <= "000000000000";
						counter <= 3;
						
					elsif (buffer1(35 downto 24) /= buffer1(23 downto 12)) then
					
						counter <= 5;
						
					end if;
				end if;
				
				ADC_out <= "1111" & buffer1(11 downto 0);
				clock_counter <= conv_std_logic_vector(counter,4);
				
				buffer10 <= buffer1(11 downto 0);
				buffer20 <= buffer1(23 downto 12);
				buffer30 <= buffer1(35 downto 24);
				
			end if;
	end process;
end Calculations;
