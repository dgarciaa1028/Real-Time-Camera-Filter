-- Module Name: frame_filter_3x3 - Behavioral
-- Description:
--   Streaming frame filter for simple neighborhood effects.
--
--   mode:
--     00 = pass-through
--     01 = 3x3 blur
--     10 = sharpen using current pixel and local blur
--     11 = edge/difference from local blur
--
--   This module uses a trailing 3x3 window made from the current pixel, the
--   two previous pixels in the current row, and the same three columns from
--   the two previous rows. The output stays aligned to the incoming address,
--   so it can sit directly between ov7670_capture and the framebuffer.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity frame_filter_3x3 is
    Port (
        clk             : in  STD_LOGIC;
        reset_frame     : in  STD_LOGIC;
        mode            : in  STD_LOGIC_VECTOR(1 downto 0);
        addr_in         : in  STD_LOGIC_VECTOR(18 downto 0);
        pixel_in        : in  STD_LOGIC_VECTOR(11 downto 0);
        pixel_valid_in  : in  STD_LOGIC;
        addr_out        : out STD_LOGIC_VECTOR(18 downto 0);
        pixel_out       : out STD_LOGIC_VECTOR(11 downto 0);
        pixel_valid_out : out STD_LOGIC
    );
end frame_filter_3x3;

architecture Behavioral of frame_filter_3x3 is

    constant FRAME_WIDTH  : natural := 640;
    constant FRAME_HEIGHT : natural := 480;

    type line_buffer_t is array (0 to FRAME_WIDTH - 1) of STD_LOGIC_VECTOR(11 downto 0);

    signal line0 : line_buffer_t := (others => (others => '0'));
    signal line1 : line_buffer_t := (others => (others => '0'));
    signal line2 : line_buffer_t := (others => (others => '0'));

    signal x_count : unsigned(9 downto 0) := (others => '0');
    signal y_count : unsigned(9 downto 0) := (others => '0');
    signal row_sel : unsigned(1 downto 0) := (others => '0');

    signal cur_m1 : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
    signal cur_m2 : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');

    function clamp4(value : integer) return STD_LOGIC_VECTOR is
        variable clipped : integer;
    begin
        if value < 0 then
            clipped := 0;
        elsif value > 15 then
            clipped := 15;
        else
            clipped := value;
        end if;

        return std_logic_vector(to_unsigned(clipped, 4));
    end function;

    function red4(pixel : STD_LOGIC_VECTOR(11 downto 0)) return integer is
    begin
        return to_integer(unsigned(pixel(11 downto 8)));
    end function;

    function green4(pixel : STD_LOGIC_VECTOR(11 downto 0)) return integer is
    begin
        return to_integer(unsigned(pixel(7 downto 4)));
    end function;

    function blue4(pixel : STD_LOGIC_VECTOR(11 downto 0)) return integer is
    begin
        return to_integer(unsigned(pixel(3 downto 0)));
    end function;

    function make_pixel(r : integer; g : integer; b : integer) return STD_LOGIC_VECTOR is
    begin
        return clamp4(r) & clamp4(g) & clamp4(b);
    end function;

