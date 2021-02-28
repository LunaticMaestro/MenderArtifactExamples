#!/bin/sh
#
echo /var/local > dest_dir
echo WebDashboard-1.0.tar.gz > filename # Change this

# [Artifact-Creation]
mender-artifact write module-image \
 -T single-file \
 --device-type raspberrypi3 \
 -n WebDashboard_single-file-1.0 \
  --software-name webdashboard \
  --software-version 1.0 \
 -f dest_dir \
 -f filename \
 -f WebDashboard-1.0.tar.gz \
 -o WebDashboard_single-file.mender

# [Artifact] To extract .gz file and run python script
mender-artifact write module-image \
 -T script \
 --device-type raspberrypi3 \
 -o webdashboard_script.mender \
 -n WebDashboard_script-1.0 \
 -s ArtifactInstall_Enter_01_Install_py_pkg.sh \
 -s ArtifactInstall_Leave_02_create_service.py \
 -s ArtifactInstall_Leave_03_enable_service.sh \
 -f null.sh
