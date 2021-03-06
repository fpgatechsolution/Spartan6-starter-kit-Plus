----------------------------------------------------------------------------------
-- COMPANY: 
-- ENGINEER: 
-- 
-- CREATE DATE:    13:45:57 11/07/2013 
-- DESIGN NAME: 
-- MODULE NAME:    TOP - BEHAVIORAL 
-- PROJECT NAME: 
-- TARGET DEVICES: 
-- TOOL VERSIONS: 
-- DESCRIPTION: 
--
-- DEPENDENCIES: 
--
-- REVISION: 
-- REVISION 0.01 - FILE CREATED
-- ADDITIONAL COMMENTS: 
--
-------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY TOP IS
PORT(
               clk_osc_12mhz : IN  STD_LOGIC;

 LCD_DATA: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
 LCD_RS,LCD_EN: OUT STD_LOGIC;
 
 		  
LED_RED  :OUT STD_LOGIC;
LED_GREEN:OUT STD_LOGIC;
LED_BLUE :OUT STD_LOGIC;
KEY_0 :IN STD_LOGIC;
KEY_1 :IN STD_LOGIC;
KEY_2 :IN STD_LOGIC;
KEY_3 :IN STD_LOGIC;

BUZZER:OUT STD_LOGIC;
RELAY:OUT STD_LOGIC;

DC_M1:OUT STD_LOGIC;
DC_M2:OUT STD_LOGIC;



		SIG_A : OUT STD_LOGIC;
		SIG_B : OUT STD_LOGIC;
		SIG_C : OUT STD_LOGIC;
		SIG_D : OUT STD_LOGIC;
		SIG_E : OUT STD_LOGIC;
		SIG_F : OUT STD_LOGIC;
		SIG_G : OUT STD_LOGIC;
		SIG_PD: OUT STD_LOGIC;
		SEL_DISP1 : OUT STD_LOGIC;
		SEL_DISP2 : OUT STD_LOGIC;
		SEL_DISP3 : OUT STD_LOGIC;
		SEL_DISP4 : OUT STD_LOGIC;

SLIDE_SW: IN  STD_LOGIC_VECTOR (7 DOWNTO 0);

           LED : OUT  STD_LOGIC_VECTOR (7 DOWNTO 0);
			  
			  

vga_red_out: OUT STD_LOGIC;
vga_green_out: OUT STD_LOGIC;
vga_blue_out: OUT STD_LOGIC;
vga_hs: OUT STD_LOGIC;
vga_vs: OUT STD_LOGIC

			  
			  
			  
			  
			  );
END TOP;

