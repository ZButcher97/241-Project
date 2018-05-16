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
		buffer50				: out std_logic_vector(11 downto 0);
		buffer60				: out std_logic_vector(11 downto 0);
		buffer70				: out std_logic_vector(11 downto 0);
		buffer80				: out std_logic_vector(11 downto 0);
		buffer90				: out std_logic_vector(11 downto 0);
		clock_counter 		: out std_logic_vector(4 downto 0);
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
							if (buffer1(59 downto 48) = "000000000000") then --if 5 = '0'
								
								buffer1(59 downto 48) <= ADC_in;					 --5 = data
								counter <= 8;
								BufferCount <= 4;
								
							end if;
						end if;
						
						
						if (counter = 8) then
							if (buffer1(59 downto 48) = buffer1(47 downto 36)) then --if 5 = 4
								
								buffer1(59 downto 48) <= "000000000000";				  --5 = '0'
								counter <= 7;
								
							elsif (buffer1(59 downto 48) /= buffer1(47 downto 36)) then
							
								counter <= 9;
								
							end if;
						end if;
						
						
						if (counter = 9) then
							if (buffer1(71 downto 60) = "000000000000") then --if 6 = '0'
								
								buffer1(71 downto 60) <= ADC_in;					 --6 = data
								counter <= 10;
								BufferCount <= 5;
								
							end if;
						end if;
						
						
						if (counter = 10) then
							if (buffer1(71 downto 60) = buffer1(59 downto 48)) then --if 6 = 5
								
								buffer1(71 downto 60) <= "000000000000";				  --6 = '0'
								counter <= 9;
								
							elsif (buffer1(71 downto 60) /= buffer1(59 downto 48)) then
							
								counter <= 11;
								
							end if;
						end if;
						
						
						if (counter = 11) then
							if (buffer1(83 downto 72) = "000000000000") then --if 7 = '0'
								
								buffer1(83 downto 72) <= ADC_in;					 --7 = data
								counter <= 12;
								BufferCount <= 6;
								
							end if;
						end if;
						
						
						if (counter = 12) then
							if (buffer1(83 downto 72) = buffer1(71 downto 60)) then --if 7 = 6
								
								buffer1(83 downto 72) <= "000000000000";				  --7 = '0'
								counter <= 11;
								
							elsif (buffer1(83 downto 72) /= buffer1(71 downto 60)) then
							
								counter <= 13;
								
							end if;
						end if;
						
						
						if (counter = 13) then
							if (buffer1(95 downto 84) = "000000000000") then --if 8 = '0'
								
								buffer1(95 downto 84) <= ADC_in;					 --8 = data
								counter <= 14;
								BufferCount <= 7;
								
							end if;
						end if;
						
						
						if (counter = 14) then
							if (buffer1(95 downto 84) = buffer1(83 downto 72)) then --if 8 = 7
								
								buffer1(95 downto 84) <= "000000000000";				  --8 = '0'
								counter <= 13;
								
							elsif (buffer1(95 downto 84) /= buffer1(83 downto 72)) then
							
								counter <= 15;
								
							end if;
						end if;
						
						
						if (counter = 15) then
							if (buffer1(107 downto 96) = "000000000000") then --if 9 = '0'
								
								buffer1(107 downto 96) <= ADC_in;					 --9 = data
								counter <= 16;
								BufferCount <= 8;
								
							end if;
						end if;
						
						
						if (counter = 16) then
							if (buffer1(107 downto 96) = buffer1(95 downto 84)) then --if 9 = 8
								
								buffer1(107 downto 96) <= "000000000000";				  --9 = '0'
								counter <= 15;
								
							elsif (buffer1(107 downto 96) /= buffer1(95 downto 84)) then
							
								counter <= 17;
								
							end if;
						end if;
						
						
						if (counter = 17) then
							if (buffer1(119 downto 108) = "000000000000") then --if 10 = '0'
								
								buffer1(119 downto 108) <= ADC_in;					 --10 = data
								counter <= 18;
								BufferCount <= 9;
								
							end if;
						end if;
						
						
						if (counter = 18) then
							if (buffer1(119 downto 108) = buffer1(107 downto 96)) then --if 10 = 9
								
								buffer1(119 downto 108) <= "000000000000";				  --10 = '0'
								counter <= 17;
								
							elsif (buffer1(119 downto 108) /= buffer1(107 downto 96)) then
							
								counter <= 19;
								
							end if;
						end if;
						
						
						if (counter = 19) then
							if (buffer1(131 downto 120) = "000000000000") then --if 11 = '0'
								
								buffer1(131 downto 120) <= ADC_in;					 --11 = data
								counter <= 18;
								BufferCount <= 10;
								
							end if;
						end if;
						
						
						if (counter = 20) then
							if (buffer1(131 downto 120) = buffer1(119 downto 108)) then --if 11 = 10
								
								buffer1(131 downto 120) <= "000000000000";				  --11 = '0'
								counter <= 19;
								
							elsif (buffer1(131 downto 120) /= buffer1(119 downto 108)) then
							
								counter <= 21;
								
							end if;
						end if;
						
						
						if (counter = 21) then
							if (buffer1(143 downto 132) = "000000000000") then --if 12 = '0'
								
								buffer1(143 downto 132) <= ADC_in;					 --12 = data
								counter <= 22;
								BufferCount <= 11;
								
							end if;
						end if;
						
						
						if (counter = 22) then
							if (buffer1(143 downto 132) = buffer1(131 downto 120)) then --if 12 = 11
								
								buffer1(143 downto 132) <= "000000000000";				  --12 = '0'
								counter <= 21;
								
							elsif (buffer1(143 downto 132) /= buffer1(131 downto 120)) then
							
								counter <= 23;
								
							end if;
						end if;
						
						
						if (counter = 23) then

								BufferCount <= 12;--ALL BUFFERS FULL

						end if;
						
						
						if (FIFO_IN(2) = '1') then --load = 1
						
							ADC_out <= buffer1(11 downto 0); --"1111" & 
							bufferout <= buffer1;
						
						end if; --load = 1
						
						
						if (FIFO_IN(3) = '1') then --Shift bits
						
							buffer1 <= bufferin;
							
							if (buffer1(11 downto 0) = "000000000000") then --1=0
								counter <= 0;
							elsif (buffer1(23 downto 12) = "000000000000") then --2=0
								counter <= 1;
							elsif (buffer1(35 downto 24) = "000000000000") then --3=0
								counter <= 3;
							elsif (buffer1(47 downto 36) = "000000000000") then --4=0
								counter <= 5;
							elsif (buffer1(59 downto 48) = "000000000000") then --5=0
								counter <= 7;
							elsif (buffer1(71 downto 60) = "000000000000") then --6=0
								counter <= 9;
							elsif (buffer1(83 downto 72) = "000000000000") then --7=0
								counter <= 11;
							elsif (buffer1(95 downto 84) = "000000000000") then --8=0
								counter <= 13;
							elsif (buffer1(107 downto 96) = "000000000000") then --9=0
								counter <= 15;
							elsif (buffer1(119 downto 108) = "000000000000") then --10=0
								counter <= 17;
							elsif (buffer1(131 downto 120) = "000000000000") then --11=0
								counter <= 19;
							elsif (buffer1(143 downto 132) = "000000000000") then --12=0
								counter <= 21;
							end if;
						
						end if;						
						
						clock_counter <= conv_std_logic_vector(counter,5);
						BufferCheck <= conv_std_logic_vector(BufferCount,4);
						
						buffer10  <= buffer1(11 downto 0);
						buffer20  <= buffer1(23 downto 12);
						buffer30  <= buffer1(35 downto 24);
						buffer40  <= buffer1(47 downto 36);
						buffer50  <= buffer1(59 downto 48);
						buffer60  <= buffer1(71 downto 60);
						buffer70  <= buffer1(83 downto 72);
						buffer80  <= buffer1(95 downto 84);
						buffer90  <= buffer1(107 downto 96);

						
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
