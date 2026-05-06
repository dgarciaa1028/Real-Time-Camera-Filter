
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;


entity ov7670_registers is
    Port (
        clk      : in  STD_LOGIC;
        resend   : in  STD_LOGIC;
        advance  : in  STD_LOGIC;
        command  : out STD_LOGIC_VECTOR(15 downto 0);
        finished : out STD_LOGIC
    );
end ov7670_registers;

architecture Behavioral of ov7670_registers is

    -- Holds the current register/value pair being sent.
    -- Upper 8 bits = register address
    -- Lower 8 bits = value to write
    signal sreg : STD_LOGIC_VECTOR(15 downto 0);

    -- Address index into this "ROM" of register values.
    -- Each value of address corresponds to one register write.
    signal address : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

begin

    -- Output the current register command to the controller.
    command <= sreg;

    -- When sreg = x"FFFF", we treat that as "end of configuration".
    -- This tells the controller to stop sending commands.
    with sreg select
        finished <= '1' when x"FFFF",
                    '0' when others;

    process(clk)
    begin
        if rising_edge(clk) then

            -- If resend is pressed, restart configuration from the beginning.
            if resend = '1' then
                address <= (others => '0');

            -- When the i2c_sender finishes a command, it asserts "advance".
            -- This moves to the next register in the list.
            elsif advance = '1' then
                address <= std_logic_vector(unsigned(address) + 1);
            end if;

            -- This is essentially a ROM implemented as a case statement.
            -- Each address corresponds to one OV7670 register write.
            case address is

                -- Set output format and resolution mode
                when x"00" => sreg <= x"1204"; -- COM7: RGB output, size selection

                -- Clock prescaler (controls internal camera timing)
                when x"01" => sreg <= x"1100"; -- CLKRC: Fin/(1+1)

                -- Enable scaling and disable unwanted features
                when x"02" => sreg <= x"0C00"; -- COM3

                -- Disable pixel clock scaling
                when x"03" => sreg <= x"3E00"; -- COM14

                -- Set RGB format (this is slightly confusing, interacts with COM15)
                when x"04" => sreg <= x"8C00"; -- RGB444 setting

                -- Disable CCIR601 format
                when x"05" => sreg <= x"0400"; -- COM1

                -- Full output range and RGB565 mode.
                -- COM15 = 0xD0 sets full 0-255 output range and RGB565.
                when x"06" => sreg <= x"40D0"; -- COM15

                -- Set UV ordering and window behavior
                when x"07" => sreg <= x"3A04"; -- TSLB

                -- Automatic gain ceiling
                when x"08" => sreg <= x"1438"; -- COM9

                -- Color conversion matrix (controls color balance)
                when x"09" => sreg <= x"4FB3"; -- MTX1
                when x"0A" => sreg <= x"50B3"; -- MTX2
                when x"0B" => sreg <= x"5100"; -- MTX3
                when x"0C" => sreg <= x"523D"; -- MTX4
                when x"0D" => sreg <= x"53A7"; -- MTX5
                when x"0E" => sreg <= x"54E4"; -- MTX6

                -- Matrix sign + auto contrast
                when x"0F" => sreg <= x"589E"; -- MTXS

                -- Enable gamma and UV auto-adjust
                when x"10" => sreg <= x"3DC0"; -- COM13

                -- Clock again (duplicate setting)
                when x"11" => sreg <= x"1100"; -- CLKRC

                -- Horizontal frame window (where image starts/stops)
                when x"12" => sreg <= x"1711"; -- HSTART
                when x"13" => sreg <= x"1861"; -- HSTOP
                when x"14" => sreg <= x"32A4"; -- HREF

                -- Vertical frame window
                when x"15" => sreg <= x"1903"; -- VSTART
                when x"16" => sreg <= x"1A7B"; -- VSTOP
                when x"17" => sreg <= x"030A"; -- VREF

                -- Many additional tuning registers are commented out.
                -- These can be enabled later if you want to fine-tune image quality.

                -- Default case: marks end of configuration.
                -- When this value is reached, finished = '1'.
                when others => sreg <= x"FFFF";

            end case;
        end if;
    end process;

end Behavioral;
