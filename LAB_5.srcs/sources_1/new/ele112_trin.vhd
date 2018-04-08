----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.10.2015 15:03:28
-- Design Name: 
-- Module Name: ele112_trin - Behavioral
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

entity ele112_trin is
    GENERIC ( N : INTEGER := 8);
    Port ( X : in STD_LOGIC_VECTOR (N-1 downto 0);
           E : in STD_LOGIC;
           F : out STD_LOGIC_VECTOR (N-1 downto 0));
end ele112_trin;

architecture Behavioral of ele112_trin is

begin
F <= (OTHERS => 'Z') WHEN E = '0' ELSE X;
end Behavioral;
