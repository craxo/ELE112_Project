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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ELE112_LAB_5 is
GENERIC( N : INTEGER :=8; TS : INTEGER :=24);
    Port ( LED_sel : in STD_LOGIC_VECTOR (1 downto 0);
           MODE : in STD_LOGIC_VECTOR (3 downto 0);
           START : in STD_LOGIC;
           STARTED : inout STD_LOGIC;
           DONE : inout STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (7 downto 0);
           MOSI : out STD_LOGIC;
           MISO : in STD_LOGIC;
           SS : out STD_LOGIC;
           SCLK : inout STD_LOGIC;
         --  SCLK_OUT : OUT STD_LOGIC;
           Reset:in STD_LOGIC;
           CLK : in STD_LOGIC;
           debug_out: out STD_LOGIC_VECTOR (TS-1 downto 0));
end ELE112_LAB_5;

architecture Behavioral of ELE112_LAB_5 is
  TYPE State_type IS (S0, S1, S2, S3,S4,S5);
  SIGNAL y : State_type;
  
  SIGNAL TX_register : std_logic_vector (TS-1 downto 0);
  SIGNAL S_register : std_logic_vector (TS-1 downto 0);
  SIGNAL X_register : std_logic_vector (N-1 downto 0);
  SIGNAL Y_register : std_logic_vector (N-1 downto 0);
  SIGNAL Z_register : std_logic_vector (N-1 downto 0);
  SIGNAL Count : std_logic_vector (7 downto 0);
  SIGNAL Z : STD_LOGIC := '0';
  SIGNAL LC : STD_LOGIC := '0';
  SIGNAL LS : STD_LOGIC := '0';
  SIGNAL ES : STD_LOGIC := '0';
  SIGNAL LD_X : STD_LOGIC := '0';
  SIGNAL LD_Y : STD_LOGIC := '0';
  SIGNAL LD_Z : STD_LOGIC := '0';
  SIGNAL  MISO_int : STD_LOGIC := '0';
  --
  CONSTANT InstRead      : std_logic_vector (7 downto 0) := x"0B";
  CONSTANT InstWrite     : std_logic_vector (7 downto 0) := x"0A";
  CONSTANT ADDR_X_Data   : std_logic_vector (7 downto 0) := x"08";
  CONSTANT ADDR_Y_Data   : std_logic_vector (7 downto 0) := x"09";
  CONSTANT ADDR_Z_Data   : std_logic_vector (7 downto 0) := x"0A";
begin




   
FSM_transition: PROCESS( CLK)
   BEGIN
     IF Reset = '1' THEN
        y <= S0;
      --  LED<="00000001";
     ELSIF (CLK'EVENT AND CLK = '1') THEN
        CASE y IS
           WHEN S0 =>
                y <= S1;
         --       LED<="00000010";
           WHEN S1 =>
              IF START = '0' THEN y <= S1; ELSE y <= S2; END IF;
         --     LED<="00000100";
           WHEN S2 =>
                y <= S3;
           WHEN S3 =>
              IF Z = '0'  THEN y <= S3; ELSE y <= S4; END IF;
          --    LED<="00001000";
           WHEN S4 =>
          --    LED<="00010000";
              y<=S5;
           WHEN S5 =>
         --  LED<="00100000";
              IF START = '1' THEN y <= S5; ELSE y <= S1; END IF;
           WHEN others =>
                y <= S0;   
        END CASE;
     END IF;
   END PROCESS;
   
   
FSM_outPuts: PROCESS(y, clk)
   BEGIN
    Done <='0';STARTED <='0';LC<='0';LS<='0';ES<='0';SS<='1';LD_X<='0';LD_Y<='0';LD_Z<='0';SCLK <='0';
     CASE y IS
        WHEN S0 =>
         
        WHEN S1 =>
          LC<='1';
          LS<='1';
          
        WHEN S2 =>
            SS<='0';
        WHEN S3 =>
          STARTED <='1';
          ES<='1';
          SS<='0';
          SCLK <= CLK;
        WHEN S4 =>
          LD_X<=Mode(0);
          LD_Y<=Mode(1);
          LD_Z<=Mode(2);
          
        WHEN S5 =>
            Done <='1';
          
     END CASE;
   END PROCESS;   
   
MISO_sample: PROCESS(SCLK)
   BEGIN
   IF SCLK'EVENT AND SCLK = '1' THEN
     MISO_int <= MISO;
    end if; 
  END PROCESS;  
   
--SCLK_Generate:PROCESS(CLK)
 --     BEGIN 
 --     IF (STARTED ='1') THEN
  --    SCLK <= CLK;
 --     elsif CLK'EVENT AND CLK = '1' THEN 
 --     SCLK<='0';
  --    end IF;
 --     END PROCESS; 
   
   -- datapath circuit  
   
Counter_n: ele112_UpDownCounter  
           PORT MAP (SCLK,'1',LC,Count );                   
X_DATA_REG:ele112_regn GENERIC MAP(N => N)
           PORT MAP(S_register(7 downto 0), LD_X, CLK, X_register ); 
Y_DATA_REG:ele112_regn GENERIC MAP(N => N)
           PORT MAP(S_register(7 downto 0), LD_Y, CLK, Y_register ); 
Z_DATA_REG:ele112_regn GENERIC MAP(N => N)
           PORT MAP(S_register(7 downto 0), LD_Z, CLK, Z_register ); 
SPI_SHIFT_REG:ELE112_shiftlne GENERIC MAP(N => TS)
           PORT MAP (TX_register,LS,ES , MISO_int, SCLK, S_register);
  
   debug_out <= S_register;            
              
 --z<='1' when Count="00010111" else '0';  
 z<='1' when Count="00011000" else '0';    
 MOSI <= S_register(TS-1);              

    WITH LED_sel SELECT
         LED <= X_register WHEN "00",
                Y_register WHEN "01",
                Z_register WHEN OTHERS; 
                
                
   WITH MODE SELECT
                TX_register <= InstRead&ADDR_X_Data&ADDR_X_Data WHEN "0001",
                               InstRead&ADDR_Y_Data&ADDR_Y_Data  WHEN "0010",
                               InstRead&ADDR_Z_Data&ADDR_Z_Data  WHEN OTHERS; 
                               

                              
end Behavioral;
