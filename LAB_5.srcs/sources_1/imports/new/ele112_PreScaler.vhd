----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.12.2015 10:54:55
-- Design Name: 
-- Module Name: ele112_PreScaler - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ele112_PreScaler is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           preScalerNumber : in STD_LOGIC_VECTOR (3 downto 0);
           clkOut : out STD_LOGIC);
end ele112_PreScaler;

architecture Behavioral of ele112_PreScaler is
signal counter : STD_LOGIC_VECTOR (9 DOWNTO 0):= (others => '0');
begin
  PROCESS(clk)
    BEGIN
      IF (clk'EVENT AND clk = '1') THEN
       IF ( reset = '1') THEN
         counter <= (others => '0');
       ELSE  
        counter <= counter + 1 ;
       END IF; 
      END IF; 
   END PROCESS; 
   
   WITH  preScalerNumber SELECT
    clkOut <=  
            clk        WHEN  x"0",
            counter(0) WHEN  x"1",
            counter(1) WHEN  x"2",
            counter(2) WHEN  x"3",
            counter(3) WHEN  x"4",
            counter(4) WHEN  x"5",
            counter(5) WHEN  x"6",
            counter(6) WHEN  x"7",
            counter(7) WHEN  x"8", 
            counter(8) WHEN OTHERS; 

end Behavioral;
