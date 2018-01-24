----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:33:43 01/23/2018 
-- Design Name: 
-- Module Name:    MemoriaDeInstrucciones1VHDL - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity MemoriaDeInstrucciones1VHDL is
		Port(
		WRITE_ENABLE,READ_ENABLE: IN BIT;
		CLK: STD_LOGIC;
		ADRESS,WRITE_DATA: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		READ_DATA: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
		
end MemoriaDeInstrucciones1VHDL;

architecture Behavioral of MemoriaDeInstrucciones1VHDL is

begin
PROCESS(CLK,ADRESS)
SUBTYPE REGISTRO IS STD_LOGIC_VECTOR(31 DOWNTO 0);
TYPE REG_BANK IS ARRAY(0 TO 31) OF REGISTRO;
VARIABLE RAM_MEMORY: REG_BANK:=(B"0000_0000_0000_0000_0000_0000_0000_0000",
 OTHERS=>(OTHERS=>'0'));
VARIABLE DIRECCION_INT:NATURAL;
BEGIN
	IF((FALLING_EDGE(CLK)AND CLK='0') AND WRITE_ENABLE='1')THEN
	DIRECCION_INT:= TO_INTEGER(UNSIGNED(ADRESS(6 DOWNTO 2)));
	RAM_MEMORY(DIRECCION_INT):=WRITE_DATA;
	ELSIF((FALLING_EDGE(CLK) AND CLK ='0') AND READ_ENABLE='1')THEN
	DIRECCION_INT:= TO_INTEGER(UNSIGNED(ADRESS(6 DOWNTO 2)));
	READ_DATA<=RAM_MEMORY(DIRECCION_INT);
	ELSE
	END IF;
END PROCESS;

end Behavioral;

