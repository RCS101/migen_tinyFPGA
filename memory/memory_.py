from migen import *

import tinyPlatform

class main(Module):
    def __init__(self, platform):

        """
        Lets make a simple device that reads from a memory and toggles a pin.
        """

        self.led0 = led0 = platform.request("user_led0")
        self.dataIn = dataIn = Signal(8) # 8b data, read from memory

        self.bitmask = bitmask = Signal(8)
        self.bitmask.eq(0x01)

        # declare memory, width, depth, init, name. 8 bit wide 255 blocks deeps
        # self.mem_add = mem_add = Signal(8)
        # self.specials.mem = Memory(8, 2**8, init=list(range(255)), name="memories")
        # self.specials += self.mem
        # self.r_pt = self.mem.get_port(write_capable=False)

        # clock through each byte toggling LED
        self.sync += [
            If(self.bitmask < 255, #self.r_pt.adr

                If((self.dataIn & self.bitmask),
                    self.led0.eq(1)
                ).Else(
                    self.led0.eq(0)
                ),

                self.bitmask.eq((self.bitmask << 1)),

                If(self.bitmask == 0x80,
                    self.bitmask.eq(0x01),
        #            self.r_pt.adr.eq(self.r_pt.adr + 1)  # Increment the memory address. In Comb this will read from the next address to dataIn
                )
            )
       ]

    #    self.comb += self.dataIn.eq(self.r_pt.dat_r) # fetch the new cmd from memory


def TestBench(dut):
    #def __init__(self):
    print("Begin")
    var = 0
    yield dut.bitmask.eq(1)
    while var < 255 :
        var =  yield dut.r_pt.adr
        yield


# Create our platform (fpga interface)
plat = tinyPlatform.Platform()

# run_simulation(dut, TestBench(dut), vcd_name="memory.vcd")
# dut = main()

# Create our module and blink LEDs asnd build
module = main(plat)
plat.build(module)
