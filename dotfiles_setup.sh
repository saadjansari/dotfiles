#!/bin/bash
dotfiles=(".vimrc" ".bash_profile")
dir="${HOME}/Documents/dotfiles"
for dotfile in "${dotfiles[@]}";do
 ln -sf "${HOME}/${dotfile}" "${dir}"
done
