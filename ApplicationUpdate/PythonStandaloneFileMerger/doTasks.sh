#!/bin/sh
#
# [Payloads]compress payload files to single file
tar -czvf payloadsFileMerge.tar.gz \
./file1.txt \
./file2.txt \
./fileMerge.py
#
echo /usr/bin > dest_dir
echo payloadsFileMerge.tar.gz > filename

# [Artifact-Creation]
mender-artifact write module-image \
 -T single-file \
 --device-type raspberrypi3\
 -o fileMergePayloads.mender \
 -n FileMergeZipped-1.0 \
 --software-name FileMergeZipped \# name of the thing
 --software-version 1.0 \
 -f dest_dir \
 -f filename \
 -f payloadsFileMerge.tar.gz


# [Artifact] To extract .gz file and run python script
mender-artifact write module-image \
 -T script \
 --device-type raspberrypi3 \
 -o fileMerge.mender \
 -n fileMerger-1.0 \
 -s ArtifactInstall_Enter_01_MergeFilesContents.sh