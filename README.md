# Dev Environment Setup

## References

#### Dotfiles Repo

- https://www.atlassian.com/git/tutorials/dotfiles

#### Zsh

- https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#set-colors-through-Powerlevel10k-configuration-parameters

#### NeoVim

- https://github.com/DavidHerod/kickstart.nvim
- https://www.youtube.com/watch?v=6pAG3BHurdM
- https://github.com/josean-dev/dev-environment-files
- https://github.com/ThePrimeagen/neovimrc

#### Tmux

- https://www.josean.com/posts/tmux-setup

## Initial setup

#### Create repo (create new config)

```bat
git init --bare $HOME/Repositories/davidherod/dotfiles/
alias config='/usr/bin/git --git-dir=$HOME/Repositories/davidherod/dotfiles --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/Repositories/davidherod/dotfiles --work-tree=$HOME'" >> $HOME/.zshrc
```

#### Pull repo (use existing config)

```bat
git clone --bare https://github.com/DavidHerod/dotfiles.git $HOME/Repositories/davidherod/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/Repositories/davidherod/dotfiles --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```

#### Usage

```bat
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```

## Installation

```bat
# tmux
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# NeoVim
brew install neovim
brew install ripgrep
brew install font-meslo-lg-nerd-font
brew install font-hack-nerd-font

mkdir -p ~/.config/nvim
cd ~/.config/nvim
touch init.lua
mkdir -p lua/david/core
mkdir -p lua/david/plugins
touch lua/david/lazy.lua

#Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
#Java

brew install openjdk@11
brew install openjdk@17
brew install openjdk@21
brew install openjdk@23

# create links
sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
sudo ln -sfn /opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-17.jdk
sudo ln -sfn /opt/homebrew/opt/openjdk@21/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-21.jdk
sudo ln -sfn /opt/homebrew/opt/openjdk@23/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-13.jdk


# GoLang
brew install gvm

# Node
brew install nvm
```

## Cheatsheets

### NeoVim

- \<leader\>sk - view keymapings

#### Formatting

- :TSHighlightCapturesUnderCursor - Highlights debuging (treesitter playground required)

### Tmux

#### General

- C-a [ #copy mode, j/k for up/down, v - view, y - yank, C-c - exit copy mode
- C-a i #install plugins
- C-a r #relaod config

#### Sessions

- tmux new -s [name] #new session
- tmux -ls #show all sessions
- tmux detach #exit session
- tmux attach -t [name]
- exit #terminate

#### Windows

- C-a c #new window
- C-a m #maximise / minimise
- C-a [-|] # split vertical / horizontal
- C-a [number] #change window
- C-a [n/p] #change next/previous
- C-a w #see all
