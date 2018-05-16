Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity Buffer2 is

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

architecture Calculations of Buffer2 is

signal BufferCount 	  : integer;
signal buffer1   		  : std_logic_vector(11 downto 0) := "000000000000";
signal buffer2 		  : std_logic_vector(11 downto 0) := "000000000000";
signal buffer3 		  : std_logic_vector(11 downto 0) := "000000000000";
signal buffer4 		  : std_logic_vector(11 downto 0) := "000000000000";
signal clock_count	  : integer := 0;
signal count	 		  : integer := 0;

begin

	process (clk,Buffer1,Buffer2,Buffer3,ADC_in)
		begin
			
			if (rising_edge(clk)) then
				
				if (FIFO_IN(0) = '1') then --RESET = 1
					
					ADC_out <= "0011" & "000000000000";
					buffer1 <= "000000000000";
					buffer2 <= "000000000000";
					buffer3 <= "000000000000";
				
				
				elsif (FIFO_IN(0) = '0') then --RESET = 0
					
					if (FIFO_IN(1) = '1') then --Sample = 1
						
						if (buffer1 = "000000000000") then  --This is a one off when the system first starts
						
							buffer1 <= ADC_in;
							count <= 1;
						
						end if;
						
						
						if (count = 1) then --If buffer = ADC_in
						
							if (buffer1 /= ADC_in) then
								
								buffer2 <= ADC_in;
								count <= 2;
							
							end if;
						
						
						elsif (count = 2) then
							if (buffer2 /= ADC_in) then
						
								buffer3 <= ADC_in;
								count <= 1;
								
							end if;
							
						end if; --count
						
						
						buffer10 <= buffer1;
						buffer20 <= buffer2;
						buffer30 <= buffer3;
						
						clock_counter <= conv_std_logic_vector(count,4);
						
						if (FIFO_IN(2) = '1') then --Load = 1

							ADC_out <= "1111" & buffer1; --Output the mask for data and then the oldest adc data
							
							count <= 8; 
							
						end if; --Load = 1
						
						
						if (count = 8) then
							buffer1 <= buffer2;
							count <= 1;
						end if;
					
					end if; --Sample = 1
					
				end if; --RESET
				
			end if;
			
	end process;
end Calculations;
