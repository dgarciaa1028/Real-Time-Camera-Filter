
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;

entity ov7670_controller is
    Port (
        clk             : in    STD_LOGIC;
        resend          : in    STD_LOGIC;
        config_finished : out   STD_LOGIC;
        sioc            : out   STD_LOGIC;
        siod            : inout STD_LOGIC;
        reset           : out   STD_LOGIC;
        pwdn            : out   STD_LOGIC;
        xclk            : out   STD_LOGIC
    );
end ov7670_controller;

architecture Behavioral of ov7670_controller is

    -- This module stores the list of OV7670 register writes.
    -- It outputs one 16-bit command at a time:
    -- command(15 downto 8) = register address
    -- command(7 downto 0)  = register value
    COMPONENT ov7670_registers
    PORT (
        clk      : IN  STD_LOGIC;
        advance  : IN  STD_LOGIC;
        resend   : IN  STD_LOGIC;
        command  : OUT STD_LOGIC_VECTOR(15 downto 0);
        finished : OUT STD_LOGIC
    );
    END COMPONENT;

    -- This module sends one register/value command to the camera
    -- using the OV7670 SCCB/I2C-like serial interface.
    COMPONENT i2c_sender
    PORT (
        clk   : IN    STD_LOGIC;
        send  : IN    STD_LOGIC;
        taken : OUT   STD_LOGIC;
        id    : IN    STD_LOGIC_VECTOR(7 downto 0);
        reg   : IN    STD_LOGIC_VECTOR(7 downto 0);
        value : IN    STD_LOGIC_VECTOR(7 downto 0);
        siod  : INOUT STD_LOGIC;
        sioc  : OUT   STD_LOGIC
    );
    END COMPONENT;

    -- Internal divided clock used as the camera XCLK.
    -- This toggles every clk cycle, so xclk is clk / 2.
    signal sys_clk : STD_LOGIC := '0';

    -- Hold the camera in reset briefly after configuration starts so XCLK is
    -- stable before SCCB register writes begin.
    signal startup_count : unsigned(19 downto 0) := (others => '0');
    signal startup_done  : STD_LOGIC := '0';

    -- Current register/value pair from ov7670_registers.
    signal command : STD_LOGIC_VECTOR(15 downto 0);

    -- Goes high when the register list has reached the end.
    signal finished : STD_LOGIC := '0';

    -- Pulses high when i2c_sender accepts the current command.
    -- This tells ov7670_registers to advance to the next command.
    signal taken : STD_LOGIC := '0';

    -- Enables i2c_sender while there are still commands left to send.
    signal send : STD_LOGIC;

    -- OV7670 write address for SCCB/I2C-like configuration writes.
    -- The camera's 7-bit address is commonly represented as 0x21,
    -- but with the write bit included it becomes 0x42.
    constant camera_address : STD_LOGIC_VECTOR(7 downto 0) := x"42";

begin

    -- Expose the finished flag to the top level.
    -- This can be used to know when camera initialization is complete.
    config_finished <= finished;

    -- Keep sending commands until the register ROM reports that it is finished,
    -- but only after the camera has had time to come out of reset cleanly.
    send <= (not finished) and startup_done;

    -- Sends the current register/value pair to the camera over SCCB/I2C.
    Inst_i2c_sender: i2c_sender
    PORT MAP (
        clk   => clk,
        taken => taken,
        siod  => siod,
        sioc  => sioc,
        send  => send,
        id    => camera_address,
        reg   => command(15 downto 8),
        value => command(7 downto 0)
    );

    -- Camera control pins.
    -- reset = '1' keeps the OV7670 in normal operating mode.
    -- pwdn  = '0' powers the camera up.
    -- xclk is the external clock supplied to the camera.
    reset <= startup_done;
    pwdn  <= '0';
    xclk  <= sys_clk;

    -- Provides the next register/value pair to send.
    -- When i2c_sender accepts a command, taken goes high and advances the list.
    -- If resend is pressed, the register list restarts from the beginning.
    Inst_ov7670_registers: ov7670_registers
    PORT MAP (
        clk      => clk,
        advance  => taken,
        command  => command,
        finished => finished,
        resend   => resend
    );

    -- Simple divide-by-2 clock generator for the camera XCLK.
    -- Example: if clk is 50 MHz, sys_clk/xclk becomes 25 MHz.
    process(clk)
    begin
        if rising_edge(clk) then
            sys_clk <= not sys_clk;

            if startup_done = '0' then
                startup_count <= startup_count + 1;

                if startup_count = x"FFFFF" then
                    startup_done <= '1';
                end if;
            end if;
        end if;
    end process;

end Behavioral;

