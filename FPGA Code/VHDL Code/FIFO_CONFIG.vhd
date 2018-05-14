Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity FIFO_CONFIG is

	port(
	
	MCU_IN 			: in std_logic_vector(7 downto 0);
	clk    			: in std_logic;
	BUFFER_IN 		: in std_logic_vector(3 downto 0);
	AVAILABLE	 	: in std_logic;
	OUTPUT 			: buffer std_logic_vector(7 downto 0);
	BUFFER_READ 	: out std_logic_vector(3 downto 0)
	);

end entity;

architecture Calculations of FIFO_CONFIG is

signal SPACE_AVAILABLE : integer 	:= 0; --Available space in Buffer
signal Current			  : integer		:= 0; --current number of buffers in use
signal MAX				  : integer 	:= 5; --Size of Buffer
signal Latch			  : std_logic  := '0';

begin

	process (clk,MCU_IN,OUTPUT)
		begin
		
			if (rising_edge(clk)) then
			
				Current <= conv_integer(unsigned(BUFFER_IN));
				SPACE_AVAILABLE <= (MAX - Current); --Number of free buffers
			
				if (SPACE_AVAILABLE = 0) then  --IF there is an overflow
					
					OUTPUT <= "01000000";
					OUTPUT(3) <= '1';			--Shift Buffers
					Latch <= '0';
					
				elsif (SPACE_AVAILABLE > 0) then  --IF there is NOT an overflow
			
				
					if (MCU_IN = "00000000") then --IF no data required
					
						
						OUTPUT(1) <= Latch;  	--Continue sampling data and storing in buffers
						OUTPUT(2) <= '0';			--Don't load ADC data onto MCU
						OUTPUT(3) <= '0';			--Dont Shift Buffers
						--OUTPUT(6) <= '0';		--Overflow = 0
						
					--end if;
					
					
					elsif (MCU_IN = "00000001") then  --IF RESET = 1
						
						SPACE_AVAILABLE <= MAX; --Clear the buffers
						OUTPUT(0) <= '1';			--Set Reset flag to 1
						OUTPUT(1) <= '0';			--Set Sampling to 0
						OUTPUT(2) <= '0';			--Don't load ADC data onto MCU
						OUTPUT(3) <= '0';			--Dont Shift Buffers
						OUTPUT(6) <= '0';			--Overflow = 0
						Latch <= '0';
						Current <= Max;			--Makes SPACE_AVAILABLE = 0
						
					--end if;
					
					
					elsif (MCU_IN = "00000010") then  --IF Sampling = 1
						
						OUTPUT(0) <= '0';			--Set RESET flag to 0
						OUTPUT(1) <= '1';			--Set Sampling to 1
						OUTPUT(2) <= '0';			--Don't load ADC data onto MCU
						OUTPUT(3) <= '0';			--Dont Shift Buffers
						OUTPUT(6) <= '0';			--Overflow = 0
						Latch <= '1';
						
					--end if;
					
					
					elsif (MCU_IN = "00000100") then --IF MCU asks to load data
					
						OUTPUT(0) <= '0';			--Set RESET flag to 0
						OUTPUT(1) <= '1';			--Set Sampling to 1
						OUTPUT(2) <= '1';			--Load ADC data onto MCU
						OUTPUT(3) <= '0';			--Dont Shift Buffers
						OUTPUT(6) <= '0';			--Overflow = 0
						Latch <= '1';
						
					--end if;
					
					
					elsif (MCU_IN = "00001000") then --Shift Buffers
					
						OUTPUT(0) <= '0';			--Set RESET flag to 0
						OUTPUT(1) <= '1';			--Set Sampling to 1
						OUTPUT(2) <= '0';			--Don't load ADC data onto MCU
						OUTPUT(3) <= '1';			--Shift Buffers
						OUTPUT(6) <= '0';			--Overflow = 0
					
					end if;
					
				end if; --SPACE_AVAILABLE
				
				
				if (AVAILABLE = '0') then
				
					OUTPUT(7) <= '0';
					
				elsif (AVAILABLE = '1') then
				
					OUTPUT(7) <= '1';
				
				end if; --AVAILABLE
				
				BUFFER_READ <= conv_std_logic_vector(SPACE_AVAILABLE,4); --Number of empty buffers
				
			end if; --rising_edge(clk)
		
	end process;
end Calculations;
