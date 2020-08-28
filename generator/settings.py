#imports
import os
import sys
import glob
import shutil
import math as m

#globals
genericPath = "./RTL/dont_touch/generic/" #DONT TOUCH
generatedPath = "./RTL/dont_touch/generated/" #DONT TOUCH
importMePath = "./RTL/import_me/" #DONT TOUCH
parallelismLevel = 2*2 #DONT TOUCH
inputBits = 8 #DONT TOUCH
outputBits = 32 #(Accumulators)
arraySize = 2 #(N in NxN)
is7Series = False #{True = 7 Series (DSP48E1), False = UltraScale (DSP48E2)}
axiWrapper = True #(AXI Wrapper 'top.sv')
