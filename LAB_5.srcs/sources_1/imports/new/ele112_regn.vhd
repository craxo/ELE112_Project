----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.10.2015 15:03:28
-- Design Name: 
-- Module Name: ele112_regn - Behavioral
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

entity ele112_regn is
GENERIC( N:INTEGER := 8);
    Port ( R : in STD_LOGIC_VECTOR (N-1 downto 0);
           Rin : in STD_LOGIC;
           Clock : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (N-1 downto 0));
end ele112_regn;

architecture Behavioral of ele112_regn is

begin
  PROCESS
  BEGIN
     Wait UNTIL Clock'EVENT AND Clock = '1';
     IF Rin = '1' THEN
          Q <= R;
     END IF;
  END PROCESS;
end Behavioral;
