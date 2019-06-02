library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Logic is
Port ( 	Logic_exe			: in std_logic;
			Logic_upd			: in std_logic;
			Logic_in 			: in std_logic_vector(15 downto 0);
			reg0_valueout     : out std_logic_vector(7 downto 0);
			reg1_valueout     : out std_logic_vector(7 downto 0);
			regT_valueout     : out std_logic_vector(7 downto 0);
			a0, a1 ,a2 ,a3 ,a4, a5,	a6 : out std_logic;
			b0, b1, b2, b3, b4, b5, b6 : out std_logic);
end Logic;

architecture Blogic of Logic is
--******************************************************
--Decoder component
component Decoder_1
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
		Rs1				: out std_logic;
		Rs2				: out std_logic
	);
end component;
--******************************************************
--Main Multiplexor component
component Multiplexor
 port
	(
		instr		: in std_logic_vector (3 downto 0);
		addorsub : in std_logic_vector (7 downto 0);
		EOR    	: in std_logic_vector (7 downto 0);
		invert	: in std_logic_vector (7 downto 0);
		movimm	: in std_logic_vector (7 downto 0);
		AndReg   : in std_logic_vector (7 downto 0);
		addSubAnsNum   : in std_logic_vector (7 downto 0);
		LShift_ans    : in std_logic_vector (7 downto 0);
		RShift_ans    : in std_logic_vector (7 downto 0);
		to_reg 	:out std_logic_vector (7 downto 0)
	);

end component;
--**********************************************************
-- register component
component Reg
Port (Reg_enable: in std_logic;
		Reg_in: in std_logic_vector(7 downto 0);
		Reg_out: out std_logic_vector (7 downto 0));
end component;
--*********************************************************
--regEnable component
component regEnable
 port
	(
		wReg	 	: in std_logic;
		upd	 	: in std_logic;
		enable_reg0	: out std_logic;
		enable_reg1	: out std_logic
	);

end component;
--**********************************************************
-- move immediate component
component moveImm is

	port
	(
		imm   : in std_logic_vector (7 downto 0);
		to_reg: out std_logic_vector (7 downto 0)
	);

end component;
--**********************************************************
--Adder Component
component Adder
port( 
		num1, num2 	: in  std_logic_vector(7 downto 0);
		isSub 		: in std_logic;
      sum	      : out std_logic_vector(7 downto 0) 
				  );
end component;

--*********************************************************
--Bit Inverter
component bitInverter
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
end component;
--*****************************************************
--Add One
component AddOne is
        port( num1 	: in  std_logic_vector(7 downto 0);
              sum	   : out std_logic_vector(7 downto 0) 
				  );
end component;

--********************************************************
--EOR component
component EOR
port
	(
		Rs2     : in std_logic;
		wReg	  : in std_logic;
		reg0    : in std_logic_vector (7 downto 0);
		reg1    : in std_logic_vector (7 downto 0);
		to_reg  : out std_logic_vector (7 downto 0)
	);
end component;
-- ********************************************************
-- AND component
component And_reg
	port
	(	
		Rs2     : in std_logic;
		wReg	  : in std_logic;
		reg0    : in std_logic_vector (7 downto 0);
		reg1    : in std_logic_vector (7 downto 0);
		to_reg  : out std_logic_vector (7 downto 0)
	);
end component;
--***********************************************************
--Adder #
component Add_number
        port( num1, num2 	: in  std_logic_vector(7 downto 0);
				  isSub 			: in  std_logic;
              sum			   : out std_logic_vector(7 downto 0) 
				  );	
end component;
--**********************************************************
--inverter #
component bitInverter_number is

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

end component;
--*********************************************************
-- shift left
component left_shift is
        port( Reg0, Reg1 	: in  std_logic_vector(7 downto 0);
					Rs2			: in std_logic;
              shift	      : out std_logic_vector(7 downto 0) 
				  );
end component;

--***********************************************************
-- shift right
component right_shift is
        port( Reg0, Reg1 	: in  std_logic_vector(7 downto 0);
					Rs2			: in std_logic;
              shift	      : out std_logic_vector(7 downto 0) 
				  );
end component;

--***********************************************************

-- Display component
component Display
		port
	(
		reg0_value  : in std_logic_vector (7 downto 0);
		reg1_value  : in std_logic_vector (7 downto 0);
		S_inst  		: in std_logic_vector (3 downto 0);
		a0, a1 ,a2 ,a3 ,a4, a5,	a6    : out std_logic;
		b0, b1, b2, b3, b4, b5, b6    : out std_logic
		
	);
