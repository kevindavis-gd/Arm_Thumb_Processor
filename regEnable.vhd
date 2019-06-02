library ieee;
use ieee.std_logic_1164.all;

entity regEnable is

	port
	(
		wReg	 	: in std_logic;
		upd	 	: in std_logic;
		enable_reg0	: out std_logic;
		enable_reg1	: out std_logic
	);

end entity;

architecture rtl of regEnable is
 signal reg0, reg1: std_logic;
begin

	process(upd, wReg) is
	begin
	
	if(upd = '0') then
		reg0 <= '0';
		reg1 <= '0';
	elsif (upd = '1')	then
		if(wReg = '0') then
			reg0 <= '1';
			reg1 <= '0';
		elsif(wReg = '1') then
			reg0 <= '0';
			reg1 <= '1';
		end if;
	end if;
		
	end process; 
	
	enable_reg0 <= reg0;
	enable_reg1 <= reg1;
	
end rtl;
