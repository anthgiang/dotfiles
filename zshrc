## default zsh prompt
PROMPT='%B%K{220}%F{0}[%~]%k%f%b '

## display the current git branch
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=%B%K{209}%F{0}\$vcs_info_msg_0_$f
zstyle ':vcs_info:git:*' formats '[%b]'

## enable auto-suggestions for zsh from .zsh_history
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

## aliases:
alias ls="ls -G"  # colorise output
alias dev="cd ~/dev"  # just a shortcut

## functions:

# countdown and play a tune.
function countdown(){
if [[ $# != 3 ]]; then
 	echo "usage: countdown HH MM ss"
else
	hours=$1; minutes=$2; seconds=$3
	total=$(($(($hours * 3600)) + $(($minutes * 60)) + $(($seconds * 1))))
	for i in {$total..0}; do
		printf '\rtime left: %d ' $i
		sleep 1
	done; 
	afplay ~/dev/offln/video/bobbylee.mp4
fi
}
