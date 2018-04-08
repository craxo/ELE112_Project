----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.03.2018 13:48:15
-- Design Name: 
-- Module Name: MUX2to1 - Behavioral
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

entity MUX2to1 is
  GENERIC (N: INTEGER := 8);
  Port (I : in STD_LOGIC_VECTOR(N-1 downto 0);
        X_L : in STD_LOGIC;
        X_H : in STD_LOGIC;
        E : out STD_LOGIC;
        L, H : out STD_LOGIC_VECTOR(N-1 downto 0)
        );
end MUX2to1;

architecture Behavioral of MUX2to1 is

begin
process(X_L, X_H)
begin

if (X_L = '1' and X_H = '0') THEN
    E <= '1';
    L <= I;
    H <= "Z";
elsif (X_L = '0' and X_H = '1') THEN
    E <= '1';
    L <= "Z";
    H <= I;
else
    L <= "Z";
    H <= "Z";
end if;
end process;
end Behavioral;
