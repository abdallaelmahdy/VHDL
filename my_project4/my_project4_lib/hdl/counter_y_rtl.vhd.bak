--
-- VHDL Architecture my_project4_lib.counter_y.rtl
--
-- Created:
--          by - ELHUSSEIN-STORE.UNKNOWN (DESKTOP-NC58NV1)
--          at - 13:42:33 04/28/2025
--
-- using Mentor Graphics HDL Designer(TM) 2021.1 Built on 14 Jan 2021 at 15:11:42
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY counter_y IS
  port(clk,rst,y:in std_logic;
  
end_y: out std_logic);
END ENTITY counter_y;

--
ARCHITECTURE rtl OF counter_y IS
  signal count_temp :unsigned(3 downto 0);
BEGIN
  process(clk,rst)
  begin 
    
   if(rst='1') then
     
     count_temp<=(others=>'0');
    elsif (rising_edge(clk)) then
      if (y='1') then
        count_temp<=count_temp +1;
        if(count_temp=12) then 
          count_temp<=(others=>'0');
          end if;
          end if;
          end if;
          end process;
          end_y<= '1' when (count_temp=12) else '0';
END ARCHITECTURE rtl;

