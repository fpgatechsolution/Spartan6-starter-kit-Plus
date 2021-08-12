
-- VHDL Instantiation Created from source file VGA_SYNC.vhd -- 21:33:53 03/06/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_VGA_SYNC: VGA_SYNC PORT MAP(
		clock_25Mhz => ,
		red_out => ,
		green_out => ,
		blue_out => ,
		horiz_sync_out => ,
		vert_sync_out => ,
		pixel_row => ,
		pixel_column => 
	);


