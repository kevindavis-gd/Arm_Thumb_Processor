library ieee;
use ieee.std_logic_1164.all;

entity Display is

	port
	(
		reg0_value 	: in std_logic_vector (7 downto 0);
		reg1_value 	: in std_logic_vector (7 downto 0);
		S_inst  		: in std_logic_vector (3 downto 0);
		a0, a1 ,a2 ,a3 ,a4, a5,	a6    : out std_logic;
		b0, b1, b2, b3, b4, b5, b6    : out std_logic
		
	);

end entity;

architecture rtl of Display is

 signal right_disp: std_logic_vector(3 downto 0);
 signal left_disp:  std_logic_vector(3 downto 0);
 
begin

	process (S_inst) is
	begin
		
	right_disp  <=	reg0_value (3 downto 0);
	left_disp 	<= reg0_value (7 downto 4);
	
		if (S_inst = "1101") then
			right_disp  <=	reg1_value (3 downto 0);
			left_disp 	<= reg1_value (7 downto 4);
		end if;
		
	end process;
	
 --one hex number	
	--right
	process (reg0_value) is
	begin
		if (right_disp = "0000") then
			b0 <= '0';
			b1 <= '0';
			b2 <= '0';
			b3 <= '0';
			b4 <= '0';
			b5 <= '0';
			b6 <= '1';
		elsif (right_disp = "0001") then
			b0 <= '1';
			b1 <= '0';
			b2 <= '0';
			b3 <= '1';
			b4 <= '1';
			b5 <= '1';
			b6 <= '1';
		elsif (right_disp = "0010") then
			b0 <= '0';
			b1 <= '0';
			b2 <= '1';
			b3 <= '0';
			b4 <= '0';
			b5 <= '1';
			b6 <= '0';
		elsif (right_disp = "0011") then
			b0 <= '0';
			b1 <= '0';
			b2 <= '0';
			b3 <= '0';
			b4 <= '1';
			b5 <= '1';
			b6 <= '0';
		elsif (right_disp = "0100") then
			b0 <= '1';
			b1 <= '0';
			b2 <= '0';
			b3 <= '1';
			b4 <= '1';
			b5 <= '0';
			b6 <= '0';
		elsif (right_disp = "0101") then
			b0 <= '0';
			b1 <= '1';
			b2 <= '0';
			b3 <= '0';
			b4 <= '1';
			b5 <= '0';
			b6 <= '0';
		elsif (right_disp = "0110") then
			b0 <= '0';
			b1 <= '1';
			b2 <= '0';
			b3 <= '0';
			b4 <= '0';
			b5 <= '0';
			b6 <= '0';
		elsif (right_disp = "0111") then
			b0 <= '0';
			b1 <= '0';
			b2 <= '0';
			b3 <= '1';
			b4 <= '1';
			b5 <= '1';
			b6 <= '1';
		elsif (right_disp = "1000") then
			b0 <= '0';
			b1 <= '0';
			b2 <= '0';
			b3 <= '0';
			b4 <= '0';
			b5 <= '0';
			b6 <= '0';
		elsif (right_disp = "1001") then
			b0 <= '0';
			b1 <= '0';
			b2 <= '0';
			b3 <= '1';
			b4 <= '1';
			b5 <= '0';
			b6 <= '0';
		elsif (right_disp = "1010") then
			b0 <= '0';
			b1 <= '0';
			b2 <= '0';
			b3 <= '1';
			b4 <= '0';
			b5 <= '0';
			b6 <= '0';
		elsif (right_disp = "1011") then
			b0 <= '1';
			b1 <= '1';
			b2 <= '0';
			b3 <= '0';
			b4 <= '0';
			b5 <= '0';
			b6 <= '0';
		elsif (right_disp = "1100") then
			b0 <= '0';
			b1 <= '1';
			b2 <= '1';
			b3 <= '0';
			b4 <= '0';
			b5 <= '0';
			b6 <= '1';
		elsif (right_disp = "1101") then
			b0 <= '1';
			b1 <= '0';
			b2 <= '0';
			b3 <= '0';
			b4 <= '0';
			b5 <= '1';
			b6 <= '0';
		elsif (right_disp = "1110") then
			b0 <= '0';
			b1 <= '1';
			b2 <= '1';
			b3 <= '0';
			b4 <= '0';
			b5 <= '0';
			b6 <= '0';
		elsif (right_disp = "1111") then
			b0 <= '0';
			b1 <= '1';
			b2 <= '1';
			b3 <= '1';
			b4 <= '0';
			b5 <= '0';
			b6 <= '0';
		end if;
		
	end process;
