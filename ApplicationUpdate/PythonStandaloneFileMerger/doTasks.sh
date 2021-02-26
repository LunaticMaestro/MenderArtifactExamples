#!/bin/sh
#
# [Payloads]compress payload files to single file
tar -czvf payloads.tar.gz \
./file1.txt \
./file2.txt \
./fileMerge.py
#
# [Artifact-Creation]
mender-artifact write module-image \
 -T script \
 --device-type raspberrypi3
 -o fileMerge.artifact
 -n fileMerger-1.0 \
 -f ./payloads.tar.gz
 -s ArtifactInstall_Enter_01_MergeFilesContents.sh