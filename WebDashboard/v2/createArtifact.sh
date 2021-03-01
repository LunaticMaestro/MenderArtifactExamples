#!/bin/sh
#
echo /usr/share/mender/modules/v3 > dest_dir
echo py_pkg_handler > filename # Change this


# PART 1: Creating our own modules to deploy py packages
# [Artifact-Creation]
mender-artifact write module-image \
 -T single-file \
 --device-type raspberrypi3 \
 -n py_pkg_handler_module-1.0 \
 -f dest_dir \
 -f filename \
 -f py_pkg_handler \
 -s ArtifactInstall_Leave_01_change_module_permission.sh \
 -o py_pkg_handler_module.mender

# PART 2
# Creating Artifact for our package

# [Artifact] To extract .gz file and run python script
mender-artifact write module-image \
 -T py_pkg_handler \
 --device-type raspberrypi3 \
 -o webdashboard_pkg.mender \
 -n testboard-4.2.0 \
  --software-name testboard \
  --software-version 4.2.0 \
 -s ArtifactInstall_Leave_01_Install_py_pkg.sh \
 -s ArtifactInstall_Leave_02_create_service.py \
 -s ArtifactInstall_Leave_03_enable_service.sh \
 -s ArtifactInstall_Leave_04_create_inventory.sh \
 -f WebDashboard-2.0.tar.gz
