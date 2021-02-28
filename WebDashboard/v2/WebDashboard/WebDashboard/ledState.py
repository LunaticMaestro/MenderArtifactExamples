# Write LED State to inventory variable
#
# The state is controled by the button on webdashboard http://localhost:8050

def updateLedInventory(state):
	data = '''\
echo "Yas"
'''
	pathToInventoryFile = '' TODO 
	with open(pathToInventoryFile, 'w') as file:
		file.write(data) 