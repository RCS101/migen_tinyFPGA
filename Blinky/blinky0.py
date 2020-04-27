from migen import *
# from migen.build.platforms import tinyfpga_a
import tinyPlatform
#from migen.build.generic_platform import Pins, Subsignal, IOStandard

class blinky(Module):
    def __init__(self):
        self.counter = Signal(24)

        self.sync += self.counter.eq(self.counter+1)



def counter_test(dut):
    for i in range(20):
        print((yield dut.counter)) # Read the counterOut value
        yield # clock the sync


if __name__ == "__main__":
    dut = blinky()
    run_simulation(dut, counter_test(dut), vcd_name="text.vcd")
