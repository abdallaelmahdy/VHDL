--
-- VHDL Architecture my_project4_lib.TLC.rtl
--
-- Created:
--          by - ELHUSSEIN-STORE.UNKNOWN (DESKTOP-NC58NV1)
--          at - 04:20:02 04/28/2025
--
-- using Mentor Graphics HDL Designer(TM) 2021.1 Built on 14 Jan 2021 at 15:11:42
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY TLC IS
  port(clk,rst,g: in std_logic;
  q: out  std_logic);
END ENTITY TLC;

--
ARCHITECTURE rtl OF TLC IS
  signaL count_temp : unsigned(4 downto 0);
BEGIN
  process(clk,rst)
  begin
    if(rst='1') then
    count_temp<=(others=>'0');
    elsif (rising_edge(clk)) then
      if (g='1') then
        count_temp<=count_temp +1;
        if(count_temp=20) then 
          count_temp<=(others=>'0');
          end if;
          end if;
          end if;
          end process;
          q<= '1' when (count_temp=20) else '0';
          
END ARCHITECTURE rtl;

