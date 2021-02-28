#!/usr/bin/python3
# Create a service file
import os
import sys
import subprocess

serviceWork = \
'''
[Unit]
Description=webdashboard-2.0
After=multi-user.target
Conflicts=getty@tty.service

[Service]
Type=simple
ExecStart=/usr/local/bin/webdashboard
StandardInput=tty-force

[Install]
WantedBy=multi-user.target
'''

if os.geteuid() == 0:
   pass
else:
    print("We're not root.")
    subprocess.call(['sudo', 'python3', *sys.argv])
    sys.exit()

serviceName = 'webdashboard'
tmpFileLocation = '/var/local/'
fullFilePath_ext = tmpFileLocation+serviceName+'.service'

with open(fullFilePath_ext, 'w') as file:
	file.write(serviceWork)
