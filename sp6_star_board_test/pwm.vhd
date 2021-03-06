
--CLOCK =20MHZ =100NS
--SO 100NS*500=50,000NS=20KHZ IS PWM FREQUENCY


LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
ENTITY PWM_TEST IS
	PORT(RESET, CLOCK	: IN	STD_LOGIC;
		 	PWM_OUT: OUT	STD_LOGIC;		 --PWM OUTPUT
PWM_COUNT: IN	STD_LOGIC_VECTOR(7 DOWNTO 0));--PWM COUNT RANGE 0 TO 255
END PWM_TEST;

ARCHITECTURE BEH OF PWM_TEST IS
	SIGNAL PWM_COUNT_BUFF: STD_LOGIC_VECTOR(7 DOWNTO 0):="00001111";
	SIGNAL MEAN_COUNT: STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL LATCH : STD_LOGIC;
BEGIN

	PROCESS(CLOCK,RESET)-- COUNTER TO COUNT 0 TO 511 ;TOTAL 512 BECAUSE WE NEED 50 DUTY CYCLE WHEN PWM_COUNT IS 255
	    variable count: STD_LOGIC_VECTOR(8 DOWNTO 0);
	    BEGIN
	        IF(RESET='1')THEN
	            MEAN_COUNT<="000000000";
	            ELSIF(CLOCK'EVENT AND CLOCK='1')THEN
	                IF(MEAN_COUNT = 499)THEN
	                    MEAN_COUNT<="000000000";
	                    ELSE
	                     MEAN_COUNT<=MEAN_COUNT+1;
	                 END IF;	  
	         END IF;   
	         	     
	END PROCESS;
	
	
	PROCESS(CLOCK) --PWM_OUT IS ZERO UP TO MEAN_COUNT =PWM_COUNT_BUFF ELSE IS ONE, IS START FROM MEAN_COUNT IS ZERO
	    BEGIN
         IF(CLOCK'EVENT AND CLOCK='1')THEN
	          
	          IF(PWM_COUNT_BUFF > 0)THEN
	              IF(MEAN_COUNT = 0)THEN
         	          PWM_OUT<='0';     	         
     	           ELSIF(MEAN_COUNT =PWM_COUNT_BUFF) THEN
     	               PWM_OUT<='1';  
	              END IF;
	          ELSE
	          	   PWM_OUT<='1'; 
	          END IF;
	        END IF;  	       
	END PROCESS;
	
	 
--CODE BELLOW IS FOR TO LOAD PWM COUNT AFTER COMPLATING PREVIOUS CYCLE     
   LATCH<='1'WHEN (MEAN_COUNT=499)ELSE '0';
 
  PROCESS(LATCH,PWM_COUNT )
BEGIN
 IF(LATCH='1')THEN
 PWM_COUNT_BUFF<=PWM_COUNT; 
END IF;
 END PROCESS;
 
 
    
    
	
	
END BEH;

