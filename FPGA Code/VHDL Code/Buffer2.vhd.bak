Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity Buffers is

	port(
		clk 			: in  std_logic; 							 --Clock
		FIFO_IN		: in  std_logic_vector(7 downto 0); 							 --Blue user button on MCU input
		ADC_in 		: in  std_logic_vector(11 downto 0); --Hardware input
		ADC_out 		: buffer std_logic_vector(15 downto 0); --Data output
		BufferCheck : out std_logic_vector(3 downto 0);   --Check how many buffers are in use
		Buffer10		: out std_logic_vector(11 downto 0);
		Buffer20		: out std_logic_vector(11 downto 0);
		Buffer30		: out std_logic_vector(11 downto 0);
		Buffer40		: out std_logic_vector(11 downto 0)
	);

end entity;

architecture Calculations of Buffers is

signal BufferCount 	  : integer;
signal Buffer1   		  : std_logic_vector(11 downto 0) := "000000000000";
signal Buffer2 		  : std_logic_vector(11 downto 0) := "000000000000";
signal Buffer3 		  : std_logic_vector(11 downto 0) := "000000000000";
signal Buffer4 		  : std_logic_vector(11 downto 0) := "000000000000";
--signal Move_to_Buffer1 : std_logic_vector(11 downto 0) := "000000000000";
--signal Move_to_Buffer2 : std_logic_vector(11 downto 0) := "000000000000";
--signal Move_to_Buffer3 : std_logic_vector(11 downto 0) := "000000000000";
signal clock_count	  : integer;

begin

	process (clk,Buffer1,Buffer2,Buffer3,ADC_in)
		begin
			if (rising_edge(clk)) then
				if (FIFO_IN(0) = '1') then   --If reset = 1
					ADC_out <= "0011" & "000000000000";  --0011 is "reset" on MCU
					BufferCheck <= "0000";
					Buffer1 <= "000000000000";
					Buffer2 <= "000000000000";
					Buffer3 <= "000000000000";
					clock_count <= 0;
					BufferCount <= 0;
							
				elsif (FIFO_IN(0) = '0') then  --If reset = 0
					
					if (FIFO_IN(1) = '1') then  --If sample = 1
						
						clock_count <= clock_count + 1;
						
--						if (clock_count = 1) then --Shift Buffers
--						
--							if (Buffer1 /= ADC_in) then --If Buffer 1 doesnt equal current input data
--							
--								if (Buffer2 /= "000000000000") then
--									Buffer1 <= Buffer2;
--									BufferCount <=  1;
--									
--									if (Buffer3 <= "000000000000") then
--										Buffer2 <= "000000000000";
--									end if;
--									
--								end if;
--								
--								
--								if (Buffer3 /= "000000000000") then
--									Buffer2 <= Buffer3;
--									BufferCount <= 2;
--									
--									if (Buffer4 <= "000000000000") then
--										Buffer3 <= "000000000000";
--									end if;
--									
--								end if;
--								
--							
--							end if;  --Buffer1 /= ADC_in
--							
--						end if; --clock_count = 1
						
						
						if (clock_count = 1) then --Fill buffers
						
							if (Buffer1 = "000000000000") then
								Buffer1 <= ADC_in;
								BufferCount <=  1;  --one buffer in use
							end if;
						
						end if;
						
						
						if (clock_count = 2) then --Fill buffers
						
							if (Buffer1 /= ADC_in) then
								Buffer2 <= ADC_in;
								BufferCount <= 2;  --two buffers in use
							end if;
						
						end if;
							
						
						if (clock_count = 3) then --Fill buffers
						
							if (Buffer2 /= ADC_in) then --This could be continued infinitely if required
								Buffer3 <= ADC_in;
								BufferCount <= 3;  --three buffers in use
							end if;
						
						end if;
						
						
						if (clock_count = 4) then --Fill buffers
							
							if (Buffer3 /= ADC_in) then --This could be continued infinitely if required
								Buffer4 <= ADC_in;
								BufferCount <= 4;  --four buffers in use
							end if;
						
						end if;
							
						BufferCheck <= conv_std_logic_vector(BufferCount, 4);  --output number of buffers in use
						--ADC_out <= "1000" & Buffer1;  --1000 is the "recieve data" from MCU
						
						if (clock_Count = 5) then
							clock_count <= 0;
						end if;
						
						Buffer10 <= Buffer1;
						Buffer20 <= Buffer2;
						Buffer30 <= Buffer3;
						Buffer40 <= Buffer4;
					
						--end if; --clock_count = 2
						
						
						if (FIFO_IN(2) = '1') then --LOAD buffer1 onto ADC_out
							
							ADC_out <= "1000" & Buffer1;  --1000 is the "recieve data" from MCU
							
						end if;  --FIFO_IN(2) = '1'
						
					end if; --reset=0
					
				end if; --reset=1
				
			end if; --rising_edge(clk)
		
	end process;
end Calculations;
