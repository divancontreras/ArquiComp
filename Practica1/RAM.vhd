----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:37:19 01/14/2018 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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
use UNISIM.Vcomponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
	PORT( READ_DATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			ADDRESS: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			WRITE_DATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			RW : IN STD_LOGIC
			);
end RAM;

architecture Behavioral of RAM is

begin

PROCESS(ADDRESS)
	SUBTYPE REGISTRO IS STD_LOGIC_VECTOR(15 DOWNTO 0); --ANCHO DEL BUS DE DATOS
	TYPE REG_BANK IS ARRAY(0 TO 15) OF REGISTRO; --ANCHO DEL BUS DE DIRECCIONES
	VARIABLE RAM_MEMORY : REG_BANK := (B"0000_0000_1111_1111" ,
												  B"1111_0000_1111_0000" ,
												  B"0000_1111_0000_1111" ,
												  B"0000_1111_1111_0000" ,
												  OTHERS => (OTHERS => '0') -- SE RELLENAN LOS SIGUIENTES REGISTROS CON 0's
												  );
	VARIABLE DIRECCION_INT : NATURAL;
BEGIN
	IF RW = '0' THEN 
	DIRECCION_INT := TO_INTEGER(UNSIGNED(ADDRESS));
	RAM_MEMORY(DIRECCION_INT) := WRITE_DATA;
	ELSE
	DIRECCION_INT := TO_INTEGER(UNSIGNED(ADDRESS));
	READ_DATA <= RAM_MEMORY(DIRECCION_INT);
	END IF;
END PROCESS;
end Behavioral;