ARCHITECTURE BEHAVIORAL OF TOP IS	COMPONENT SEVEN_SEGMENT
	PORT(
		CLK_12MHZ : IN STD_LOGIC;
		RESET : IN STD_LOGIC;
		DATA_DISP_1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		DATA_DISP_2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		DATA_DISP_3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		DATA_DISP_4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		DATA_DISP_5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		DATA_DISP_6 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);          
		SIG_PD : OUT STD_LOGIC;
		SIG_A : OUT STD_LOGIC;
		SIG_B : OUT STD_LOGIC;
		SIG_C : OUT STD_LOGIC;
		SIG_D : OUT STD_LOGIC;
		SIG_E : OUT STD_LOGIC;
		SIG_F : OUT STD_LOGIC;
		SIG_G : OUT STD_LOGIC;
		SEL_DISP1 : OUT STD_LOGIC;
		SEL_DISP2 : OUT STD_LOGIC;
		SEL_DISP3 : OUT STD_LOGIC;
		SEL_DISP4 : OUT STD_LOGIC;
		SEL_DISP5 : OUT STD_LOGIC;
		SEL_DISP6 : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT LCD
	PORT(
		RESET : IN STD_LOGIC;
		CLK_12MHZ : IN STD_LOGIC;
		C1L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C2L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C3L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C4L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C5L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C6L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C7L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C8L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C9L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C10L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C11L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C12L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C13L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C14L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C15L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C16L1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C1L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C2L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C3L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C4L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C5L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C6L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C7L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C8L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C9L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C10L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C11L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C12L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C13L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C14L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C15L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		C16L2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);    
		CLK_400HZ : INOUT STD_LOGIC;      
		LCD_RS : OUT STD_LOGIC;
		LCD_E : OUT STD_LOGIC;
		LCD_RW : OUT STD_LOGIC;
		DATA_BUS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END COMPONENT;
		COMPONENT PWM_TEST
	PORT(
		RESET : IN std_logic;
		CLOCK : IN std_logic;
		PWM_COUNT : IN std_logic_vector(7 downto 0);          
		PWM_OUT : OUT std_logic
		);
	END COMPONENT;

	COMPONENT LED_SHIFTER
	PORT(
		IND : IN std_logic_vector(4 downto 0);          
		LED : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;


	COMPONENT clk_dcm
	PORT(
		CLK_IN1 : IN std_logic;          
		CLK_OUT1 : out std_logic;
		CLK_OUT2 : out std_logic
		);
	END COMPONENT;
	 
  
	COMPONENT VGA_SYNC
	PORT(
		clock_25Mhz : IN std_logic;          
		red_out : OUT std_logic;
		green_out : OUT std_logic;
		blue_out : OUT std_logic;
		horiz_sync_out : OUT std_logic;
		vert_sync_out : OUT std_logic;
		pixel_row : OUT std_logic_vector(9 downto 0);
		pixel_column : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;



SIGNAL CLK_400KHZ,PWM_OUT,CLK_555,RESET,CLK_12MHZ:STD_LOGIC;
SIGNAL COUNT: STD_LOGIC_VECTOR(23 DOWNTO 0); 
SIGNAL TMP_SIG:STD_LOGIC_VECTOR (14 DOWNTO 0);
SIGNAL COUNT_RGB: STD_LOGIC_VECTOR(7 DOWNTO 0); 
SIGNAL LED1: STD_LOGIC_VECTOR(15 DOWNTO 0); 

SIGNAL clk_25mhz:  STD_LOGIC;
BEGIN




INST_clk_dcm: clk_dcm PORT MAP(
		CLK_IN1 =>clk_osc_12mhz ,
		CLK_OUT1=>CLK_12MHZ,
		CLK_OUT2=>clk_25mhz
		);
	
	
RESET<=NOT KEY_0;

INST_PWM_TEST: PWM_TEST PORT MAP(
		RESET =>RESET ,
		CLOCK =>CLK_12MHZ ,
		PWM_OUT =>PWM_OUT ,
		PWM_COUNT =>SLIDE_SW 
	);


PROCESS(CLK_12MHZ)
BEGIN
IF(CLK_12MHZ'EVENT AND CLK_12MHZ='1')THEN
IF(KEY_3='1')THEN
DC_M1<=PWM_OUT;
DC_M2<='0';
ELSE
DC_M2<=PWM_OUT;
DC_M1<='0';
END IF;
END IF;
END PROCESS;



RELAY<= NOT KEY_1;
BUZZER<= CLK_400KHZ WHEN KEY_2='0' ELSE 
			'0';




	INST_SEVEN_SEGMENT: SEVEN_SEGMENT PORT MAP(
		CLK_12MHZ =>CLK_12MHZ ,
		RESET =>RESET ,
		SIG_PD =>SIG_PD ,
		SIG_A =>SIG_A ,
		SIG_B => SIG_B,
		SIG_C =>SIG_C ,
		SIG_D =>SIG_D ,
		SIG_E =>SIG_E ,
		SIG_F =>SIG_F ,
		SIG_G =>SIG_G ,
		SEL_DISP1 =>SEL_DISP1 ,
		SEL_DISP2 =>SEL_DISP2 ,
		SEL_DISP3 =>SEL_DISP3 ,
		SEL_DISP4 =>SEL_DISP4 ,
		SEL_DISP5 =>OPEN ,
		SEL_DISP6 =>OPEN ,
		DATA_DISP_1 =>COUNT_RGB(3 DOWNTO 0) ,
		DATA_DISP_2 =>COUNT_RGB(3 DOWNTO 0),
		DATA_DISP_3 =>COUNT_RGB(3 DOWNTO 0) ,
		DATA_DISP_4 =>COUNT_RGB(3 DOWNTO 0) ,
		DATA_DISP_5 =>"0001",
		DATA_DISP_6 =>"0001"
);



	INST_LCD: LCD PORT MAP(
		RESET =>RESET ,
		CLK_12MHZ =>CLK_12MHZ ,
		LCD_RS =>LCD_RS ,
		LCD_E =>LCD_EN ,
		CLK_400HZ =>CLK_400KHZ ,
		LCD_RW =>OPEN ,
		C1L1 =>X"20",
		C2L1 =>X"20" ,
		C3L1 =>X"46"  ,
		C4L1 =>X"50"  ,
		C5L1 =>X"47"  ,
		C6L1 =>X"41"  ,
		C7L1 =>X"53"  ,
		C8L1 =>X"4F"  ,
		C9L1 =>X"4C"  ,
		C10L1 =>X"55"  ,
		C11L1 =>X"54"  ,
		C12L1 =>X"49"  ,
		C13L1 =>X"4F"  ,
		C14L1 =>X"4E"  ,
		C15L1 =>X"20" ,
		C16L1 =>X"20" ,
		
		C1L2 =>X"20" ,
		C2L2 =>X"20" ,
		C3L2 =>X"20" ,
		C4L2 =>X"20" ,
		C5L2 =>X"20" ,
		C6L2 =>X"50" ,
		C7L2 =>X"55"  ,
		C8L2 =>X"4E"  ,
		C9L2 =>X"45"  ,
		C10L2 =>X"20" ,
		C11L2 =>X"20" ,
		C12L2 =>X"20" ,
		C13L2 =>X"20" ,
		C14L2 =>X"20" ,
		C15L2 =>X"20" ,
		C16L2 =>X"20" ,
		DATA_BUS =>LCD_DATA
	);



PROCESS (CLK_12MHZ) 
BEGIN
   IF RESET='1'  THEN 
     COUNT <= (OTHERS => '0');
  ELSIF CLK_12MHZ='1' AND CLK_12MHZ'EVENT THEN
      
         COUNT <= COUNT + 1;
     
   END IF;
END PROCESS;

CLK_555<=COUNT(22);
PROCESS (CLK_555) 
BEGIN
   IF reset='1'  THEN 
     COUNT_RGB <= (OTHERS => '0');
  ELSIF CLK_555='1' AND CLK_555'EVENT THEN
      
         COUNT_RGB <= COUNT_RGB + 1;
     
   END IF;
END PROCESS;



	  
LED_RED <=COUNT_RGB(0);
LED_GREEN<=COUNT_RGB(1);
LED_BLUE<=COUNT_RGB(2); 

--LED<=COUNT_RGB;

	Inst_LED_SHIFTER: LED_SHIFTER PORT MAP(
		IND =>COUNT_RGB(4 DOWNTO 0) ,
		LED => LED1(15 DOWNTO 0)
	);

led<=LED1(7 DOWNTO 0);



	Inst_VGA_SYNC: VGA_SYNC PORT MAP(
		clock_25Mhz =>clk_25mhz ,
		red_out =>vga_red_out ,
		green_out =>vga_green_out ,
		blue_out =>vga_blue_out ,
		horiz_sync_out =>vga_hs ,
		vert_sync_out =>vga_vs ,
		pixel_row =>open ,
		pixel_column =>open 
	);



END BEHAVIORAL;

