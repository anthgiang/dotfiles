## default zsh prompt
PROMPT='%K{038}%F{0}[%* %n@%m: %~]%k%f '

## display the current git branch
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=%K{226}%F{0}\$vcs_info_msg_0_$f
zstyle ':vcs_info:git:*' formats '[%b]'

## enable auto-suggestions for zsh from .zsh_history
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

## aliases:
alias ls="ls -G"
alias dev="cd ~/dev"

## functions:

# open the github repository in the default web browser.
function github(){
giturl=$(git config remote.origin.url)
 if [[ $giturl == "" ]]; then
 	echo "fatal: not a git repository (or remote repository not set)."
 else
 	open $giturl
 fi
}

# countdown and play a tune.
function countdown(){
if [[ $# != 3 ]]; then
 	echo "usage: alarm HH MM ss"
else
	hours=$1; minutes=$2; seconds=$3
	total=$(($(($hours * 3600)) + $(($minutes * 60)) + $(($seconds * 1))))
	for i in {$total..0}; do
		printf '\rtime left: %d ' $i
		sleep 1
	done; 
	afplay ~/dev/static/dvdasa.mp4
fi
}