end component;

--Decoder Signals******************************************
signal exe_outM, upd_outM, wRegM, enable_reg0_M, enable_reg1_M, isSubM, Rs2, Rs1: std_logic;
signal chosenInstrM: std_logic_vector (3 downto 0);
signal immD: std_logic_vector(7 downto 0);

--Register Signals******************************************
signal reg0_outM, reg1_outM, reg2T_outM: std_logic_vector(7 downto 0);

--for operations*********************************************
signal addSubAns, xorAns, invert_ans, And_Ans,imovAns, muxAns, 
bI_reg_0_out, bI_reg_1_out, reg2, passedRegv : std_logic_vector(7 downto 0);

--Move Signals***********************************************
signal firstFive: std_logic_vector (4 downto 0);
signal regSelect: std_logic_vector (2 downto 0);
-- Add # Signals*******************************************
signal num_reg_0_out,num_reg_1_out,addSubAnsNum : std_logic_vector(7 downto 0);
-- shift signals
signal LShift_ans, RShift_ans, invert_a : std_logic_vector(7 downto 0);


begin
		--Decoder Port Map *******************************************
			Decoder1 :Decoder_1 port map 
			(Logic_in, (Logic_upd), 
			(Logic_exe), exe_outM, upd_outM, wRegM, chosenInstrM, isSubM, immD, Rs1, Rs2);
		-- Registers Port Map **************************************
		--reg2T answer goes to both registers, but only one reg will accept it
			reg2T	: reg port map(exe_outM, muxAns, reg2T_outM);
			reg0	: reg port map(enable_reg0_M, reg2T_outM, reg0_outM);
			reg1	: reg port map(enable_reg1_M, reg2T_outM, reg1_outM);
		--regEnable Port Map ******************************************
		--this determins which reg will accept the new answer
			regEN: regEnable port map(wRegM, upd_outM, enable_reg0_M, enable_reg1_M);		  
		--MoveImm Port Map ********************************************
			ImmtoReg: moveImm port map(immD, imovAns);
		-- Inverter Port Map **********************************************
		-- value always goes through bit inverter before adder
			toInvert: bitInverter port map(reg0_outM, reg1_outM, Rs2, isSubM,
			bI_reg_0_out, bI_reg_1_out, invert_a);
		--AddOne Port Map*****************************************************
			Add1: AddOne port map(invert_a, invert_ans);
		--Adder Port Map ***********************************************
			AddSub: Adder port map(bI_reg_0_out,bI_reg_1_out, isSubM, addSubAns);
		--EOR Port Map **************************************************
			Reg_XoR: EOR port map(Rs2,wRegM, reg0_outM, reg1_outM, xorAns);
		-- AND Port Map *************************************************
			And1: And_reg port map(Rs2,wRegM, reg0_outM, reg1_outM, And_Ans);
		-- Inverter # Port Map **********************************************
		-- value always goes through bit inverter before adder
			toInvertnum: bitInverter_number port map(reg0_outM, reg1_outM, isSubM, Logic_in(8 downto 6) ,Rs1,
			num_reg_0_out, num_reg_1_out);
		--Adder # Port Map ***********************************************
			AddSubnum: Add_number port map(num_reg_0_out,num_reg_1_out, isSubM, addSubAnsNum);
		--Multiplexor Port Map *****************************************
		--All answers goes to the MUX and then only one is placed in reg2T
			Mux: Multiplexor port map
			(chosenInstrM, addSubAns, xorAns, invert_ans, imovAns, And_Ans, 
			addSubAnsNum, LShift_ans,RShift_ans, muxAns);
		-- LeftShift Port Map *****************************************************
			Lshift: left_shift port map (reg0_outM, reg1_outM, Rs2, LShift_ans);
		-- RightShift Port Map **************************************************
			Rshift: right_shift port map (reg0_outM, reg1_outM, Rs2, RShift_ans);
		-- Display Port Map *********************************************************
		-- send in both registers, but only display one
			Disp: Display port map(reg0_outM, reg1_outM,chosenInstrM, a0, a1, a2, a3, a4, 
			a5, a6, b0, b1, b2, b3, b4, b5, b6);
	
		reg0_valueout <= reg0_outM;
		reg1_valueout <= reg1_outM;
		regT_valueout <= reg2T_outM;
end BLogic;



