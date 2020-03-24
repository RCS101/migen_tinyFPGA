from migen.build.generic_platform import *
from migen.build.lattice import LatticePlatform

_io = [
    ("user_led1", 0, Pins("GPIO:9"), IOStandard("LVCMOS33"))
    ("user_led2", 0, Pins("GPIO:10"), IOStandard("LVCMOS33"))
]


class Platform(LatticePlatform)
