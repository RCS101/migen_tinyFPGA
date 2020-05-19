from migen import *

import tinyPlatform

class main(Module):
    def __init__(self):

        """
        Lets make a simple device that reads from a memory and toggles a pin.
        """

        self.led0 = led0 = Signal(1) # platform.request("user_led0")
        self.dataIn = dataIn = Signal(8) # 8b data, read from memory

        self.bitmask = bitmask = Signal(8)
        self.bitmask.eq(0x01)
        self.cnt = cnt = Signal(8)

#        self.comb += self.cnt.eq(self.led0)

        # declare memory, width, depth, init, name. 8 bit wide 255 blocks deeps
        self.mem_add = mem_add = Signal(8)
        self.specials.mem = Memory(8, 2**8, init=list(range(255)), name="memories")
        self.specials += self.mem
        r_pt = self.mem.get_port(write_capable=False, has_re=True, mode=READ_FIRST)

        # clcok through each byte toggling LED
        self.sync += [
            If(self.cnt < 255,

                If((self.dataIn & self.bitmask),
                    self.led0.eq(1)
                ).Else(
                    self.led0.eq(0)
                ),

                self.bitmask.eq((self.bitmask << 1)),

                If(self.bitmask == 0x80,
                    self.bitmask.eq(0x01),
                    # Get next byte
                    self.dataIn.eq(self.mem[self.cnt]),
                    self.cnt.eq(self.cnt + 1)
                )
            )
       ]



def TestBench(dut):
    #def __init__(self):
    print("Begin")
    var = 0
    yield dut.bitmask.eq(1)
    while var < 255 :
        var =  yield dut.cnt
        yield


# Create our platform (fpga interface)
#plat = tinyPlatform.Platform()

dut = main()
run_simulation(dut, TestBench(dut), vcd_name="memory.vcd")

# Create our module and blink LEDs asnd build
#module = main(plat)
#plat.build(module)
