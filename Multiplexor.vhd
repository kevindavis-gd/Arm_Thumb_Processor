library ieee;
use ieee.std_logic_1164.all;

entity Multiplexor is

	port
	(
		instr				: in std_logic_vector (3 downto 0);
		addorsub 		: in std_logic_vector (7 downto 0);
		EOR    			: in std_logic_vector (7 downto 0);
		invert	  		: in std_logic_vector (7 downto 0);
		movimm			: in std_logic_vector (7 downto 0);
		AndReg   		: in std_logic_vector (7 downto 0);
		addSubAnsNum   : in std_logic_vector (7 downto 0);
		LShift_ans    	: in std_logic_vector (7 downto 0);
		RShift_ans    	: in std_logic_vector (7 downto 0);
		to_reg 			:out std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of Multiplexor is

 signal currAns: std_logic_vector (7 downto 0);
 
begin

	process(instr) is
	begin
	
		if ((instr = "0000")) then
		--add/sub
			currAns <= addorsub;
		elsif(instr = "0001") then
		--move immediate to register
			currAns <= movimm;
		elsif(instr = "0010") then
		--neg
			currAns <= invert;
		elsif(instr = "0011") then
		--AND
			currAns <= AndReg;
		elsif (instr = "0100") then
		--xorr
			currAns <= EOR;
		elsif(instr = "0101") then
		--add/sub number to/from a reg
			currAns <= addSubAnsNum;
		elsif(instr = "0110") then
		--Right Shift
			currAns <= RShift_ans;
		elsif(instr = "0111") then
		--Left Shift
			currAns <= LShift_ans;
		end if;
	end process;
	
	to_reg <= currAns;

end rtl;
