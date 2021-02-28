# Write LED State to inventory variable
#
# The state is controled by the button on webdashboard http://localhost:8050

def updateLedInventory(state):
	status='ON' if state else 'OFF'
	data = f'''#!/bin/sh
echo led_status={status}
'''
	pathToInventoryFile = \
'/usr/share/mender/inventory/mender-inventory-custom-led.sh'
	with open(pathToInventoryFile, 'w') as file:
		file.write(data) 
