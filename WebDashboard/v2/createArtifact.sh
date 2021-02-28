#!/bin/sh
#
echo /usr/share/mender/modules > dest_dir
echo py_pkg > filename # Change this

# [Artifact-Creation]
mender-artifact write module-image \
 -T single-file \
 --device-type raspberrypi3 \
 -n py_pkg_deploy-1.0 \
  --software-name py_pkg_deploy \
  --software-version 1.0 \
 -f dest_dir \
 -f filename \
 -f py_pkg \
 -o py_pkg.mender

# [Artifact] To extract .gz file and run python script
mender-artifact write module-image \
 -T py_pkg \
 --device-type raspberrypi3 \
 -o webdashboard_pkg.mender \
 -n WebDashboard-2.0 \
  --software-name WebDashboard \
  --software-version 2.0 \
 -s ArtifactInstall_Leave_01_Install_py_pkg.sh \
 -s ArtifactInstall_Leave_02_create_service.py \
 -s ArtifactInstall_Leave_03_enable_service.sh \
 -f WebDashboard-2.0.tar.gz
