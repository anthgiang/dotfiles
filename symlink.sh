#!/usr/bin/env bash

# list of dotfiles to be symlinked
files=("zshrc" "vimrc" "tmux.conf" "gitconfig" "gitignore")

# directory of the source dotfiles
# if the folder is located elsewhere, change accordingly
dir="${HOME}/dev/reboot"

echo "create symlinks:"

# symlink the files to the home folder
for file in "${files[@]}"; do
	ln -sf "${dir}/${file}" "${HOME}/.${file}"
	echo "${HOME}/.${file} -> ${dir}/${file} "
done
