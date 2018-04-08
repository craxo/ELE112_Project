----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.03.2018 09:59:00
-- Design Name: 
-- Module Name: MUX3to1 - Behavioral
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

entity MUX3to1 is
 Port (XIN, YIN, ZIN : in STD_LOGIC_VECTOR(7 downto 0);
       SEL : in STD_LOGIC_VECTOR(3 downto 0);
       OUTPUT : out STD_LOGIC_VECTOR(7 downto 0)
       );
end MUX3to1;

architecture Behavioral of MUX3to1 is
begin
process(SEL) is
begin
    if (SEL = x"1") then
      OUTPUT <= XIN;
  elsif (SEL = x"2") then
      OUTPUT <= YIN;
  elsif (SEL = x"4") then
      OUTPUT <= ZIN;
  else
     OUTPUT <= "00000000";
      
  end if;
 
end process;
end behavioral;