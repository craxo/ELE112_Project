library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.components.all;

entity ELE112_LAB_5 is
GENERIC( N : INTEGER :=8; TS : INTEGER :=64);
    Port ( START : in STD_LOGIC; --Signal to start our SPI.
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
end ELE112_LAB_5;

architecture Behavioral of ELE112_LAB_5 is
  TYPE State_type IS (S0, S1, S2, S3, S4, S5, S6, S7);
  SIGNAL y : State_type;
  
  SIGNAL TX_register : std_logic_vector (TS-1 downto 0); --Register with data to send.
  SIGNAL S_register : std_logic_vector (TS-1 downto 0); --Shiftregister.
  SIGNAL Count : std_logic_vector (N-1 downto 0); --Teller.
  SIGNAL ENCLK : std_logic := '0'; --Enable clock.
  SIGNAL Z : STD_LOGIC := '0'; --Clock Compare.
  SIGNAL LC : STD_LOGIC := '0'; --Load counter. (Reset).
  SIGNAL LS : STD_LOGIC := '0'; --Load shift.
  SIGNAL ES : STD_LOGIC := '0'; --Enable shift.
  SIGNAL LD : STD_LOGIC := '0'; --Load (Enables the registers).
  SIGNAL MISO_int : STD_LOGIC := '0'; --For å holde MISO data.
  SIGNAL COUNTOUT : STD_LOGIC_VECTOR(N-1 downto 0); --Signal out of counter to compare.
  SIGNAL TRIOE : STD_LOGIC_VECTOR(3 downto 0); --Bus from decoder to tristates: TRIXOE, TRIYOE, TRIZOE.
  CONSTANT InstRead      : std_logic_vector (7 downto 0) := "00001011"; --Instruksjon for å lese.
  CONSTANT InstWrite     : std_logic_vector (7 downto 0) := "00001010"; --Instruksjon for å skrive.
  CONSTANT ADDR_X_L_Data   : std_logic_vector (7 downto 0) := "00001000"; --Adresse for XDATA på ADXL362.
begin




-- You may need more states to this FSM    
FSM_transition: PROCESS( CLK)
   BEGIN
     IF Reset = '1' THEN
        y <= S0;
     ELSIF (CLK'EVENT AND CLK = '1') THEN
        CASE y IS
           WHEN S0 =>
                y <= S1;
           WHEN S1 =>
              IF START = '0' THEN y <= S1; ELSE y <= S2; END IF;
           WHEN S2 =>
              IF START = '1' THEN y <= S3; ELSE y <= S1; END IF;
           WHEN S3 =>
               y <= S4;
           WHEN S4 =>
              IF Z = '1' THEN y <= S5; ELSE y <= S4; END IF;
           WHEN S5 =>
                y <= S6;
           WHEN S6 =>
                y <= S7;
           WHEN S7 =>
                y <= S1;
           WHEN others =>
                y <= S1;   
        END CASE;
     END IF;
   END PROCESS;
   
   
FSM_outPuts: PROCESS(y, clk)
   BEGIN
    Done <='0';STARTED <='0';LC<='0';LS<='0';ES<='0';SS<='1';ENCLK <= '1';--SCLK <='0'; --LD_X<='0';LD_Y<='0';LD_Z<='0';
     CASE y IS
        WHEN S0 => 
        WHEN S1 =>
        WHEN S2 =>
            LS <= '1';
            LC <= '1';
        WHEN S3 =>
            SS <= '0';
        WHEN S4 =>
            --SCLK <= '1';
            ENCLK <= '0';
            SS <= '0';
            ES <= '1';
            STARTED <='1';
        WHEN S5 =>
            SS <= '0';
            ES <= '1';
        WHEN S6 =>
            SS <= '1';
            ES <= '0';
            LD <= '1';
        WHEN S7 => 
            DONE <= '1';
        
         
          
     END CASE;
   END PROCESS;   
   
MISO_sample: PROCESS(SCLK)
   BEGIN
   IF SCLK'EVENT AND SCLK = '1' THEN
     MISO_int <= MISO;
    end if; 
  END PROCESS;  
   

Counter_n: ele112_UpDownCounter  
           PORT MAP(Count=>SCLK,
                    UP_DOWN=>'1', --HIGH = Counting up.
                    clear=>LC,
                    Q=>COUNTOUT);          

SPI_SHIFT_REG:ELE112_shiftlne GENERIC MAP(N => TS)
           PORT MAP(R=>TX_register,
                    L=>LS,
                    E=>ES,
                    W=>MISO_int,
                    Clock=>SCLK,
                    --Flip X_L and X_H.
                    Q(TS-1 downto TS-8) => S_register(TS-9 downto TS-16),
                    Q(TS-9 downto TS-16) => S_register(TS-1 downto TS-8),
                    --Flip Y_L and Y_H.
                    Q(TS-17 downto TS-24) => S_register(TS-25 downto TS-32),
                    Q(TS-25 downto TS-32) => S_register(TS-17 downto TS-24),
                    --Flip Z_L and Z_H.
                    Q(TS-33 downto TS-40) => S_register(TS-41 downto TS-48),
                    Q(TS-41 downto TS-48) => S_register(TS-33 downto TS-40),
                    --Flip T_L and T_H.
                    Q(TS-49 downto TS-56) => S_register(TS-57 downto TS-64),
                    Q(TS-57 downto TS-64) => S_register(TS-49 downto TS-56)
                    );   
    
PreScaler: ele112_PreScaler
    PORT MAP(clk=>CLK,
             reset=>ENCLK, --Enable clock
             preScalerNumber=>SPI_SCLK_sel,
             clkOut=>SCLK
             );

--Compare for when the counter counts to 80 (0x50), 2 bytes for INSTR and ADDR. Then it will burst write 16 BYTE back.
Z <= '1' WHEN COUNTOUT = x"50" else '0';
--Set the first byte of TX to read instruction.
TX_register(TS-1 downto TS-8) <= InstRead;
--Set the second byte of TX to adress X_L.
TX_register(TS-9 downto TS-16) <= ADDR_X_L_DATA;
--Set the rest of the shiftregister as Z, high impedance = LOW / 0.
TX_register(TS-17 downto 0) <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
S_register
MOSI <= S_register(TS-1); 


end behavioral;