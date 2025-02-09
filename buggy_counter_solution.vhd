```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity buggy_counter_solution is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count : out integer range 0 to 15;
    overflow : out std_logic -- Added overflow signal
  );
end entity buggy_counter_solution;

architecture behavioral of buggy_counter_solution is
  signal internal_count : integer range 0 to 15 := 0;
  signal overflow_signal : std_logic := '0';
begin
  process (clk, rst)
  begin
    if rst = '1' then
      internal_count <= 0;
      overflow_signal <= '0';
    elsif rising_edge(clk) then
      if internal_count = 15 then
        internal_count <= 0;
        overflow_signal <= '1'; -- Set overflow flag
      else
        internal_count <= internal_count + 1;
        overflow_signal <= '0';
      end if;
    end if;
  end process;

  count <= internal_count;
  overflow <= overflow_signal;
end architecture behavioral;
```