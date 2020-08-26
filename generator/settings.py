#imports
import os
import sys
import glob
import shutil
import math as m

#globals
genericPath = "./RTL/dont_touch/generic/"
generatedPath = "./RTL/dont_touch/generated/"
importMePath = "./RTL/import_me/"
arraySize = 2
parallelismLevel = 2*2 #DONT TOUCH (DSP48E1)
inputBits = 8 #DONT TOUCH (DSP48E1)
outputBits = 32
axiWrapper = True
