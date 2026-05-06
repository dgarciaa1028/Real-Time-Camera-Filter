
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;


entity vga is
    Port (
        clk25       : in  STD_LOGIC;
        vga_red     : out STD_LOGIC_VECTOR(3 downto 0);
        vga_green   : out STD_LOGIC_VECTOR(3 downto 0);
        vga_blue    : out STD_LOGIC_VECTOR(3 downto 0);
        vga_hsync   : out STD_LOGIC;
        vga_vsync   : out STD_LOGIC;
        frame_addr  : out STD_LOGIC_VECTOR(18 downto 0);
        frame_pixel : in  STD_LOGIC_VECTOR(11 downto 0);
        filter_mode : in  STD_LOGIC_VECTOR(7 downto 0)
    );
end vga;

architecture Behavioral of vga is

    -- VGA horizontal timing for 640x480 @ about 60 Hz.
    -- hRez is the visible part of the row.
    -- The remaining counts are blanking/sync time.
    constant hRez       : natural := 640;
    constant hStartSync : natural := 640 + 16;
    constant hEndSync   : natural := 640 + 16 + 96;
    constant hMaxCount  : natural := 800;

    -- VGA vertical timing for 640x480 @ about 60 Hz.
    -- vRez is the visible part of the frame.
    -- The remaining counts are blanking/sync time.
    constant vRez       : natural := 480;
    constant vStartSync : natural := 480 + 10;
    constant vEndSync   : natural := 480 + 10 + 2;
    constant vMaxCount  : natural := 480 + 10 + 2 + 33;

    -- VGA sync pulses are active-low for this timing mode.
    constant hsync_active : STD_LOGIC := '0';
    constant vsync_active : STD_LOGIC := '0';

    -- Current horizontal pixel position, including blanking interval.
    signal hCounter : unsigned(9 downto 0) := (others => '0');

    -- Current vertical line position, including blanking interval.
    signal vCounter : unsigned(9 downto 0) := (others => '0');

    -- Address used to read the next pixel from the frame buffer.
    signal address : unsigned(18 downto 0) := (others => '0');

    -- High when the current VGA position is outside the visible screen area.
    signal blank : STD_LOGIC := '1';

    -- Output of the selected image filter.
    -- The filter modifies the pixel before it is sent to the VGA color pins.
    signal filtered_pixel : STD_LOGIC_VECTOR(11 downto 0);

    -- Lower switch bits select the per-pixel filter. Higher bits control
    -- framebuffer address transforms such as mirroring.
    signal pixel_filter_mode : STD_LOGIC_VECTOR(2 downto 0);

begin

    pixel_filter_mode <= filter_mode(2 downto 0);

    -- Apply the selected filter to the current frame-buffer pixel.
    -- Switch map:
    --   filter_mode(2 downto 0):
    --     000 normal
    --     001 grayscale
    --     010 invert
    --     011 black/white threshold
    --     100 red channel only
    --     101 green channel only
    --     110 blue channel only
    --   filter_mode(5): horizontal mirror
    --   filter_mode(6): vertical mirror
    --   filter_mode(7): pause/freeze frame, handled in ov7670_top
    Inst_pixel_filter: entity work.pixel_filter
    port map (
        pixel_in  => frame_pixel,
        mode      => pixel_filter_mode,
        pixel_out => filtered_pixel
    );

    -- Send the current read address to the frame buffer.
    -- The frame buffer returns frame_pixel for this address.
    frame_addr <= std_logic_vector(address);

    process(clk25)
        variable source_x    : natural range 0 to hRez - 1;
        variable source_y    : natural range 0 to vRez - 1;
        variable source_addr : natural range 0 to hRez * vRez - 1;
    begin
        if rising_edge(clk25) then

            -- Count the lines and rows.
            -- hCounter steps through one full VGA line.
            -- When a line finishes, vCounter moves to the next line.
            if hCounter = hMaxCount - 1 then
                hCounter <= (others => '0');

                if vCounter = vMaxCount - 1 then
                    vCounter <= (others => '0');
                else
                    vCounter <= vCounter + 1;
                end if;

            else
                hCounter <= hCounter + 1;
            end if;

            -- During visible video, output the filtered pixel.
            -- During blanking, output black so no color appears outside
            -- the active display region.
            if blank = '0' then
                vga_red   <= filtered_pixel(11 downto 8);
                vga_green <= filtered_pixel(7 downto 4);
                vga_blue  <= filtered_pixel(3 downto 0);
            else
                vga_red   <= (others => '0');
                vga_green <= (others => '0');
                vga_blue  <= (others => '0');
            end if;

            -- Generate the frame-buffer read address.
            -- The framebuffer stores one RGB444 pixel per visible VGA pixel.
            -- 640x480 needs 307200 addresses, so the BRAM must be configured
            -- for 12-bit data and at least 307200 words of depth.
            if vCounter >= vRez then
                address <= (others => '0');
                blank   <= '1';
            else
                if hCounter < hRez then
                    blank   <= '0';

                    source_x := to_integer(hCounter);
                    source_y := to_integer(vCounter);

                    if filter_mode(5) = '1' then
                        source_x := hRez - 1 - source_x;
                    end if;

                    if filter_mode(6) = '1' then
                        source_y := vRez - 1 - source_y;
                    end if;

                    source_addr := (source_y * hRez) + source_x;
                    address <= to_unsigned(source_addr, address'length);
                else
                    blank <= '1';
                end if;
            end if;

            -- Are we in the hSync pulse? (one has been added to include frame_buffer_latency)
            -- hSync tells the monitor that a new horizontal line is about to begin.
            if hCounter > hStartSync and hCounter <= hEndSync then
                vga_hsync <= hsync_active;
            else
                vga_hsync <= not hsync_active;
            end if;

            -- Are we in the vSync pulse?
            -- vSync tells the monitor that a new frame is about to begin.
            if vCounter >= vStartSync and vCounter < vEndSync then
                vga_vsync <= vsync_active;
            else
                vga_vsync <= not vsync_active;
            end if;

        end if;
    end process;

end Behavioral;
