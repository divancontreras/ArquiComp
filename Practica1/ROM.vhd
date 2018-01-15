----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:15:31 01/14/2018 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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

entity ROM is
	PORT( DIRECCION : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			DATO : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
			);
end ROM;

architecture Behavioral of ROM is

begin

PROCESS(DIRECCION)
	SUBTYPE REGISTRO IS STD_LOGIC_VECTOR(15 DOWNTO 0); --ANCHO DEL BUS DE DATOS
	TYPE REG_BANK IS ARRAY(0 TO 31) OF REGISTRO; --ANCHO DEL BUS DE DIRECCIONES
	VARIABLE ROM_MEMORY : REG_BANK := (B"0000_0000_1111_1111" ,
												  B"1111_0000_1111_0000" ,
												  B"0000_1111_0000_1111" ,
												  B"0000_1111_1111_0000" ,
												  OTHERS => (OTHERS => '0') -- SE RELLENAN LOS SIGUIENTES REGISTROS CON 0's
												  );
	VARIABLE DIRECCION_INT : NATURAL;
BEGIN
	DIRECCION_INT := TO_INTEGER(UNSIGNED(DIRECCION));
	DATO <= ROM_MEMORY(DIRECCION_INT);
END PROCESS;

end Behavioral;

