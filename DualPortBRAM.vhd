----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:49:30 01/16/2015 
-- Design Name: 
-- Module Name:    DualPortBRAM - Behavioral 
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

use ieee.std_logic_unsigned.all;

entity DualPortBRAM is
    port (CLK  : in std_logic;
          WE   : in std_logic;
          EN   : in std_logic;
          ADDRW : in std_logic_vector(7 downto 0);
			 ADDRR : in std_logic_vector(7 downto 0);
          DI   : in std_logic_vector(0 downto 0);
          DO   : out std_logic_vector(0 downto 0));
end DualPortBRAM;

architecture Behavioral of DualPortBRAM is

constant ADDR_WIDTH : integer := 8;
constant DATA_WIDTH : integer := 1; 

type DPBRAM is array (2**ADDR_WIDTH-1 downto 0) of std_logic_vector (DATA_WIDTH-1 downto 0);
signal BRAM: DPBRAM;

begin

process (CLK)
begin
   if (CLK'event and CLK = '1') then
      if (EN = '1') then
         if (WE = '1') then
            BRAM(conv_integer(ADDRW)) <= DI;
         end if;
         --<ram_outputA> <= <ram_name>(conv_integer(<addressA>));
         DO <= BRAM(conv_integer(ADDRR));
      end if;
   end if;
end process;

end Behavioral;

