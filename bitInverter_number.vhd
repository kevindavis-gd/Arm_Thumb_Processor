-- Quartus II VHDL Template
--Bit Inverter
library ieee;
use ieee.std_logic_1164.all;

entity bitInverter_number is

	port
	(
		reg0_val_num 	:in std_logic_vector (7 downto 0);
		reg1_val_num  	:in std_logic_vector (7 downto 0);
		Rs2		 		:in std_logic;
		number			:in std_logic_vector (2 downto 0);
		isSub 			:in std_logic;
		reg0_valout_num:out std_logic_vector (7 downto 0);
		reg1_valout_num:out std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of bitInverter_number is

 signal invertedV: std_logic_vector (7 downto 0);
 signal number_1 : std_logic_vector (7 downto 0);
 
begin

	process(invertedV) is
	begin
	number_1 (7 downto 3) <= "00000";
	number_1 (2 downto 0) <= number;
	invertedV <= number_1;
	
	if(isSub = '1') then
		invertedV <= not number_1;
	end if;
	
	
		
			if (Rs2 = '1') then
				reg0_valout_num <= reg1_val_num;
			else
				reg0_valout_num <= reg0_val_num;
			end if;
			
		--reg0_valout_num <= reg0_val_num;
		reg1_valout_num <= invertedV;
		
	end process;
	

end rtl;
