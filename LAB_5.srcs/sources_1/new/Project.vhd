----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2018 18:13:18
-- Design Name: 
-- Module Name: Project - Behavioral
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

entity Project is
--  Port ( );
end Project;

architecture Behavioral of Project is

begin

--Inluding our LAB_5 component.
SPI_master : ELE112_LAB_5
    PORT MAP ( START : in STD_LOGIC; --Signal to start our SPI.
           STARTED : inout STD_LOGIC; --LED to display that the circuit is running.
           DONE : inout STD_LOGIC; --LED to display that the circuit is done.
           MOSI : out STD_LOGIC; --Master Out Slave In.
           MISO : in STD_LOGIC; --Master In Slave Out.
           SS : inout STD_LOGIC; --Slave Select.
           SCLK : inout STD_LOGIC; --Slave clock.
           Reset:in STD_LOGIC; --Reset.
           CLK : in STD_LOGIC; --CLK in from our board.
           SPI_SCLK_sel : in STD_LOGIC_VECTOR(3 downto 0)
           );


end Behavioral;
