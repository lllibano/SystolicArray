from settings import *
from fileHandler import *
from arrayGenerator import *
from topGenerator import *

print("############# Libano's Systolic Array Generator #############\n")

#delete old files
deleteOldFiles()
#generate new .sv files
generateArray()
if(axiWrapper):
	generateTop()
#copy new .sv files to './RTL/import_me'
copyNewFiles()

print("\n#############################################################")