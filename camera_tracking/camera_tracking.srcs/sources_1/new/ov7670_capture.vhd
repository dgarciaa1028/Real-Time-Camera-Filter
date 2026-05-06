
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;


entity ov7670_capture is
    Port (
        pclk  : in  STD_LOGIC;
        vsync : in  STD_LOGIC;
        href  : in  STD_LOGIC;
        d     : in  STD_LOGIC_VECTOR(7 downto 0);
        addr  : out STD_LOGIC_VECTOR(18 downto 0);
        dout  : out STD_LOGIC_VECTOR(11 downto 0);
        we    : out STD_LOGIC
    );
end ov7670_capture;

architecture Behavioral of ov7670_capture is

    -- Holds the most recent two 8-bit camera samples.
    -- The OV7670 sends pixel data over an 8-bit bus, so multiple camera
    -- clock cycles are needed to build one full pixel.
    signal d_latch : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

    -- Current write address sent to the frame buffer.
    signal address : STD_LOGIC_VECTOR(18 downto 0) := (others => '0');

    -- Next write address. This lets the design update the address only
    -- after a complete pixel has been written.
    signal address_next : STD_LOGIC_VECTOR(18 downto 0) := (others => '0');

    -- Small shift register used to delay the write enable until a full pixel
    -- has been assembled from the incoming camera bytes.
    signal wr_hold : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');

begin

    -- Connect the internal address counter to the output port.
    -- The frame buffer uses this address when we = '1'.
    addr <= address;

    -- All capture logic is synchronous to the camera pixel clock.
    -- The FPGA samples the camera data bus on each rising edge of pclk.
    process(pclk)
    begin
        if rising_edge(pclk) then

            -- VSYNC marks a frame boundary.
            -- When VSYNC is high, restart writing at address 0 so the next
            -- frame overwrites the previous frame from the beginning.
            if vsync = '1' then
                address      <= (others => '0');
                address_next <= (others => '0');
                wr_hold      <= (others => '0');
                we           <= '0';

            else
                -- Convert the latched camera data into a 12-bit RGB444 pixel.
                --
                -- The camera data is latched into d_latch over multiple PCLK cycles.
                -- This design keeps only 4 bits per color channel:
                --   dout(11 downto 8) = red
                --   dout(7 downto 4)  = green
                --   dout(3 downto 0)  = blue
                --
                -- This reduces memory usage and matches the 4-bit-per-channel VGA output.
                dout <= d_latch(15 downto 12) &
                        d_latch(10 downto 7) &
                        d_latch(4 downto 1);

                -- Present the current write address to the frame buffer.
                address <= address_next;

                -- Assert write enable when wr_hold says a complete pixel is ready.
                we <= wr_hold(1);

                -- Detect the start of a valid camera byte sequence.
                -- href is high during active image data.
                -- The "and not wr_hold(0)" prevents triggering again immediately
                -- while already handling the current pixel transfer.
                wr_hold <= wr_hold(0) & (href and not wr_hold(0));

                -- Shift in the newest 8-bit camera sample.
                -- After two PCLK cycles, d_latch contains enough information
                -- to form one pixel.
                d_latch <= d_latch(7 downto 0) & d;

                -- Once a pixel has been written, move to the next memory address.
                if wr_hold(1) = '1' then
                    address_next <= std_logic_vector(unsigned(address_next) + 1);
                end if;

            end if;
        end if;
    end process;

end Behavioral;
