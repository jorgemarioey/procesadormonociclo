--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:53:31 09/26/2016
-- Design Name:   
-- Module Name:   C:/Users/utp/Desktop/Registro_1/procesadormonociclo/mpc1.vhd
-- Project Name:  procesadormonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mpc
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
 
ENTITY mpc1 IS
END mpc1;
 
ARCHITECTURE behavior OF mpc1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mpc
    PORT(
         insalidasumador : IN  std_logic_vector(31 downto 0);
         salidanpc : OUT  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    
architecture behavior of mpc1 is

begin
	process(clk, reset,insalidasumador)
	begin 
		if(rising_edge(clk))then 
			if(reset='1')then
				 salidanpc <= (others =>'0');
			 else 
				salidanpc <= insalidasumador; 
		end if;

end process;
	
end behavior;
	


END;
