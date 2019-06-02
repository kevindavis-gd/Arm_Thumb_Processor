library ieee;
use ieee.std_logic_1164.all;

entity And_reg is

	port
	(
		Rs2     : in std_logic;
		wReg	  : in std_logic;
		reg0    : in std_logic_vector (7 downto 0);
		reg1    : in std_logic_vector (7 downto 0);
		to_reg : out std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of And_reg is
signal source, dest :std_logic_vector (7 downto 0);
 
begin

	process(Rs2,reg0, reg1)
	begin
	
	if (Rs2 = '1') then
		source <= reg1;
	elsif (Rs2 = '0') then
		source <= reg0;
	end if;
	
	if (wReg = '1') then
		dest <= reg1;
	elsif (wReg = '0') then
		dest <= reg0;
	end if;
	
	to_reg <= source and dest;
	
	end process;

	

end rtl;