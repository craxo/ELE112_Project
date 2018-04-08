----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.10.2017 11:28:15
-- Design Name: 
-- Module Name: 2to4decoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dec2to4 is
    Port ( x : in STD_LOGIC_VECTOR(1 downto 0);
           y : out STD_LOGIC_VECTOR(3 downto 0));
end dec2to4;

architecture Behavioral of dec2to4 is
begin
process (X)
begin
    y <= "0000";        -- default output value
        case X is
            when "00" => y(0) <= '1';
            when "01" => y(1) <= '1';
            when "10" => y(2) <= '1';
            when "11" => y(3) <= '1';
            when others => y <= "0000";
        end case;
end process;
end Behavioral;
    
