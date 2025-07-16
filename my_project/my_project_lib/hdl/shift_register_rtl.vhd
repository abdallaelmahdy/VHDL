--
-- VHDL Architecture my_project_lib.shift_register.rtl
--
-- Created:
--          by - ELHUSSEIN-STORE.UNKNOWN (DESKTOP-NC58NV1)
--          at - 18:49:37 04/28/2025
--
-- using Mentor Graphics HDL Designer(TM) 2021.1 Built on 14 Jan 2021 at 15:11:42
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY shift_register IS
  port(rst,clk,load: in std_logic;
  d_in: in std_logic_vector(7 downto 0);
  d_out: out std_logic_vector(7 downto 0));
END ENTITY shift_register;

--
ARCHITECTURE rtl OF shift_register IS
  signal d_temp : std_logic_vector(7 downto 0);
BEGIN
  process(rst,clk)
  begin
    if(rst='1') then
    d_temp<=(others=>'0');
    elsif(rising_edge(clk)) then
      if(load='1') then
        d_temp<=d_in;
        else
          
          d_temp<='0'&d_temp(7 downto 1);
          end if;
          end if;
          end process;
          d_out<=d_temp;
        
END ARCHITECTURE rtl;

