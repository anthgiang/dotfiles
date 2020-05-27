# Dotfiles

My personal minimalistic dotfiles.

tmux, vim, zsh.

#### Requirements:
- zsh shell (macOS Catalina).
- zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions

#### Usage:

1. Clone this repository on your machine. The following command will create a `~/.dots` directory and clone this repository in it.

```
 git clone https://github.com/anthgiang/dotfiles.git ~/.dots
```

2. Execute the script `dots_setup.sh`. This script will symlink all dotfiles from the `~/.dots` folder to the home folder.

```
~/.dots/dots_setup.sh
```

3. Now start a new terminal session.

**Visual:**
![alt text][visual]

[visual]: /res/lookslikethis.png "a picture."