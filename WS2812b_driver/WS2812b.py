from migen import *
# from migen.build.platforms import tinyfpga_a
import tinyPlatform
from WS2812sub import WS2812b
#from migen.build.generic_platform import Pins, Subsignal, IOStandard

"""
main module is basically an extended SPI slave. Takes in 3 bytes as SPI slave then pumps out the data
through th WS2812b submodule.

SPI slave in mode:
MSB
polarity 0 = Clock idle low
Phase 2 edge = Data read on falling edge
"""
class main(Module):
    def __init__(self, platform):
        # Input pins
        self.sclk = sclk = platform.request("user_sclk")#Signal()#
        self.mosi = mosi = platform.request("user_mosi")#Signal()#
        self.cs = cs = platform.request("user_cs")#Signal()# =

        self.data = data = Signal(8) # 8b bytes from SPI
        self.led_data = led_data = Signal(24) # 24b LED data

        self.error = error = Signal(1)
        self.byte_no = byte_no = Signal(2)

        ws2812 = WS2812b(platform)
        self.submodules += ws2812

        ###

        self.comb += ws2812.value.eq(led_data)

        # we are clocked by sclk, every edge run through the FSM

        """
        Implement a finite state machine to handle incoming data
        The SPI slave state machine containts ? states:
        IDLE:
            In IDLE the chip select pin is checked. If chip select is active then the state machine
            moves to DATA.
        START:
        DATA:
            In DATA upon a falling edge on the sclk pin (currently only working in 1 SPI mode) the MOSI
            pin is checked and data added to the data register.
        HOLD:
            In HOLD we wait for the clock to go high
        STOP:
            Wait for data to be handled....???
        """

        self.bit_no = bit_no = Signal(3)
        self.submodules.mosi_fsm = FSM(reset_state="IDLE")

        ### IDLE
        self.mosi_fsm.act("IDLE",
            If(~self.cs, # Active low
                NextState("START")
            ) # No else. If CS is deactive then we don't do anything!
        )
        ### START
        self.mosi_fsm.act("START",
            If(self.cs,
                NextValue(self.error, 1),
                NextState("ERROR")
            ).Elif(self.sclk,                #wait until sclk goes low, then move to DATA to read the bit. This is falling edge trigger.
                NextState("DATA")
            )
        )
        ### DATA
        self.mosi_fsm.act("DATA",
            If(self.cs,
                NextValue(self.error, 1),
                NextState("ERROR")
            ).Elif(~self.sclk,
                NextValue(self.data, Cat(self.data[1:8], self.mosi)), # Cat records the data as LSB - currently don't know how to make it MSB (Im dumb)
                NextValue(self.led_data, Cat(self.led_data[1:24], self.mosi)),
                NextValue(self.bit_no, self.bit_no + 1),
                If(self.bit_no == 7,
                    NextValue(self.byte_no, self.byte_no + 1),
                    NextState("STOP")
                    ).Else(
                        NextState("HOLD")
                    )
            )
        )
        ### HOLD
        self.mosi_fsm.act("HOLD",
            If(self.cs,
                NextValue(self.error, 1),
                NextState("ERROR")
            ).Elif(self.sclk, # wait until the clock goes high again before moving to DATA
                NextState("DATA")
            )
        )
        ### STOP
        self.mosi_fsm.act("STOP",
            ## If either chip is released or the byte is handled return to IDLE
            If(self.byte_no == 3,
                NextValue(ws2812.dataIn, 1),
                NextValue(self.bit_no, 0),
                NextValue(self.byte_no, 0),
            #    NextValue(self.data, 0),
                NextValue(self.error, 0),
            ),
            NextState("IDLE")
        )

        self.mosi_fsm.act("ERROR",
            # reset everything
            NextValue(self.bit_no, 0),
            NextValue(self.byte_no, 0),
            NextValue(self.data, 0), # Does this right over the whole register?
            If(ws2812.dataIn == 0, # Only reset led_data if it isn't being shifted out
                NextValue(self.led_data, 0),
            ),
            NextValue(self.error, 0),
            NextState("IDLE")
        )



""" Function to pretend to be an SPI master sending data """
def _spi_master(tx, dut):
    ## Initialise ports
    print("Initialise")
    yield;
    yield dut.cs.eq(1) # deactive
    yield dut.mosi.eq(0)
    yield dut.sclk.eq(0)
    yield dut.error.eq(0)
    yield; yield; yield; yield; # 4 clocks
    # Set cs active
    yield dut.cs.eq(0)
    yield; yield; yield; yield; # 4 clocks
    # loop through the tx byte setting pins

    bitmask = 0x01 # LSB - make this 0x80 for MSB
    tx = 0
    print("Data in: {}".format(hex(tx)))

    for i in range(0, 8):
    #    print("Bitmask {}".format(hex(bitmask)))
        if (bitmask & tx) == bitmask:
    #        print("mosi high")
            yield dut.mosi.eq(1)
        else:
        #        print("mosi low")
            yield dut.mosi.eq(0)

        bitmask = (bitmask<<1) # flip shift direction for MSB
        yield dut.sclk.eq(1)
        yield; yield; yield; yield;
        yield dut.sclk.eq(0)
        yield; yield; yield; yield;

    bitmask = 0x01
    tx = 0
    print("Data in: {}".format(hex(tx)))
    yield; yield;

    for i in range(0, 8):
    #    print("Bitmask {}".format(hex(bitmask)))
        if (bitmask & tx) == bitmask:
    #        print("mosi high")
            yield dut.mosi.eq(1)
        else:
        #        print("mosi low")
            yield dut.mosi.eq(0)

        bitmask = (bitmask<<1) # flip shift direction for MSB
        yield dut.sclk.eq(1)
        yield; yield; yield; yield;
        yield dut.sclk.eq(0)
        yield; yield; yield; yield;

    bitmask = 0x01
    tx = 0xff
    print("Data in: {}".format(hex(tx)))
    yield; yield;

    for i in range(0, 8):
    #    print("Bitmask {}".format(hex(bitmask)))
        if (bitmask & tx) == bitmask:
    #        print("mosi high")
            yield dut.mosi.eq(1)
        else:
        #        print("mosi low")
            yield dut.mosi.eq(0)

        bitmask = (bitmask<<1) # flip shift direction for MSB
        yield dut.sclk.eq(1)
        yield; yield; yield; yield;
        yield dut.sclk.eq(0)
        yield; yield; yield; yield;

    bitmask = 0x01
    yield; yield;


    yield dut.sclk.eq(0)
    yield dut.mosi.eq(0)
    yield dut.cs.eq(1)

    yield; yield; yield; yield; # 4 clocks
    yield; yield; yield; yield; # 4 clocks

    yield dut.cs.eq(0)
    print("Transmit complete")

    print("Starting LED write")
    for i in range(1, 1000):
        yield


    yield; yield; yield; yield; # 4 clocks
    yield; yield; yield; yield; # 4 clocks

# class TestBench(Module):
#     def __init__(self):

# Create our platform (fpga interface)
plat = tinyPlatform.Platform()
# dut = main(plat)
# run_simulation(dut, _spi_master(0xAA, dut), vcd_name="ws2812b.vcd")

# Create our module and blink LEDs asnd build
module = main(plat)
plat.build(module)
