
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY MemoriaDeDatosTestBench IS
END MemoriaDeDatosTestBench;
 
ARCHITECTURE behavior OF MemoriaDeDatosTestBench IS 
 

 
    COMPONENT MemoriaDeInstrucciones1VHDL
    PORT(
         WRITE_ENABLE : IN  BIT;
         READ_ENABLE : IN  BIT;
         CLK : IN  std_logic;
         ADRESS : IN  std_logic_vector(31 downto 0);
         WRITE_DATA : IN  std_logic_vector(31 downto 0);
         READ_DATA : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal WRITE_ENABLE : BIT:= '0';
   signal READ_ENABLE : BIT := '0';
   signal CLK : std_logic := '1';
   signal ADRESS : std_logic_vector(31 downto 0) := (others => '0');
   signal WRITE_DATA : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal READ_DATA : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MemoriaDeInstrucciones1VHDL PORT MAP (
          WRITE_ENABLE => WRITE_ENABLE,
          READ_ENABLE => READ_ENABLE,
          CLK => CLK,
          ADRESS => ADRESS,
          WRITE_DATA => WRITE_DATA,
          READ_DATA => READ_DATA
        );

   -- Clock process definitions
   --CLK_process :process
   --begin
		--CLK <= '0';
		--wait for CLK_period/2;
		--CLK <= '1';
		--wait for CLK_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

     -- wait for CLK_period*10;

      -- insert stimulus here 
		ADRESS<=X"00000004";
		WRITE_ENABLE<='1';
		WRITE_DATA<=X"0000F0F0";
		CLK<='0';
		WAIT FOR PERIOD;
		CLK<='1';
		Write_ENABLE<='0';
		WAIT FOR PERIOD;
		ADRESS<=X"00000008";
		WRITE_ENABLE<='1';
		WRITE_DATA<=X"0000FAFA";
		CLK<='0';
		WAIT FOR PERIOD;
		CLK<='1';
		Write_ENABLE<='0';
		WAIT FOR PERIOD;
		ADRESS<=X"0000000C";
		WRITE_ENABLE<='1';
		WRITE_DATA<=X"FAFA1111";
		CLK<='0';
		WAIT FOR PERIOD;
		CLK<='1';
		Write_ENABLE<='0';
		WAIT FOR PERIOD;
		ADRESS<=X"0000000C";
		READ_ENABLE<='1';
		CLK<='0';
		WAIT FOR PERIOD;
		CLK<='1';
		READ_ENABLE<='0';
		WAIT FOR PERIOD;
		ADRESS<=X"00000004";
		READ_ENABLE<='1';
		CLK<='0';
		WAIT FOR PERIOD;
		CLK<='1';
		READ_ENABLE<='0';
		WAIT FOR PERIOD;
		ADRESS<=X"00000008";
		READ_ENABLE<='1';
		CLK<='0';
		WAIT FOR PERIOD;
      wait;
   end process;

END;
