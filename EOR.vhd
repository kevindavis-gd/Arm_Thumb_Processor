library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity EOR is

	port
	(
		Rs2     : in std_logic;
		wReg	  : in std_logic;
		reg0    : in std_logic_vector (7 downto 0);
		reg1    : in std_logic_vector (7 downto 0);
		to_reg  : out std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of EOR is
 signal source, dest :std_logic_vector (7 downto 0);
 
begin

	process(Rs2,reg0, reg1)
	begin
	
	if (Rs2 = '1') then
		source <= reg1;
	else
		source <= reg0;
	end if;
	
	if (wReg = '1') then
		dest <= reg1;
	else
		dest <= reg0;
	end if;
	
	to_reg <= source xor dest;
	
	end process;
		
end rtl;
