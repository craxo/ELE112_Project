----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.03.2018 14:36:50
-- Design Name: 
-- Module Name: dec3to8 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dec3to8 is
  Port (X : IN STD_LOGIC_VECTOR(2 downto 0);
        Y : OUT STD_LOGIC_VECTOR(7 downto 0)
        );
end dec3to8;

architecture Behavioral of dec3to8 is

begin
process(X)
begin
case X is
    when "000" => Y <= "00000001";
    when "001" => Y <= "00000010";
    when "010" => Y <= "00000100";
    when "011" => Y <= "00001000";
    when "100" => Y <= "00010000";
    when "101" => Y <= "00100000";
    when "110" => Y <= "01000000";
    when "111" => Y <= "10000000";
    end case;
end process;
end Behavioral;
