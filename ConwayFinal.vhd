----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:48:40 01/16/2015 
-- Design Name: 
-- Module Name:    ConwayFinal - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ConwayFinal is
    Port ( clkin : in  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
           hsync : out  STD_LOGIC:='1';
           vsync : out  STD_LOGIC:='1');
end ConwayFinal;

architecture Behavioral of ConwayFinal is

	COMPONENT clkgen
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;

component DualPortBRAM is
    port (CLK  : in std_logic;
          WE   : in std_logic;
          EN   : in std_logic;
          ADDRW : in std_logic_vector(7 downto 0);
			 ADDRR : in std_logic_vector(7 downto 0);
          DI   : in std_logic_vector(0 downto 0);
          DO   : out std_logic_vector(0 downto 0));
end component;

component shift_register is
	port( CLK : in std_logic;
			SI : in std_logic_vector(0 downto 0);
         SO1 : out std_logic_vector(0 downto 0);
			SO2 : out std_logic_vector(0 downto 0);
			SO3 : out std_logic_vector(0 downto 0));
end component;


type STATE_TYPE is (INIT, FILL_SHIFTREG, NEXT_STATE, DRAW); 

signal state : STATE_TYPE := INIT;
signal clkout : std_logic;
signal clksig : std_logic_vector(2 downto 0);
-------------------------------------------
signal hcount : unsigned(10 downto 0) := (others => '0');
signal vcount : unsigned(10 downto 0) := (others => '0');
-------------------------------------------
signal di : std_logic_vector(0 downto 0);

signal we_fb : std_logic := '1';
signal addrw_fb : std_logic_vector(7 downto 0) := (others => '0'); --elso 3 bit: melyik sor
signal addrr_fb : std_logic_vector(7 downto 0) := (others => '0'); --utolsó 5 bit: sorban hol
signal do_fb : std_logic_vector(0 downto 0);

signal we_sb : std_logic := '1';
signal addrw_sb : std_logic_vector(7 downto 0) := (others => '0');
signal addrr_sb : std_logic_vector(7 downto 0) := (others => '0');
signal do_sb : std_logic_vector(0 downto 0);
-------------------------------------------
signal so11 : std_logic_vector(0 downto 0);
signal so12 : std_logic_vector(0 downto 0);
signal so13 : std_logic_vector(0 downto 0);

signal so21 : std_logic_vector(0 downto 0);
signal so22 : std_logic_vector(0 downto 0);
signal so23 : std_logic_vector(0 downto 0);

signal so31 : std_logic_vector(0 downto 0);
signal so32 : std_logic_vector(0 downto 0);
signal so33 : std_logic_vector(0 downto 0);
-------------------------------------------
signal neigh : unsigned(3 downto 0) := "0000";
signal change : unsigned(4 downto 0) := (others => '0');
-------------------------------------------

begin

Inst_clkgen: clkgen PORT MAP(
		CLKIN_IN => clkin,
		RST_IN => '0',
		CLKFX_OUT => clkout,
		CLKIN_IBUFG_OUT => clksig(0),
		CLK0_OUT => clksig(1),
		LOCKED_OUT => clksig(2)
	);

framebuff : DualPortBRAM port map (CLK => clkout, WE => we_fb, EN => '1', ADDRW => addrw_fb, ADDRR => addrr_fb, DI=> di, DO=> do_fb);
statebuff : DualPortBRAM port map (CLK => clkout, WE => we_sb, EN => '1', ADDRW => addrw_sb, ADDRR => addrr_sb, DI=> di, DO=> do_sb);

shiftreg1 : shift_register port map (CLK => clkout, SI => do_sb, SO1 => so11, SO2=>so12, SO3=>so13);
shiftreg2 : shift_register port map (CLK => clkout, SI => so13, SO1 => so21, SO2=>so22, SO3=>so23);
shiftreg3 : shift_register port map (CLK => clkout, SI => so23, SO1 => so31, SO2=>so32, SO3=>so33);



robotkurva_logika_es_kirajzolo : process(clkout)
begin

