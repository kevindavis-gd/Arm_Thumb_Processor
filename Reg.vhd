library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Reg is 
Port (Reg_enable: in std_logic;
		Reg_in: 		in std_logic_vector(7 downto 0);
		Reg_out: 	out std_logic_vector (7 downto 0));
end Reg;	

--How Register 1 works
architecture BReg of Reg is 
signal tempreg: std_logic_vector (7 downto 0);
begin
	process (Reg_enable) is
	begin
		if (Reg_enable = '1') then
			reg_out <= reg_in;
		end if;	
	end process;

end BReg;