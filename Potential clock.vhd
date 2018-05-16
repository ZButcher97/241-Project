library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This is VHDL code for a 20MHz CLock
-- Possibility to change to desired frequency of what we want??



entity clk20Hz is
    Port (
        clk_in : in  STD_LOGIC;
        reset  : in  STD_LOGIC;
        clk_out: out STD_LOGIC
    );
end clk200Hz;

architecture Behavioral of clk20Hz is
    signal temporal: STD_LOGIC;
    signal counter : integer range 0 to 10000 := 0;
begin
    frequency_divider: process (reset, clk_in) begin
        if (reset = '1') then
            temporal <= '0';
            counter <= 0;
        elsif rising_edge(clk_in) then
            if (counter = 10000) then
                temporal <= NOT(temporal);
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    clk_out <= temporal;
end Behavioral;