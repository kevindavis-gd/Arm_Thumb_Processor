-- Quartus II VHDL Template
--Decoder
library ieee;
use ieee.std_logic_1164.all;

entity Decoder_1 is

	port
	(
		operator			: in std_logic_vector(15 downto 0);
		upd	 			: in std_logic;
		exe	 			: in std_logic;
		exe_out 			: out std_logic;
		upd_out			: out std_logic;
		wReg				: out std_logic;
		chosenInstr    : out std_logic_vector(3 downto 0);
		isSub				: out std_logic;
		imm				: out std_logic_vector(7 downto 0);
		--Rs1 used as isSub for immediate values
		Rs1				: out std_logic;
		Rs2				: out std_logic
	);

end entity;

architecture rtl of Decoder_1 is

signal firstFive	: std_logic_vector (4 downto 0);
signal reg_to, reg_from1, reg_from2	: std_logic_vector (2 downto 0);
signal regC			: std_logic;
signal instrC		: std_logic_vector (3 downto 0);
signal updd, exed	: std_logic;
begin

	firstFive <= operator(15 downto 11);

	process(operator, firstFive,reg_to) is
	begin
	--*************************************
		if(firstFive = "00100") then
			reg_to <= operator(10 downto 8);
			imm <= operator(7 downto 0);
		else
			reg_to <= operator(2 downto 0);
		end if;
	--***********************************
		if(reg_to = "000") then 
			regC <= '0';
		else
			regC <= '1';
		end if;
	end process;
	--************************************
	
	process(operator) is
	begin
	
	reg_from1 <= operator (8 downto 6);
	reg_from2 <= operator (5 downto 3);
	
	if((operator(15 downto 9) = "0001100")) then
	--add reg
			instrC <= "0000";
			isSub <= '0';
	elsif((operator(15 downto 9) = "0001101")) then
	--subtract reg
			instrC <= "0000";
			isSub <= '1';
	elsif((operator(15 downto 11) = "00100")) then
	--move immediate
			instrC <= "0001";
	elsif ((operator(15 downto 6) = "0100001001")) then
	--negate
		instrC <= "0010";
		isSub <= '1';
		reg_from2 <= operator (5 downto 3);	
	elsif ((operator(15 downto 6) = "0100000000")) then
	--AND
		instrC <= "0011";
	elsif ((operator(15 downto 6) = "0100000001")) then
	--EOR
		instrC <= "0100";
	elsif ((operator(15 downto 9) = "0001110")) then
	--Add Number
				Rs1 <= '0';
				instrC <= "0101";	
	elsif ((operator(15 downto 9) = "0001111")) then
	--Sub Number
				Rs1 <= '1';
				instrC <= "0101";	
	elsif ((operator(15 downto 6) = "0000100001")) then
	--Right Shift
				isSub <= '1';
				instrC <= "0110";
	elsif ((operator(15 downto 6) = "0000000001")) then
	--Left shift
				instrC <= "0111";	
	elsif ((operator(15 downto 3) = "1101111100000")) then
	--Display
			if ((operator(2 downto 0) = "001")) then
				instrC <= "1101";
			end if;
			
	end if;
	
	end process;
	
	process(upd, exe, reg_from1, reg_from2) is
	begin
	--*******************************************
	if (operator(5 downto 3 ) = "000") then
		Rs2 <= '0';
	elsif (operator(5 downto 3 ) = "001") then
		Rs2 <= '1';
	end if;
	
	
	updd <= upd;
	exed <= exe;
	
	exe_out 		<= exed;
	upd_out 		<= updd;
	wReg		 	<= regC;
	chosenInstr <= instrC;
	
	end process;
end rtl;
