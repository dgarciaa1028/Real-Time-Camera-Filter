-- Description:
-- Applies simple per-pixel image filters to a 12-bit RGB444 pixel.
--
-- pixel_in format:
--   pixel_in(11 downto 8) = red
--   pixel_in(7 downto 4)  = green
--   pixel_in(3 downto 0)  = blue
--
-- mode:
--   000 = normal/pass-through
--   001 = grayscale
--   010 = invert
--   011 = black/white threshold
--   100 = red channel only
--   101 = green channel only
--   110 = blue channel only
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;


entity pixel_filter is
    Port (
        pixel_in  : in  STD_LOGIC_VECTOR(11 downto 0);
        mode      : in  STD_LOGIC_VECTOR(2 downto 0);
        pixel_out : out STD_LOGIC_VECTOR(11 downto 0)
    );
end pixel_filter;

architecture Behavioral of pixel_filter is

    -- Individual 4-bit RGB channels extracted from the input pixel.
    signal r : unsigned(3 downto 0);
    signal g : unsigned(3 downto 0);
    signal b : unsigned(3 downto 0);

    -- 4-bit grayscale intensity value.
    signal gray : unsigned(3 downto 0);

begin

    -- Split the 12-bit RGB444 input pixel into separate color channels.
    r <= unsigned(pixel_in(11 downto 8));
    g <= unsigned(pixel_in(7 downto 4));
    b <= unsigned(pixel_in(3 downto 0));

    -- Simple grayscale approximation.
    -- This averages red, green, and blue equally:
    -- gray = (r + g + b) / 3
    --
    -- Note: this is simple and easy to understand, but not visually perfect.
    -- A more realistic grayscale conversion would weight green more heavily.
    gray <= resize((resize(r, 6) + resize(g, 6) + resize(b, 6)) / 3, 4);

    -- Combinational filter selection.
    -- The selected mode determines how each input pixel is transformed.
    process(pixel_in, mode, r, g, b, gray)
    begin
        case mode is

            -- Mode 000: normal video.
            -- Output pixel is unchanged.
            when "000" =>
                pixel_out <= pixel_in;

            -- Mode 001: grayscale.
            -- Use the same gray value for red, green, and blue.
            when "001" =>
                pixel_out <= std_logic_vector(gray & gray & gray);

            -- Mode 010: invert.
            -- Flips all pixel bits, creating a negative-image effect.
            when "010" =>
                pixel_out <= not pixel_in;

            -- Mode 011: black/white threshold.
            -- Bright pixels become white, dark pixels become black.
            when "011" =>
                if gray > to_unsigned(8, 4) then
                    pixel_out <= x"FFF";
                else
                    pixel_out <= x"000";
                end if;

            -- Mode 100: red channel only.
            -- Keep red and remove green/blue.
            when "100" =>
                pixel_out <= pixel_in(11 downto 8) & x"0" & x"0";

            -- Mode 101: green channel only.
            -- Keep green and remove red/blue.
            when "101" =>
                pixel_out <= x"0" & pixel_in(7 downto 4) & x"0";

            -- Mode 110: blue channel only.
            -- Keep blue and remove red/green.
            when "110" =>
                pixel_out <= x"0" & x"0" & pixel_in(3 downto 0);

            -- Any unused mode defaults to normal video.
            when others =>
                pixel_out <= pixel_in;

        end case;
    end process;

end Behavioral;
