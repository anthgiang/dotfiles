# Dotfiles

My personal minimalistic dotfiles.

tmux, vim, zsh.

#### Requirements:
- zsh shell (macOS Catalina).
- zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions

#### Usage:

1. Clone this repository on your machine. The following command will create a `~/.dotfiles` directory and clone this repository in it.

```
 git clone https://github.com/anthgiang/dotfiles.git ~/.dotfiles
```

2. Execute the script `dotfiles_setup.sh`. This script will symlink all dotfiles from the `~/.dotfiles` folder to the home folder.

```
~/.dotfiles/dotfiles_setup.sh
```

3. Now start a new terminal session.

**Visual:**
![alt text][visual]

[visual]: /res/lookslikethis.png "a picture."