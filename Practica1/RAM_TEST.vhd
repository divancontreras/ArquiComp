--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:09:21 01/14/2018
-- Design Name:   
-- Module Name:   /home/ise/Practica1/RAM_TEST.vhd
-- Project Name:  Practica1sem1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RAM_TEST IS
END RAM_TEST;
 
ARCHITECTURE behavior OF RAM_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         READ_DATA : OUT  std_logic_vector(15 downto 0);
         ADDRESS : IN  std_logic_vector(3 downto 0);
         WRITE_DATA : IN  std_logic_vector(15 downto 0);
         RW : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ADDRESS : std_logic_vector(3 downto 0) := (others => '0');
   signal WRITE_DATA : std_logic_vector(15 downto 0) := (others => '0');
   signal RW : std_logic := '0';

 	--Outputs
   signal READ_DATA : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          READ_DATA => READ_DATA,
          ADDRESS => ADDRESS,
          WRITE_DATA => WRITE_DATA,
          RW => RW
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for period*10;

      -- insert stimulus here 
		RW <= '0';
		ADDRESS <= "0000";
		WRITE_DATA <= x"FE00";
		WAIT FOR PERIOD;
		ADDRESS <= "0001";
		WRITE_DATA <= x"FFFF";
		WAIT FOR PERIOD;
		ADDRESS <= "0010";
		WRITE_DATA <= x"ABBA";
		WAIT FOR PERIOD;
		ADDRESS <= "0111";
		WRITE_DATA <= x"FAFA";
		WAIT FOR PERIOD;
		ADDRESS <= "0000";
		WAIT FOR PERIOD;
		ADDRESS <= "0111";
			
		
      wait;
   end process;

END;
