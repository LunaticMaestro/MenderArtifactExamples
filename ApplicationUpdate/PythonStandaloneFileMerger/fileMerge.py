#!bin/python3
#
# Program to concatenate contents of `file1` & `file2`
# filenames and out files are supplies on cli
import sys
#
# Read contents of `file1`
with open(sys.argv[1], 'r') as f:
	file1_contents = f.read()
# Read contents of `file2`
with open(sys.argv[2], 'r') as f:
	file2_contents = f.read()
#
# Concatenate contents & Write
merged_contents = file1_contents + file2_contents
with open(sys.argv[3], 'w') as f:
	f.write(merged_contents)