----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.02.2016 12:26:09
-- Design Name: 
-- Module Name: ELE112_LAB_5_tb - Behavioral
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
USE ieee.std_logic_unsigned.all;
use work.components.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ELE112_LAB_5_tb is
--  Port ( );
end ELE112_LAB_5_tb;

architecture Behavioral of ELE112_LAB_5_tb is
COMPONENT ELE112_LAB_5
    Port (START : in STD_LOGIC;
          STARTED : inout STD_LOGIC;
          DONE : inout STD_LOGIC;
          MOSI : out STD_LOGIC;
          MISO : in STD_LOGIC;
          SS : inout STD_LOGIC;
          SCLK : inout STD_LOGIC;
          Reset:in STD_LOGIC;
          CLK : in STD_LOGIC;
          SPI_SCLK_sel: in STD_LOGIC_VECTOR(3 downto 0)
       );
END COMPONENT;

SIGNAL START_tb : STD_LOGIC := '0';
SIGNAL STARTED_tb :  STD_LOGIC := '0';
SIGNAL DONE_tb :  STD_LOGIC;
SIGNAL MOSI_tb :  STD_LOGIC;
SIGNAL MISO_tb : STD_LOGIC:= '0';
SIGNAL SS_tb :  STD_LOGIC;
SIGNAL SCLK_tb :  STD_LOGIC := '0';
SIGNAL Reset_tb: STD_LOGIC := '1' ;
SIGNAL CLK_tb: STD_LOGIC := '0' ;
SIGNAL SPI_SCLK_sel_tb: STD_LOGIC_VECTOR(3 downto 0) := "0001";

begin


UUT:ELE112_LAB_5 PORT MAP(START_tb, STARTED_tb, DONE_tb, MOSI_tb,MISO_tb, SS_tb, SCLK_tb, Reset_tb, CLK_tb,SPI_SCLK_sel_tb);

MISO_tb <= MOSI_tb AND (NOT SS_tb);  -- Simpel test with loopback om MOSI <->MISO  

-- To test with a SPI slave comment out the line above, and tack in the line belowe.
--SPIS:ELE112_LAB_5_SPIS PORT MAP(MODE_tb, MOSI_tb, MISO_tb, SS_tb, SCLK_tb, Reset_tb, CLK_tb);   

PROCESS
 BEGIN
  wait for 50 ns;
  CLK_tb <= not CLK_tb;
END PROCESS;


PROCESS
 BEGIN
   WAIT FOR 10 ns;
   Reset_tb <= '0';
   WAIT for 500 ns;
    END PROCESS; 
 
 PROCESS
   BEGIN
   wait until ((done_tb'event and done_tb = '1')and STARTED_tb = '0');
 END PROCESS;  
 
  PROCESS(Reset_TB,STARTED_tb,DONE_tb)
   BEGIN
    IF STARTED_tb'event and STARTED_tb = '1' THEN START_tb  <= '0' ; 
    ELSIF (DONE_tb'event and DONE_tb = '0') and STARTED_tb = '0' THEN START_tb  <= '1' ;
    ELSIF Reset_tb'event and  Reset_tb = '0' THEN  START_tb <= '1'; END IF;
 END PROCESS;  


end Behavioral;

