Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity Buffer3 is

	port(
		clk 					: in  std_logic; 							 --Clock
		FIFO_IN				: in  std_logic_vector(7 downto 0); 							 --Blue user button on MCU input
		ADC_in 				: in  std_logic_vector(11 downto 0); --Hardware input
		bufferin				: in  std_logic_vector(143 downto 0);
		ADC_out 				: buffer std_logic_vector(11 downto 0); --Data output
		BufferCheck			: out std_logic_vector(3 downto 0);   --Check how many buffers are in use
		bufferout			: out std_logic_vector(143 downto 0);
		buffer10				: out std_logic_vector(11 downto 0);
		buffer20				: out std_logic_vector(11 downto 0);
		buffer30				: out std_logic_vector(11 downto 0);
		buffer40				: out std_logic_vector(11 downto 0);
		clock_counter 		: out std_logic_vector(3 downto 0);
		clock_shifter 		: out std_logic_vector(3 downto 0);
		AVAILABLE			: out std_logic
	);

end entity;

architecture Calculations of Buffer3 is

signal BufferCount 	  : integer := 0;  --Buffers in use
signal buffer1   		  : std_logic_vector(143 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
signal counter			  : integer := 0;
signal shifter			  : integer := 0;

begin

	process (clk,Buffer1,ADC_in)
		begin
			
			if (rising_edge(clk)) then
			
				if(FIFO_IN(0) = '1') then --reset = 1
				
					ADC_out <= "000000000000"; --"0011" &
					buffer1 <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
					counter <= 0;
					shifter <= 0;
			
				elsif (FIFO_IN(0) = '0') then --if reset=0
					
					if (FIFO_IN(1) = '1') then --if sampling=1
					
						if (counter = 0) then
							if (buffer1(11 downto 0) = "000000000000") then --if 1 = '0'
							
								buffer1(11 downto 0) <= ADC_in;					--1 = data
								counter <= 1;
								BufferCount <= 0;
								
							end if;
						end if;
						
						
						if (counter = 1) then
							if (buffer1(23 downto 12) = "000000000000") then  --if 2 = '0'
								
								buffer1(23 downto 12) <= ADC_in;					  --2 = data
								counter <= 2;
								
							end if;
						end if;
						
						
						if (counter = 2) then
							if (buffer1(23 downto 12) = buffer1(11 downto 0)) then --if 2 = 1
								
								buffer1(23 downto 12) <= "000000000000";				 --2 = data
								counter <= 1;
								BufferCount <= 1;
								
							elsif (buffer1(23 downto 12) /= buffer1(11 downto 0)) then
							
								counter <= 3;
								
							end if;
						end if;
						
						
						if (counter = 3) then
							if (buffer1(35 downto 24) = "000000000000") then --if 3 = '0'
								
								buffer1(35 downto 24) <= ADC_in;					 --3 = data
								counter <= 4;
								BufferCount <= 2;
								
							end if;
						end if;
						
						
						if (counter = 4) then
							if (buffer1(35 downto 24) = buffer1(23 downto 12)) then --if 3 = 2
								
								buffer1(35 downto 24) <= "000000000000";				  --3 = '0'
								counter <= 3;
								
							elsif (buffer1(35 downto 24) /= buffer1(23 downto 12)) then
							
								counter <= 5;
								
							end if;
						end if;
						
						
						if (counter = 5) then
							if (buffer1(47 downto 36) = "000000000000") then --if 4 = '0'
								
								buffer1(47 downto 36) <= ADC_in;					 --4 = data
								counter <= 6;
								BufferCount <= 3;
								
							end if;
						end if;
						
						
						if (counter = 6) then
							if (buffer1(47 downto 36) = buffer1(35 downto 24)) then --if 4 = 3
								
								buffer1(47 downto 36) <= "000000000000";				  --4 = '0'
								counter <= 5;
								
							elsif (buffer1(47 downto 36) /= buffer1(35 downto 24)) then
							
								counter <= 7;
								
							end if;
						end if;
						
						
						if (counter = 7) then
							
								BufferCount <= 4;
								
						end if;
						
						
						if (FIFO_IN(2) = '1') then --load = 1
						
							ADC_out <= buffer1(11 downto 0); --"1111" & 
							bufferout <= buffer1;
							
--							if(shifter = 0) then
--							
--								buffer1(11 downto 0) <= buffer1(23 downto 12); --2 into 1
--								shifter <= 1;
--								
--								if (buffer1(11 downto 0) = "000000000000") then --if 1 = '0'
--								
--									counter <= 0;
--								
--								end if;
--							end if;
--							
--							
--							if(shifter = 1) then
--							
--								buffer1(23 downto 12) <= buffer1(35 downto 24); -- 3 into 2
--								shifter <= 2;												--2 becomes 0
--								
--								if (buffer1(23 downto 12) = "000000000000") then --if 2 = '0'
--								
--									counter <= 1;
--								
--								end if;
--							end if;
--							
--							
--							if(shifter = 2) then
--							
--								buffer1(35 downto 24) <= buffer1(47 downto 36); -- 4 into 3
--								shifter <= 3;												--3 becomes 0
--								
--								if (buffer1(35 downto 24) = "000000000000") then --if 3 = '0'
--								
--									counter <= 2;
--								
--								end if;
--							end if;
						
						end if; --load = 1
						
						
						if (FIFO_IN(2) = '0') then --load = 0
						
							shifter <= 0;
 
						end if; --load = 0
						
						
						if (FIFO_IN(3) = '1') then
						
							buffer1 <= bufferin;
						
						end if;						
						
						clock_counter <= conv_std_logic_vector(counter,4);
						clock_shifter <= conv_std_logic_vector(shifter,4);
						BufferCheck <= conv_std_logic_vector(BufferCount,4);
						buffer10 <= buffer1(11 downto 0);
						buffer20 <= buffer1(23 downto 12);
						buffer30 <= buffer1(35 downto 24);
						buffer40 <= buffer1(47 downto 36);
						
					end if; --if sampling=1
				end if; --if reset=0	
				
				
				if (BufferCount > 0) then
					
					AVAILABLE <= '1';
				
				elsif (BufferCount = 0) then
					
					AVAILABLE <= '0';
				
				end if; --AVAILABLE
				
			end if; --rising_edge(clk) = 1
	end process;
end Calculations;