begin

    process(clk)
        variable xi : integer range 0 to FRAME_WIDTH - 1;

        variable p00 : STD_LOGIC_VECTOR(11 downto 0);
        variable p01 : STD_LOGIC_VECTOR(11 downto 0);
        variable p02 : STD_LOGIC_VECTOR(11 downto 0);
        variable p10 : STD_LOGIC_VECTOR(11 downto 0);
        variable p11 : STD_LOGIC_VECTOR(11 downto 0);
        variable p12 : STD_LOGIC_VECTOR(11 downto 0);
        variable p20 : STD_LOGIC_VECTOR(11 downto 0);
        variable p21 : STD_LOGIC_VECTOR(11 downto 0);
        variable p22 : STD_LOGIC_VECTOR(11 downto 0);

        variable blur_r : integer;
        variable blur_g : integer;
        variable blur_b : integer;
        variable out_r  : integer;
        variable out_g  : integer;
        variable out_b  : integer;
    begin
        if rising_edge(clk) then
            pixel_valid_out <= '0';

            if reset_frame = '1' then
                x_count        <= (others => '0');
                y_count        <= (others => '0');
                row_sel        <= (others => '0');
                cur_m1         <= (others => '0');
                cur_m2         <= (others => '0');
                addr_out        <= (others => '0');
                pixel_out       <= (others => '0');
                pixel_valid_out <= '0';

            elsif pixel_valid_in = '1' then
                xi := to_integer(x_count);

                addr_out        <= addr_in;
                pixel_valid_out <= '1';

                if row_sel = "00" then
                    line0(xi) <= pixel_in;

                    if xi >= 2 then
                        p00 := line1(xi - 2);
                        p01 := line1(xi - 1);
                        p02 := line1(xi);
                        p10 := line2(xi - 2);
                        p11 := line2(xi - 1);
                        p12 := line2(xi);
                    end if;

                elsif row_sel = "01" then
                    line1(xi) <= pixel_in;

                    if xi >= 2 then
                        p00 := line2(xi - 2);
                        p01 := line2(xi - 1);
                        p02 := line2(xi);
                        p10 := line0(xi - 2);
                        p11 := line0(xi - 1);
                        p12 := line0(xi);
                    end if;

                else
                    line2(xi) <= pixel_in;

                    if xi >= 2 then
                        p00 := line0(xi - 2);
                        p01 := line0(xi - 1);
                        p02 := line0(xi);
                        p10 := line1(xi - 2);
                        p11 := line1(xi - 1);
                        p12 := line1(xi);
                    end if;
                end if;

                p20 := cur_m2;
                p21 := cur_m1;
                p22 := pixel_in;

                if mode = "00" or
                   x_count < to_unsigned(2, x_count'length) or
                   y_count < to_unsigned(2, y_count'length) then
                    pixel_out <= pixel_in;

                else
                    blur_r := (red4(p00)   + red4(p01)   + red4(p02) +
                               red4(p10)   + red4(p11)   + red4(p12) +
                               red4(p20)   + red4(p21)   + red4(p22)) / 9;

                    blur_g := (green4(p00) + green4(p01) + green4(p02) +
                               green4(p10) + green4(p11) + green4(p12) +
                               green4(p20) + green4(p21) + green4(p22)) / 9;

                    blur_b := (blue4(p00)  + blue4(p01)  + blue4(p02) +
                               blue4(p10)  + blue4(p11)  + blue4(p12) +
                               blue4(p20)  + blue4(p21)  + blue4(p22)) / 9;

                    case mode is
                        when "01" =>
                            pixel_out <= make_pixel(blur_r, blur_g, blur_b);

                        when "10" =>
                            out_r := (2 * red4(p22))   - blur_r;
                            out_g := (2 * green4(p22)) - blur_g;
                            out_b := (2 * blue4(p22))  - blur_b;
                            pixel_out <= make_pixel(out_r, out_g, out_b);

                        when others =>
                            out_r := abs(red4(p22)   - blur_r);
                            out_g := abs(green4(p22) - blur_g);
                            out_b := abs(blue4(p22)  - blur_b);
                            pixel_out <= make_pixel(out_r, out_g, out_b);
                    end case;
                end if;

                if x_count = to_unsigned(FRAME_WIDTH - 1, x_count'length) then
                    x_count <= (others => '0');
                    cur_m1  <= (others => '0');
                    cur_m2  <= (others => '0');

                    if y_count = to_unsigned(FRAME_HEIGHT - 1, y_count'length) then
                        y_count <= (others => '0');
                        row_sel <= (others => '0');
                    else
                        y_count <= y_count + 1;

                        if row_sel = "10" then
                            row_sel <= (others => '0');
                        else
                            row_sel <= row_sel + 1;
                        end if;
                    end if;

                else
                    x_count <= x_count + 1;
                    cur_m2  <= cur_m1;
                    cur_m1  <= pixel_in;
                end if;
            end if;
        end if;
    end process;

end Behavioral;
