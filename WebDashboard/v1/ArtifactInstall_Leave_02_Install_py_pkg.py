#!/usr/bin/python3
# Create a service file
serviceWork = \
'''
[Unit]
Description=webdashboard
After=multi-user.target
Conflicts=getty@tty.service

[Service]
Type=simple
ExecStart=/usr/local/bin/webdashboard
StandardInput=tty-force

[Install]
WantedBy=multi-user.target
'''

serviceName = 'webdashboard'
tmpFileLocation = '/var/local/

with open(tmpFileLocation+serviceName+'.service', 'w') as file:
	file.write(serviceWork)