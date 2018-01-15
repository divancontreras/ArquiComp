--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:40:54 01/14/2018
-- Design Name:   
-- Module Name:   /home/ise/Practica1/ROM_TEST.vhd
-- Project Name:  Practica1sem1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM
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
 
ENTITY ROM_TEST IS
END ROM_TEST;
 
ARCHITECTURE behavior OF ROM_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM
    PORT(
         DIRECCION : IN  std_logic_vector(4 downto 0);
         DATO : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DIRECCION : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal DATO : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM PORT MAP (
          DIRECCION => DIRECCION,
          DATO => DATO
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
		
		DIRECCION<= "00000";
		WAIT FOR PERIOD;
		DIRECCION<= "00001";
		WAIT FOR PERIOD;
		DIRECCION<= "00010";
		WAIT FOR PERIOD;
		DIRECCION<= "00011";
		WAIT FOR PERIOD;
		DIRECCION<= "00100";
		WAIT FOR PERIOD;
		DIRECCION<= "10001";
		WAIT FOR PERIOD;
		DIRECCION<= "10110";
		WAIT FOR PERIOD;
      wait;
   end process;

END;
