#!/bin/sh
#

#[Create] payload directory
mkdir -p ~/fileMerge

#[Uncompress Payloads]
tar -xzvf "${payloads}" -C ~/fileMerge

#[Execute] Run the python script
python3 ~/fileMerge/fileMerge.py file1.txt file2.txt merged_file.txt