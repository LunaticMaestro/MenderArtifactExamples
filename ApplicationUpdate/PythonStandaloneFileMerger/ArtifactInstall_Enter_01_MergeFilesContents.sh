#!/bin/sh
#

#[Check] payload directory exists with file
mkdir -p ~/fileMerge

#[Uncompress Payloads]
tar -xzvf ~/Downloads/payloadsFileMerge.tar.gz -C ~/fileMerge

#[Remove Payloads]
rm ~/Downloads.tar.gz

#[Execute] Run the python script
python3 ~/fileMerge/fileMerge.py file1.txt file2.txt merged_file.txt