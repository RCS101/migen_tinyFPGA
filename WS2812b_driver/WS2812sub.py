from migen import *
# from migen.build.platforms import tinyfpga_a
import tinyPlatform
#from migen.build.generic_platform import Pins, Subsignal, IOStandard


class WS2812b(Module):
    def __init__(self, platform):
        self.value = value = Signal(24) # input from main. Data to be written to the LED # 0xFF0000 = All Green, 0x00FF00 = ALl red, 0x0000FF = Blue
        self.dataIn = dataIn = Signal(1) # Flag to initiate data write
        # Digital IO:
        self.led0 = led0 = platform.request("user_led0")
        self.DOUT = DOUT = platform.request("Dout")

        self.bitmask = bitmask = Signal(24)
        self.cnt = cnt = Signal(5)
        self.bit_no = bit_no = Signal(5)
        self.bit_st = bit_st = Signal(1)
        ###
        self.comb += self.led0.eq(self.DOUT) # LED will mirror dout
        self.sync += [
            cnt.eq(cnt+1),
            If(cnt == 19, # 1 bit window complete
                cnt.eq(0)
            )
        ]
        # State machine to output the bitstream???
        """
        We could IDLE high, then the time to low is dependant on whether it's a 0 or 1
        Make a conditional jump to LOW dependant on a counter and bit in value

        States:
        IDLE:
            Wait for some signal to kick off data write
        WRITE_HIGH:
            Wait here for a number of clocks dependant on whether the relavant bit in value is a 1 or 0
        WRITE_LOW:
            Wait here for the remained of the bit timing window.  Increment bit counter and move back to WRITE_HIGH or STOP if we've written all the data
        STOP:
            Clear value? go back to IDLE
        """
        self.submodules.ws2812 = FSM(reset_state="IDLE")

        ## IDLE
        self.ws2812.act("IDLE",
            NextValue(self.DOUT, 0), # Idle low
            If(self.dataIn,
                NextState("WRITE_HIGH"),
                NextValue(self.bitmask, 0x800000),
                NextValue(self.cnt, 0) # reset the counter
            )
        )

        ## WRITE_HIGH
        self.ws2812.act("WRITE_HIGH",
            ## If the bit is 0 we wait here for 5 clocks, if is 1 we wait for 10 clocks
            If(~self.DOUT, # We've come here from WRITE_LOW, set high to start the next bit
                NextValue(self.DOUT, 1),
                NextValue(self.bit_st, 0)
            ),
            If((self.value & self.bitmask) == self.bitmask,
                If(cnt > 9,                    # DOUT 1 wait time
                    NextState("WRITE_LOW"),
                    NextValue(self.DOUT, 0)
                )
            ).Else(
                If(cnt > 5,                     # DOUT 0 wait time
                    NextState("WRITE_LOW"),
                    NextValue(self.DOUT, 0)
                )
            )
        )

        ## WRITE_LOW
        self.ws2812.act("WRITE_LOW",
            If(self.cnt == 19,
                NextValue(self.bit_no, self.bit_no + 1),
                If(self.bit_no == 23, # If we've sent all the data, go to STOP
                    NextValue(self.dataIn, 0),
                    NextState("STOP")
                ).Else(
                    NextValue(self.bitmask, (self.bitmask>>1)),
                    NextValue(self.bit_st, 1),
                    NextState("WRITE_HIGH") # Otherwise go back to high for the next bit
                )
            )
        )

        ## STOP
        self.ws2812.act("STOP",  # Reset pins and counts
            NextValue(self.bit_no, 0),
            NextValue(self.DOUT, 0),
            NextState("IDLE")
        )


""" Function to pretend to be an SPI master sending data """
def _WS2812_sub_TB(dut, data):
    ## Initialise ports
    print("Initialise")
    yield;
    yield dut.value.eq(data) # deactive
    yield dut.dataIn.eq(1) # flag data is ready

    print("Starting while wait")
    for i in range(1, 700):
        yield

    print("Left while wait")
    yield; yield; yield; yield; # 4 clocks


# Create our platform (fpga interface)
plat = tinyPlatform.Platform()
# dut = WS2812b(plat)
# run_simulation(dut, _WS2812_sub_TB(dut, 0xAAAAAA), vcd_name="ws2812b_sub.vcd")

# Create our module and build
# module = bit1(plat)
# plat.build(module)
