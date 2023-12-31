#! /usr/bin/bash

source_file="./sources_test.txt"
target_file="./targets_test.txt"

source_dirs=()
target_dirs=()

# get source directories by line in source file
# and push to array

while read -r line; do
    source_dirs+=("$line")
done < $source_file

# get source directories by line in target file
# and push to array

while read -r line; do
    target_dirs+=("$line")
done < $target_file

echo "Source Dirs:"
echo ${source_dirs[*]}

echo "Target Dirs:"
echo ${target_dirs[*]}

for i in $source_dirs
do
    # if [ -d $i ]; then
    #     echo "dir exists"
    # else 
    #     echo "dir does not exists"
    echo "looping: $i"
done
