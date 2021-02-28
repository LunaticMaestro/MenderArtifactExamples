#!/bin/sh
#
# Build python package
cd WebDashboard
python3 setup.py sdist bdist_wheel
cp ..
#
echo /var/local > dest_dir
echo WebDashboard-1.0.tar.gz > filename # Change this

# [Artifact-Creation]
mender-artifact write module-image \
 -T single-file \
 --device-type raspberrypi3\
 -o pkg_WebDashboard_v1.mender \ # Change this
 -n FileMergeZipped-1.0 \
 --software-name webdashboard \# name of the thing
 --software-version 1.0 \
 -f dest_dir \
 -f filename \
 -f ./WebDashboard/dist/WebDashboard-1.0.tar #Change this


# [Artifact] To extract .gz file and run python script
mender-artifact write module-image \
 -T script \
 --device-type raspberrypi3 \
 -o fileMerge.mender \ # Change this
 -n WebDashboardSetup-1.0 \
 -s ArtifactInstall_Enter_01_Install_py_pkg.sh
 -s ArtifactInstall_Leave_02_create_service.py
 -s ArtifactInstall_Enter_03_enable_service.sh