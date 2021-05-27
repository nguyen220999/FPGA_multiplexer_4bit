----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:37:43 04/30/2021 
-- Design Name: 
-- Module Name:    multiplexer_4bits - Behavioral 
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

entity multiplexer_4bits is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end multiplexer_4bits;

architecture Behavioral of multiplexer_4bits is

begin
	O<= (I(0) AND (NOT S(1)) AND (NOT S(0))) 
			OR (I(1) AND (NOT S(1)) AND S(0))
			OR ( I(2) AND S(1) AND (NOT S(0)))
			OR (I(3) AND S(1) AND S(0));

end Behavioral;

