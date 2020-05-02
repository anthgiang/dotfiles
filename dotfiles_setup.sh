#!/usr/bin/env bash

# list of dotfiles to be symlinked
dotfiles=(".zshrc" ".vimrc" ".tmux.conf")

# directory of the source dotfiles
# if the folder is located elsewhere, change accordingly
dir="${HOME}/.dotfiles"

echo "symlinks created:"

# loop through each dotfile specified and create a symlink
for dotfile in "${dotfiles[@]}"; do
	ln -sf "${dir}/${dotfile}" "${HOME}/${dotfile}"
	echo "${HOME}/${dotfile} -> ${dir}/${dotfile} "
done
