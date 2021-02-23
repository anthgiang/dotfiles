## default zsh prompt
PROMPT='%B%K{115}%F{0}[%~]%k%f%b '

## display the current git branch
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=%B%K{124}%F{0}\$vcs_info_msg_0_$f
zstyle ':vcs_info:git:*' formats '[%b]'

## enable auto-suggestions for zsh from .zsh_history
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

## aliases:
alias ls="ls -lhG"  # long format, display size, and colorize
alias dev="cd ~/dev; ls"  # just a shortcut
alias projects="cd ~/dev/projects; ls"  # just a shortcut

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
	afplay ~/dev/offline/video/tigerbelly.mp4
fi
}

# Node version manager.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# automatically activate/deactivate virtualenvs on entering/leaving directories
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
