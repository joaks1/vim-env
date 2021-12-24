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
    dest_path="${HOME}/${dest_name}"
    if [ ! -e "$dest_path" ]
    then
        ln -s "$vim_file" "$dest_path"
        echo "Successfully linked $vim_file to $dest_path"
    else
        echo "WARNING: the file $dest_path exists... skipping!"
    fi

    # Put vimrc in place for NeoVim
    if [ "$dest_name" = ".vimrc" ]
    then
        nvim_dir="${HOME}/.config/nvim"
        if [ ! -e "$nvim_dir" ]
        then
            mkdir -p "$nvim_dir"
        fi
        dest_path="${nvim_dir}/init.vim"
        if [ ! -e "$dest_path" ]
        then
            ln -s "$vim_file" "$dest_path"
            echo "Successfully linked $vim_file to $dest_path"
        else
            echo "WARNING: the file $dest_path exists... skipping!"
        fi
    fi
done

# initiate submodules
cd "$base_dir"
git submodule init
git submodule update

