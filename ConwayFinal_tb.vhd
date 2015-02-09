--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:29:16 01/17/2015
-- Design Name:   
-- Module Name:   D:/Docs/Xilinx/ConwayFinal/ConwayFinal_tb.vhd
-- Project Name:  ConwayFinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ConwayFinal
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_textio.all;
use std.textio.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ConwayFinal_tb IS
END ConwayFinal_tb;
 
ARCHITECTURE behavior OF ConwayFinal_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ConwayFinal
    PORT(
         clkin : IN  std_logic;
         dout : OUT  std_logic_vector(7 downto 0);
         hsync : OUT  std_logic;
         vsync : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clkin : std_logic := '0';

 	--Outputs
   signal dout : std_logic_vector(7 downto 0);
   signal hsync : std_logic;
   signal vsync : std_logic;

   -- Clock period definitions
   constant clkin_period : time := 10 ns;
 
BEGIN
 

 
	-- Instantiate the Unit Under Test (UUT)
   uut: ConwayFinal PORT MAP (
          clkin => clkin,
          dout => dout,
          hsync => hsync,
          vsync => vsync
        );

   -- Clock process definitions
   clkin_process :process
   begin
		clkin <= '0';
		wait for clkin_period/2;
		clkin <= '1';
		wait for clkin_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clkin_period*10;

      -- insert stimulus here 

      wait;
   end process;
	
	process (clkin)
    file file_pointer: text is out "write.txt";
    variable line_el: line;
begin

    if rising_edge(clkin) then

        -- Write the time
        write(line_el, now); -- write the line.
        write(line_el, ":"); -- write the line.

        -- Write the hsync
        write(line_el, " ");
        write(line_el, hsync); -- write the line.

        -- Write the vsync
        write(line_el, " ");
        write(line_el, vsync); -- write the line.

        -- Write the red
        write(line_el, " ");
        write(line_el, dout(7 downto 5)); -- write the line.

        -- Write the green
        write(line_el, " ");
        write(line_el, dout(5 downto 2)); -- write the line.

        -- Write the blue
        write(line_el, " ");
        write(line_el, dout(2 downto 0)); -- write the line.

        writeline(file_pointer, line_el); -- write the contents into the file.

    end if;
end process; 

END;
