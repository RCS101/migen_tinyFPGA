from migen import *
# from migen.build.platforms import tinyfpga_a
import tinyPlatform
#from migen.build.generic_platform import Pins, Subsignal, IOStandard

class SPI_slave(Module):
    def __init__(self):
    #    self.led0 = led0 = platform.request("user_led0")
    #    self.DOUT = DOUT = platform.request("Dout")

        # Input pins
        self.sclk = sclk = Signal()#platform.request("user_sclk")
    #    self.miso = miso = platform.request("user_miso")
        self.mosi = mosi = Signal()#platform.request("user_mosi")
        self.cs = cs = Signal()# = platform.request("user_cs")
        self.data = data = Signal(8) # 27 bit LED register
        self.error = error = Signal()
        self.byte_ack = byte_ack = Signal()
        ###

        # self.comb +=
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
                If(~self.byte_ack, # If there is a byte in data, this needs to be read first
                    self.data.eq(0),
                    NextState("START")
                )
            ) # No else. If CS is deactive then we don't do anything!
        )
        ### START
        self.mosi_fsm.act("START",
            If(self.cs,
                self.error.eq(1),
                NextState("IDLE")
            ).Elif(self.sclk,                #wait until sclk goes low, then move to DATA to read the bit. This is falling edge trigger.
                NextState("DATA")
            )
        )
        ### DATA
        self.mosi_fsm.act("DATA",
            If(self.cs,
                self.error.eq(1),
                NextState("IDLE")
            ).Elif(~self.sclk,
                NextValue(self.data, Cat(self.data[1:8], self.mosi)),
                NextValue(bit_no, bit_no + 1),
                If(bit_no == 7,
                    NextState("STOP"),
                    self.byte_ack.eq(1)
                ).Else(
                    NextState("HOLD")
                )
            )
        )
        ### HOLD
        self.mosi_fsm.act("HOLD",
            If(self.cs,
                self.error.eq(1),
                NextState("IDLE")
            ).Elif(self.sclk, # wait until the clock goes high again before moving to DATA
                NextState("DATA")
            )
        )
        ### STOP
        self.mosi_fsm.act("STOP",
            ## If either chip is released or the byte is handled return to IDLE
            If(self.cs,
                NextState("IDLE")
            ).Elif(~self.byte_ack,
                NextState("IDLE")
            )
        )


""" Function to pretend to be an SPI master sending data """
def _spi_master(tx, dut):
    ## Initialise ports
    yield;
    yield dut.cs.eq(1) # deactive
    yield dut.mosi.eq(1)
    yield dut.sclk.eq(1)
    yield dut.byte_ack.eq(0)
    yield dut.error.eq(0)
    yield; yield; yield; yield; # 4 clocks
    # Set cs active
    yield dut.cs.eq(0)
    yield; yield; yield; yield; # 4 clocks
    # loop through the tx byte setting pins

    bitmask = 0x80
    print("TX {}".format(hex(tx)))

    for i in range(0, 8):
        if bitmask & tx == bitmask:
            print("HIGH")
            yield dut.mosi.eq(1)
        else:
            print("LOW")
            yield dut.mosi.eq(0)

        print("Bitmask {}".format(hex(bitmask)))
        bitmask = (bitmask>>1)

        yield; yield; yield; yield;
        #print("slck low")
        yield dut.sclk.eq(0)
        yield; yield; yield; yield;
    #    print("slck high")
        yield dut.sclk.eq(1)
        yield;

    yield dut.cs.eq(1)

    yield; yield; yield; yield; # 4 clocks
    yield; yield; yield; yield; # 4 clocks

# class TestBench(Module):
#     def __init__(self):

# plat = tinyPlatform.Platform()
dut = SPI_slave()
run_simulation(dut, _spi_master(0xAA, dut), vcd_name="SPI_slave.vcd")

# Create our platform (fpga interface)
#plat = tinyPlatform.Platform()
# Create our module and blink LEDs
#module = bit1(plat)
# Build
#plat.build(module)
