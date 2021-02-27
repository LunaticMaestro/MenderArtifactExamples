#!/bin/sh
#

#[Check] payload directory exists with file
mkdir -p /usr/bin/fileMerge

#[Uncompress Payloads]
tar -xzvf /usr/bin/payloadsFileMerge.tar.gz -C /usr/bin/fileMerge/

#[Remove Payloads]
rm /usr/bin/payloadsFileMerge.tar.gz

#[Execute] Run the python script
python3 /usr/bin/fileMerge/fileMerge.py \
 /usr/bin/filMerge/file1.txt \
 /usr/bin/filMerge/file2.txt \
 /usr/bin/filMerge/merged_file.txt