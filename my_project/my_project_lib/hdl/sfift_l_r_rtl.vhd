--
-- VHDL Architecture my_project_lib.sfift_l_r.rtl
--
-- Created:
--          by - ELHUSSEIN-STORE.UNKNOWN (DESKTOP-NC58NV1)
--          at - 19:20:40 04/28/2025
--
-- using Mentor Graphics HDL Designer(TM) 2021.1 Built on 14 Jan 2021 at 15:11:42
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY sfift_l_r IS
  port(rst,clk: in std_logic;
  load: in std_logic_vector(1 downto 0);
  d_in:in std_logic_vector(7 downto 0);
  d_out:out std_logic_vector(7 downto 0));
END ENTITY sfift_l_r;

--
ARCHITECTURE rtl OF sfift_l_r IS
  signal d_temp :std_logic_vector(7 downto 0);
BEGIN
  process(rst,clk)
  begin 
    if (rst='1') then 
    d_temp<=(others=>'0');
    elsif (rising_edge(clk)) then
      if (load="00") then
        d_temp<=d_in;
        elsif(load="01") then
          d_temp<=d_temp(6 downto 0)& '0';
          elsif(load="10") then
            d_temp<='0'& d_temp(7 downto 1);
            else
              d_out<=d_temp;
              end if;
              end if;
              end process;
              d_out<=d_temp;
END ARCHITECTURE rtl;

