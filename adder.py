from migen import *
from migen.build.tinyfpga_a import tinyfpga_a


class MyAdder(Module):
    def __init__(self, width):
        self.a = a = Signal(width)
        self.b = b = Signal(width)
        self.result = result = Signal(width+1)

        self.comb += result.eq(a+b)

class MyTop(Module):
    def __init__(self):
        self.inp = inp = Signal(8)
        # declare the Module
        adder = MyAdder(8)
        self.submodules += adder
        # Assign the res is the same as the one of the submodules
        self.res = adder.result
        #the adder takes our input and add 3
        self.comb += [adder.a.eq(inp), adder.b.eq(3)]

def blinky_test(dut):
    for i in range(20):
        yield dut.inp.eq(i)
        yield
        print("{} {}".format(i, (yield dut.res)))

dut = MyTop()
run_simulation(dut, blinky_test(dut), vcd_name="adder.vcd")
