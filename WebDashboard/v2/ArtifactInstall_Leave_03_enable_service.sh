#!/bin/sh
# Update the service file
#
# Remove previous file
sudo rm /lib/systemd/system/webdashboard.service
#
# Copy the new file to service
sudo cp /var/local/webdashboard.service /lib/systemd/system/
#
# Make and start service
sudo systemctl daemon-reload
sudo systemctl enable webdashboard.service
sudo systemctl start webdashboard.service
#
#
# Remove local files
sudo rm /var/local/webdashboard*
sudo rm /var/local/WebDashboard*