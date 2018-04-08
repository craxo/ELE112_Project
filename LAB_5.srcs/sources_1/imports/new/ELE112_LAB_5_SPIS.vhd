----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.02.2016 07:47:55
-- Design Name: 
-- Module Name: ELE112_LAB_5 - Behavioral
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
use work.components.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ELE112_LAB_5_SPIS is
GENERIC( N : INTEGER :=8; TS : INTEGER :=24);
    Port ( MODE : in STD_LOGIC_VECTOR (3 downto 0);
           MOSI : in STD_LOGIC;
           MISO : out STD_LOGIC;
           SS : in STD_LOGIC;
           SCLK : in STD_LOGIC;
           Reset:in STD_LOGIC;
           CLK : in STD_LOGIC);

end ELE112_LAB_5_SPIS;

architecture Behavioral of ELE112_LAB_5_SPIS is
  TYPE State_type IS (S0, S1, S2, S3);
  SIGNAL y : State_type;
  
  SIGNAL TX_register : std_logic_vector (N-1 downto 0):= "ZZZZZZZZ";
  SIGNAL TX_register_temp : std_logic_vector (N-1 downto 0):= "ZZZZZZZZ";
  SIGNAL RX_register : std_logic_vector (N-1 downto 0);
  SIGNAL S_register : std_logic_vector (N-1 downto 0);
  SIGNAL Comand_register : std_logic_vector (N-1 downto 0);
  SIGNAL Adresse_register : std_logic_vector (N-1 downto 0);
  SIGNAL Count : std_logic_vector (7 downto 0);
  SIGNAL Byte_Count : std_logic_vector (7 downto 0);
  SIGNAL Z : STD_LOGIC := '0';
  SIGNAL LC : STD_LOGIC := '0';
  SIGNAL LBC : STD_LOGIC := '0';
  SIGNAL LS : STD_LOGIC := '0';
  SIGNAL ES : STD_LOGIC := '0';
  SIGNAL LD_X : STD_LOGIC := '0';
  SIGNAL LD_Y : STD_LOGIC := '0';
  SIGNAL LD_Z : STD_LOGIC := '0';
  SIGNAL  MOSI_int : STD_LOGIC := '0';
  --
  CONSTANT ALLZZZZ      : std_logic_vector (7 downto 0) := "ZZZZZZZZ";
  CONSTANT InstRead      : std_logic_vector (7 downto 0) := X"0B";
  CONSTANT InstWrite     : std_logic_vector (7 downto 0) := X"0A";
  CONSTANT ADDR_X_Data   : std_logic_vector (7 downto 0) := x"08";
  CONSTANT ADDR_Y_Data   : std_logic_vector (7 downto 0) := x"09";
  CONSTANT ADDR_Z_Data   : std_logic_vector (7 downto 0) := x"0A";
   CONSTANT X_Data   : std_logic_vector (7 downto 0) := x"fe";
   CONSTANT Y_Data   : std_logic_vector (7 downto 0) := x"55";
   CONSTANT Z_Data   : std_logic_vector (7 downto 0) := x"03";
begin




   
FSM_transition: PROCESS( CLK)
   BEGIN
     IF Reset = '1' THEN
        y <= S0;
 
     ELSIF (CLK'EVENT AND CLK = '1') THEN
        CASE y IS
           WHEN S0 =>
                y <= S1;

           WHEN S1 =>
              IF ss = '1' THEN y <= S1; ELSE y <= S2; END IF;


           WHEN S2 =>
              IF ss = '0'  THEN y <= S2; ELSE y <= S3; END IF;

           WHEN S3 =>

              y<=S1;

  
        END CASE;
     END IF;
   END PROCESS;
   
   
FSM_outPuts: PROCESS(y, clk)
   BEGIN
    LC<='0';LBC<='0';LS<='0';ES<='0';LD_X<='0';LD_Y<='0';LD_Z<='0';
     CASE y IS
        WHEN S0 =>
         
        WHEN S1 =>
          LC<='1';
          LBC<='1';
          LS<='1';
          

        WHEN S2 =>
          ES<='1';
          IF Z = '1'  THEN  LC<='1';LC<='1';LS<='1';  END IF;
        WHEN S3 =>

          LC<='1';
          
     END CASE;
   END PROCESS;   
   
MOSI_sample: PROCESS(SCLK)
   BEGIN
   IF SCLK'EVENT AND SCLK = '1' THEN
     MOSI_int <= MOSI;
    end if; 
  END PROCESS;  
   
TX_sample: PROCESS(Z,ss)
     BEGIN
     IF ss='1' THEN
     Adresse_register <="ZZZZZZZZ";
     ELSIF Z'EVENT AND Z = '1' THEN
       IF Byte_count = x"0" THEN
       Comand_register <= S_register(6 downto 0)& MOSI_int;
       ELSIF Byte_count = x"1" THEN
       Adresse_register <= S_register(6 downto 0)& MOSI_int;
       ELSE Adresse_register <= Adresse_register +1;
       end if;
      end if; 
    END PROCESS; 
   
   -- datapath circuit  
Byte_Counter: ele112_UpDownCounter  
              PORT MAP (Z,'1',LBC,Byte_Count );    
Counter_n: ele112_UpDownCounter  
           PORT MAP (SCLK,'1',LC,Count );                   

SPI_SHIFT_REG:ELE112_shiftlne GENERIC MAP(N => N)
           PORT MAP (TX_register,LS,ES , MOSI_int, SCLK, S_register);
  
       
              
 --z<='1' when Count="00010111" else '0';  
 z<='1' when Count="00001000" else '0';    
 MISO <= S_register(N-1);              

    WITH Adresse_register SELECT
                TX_register <= X_Data  WHEN ADDR_X_Data,
                               Y_Data  WHEN ADDR_Y_Data,
                               Z_Data  WHEN ADDR_Z_Data,
                               ALLZZZZ      WHEN OTHERS;                
                
  

                              
end Behavioral;
