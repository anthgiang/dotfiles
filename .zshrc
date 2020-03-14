# modify zsh prompt
PROMPT='%F{154}%n@%m: %1d%f
> '

# display the current git branch
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=%F{208}\$vcs_info_msg_0_$f
zstyle ':vcs_info:git:*' formats '%b'

# enable auto-suggestions for zsh from .zsh_history
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#color pallete {orange:208, green:154}