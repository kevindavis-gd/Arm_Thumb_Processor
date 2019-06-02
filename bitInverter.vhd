-- Quartus II VHDL Template
--Bit Inverter
library ieee;
use ieee.std_logic_1164.all;

entity bitInverter is

	port
	(
		reg0_val 	:in std_logic_vector (7 downto 0);
		reg1_val 	:in std_logic_vector (7 downto 0);
		Rs2		 	:in std_logic;
		isSub 		:in std_logic;
		reg0_valout :out std_logic_vector (7 downto 0);
		reg1_valout :out std_logic_vector (7 downto 0);
		invert_out  :out std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of bitInverter is

 signal invertedV: std_logic_vector (7 downto 0);
 
begin

	process(reg0_val, reg1_val, Rs2, isSub, invertedV) is
	begin
		if(isSub = '1') then
			if (Rs2 = '1') then
				invertedV <= not reg1_val;
				reg0_valout <= reg0_val;
				reg1_valout <= invertedV;
			else
				invertedV <= not reg0_val;
				reg1_valout <= reg1_val;
				reg0_valout <= invertedV;
			end if;
			invert_out <= invertedV;
			
		else
			reg0_valout <= reg0_val;
			reg1_valout <= reg1_val;
		end if;
	end process;
	

end rtl;