-- one he number	
	--left
	process (reg0_value) is
	begin
		if(left_disp = "0000") then
			a0 <= '0';
			a1 <= '0';
			a2 <= '0';
			a3 <= '0';
			a4 <= '0';
			a5 <= '0';
			a6 <= '1';
		elsif (left_disp = "0001") then
			a0 <= '1';
			a1 <= '0';
			a2 <= '0';
			a3 <= '1';
			a4 <= '1';
			a5 <= '1';
			a6 <= '1';
		elsif (left_disp = "0010") then
			a0 <= '0';
			a1 <= '0';
			a2 <= '1';
			a3 <= '0';
			a4 <= '0';
			a5 <= '1';
			a6 <= '0';
		elsif (left_disp = "0011") then
			a0 <= '0';
			a1 <= '0';
			a2 <= '0';
			a3 <= '0';
			a4 <= '1';
			a5 <= '1';
			a6 <= '0';
		elsif (left_disp = "0100") then
			a0 <= '1';
			a1 <= '0';
			a2 <= '0';
			a3 <= '1';
			a4 <= '1';
			a5 <= '0';
			a6 <= '0';
		elsif (left_disp = "0101") then
			a0 <= '0';
			a1 <= '1';
			a2 <= '0';
			a3 <= '0';
			a4 <= '1';
			a5 <= '0';
			a6 <= '0';
		elsif (left_disp = "0110") then
			a0 <= '0';
			a1 <= '1';
			a2 <= '0';
			a3 <= '0';
			a4 <= '0';
			a5 <= '0';
			a6 <= '0';
		elsif (left_disp = "0111") then
			a0 <= '0';
			a1 <= '0';
			a2 <= '0';
			a3 <= '1';
			a4 <= '1';
			a5 <= '1';
			a6 <= '1';
		elsif (left_disp = "1000") then
			a0 <= '0';
			a1 <= '0';
			a2 <= '0';
			a3 <= '0';
			a4 <= '0';
			a5 <= '0';
			a6 <= '0';
		elsif (left_disp = "1001") then
			a0 <= '0';
			a1 <= '0';
			a2 <= '0';
			a3 <= '1';
			a4 <= '1';
			a5 <= '0';
			a6 <= '0';
		elsif (left_disp = "1010") then
			a0 <= '0';
			a1 <= '0';
			a2 <= '0';
			a3 <= '1';
			a4 <= '0';
			a5 <= '0';
			a6 <= '0';
		elsif (left_disp = "1011") then
			a0 <= '1';
			a1 <= '1';
			a2 <= '0';
			a3 <= '0';
			a4 <= '0';
			a5 <= '0';
			a6 <= '0';
		elsif (left_disp = "1100") then
			a0 <= '0';
			a1 <= '1';
			a2 <= '1';
			a3 <= '0';
			a4 <= '0';
			a5 <= '0';
			a6 <= '1';
		elsif (left_disp = "1101") then
			a0 <= '1';
			a1 <= '0';
			a2 <= '0';
			a3 <= '0';
			a4 <= '0';
			a5 <= '1';
			a6 <= '0';
		elsif (left_disp = "1110") then
			a0 <= '0';
			a1 <= '1';
			a2 <= '1';
			a3 <= '0';
			a4 <= '0';
			a5 <= '0';
			a6 <= '0';
		elsif (left_disp = "1111") then
			a0 <= '0';
			a1 <= '1';
			a2 <= '1';
			a3 <= '1';
			a4 <= '0';
			a5 <= '0';
			a6 <= '0';
		end if;
		
	end process;

end rtl;
