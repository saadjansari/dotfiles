#!/bin/bash

# This is the setup file for dotfiles on a new machine or a server
# no arguments; set up on local machine
# -r <server> argument : set up on <server> using files from ./<server> folder



dotfiles=(".vimrc" ".bash_profile")
server="local"
while getopts ":hr:" opt; do
    case $opt in
    r)
        server=$OPTARG
        echo "Setting up dotfiles on Remote server: $OPTARG" >&2
        for dotfile in "${dotfiles[@]}"; 
        do
            ln -sf "$PWD/$OPTARG/${dotfile}" "${HOME}/${dotfile}"
        done

        # setup vim files
        ln -sf "$PWD/.vim" "${HOME}/.vim"

      ;;
    h)
        echo "Dotfiles Setup Help"
        echo "  Usage: bash setup.sh <args>"
        echo "  Arguments:"
        echo "      no arguments : setup on local machine"
        echo "      -r <server> : setup on specific server, e.g. summit. This uses dotfiles stored in ./summit folder for link creation"
        server="none"
      ;;
    \?)
        echo "Invalid option: -$OPTARG" >&2
        exit 1
        ;;
    :)
        echo "Option -$OPTARG requires an argument." >&2
        exit 1
        ;;
    esac
done

# setup local server
if [ $server == "local" ]; then
    echo "Setting up dotfiles on Local machine"
    for dotfile in "${dotfiles[@]}"; 
    do
        ln -sf "$PWD/${dotfile}" "${HOME}/${dotfile}"
    done
    # setup vim files
    ln -sf "$PWD/.vim" "${HOME}/.vim"
fi

