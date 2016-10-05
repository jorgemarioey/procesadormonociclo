--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:39:49 10/04/2016
-- Design Name:   
-- Module Name:   C:/Users/utp.CRIE/Desktop/procesadormonociclo/procesadormonociclo/test_mpc.vhd
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
 
ENTITY test_mpc IS
END test_mpc;
 
ARCHITECTURE behavior OF test_mpc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mpc
    PORT(
         insalidasumador : IN  std_logic_vector(31 downto 0);
         salidanpc : OUT  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal insalidasumador : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal salidanpc : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mpc PORT MAP (
          insalidasumador => insalidasumador,
          salidanpc => salidanpc,
          reset => reset,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
             --
		reset<='1';
		wait for 100 ns;	
		reset <='0';
		salidanpc <="00000000101011111111111011001011";
		wait for  100 ns;
		salidanpc <="00001000111011111111111101101011";
		wait for  100 ns;
		salidanpc <="00001001011101111111111101101010";
		
      
      
      -- insert stimulus here 

      wait;
   end process;

END;
