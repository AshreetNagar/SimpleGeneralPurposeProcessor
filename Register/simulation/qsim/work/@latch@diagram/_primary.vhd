library verilog;
use verilog.vl_types.all;
entity LatchDiagram is
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        Resetn          : in     vl_logic;
        Clock           : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0)
    );
end LatchDiagram;
