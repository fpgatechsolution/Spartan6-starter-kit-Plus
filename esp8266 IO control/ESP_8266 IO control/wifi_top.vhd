--################################################################################
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- Company      : FPGATECHSOLUTION
-- Module Name  : WIFI_TOP
-- URL     		: WWW.FPGATECHSOLUTION.COM
-- Description	: WIFI ESP8266 interfacing with fpga
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
--################################################################################

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE WORK.ESP_FPGA_PACK.ALL;


ENTITY WIFI_TOP IS
PORT(			
		CLK_12MHZ	: IN STD_LOGIC;-- clock 12MHz
		SW			: IN STD_LOGIC;--push button 
		TEST_LED	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- test led
		
		USB_RXD		: IN STD_LOGIC; -- USB RX
		USB_TXD 	: OUT STD_LOGIC;-- USB TX
		
		RELAY: OUT STD_LOGIC;
		BUZZER: OUT STD_LOGIC;
		RGB_LED: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		
		WIFI_RXD	: IN STD_LOGIC; -- USB RX
		WIFI_TXD 	: OUT STD_LOGIC-- USB TX;
	);
END ENTITY WIFI_TOP;

architecture Behavioral of wifi_top is

signal RESET:STD_LOGIC;
begin


	USB_TXD<=WIFI_RXD;
	--USB_TXD<=WIFI_TX_BUFF;
	WIFI_TXD<=WIFI_TX_BUFF;
	
	
	INST_DCM_CLK:DCM_CLK 
	PORT MAP(
	CLK_IN1=>(CLK_12MHZ),
	CLK_OUT1=>(CLK_100MHZ),
	CLK_OUT2=>(CLK_1MHZ),
	CLK_OUT3=>(CLK12MHZ)
	);
 
 
 RESET<=not SW;
 
 
	INST_ESP8266_DRIVER:ESP8266_DRIVER 
	PORT MAP( 
			RESET	=>(RESET),
			CLK	=>(CLK_100MHZ),
			RXD	=>(WIFI_RXD),
			TXD 	=>(WIFI_TX_BUFF),
			WIFI_ENABLE=>open,
			RELAY=>(RELAY),
			BUZZER=>(BUZZER),
			RGB_LED=>(RGB_LED),		
			TEST_LED=>(TEST_LED)
);










end Behavioral;

