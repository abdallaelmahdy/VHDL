-- VHDL Entity my_project4_lib.DEC8_3.symbol
--
-- Created:
--          by - ELHUSSEIN-STORE.UNKNOWN (DESKTOP-NC58NV1)
--          at - 17:53:46 04/28/2025
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2021.1 Built on 14 Jan 2021 at 15:11:42
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY DEC8_3 IS
   PORT( 
      q : IN     std_logic_vector (2 DOWNTO 0);
      z : OUT    std_logic_vector (7 DOWNTO 0)
   );

-- Declarations

END DEC8_3 ;

--
-- VHDL Architecture my_project4_lib.DEC8_3.struct
--
-- Created:
--          by - ELHUSSEIN-STORE.UNKNOWN (DESKTOP-NC58NV1)
--          at - 17:53:46 04/28/2025
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2021.1 Built on 14 Jan 2021 at 15:11:42
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY my_project4_lib;

ARCHITECTURE struct OF DEC8_3 IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL y  : std_logic_vector(3 DOWNTO 0);
   SIGNAL y1 : std_logic_vector(3 DOWNTO 0);
   SIGNAL y2 : std_logic;


   -- Component Declarations
   COMPONENT DEC2_4E
   PORT (
      a  : IN     std_logic_vector (1 DOWNTO 0);
      en : IN     std_logic;
      y  : OUT    std_logic_vector (3 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT merge
   PORT (
      a : IN     std_logic_vector (3 DOWNTO 0);
      b : IN     std_logic_vector (3 DOWNTO 0);
      z : OUT    std_logic_vector (7 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT not_gate
   PORT (
      x : IN     std_logic;
      y : OUT    std_logic
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : DEC2_4E USE ENTITY my_project4_lib.DEC2_4E;
   FOR ALL : merge USE ENTITY my_project4_lib.merge;
   FOR ALL : not_gate USE ENTITY my_project4_lib.not_gate;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : DEC2_4E
      PORT MAP (
         a  => q(1 downto 0),
         en => q(2),
         y  => y1
      );
   U_1 : DEC2_4E
      PORT MAP (
         a  => q(1 downto 0),
         en => y2,
         y  => y
      );
   U_2 : merge
      PORT MAP (
         a => y1,
         b => y,
         z => z
      );
   U_3 : not_gate
      PORT MAP (
         x => q(2),
         y => OPEN
      );

END struct;
