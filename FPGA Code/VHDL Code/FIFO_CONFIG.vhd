Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity FIFO_CONFIG is

	port(
	
	MCU_IN 		: in std_logic_vector(7 downto 0);
	clk    		: in std_logic;
	--BUFFER_IN 	: in std_logic_vector(3 downto 0);
	OUTPUT 		: buffer std_logic_vector(7 downto 0);
	BUFFER_READ : out std_logic_vector(3 downto 0)
	);

end entity;

architecture Calculations of FIFO_CONFIG is

signal SPACE_AVAILABLE : integer 	:= 0; --Available space in Buffer
signal MAX				  : integer 	:= 4; --Size of Buffer
signal Latch			  : std_logic  := '0';

begin

	process (clk,MCU_IN,OUTPUT)
		begin
		
			if (rising_edge(clk)) then
			
				--SPACE_AVAILABLE <= (MAX - (conv_integer(signed(BUFFER_IN)))); --Number 
			
				if (MCU_IN = "00000000") then --IF no data required
				
					
					OUTPUT(1) <= Latch;  	--Continue sampling data and storing in buffers
					OUTPUT(2) <= '0';			--Don't load ADC data onto MCU
					--OUTPUT(6) <= '0';		--Overflow = 0
					
				--end if;
				
				
				elsif (MCU_IN = "00000001") then  --IF RESET = 1
					
					SPACE_AVAILABLE <= MAX; --Clear the buffers
					OUTPUT(0) <= '1';			--Set Reset flag to 1
					OUTPUT(1) <= '0';			--Set Sampling to 0
					OUTPUT(2) <= '0';			--Don't load ADC data onto MCU
					OUTPUT(6) <= '0';			--Overflow = 0
					Latch <= '0';
					
				--end if;
				
				
				elsif (MCU_IN = "00000010") then  --IF Sampling = 1
					
					OUTPUT(0) <= '0';
					OUTPUT(1) <= '1';			--Set Sampling to 1
					OUTPUT(2) <= '0';			--Don't load ADC data onto MCU
					--OUTPUT(6) <= '0';		--Overflow = 0
					Latch <= '1';
					
				--end if;
				
				
				elsif (MCU_IN = "00000100") then --IF MCU asks to load data
				
					OUTPUT(0) <= '0';			--Set RESET flag to 0
					OUTPUT(1) <= '1';			--Set Sampling to 1
					OUTPUT(2) <= '1';			--Load ADC data onto MCU
					--OUTPUT(6) <= '0';		--Overflow = 0
					Latch <= '1';
					
				end if;
				
				
--				if (SPACE_AVAILABLE = 0) then  --IF there is an overflow
--					
--					OUTPUT(1) <= '0';			--Set Sampling to 0
--					OUTPUT(6) <= '1';			--Overflow = 1	
--					
--				end if;
				
				BUFFER_READ <= conv_std_logic_vector(SPACE_AVAILABLE,4); --Number of empty buffers
				
			end if; --rising_edge(clk)
		
	end process;
end Calculations;
