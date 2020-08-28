from settings import *

def deleteOldFiles():
	print("\tDeleting Old Files...")

	#clean 'generated' directory
	for fileName in glob.glob(os.path.join(generatedPath, "*.*")):
		os.remove(fileName)
	#clean 'import_me' directory
	for fileName in glob.glob(os.path.join(importMePath, "*.*")):
		os.remove(fileName)

def copyNewFiles():
	print("\tCopying New Files...")

	#copy from 'generic' to 'import_me'
	for fileName in glob.glob(os.path.join(genericPath, "*.*")):
		shutil.copy(fileName, importMePath)
	if(is7Series):
		dspPath = genericPath + "7series"
	else:
		dspPath = genericPath + "ultrascale"
	for fileName in glob.glob(os.path.join(dspPath, "*.*")):
		shutil.copy(fileName, importMePath)

	#copy from 'generated' to 'import_me'
	for fileName in glob.glob(os.path.join(generatedPath, "*.*")):
		shutil.copy(fileName, importMePath)
