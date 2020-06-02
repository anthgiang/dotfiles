# default zsh prompt
PROMPT='%K{038}%F{0}[%* %n@%m: %~]%k%f '

# display the current git branch
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=%K{226}%F{0}\$vcs_info_msg_0_$f
zstyle ':vcs_info:git:*' formats '[%b]'

# enable auto-suggestions for zsh from .zsh_history
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# aliases:
alias ls="ls -G"
alias dev="cd ~/dev"

# functions:
function gh(){
giturl=$(git config remote.origin.url)
 if [[ $giturl == "" ]]
 then
 	echo "fatal: not a git repository (or no remote repository set)."
 else
 	open $giturl
  fi
}