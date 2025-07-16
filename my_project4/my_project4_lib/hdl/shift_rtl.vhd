--
-- VHDL Architecture MY_PROJECT2_LIB1.shift.rtl
--
-- Created:
--          by - ELHUSSEIN-STORE.UNKNOWN (DESKTOP-NC58NV1)
--          at - 21:51:38 05/28/2025
--
-- using Mentor Graphics HDL Designer(TM) 2021.1 Built on 14 Jan 2021 at 15:11:42
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY shift IS  port(clk,rst: in std_logic;
  load: in std_logic_vector(1 downto 0);
  d_in:in std_logic_vector(7 downto 0);
  d_out: out std_logic_vector(7 downto 0));
END ENTITY shift;

--
ARCHITECTURE rtl OF shift IS
  signal d_temp:std_logic_vector(7 downto 0);
BEGIN
 
END ARCHITECTURE rtl;

