Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity ADC_in is

	port(
		clk 			: in  std_logic; 							 --Clock
		reset	  		: in  std_logic; 							 --Async reset
		FIFO_IN		: in  std_logic_vector(7 downto 0); 							 --Blue user button on MCU input
		ADC_in 		: in  std_logic_vector(11 downto 0); --Hardware input
		ADC_out 		: buffer std_logic_vector(15 downto 0); --Data output
		BufferCheck : out std_logic_vector(3 downto 0);   --Check how many buffers are in use
		ERROR			: out std_logic_vector(3 downto 0)   --Send codes to MCU if any errors occur in the VHDL code
	);

end entity;

architecture Calculations of ADC_in is

signal BufferCount 	  : integer;
signal Buffer1   		  : std_logic_vector(11 downto 0) := "000000000000";
signal Buffer2 		  : std_logic_vector(11 downto 0) := "000000000000";
signal Buffer3 		  : std_logic_vector(11 downto 0) := "000000000000";
signal Buffer4 		  : std_logic_vector(11 downto 0) := "000000000000";
signal Move_to_Buffer1 : std_logic_vector(11 downto 0) := "000000000000";
signal Move_to_Buffer2 : std_logic_vector(11 downto 0) := "000000000000";
signal Move_to_Buffer3 : std_logic_vector(11 downto 0) := "000000000000";
signal clock_count	  : integer;

begin

	process (clk,reset,Buffer1,Buffer2,Buffer3,Move_to_Buffer1,ADC_in)
		begin
			if (rising_edge(clk)) then
				if (reset = '1') then
					ADC_out <= "0011" & "000000000000";  --0011 is "reset" on MCU
					BufferCheck <= "0000";
					Buffer1 <= "000000000000";
					Buffer2 <= "000000000000";
					Buffer3 <= "000000000000";
					clock_count <= 0;
					BufferCount <= 0;
							
				elsif (FIFO_IN(1) = '1') then
					clock_count <= clock_count + 1;

					
					if (reset = '0') then
					
						if (clock_count = 3) then
		
							if (Buffer2 /= "000000000000") then
								Buffer1 <= Buffer2;
								BufferCount <=  1;
								
								if (Buffer3 <= "000000000000") then
									Buffer2 <= "000000000000";
								end if;
								
							end if;
							
							
							if (Buffer3 /= "000000000000") then
								Buffer2 <= Buffer3;
								BufferCount <= 2;
								
								if (Buffer4 <= "000000000000") then
									Buffer3 <= "000000000000";
								end if;
								
							end if;
							
							
							if (Buffer2 /= "000000000000" and Buffer1 = "000000000000") then 
								ERROR <= "0001";
							end if;
							
						end if; --clock_count = 3
						
						if (clock_count = 4) then
						
							if (Buffer1 = "000000000000") then --or ADC_in /= Buffer1
								Buffer1 <= ADC_in;
								BufferCount <=  1;
							end if;
							
							if (Buffer1 /= "000000000000") then
								Buffer2 <= ADC_in;
								BufferCount <= 2;
							end if;
							
							if (Buffer2 /= "000000000000") then --This could be continued infinitely if required
								Buffer3 <= ADC_in;
								BufferCount <= 3;
							end if;
							
							BufferCheck <= conv_std_logic_vector(BufferCount, 4);
							ADC_out <= "1000" & Buffer1;  --1000 is the "recieve data" from MCU
							
--							if (ADC_in /= Buffer1) then
--								Buffer1 <= ADC_in;
--							end if;
							
							clock_count <= 0;
						
						end if; --clock_count = 4
						
					end if; --reset=0
					
				end if; --reset=1
				
			end if; --rising_edge(clk)
		
	end process;
end Calculations;