if clkout'event and clkout = '1' then
			
---------KIRAJZOLÓ--------------------
			
			
			if hcount < 799 then
				hcount <= hcount + 1;
			else
				hcount <= (others => '0');
			end if;
			
			if hcount = 799 then
				if vcount < 524 then
					vcount <= vcount + 1;
				else
					vcount <= (others => '0');
				end if;
			end if;

			if hcount < 752 and hcount > 656 then
				hsync <= '0';
			else
				hsync <= '1';
			end if;
			
			if vcount < 493 and vcount > 490 then
				vsync <= '0';
			else
				vsync <= '1';
			end if;		
			

			

			if hcount = 257 and vcount = 256 then --számolás elölrol
				if change = "11111" then
					state <= FILL_SHIFTREG;
					addrr_fb <= (others => '0');
					addrr_sb <= (others => '0');
					addrw_fb <= (others => '0');
					addrw_sb <= (others => '0');
				end if;
				change <= change+1;
			end if;

			if vcount < 257 and hcount < 257  then
				if state = DRAW then
					if do_fb(0) = '1' then
						dout <= (others => '1');
					else
						dout <= (others => '0');
					end if;
				else
					dout <= (others => '0');
				end if;
			else
				dout <= (others => '0');
			end if;

			

------------------ÁLLAPOTOK-----------		
		
		
		if state = INIT then
			
			if addrw_fb = "11111111" or addrw_sb = "11111111" then
				state <= FILL_SHIFTREG;
				we_fb <= '0';
				we_sb <= '0';
			end if;
			di(0) <= (clksig(2) xor clksig(1)) or addrw_fb(0); --random enough IMHO
			
			if addrw_sb(7 downto 5) = "000" or addrw_sb(7 downto 5) = "111" then
					di(0) <= '0';
			end if;
				
			if addrw_sb(4 downto 0) = "00000" or addrw_sb(4 downto 0) = "11111" then
					di(0) <= '0';
			end if;
			
			addrw_fb <= std_logic_vector(unsigned(addrw_fb)+"00000001");
			addrw_sb <= std_logic_vector(unsigned(addrw_sb)+"00000001");	
			
		
		
--------------------------------------- 
 
		elsif state = FILL_SHIFTREG then

			if addrr_sb = "01100000" then --96
				state <= NEXT_STATE;
				we_fb <= '1';
				we_sb <= '1';
				
			else
				addrr_sb <= std_logic_vector(unsigned(addrr_sb)+"00000001");	
			end if;

-------------------------------------------

		elsif state = NEXT_STATE then
		
				neigh <= (("000"&so11(0)) + ("000"&so12(0)) + ("000"&so13(0)) + ("000"&so21(0)) + ("000"&so23(0)) + ("000"&so31(0)) + ("000"&so32(0)) + ("000"&so33(0))); --kettes redva mód active
				if (neigh<"0010" or neigh>"0011") then
						di(0) <= '0';			
				elsif (neigh = "0011") then
						di(0) <= '1';
				else
						di(0)<= so22(0);
				end if; 		
				
				
				if addrw_sb(7 downto 5) = "000" or addrw_sb(7 downto 5) = "111" then
					di(0) <= '0';
				end if;
				
				if addrw_sb(4 downto 0) = "00000" or addrw_sb(4 downto 0) = "11111" then
					di(0) <= '0';
				end if;
				
				if addrw_sb = "11111111" then
					state <= DRAW;
					we_fb <= '0';
					we_sb <= '0';
				else
					addrr_sb <= std_logic_vector(unsigned(addrr_sb)+"00000001");	
					addrw_fb <= std_logic_vector(unsigned(addrw_fb)+"00000001");
					addrw_sb <= std_logic_vector(unsigned(addrw_sb)+"00000001");
				end if;
				
				


---------------------------------------------
			
		elsif state = DRAW then

		
			addrr_fb <= std_logic_vector(vcount(6 downto 3) & hcount(6 downto 3));
		


		end if; --állapotok

	end if; --órajel

end process;



end Behavioral;

