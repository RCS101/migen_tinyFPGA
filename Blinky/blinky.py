from migen import *
# from migen.build.platforms import tinyfpga_a
import tinyPlatform
#from migen.build.generic_platform import Pins, Subsignal, IOStandard

class blinky(Module):
    def __init__(self, platform):
        self.led0 = led0 = platform.request("user_led0")
        self.led1 = led1 = platform.request("user_led1")
        self.led2 = led2 = platform.request("user_led2")
        counter = Signal(24)

        self.sync += counter.eq(counter+1)
        self.comb += [
            If(counter[8] == 1,
                led0.eq(1)
            ).Elif(counter[16] == 1,
                led1.eq(1)
            ).Elif(counter[20] == 1,
                led2.eq(1)
            ).Else(
                led0.eq(0),
                led1.eq(0),
                led2.eq(0)
            )
        ]


# Create our platform (fpga interface)
plat = tinyPlatform.Platform()
# Create our module and blink LEDs
module = blinky(plat)
# Build
plat.build(module)
