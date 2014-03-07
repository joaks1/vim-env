#!/bin/bash

this_dir="`dirname $0`"

if [ "$this_dir" = '.' ]
then
    base_dir="`pwd`"
else
    cd "$this_dir"
    base_dir="`pwd`"
fi

for vim_file in "$base_dir"/*vimrc
do
    dest_name="."$(basename "$vim_file")
    dest_path="$HOME/$dest_name"
    if [ ! -e "$dest_path" ]
    then
        ln -s "$vim_file" "$dest_path"
        echo "Successfully linked $vim_file to $dest_file"
    else
        echo "WARNING: the file $dest_path exists... skipping!"
    fi
done

# initiate submodules
cd "$base_dir"
git submodule init
git submodule update

