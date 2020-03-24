from migen import *
import lx16ddr

class MyLedBlink(Module):
    def __init__(self, platform):
        self.led = led = platform.request("user_led")
        counter = Signal(25)

        self.sync += counter.eq(counter + 1)
        self.comb += led.eq(counter[24])

platform = lx16ddr.Platform()
dut = MyLedBlink(platform)
platform.build(dut)
