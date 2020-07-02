from settings import *
from arrayGenerator import *
from topGenerator import *

print("############# Libano's Systolic Array Generator #############")

#generate .sv files
generateArray()
if(axiWrapper):
	generateTop()
