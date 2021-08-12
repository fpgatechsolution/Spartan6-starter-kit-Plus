----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:02:22 10/10/2017 
-- Design Name: 
-- Module Name:    LED_SHIFTER - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LED_SHIFTER is
    Port (
	 IND :IN STD_LOGIC_VECTOR(4 DOWNTO 0);
           LED :OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end LED_SHIFTER;

architecture Behavioral of LED_SHIFTER is

begin


process (IND)
begin
   case IND is
      when "00000" => LED <= "0000000000000010";
      when "00001" => LED <= "0000000000000010";
      when "00010" => LED <= "0000000000000100";
      when "00011" => LED <= "0000000000001000";
      when "00100" => LED <= "0000000000010000";
      when "00101" => LED <= "0000000000100000";
      when "00110" => LED <= "0000000001000000";
      when "00111" => LED <= "0000000010000000";
      when "01000" => LED <= "0000000100000000";
      when "01001" => LED <= "0000001000000000";
      when "01010" => LED <= "0000010000000000";
      when "01011" => LED <= "0000100000000000";
      when "01100" => LED <= "0001000000000000";
      when "01101" => LED <= "0010000000000000";
      when "01110" => LED <= "0100000000000000";
      when "01111" => LED <= "1000000000000000";
      when "10000" => LED <= "1000000000000000";
      when "10001" => LED <= "0100000000000000";
      when "10010" => LED <= "0010000000000000";
      when "10011" => LED <= "0001000000000000";
      when "10100" => LED <= "0000100000000000";
      when "10101" => LED <= "0000010000000000";
      when "10110" => LED <= "0000001000000000";
      when "10111" => LED <= "0000000100000000";
      when "11000" => LED <= "0000000010000000";
      when "11001" => LED <= "0000000001000000";
      when "11010" => LED <= "0000000000100000";
      when "11011" => LED <= "0000000000010000";
      when "11100" => LED <= "0000000000001000";
      when "11101" => LED <= "0000000000000100";
      when "11110" => LED <= "0000000000000010";
      when "11111" => LED <= "0000000000000001";
















      when others => LED <= "0000000000000000";
   end case;
end process;

				
				
end Behavioral;

