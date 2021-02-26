#!/bin/sh
#

#[Create] payload directory
mkdir ~/fileMerge

#[Uncompress Payloads]
tar -xzvf payloads.targ.gz -C ~/fileMerge

#[Execute] Run the python script
python3 ~/fileMerge/fileMerge.py file1.txt file2.txt merged_file.txt