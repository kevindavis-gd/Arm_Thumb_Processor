library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;               -- Needed for shifts

entity left_shift is
        port( Reg0, Reg1 	: in std_logic_vector(7 downto 0);
					Rs2			: in std_logic;
              shift	      : out std_logic_vector(7 downto 0) 
				  );
end left_shift;

architecture behave of left_shift is
signal output : std_logic_vector(7 downto 0);
signal input : std_logic_vector(7 downto 0);
   
begin
  process(Reg0,Reg1) is
  begin
  
	if (Rs2 = '0') then
	input <= Reg0;
	else
	input <= Reg1;
	end if;
	
	output(0) <= '0';
	output(1) <= input(0);
	output(2) <= input(1);
	output(3) <= input(2);
	output(4) <= input(3);
	output(5) <= input(4);
	output(6) <= input(5);
	output(7) <= input(6);

	shift <= output;
  end process;
end architecture behave;