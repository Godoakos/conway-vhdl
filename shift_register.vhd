----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:50:57 01/07/2015 
-- Design Name: 
-- Module Name:    shift_register - Behavioral 
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

entity shift_register is
	port( CLK : in std_logic;
			SI : in std_logic_vector(0 downto 0);
         SO1 : out std_logic_vector(0 downto 0);
			SO2 : out std_logic_vector(0 downto 0);
			SO3 : out std_logic_vector(0 downto 0));
end shift_register;

architecture Behavioral of shift_register is
    signal tmp: std_logic_vector(31	 downto 0);
begin

    process (CLK)
    begin
        if (CLK'event and CLK='1') then
            for i in 0 to 30 loop
                tmp(i+1) <= tmp(i);
            end loop;
            tmp(0) <= SI(0);
        end if;
    end process;

    SO1(0) <= tmp(31);
	 SO2(0) <= tmp(30);
	 SO3(0) <= tmp(29);
				
end Behavioral;

