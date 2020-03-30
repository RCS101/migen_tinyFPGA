from migen import *
# from migen.build.platforms import tinyfpga_a
import tinyPlatform
#from migen.build.generic_platform import Pins, Subsignal, IOStandard

class bit0(Module):
    def __init__(self, platform):
        self.led0 = led0 = platform.request("user_led0") # Pins are defined in tinyPlatform
        self.DOUT = DOUT = platform.request("Dout")

        self.cnt = cnt = Signal(5) # at 16MHz clock, 19 clocks for a 1 bit window (~1250ns)

        self.sync += [
            cnt.eq(cnt+1),
            If(cnt == 19, # 1 bit window complete
                cnt.eq(0)
            ),
            If(cnt > 5,  # 5 clocks for a 0 bit high (~350ns)
                DOUT.eq(0),
                led0.eq(0)
            ).Else(
                DOUT.eq(1),
                led0.eq(1)
            )
        ]

class bit1(Module):
    def __init__(self, platform):
        self.led0 = led0 = platform.request("user_led0")
        self.DOUT = DOUT = platform.request("Dout")

        self.cnt = cnt = Signal(5)

        self.sync += [
            cnt.eq(cnt+1),
            If(cnt == 19,
                cnt.eq(0)
            ),
            If(cnt > 10, # 10 clocks for a 1 bit high (~700ns)
                DOUT.eq(0),
                led0.eq(0)
            ).Else(
                DOUT.eq(1),
                led0.eq(1)
            )
        ]

class LED_write(Module):
    def __init__(self, platform):
    # A single WS2812 led has a 24b register
    self.data = data = Signal(24)
    self.bitmask = bitmasl = Signal(24)

    data.eq(0x550005) # Data to write to the LED
    bitmask.eq(0x01)

    while bitmask != 0x80000:
        if bitmask & data == 1
            bit1
        Else
            bit0
        bitmask<<=1



# Main




# Create our platform (fpga interface)
plat = tinyPlatform.Platform()
# Create our module and blink LEDs
module = bit1(plat)
# Build
plat.build(module)
