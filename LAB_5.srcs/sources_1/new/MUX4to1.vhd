library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity MUX4to1 is
 port(
     F: in STD_LOGIC;
     E: in STD_LOGIC_VECTOR(3 downto 0);
     X,Y,Z : out STD_LOGIC 
     );
end MUX4to1;
 
architecture behavior of MUX4to1 is
begin
process (E) is
begin
  if (E = x"1") then
      X <= F;
  elsif (E = x"2") then
      Y <= F;
  elsif (E = x"4") then
      Z <= F;
  else
     X <= '0';
     Y <= '0';
     Z <= '0';
      
  end if;
 
end process;
end behavior;