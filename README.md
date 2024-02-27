# Dotfiles

## About

This repository contains both shell and VSCode setting files.

### Terminal

- Zsh plugins is [sheldon](https://sheldon.cli.rs/).
- vim support ! Vim plugin manager is [Jetpack.vim](https://github.com/rossmacarthur/sheldon).

### VS Code

This repository provide user settings, key bindings, and snippets.

## Setting (zsh)

### Prerequisite

- OS: M1 Mac (arm64)
- Terminal: iTerm2
- Shell: zsh

### 1. Install Homebrew

URL: [https://brew.sh/](https://brew.sh/)

example:

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)
```

### 2. Install sheldon

URL: [https://sheldon.cli.rs/Installation.html](https://sheldon.cli.rs/Installation.html)

example:

```zsh
brew install sheldon
(echo; echo 'eval "$(sheldon source)"') >> ~/.zshrc
```

### 3. Install vim-jetpack (Optional)

URL: [tani/vim-jetpack](https://github.com/tani/vim-jetpack?tab=readme-ov-file#installation)

example:

```zsh
curl -fLo ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
vim

(on Vim)
:JetpackSync
```

### 4. Create symbolic link from dotfiles

```zsh
cd $HOME
git clone git@github.com:Yuki992411/dotfiles.git
/bin/bash ~/dotfiles/scripts/make-ln-s.sh
source ~/.vimrc
```

## Setting (VS Code)

wip

## Recommend

```zsh
/bin/bash ~/dotfiles/scripts/recommend.sh
```
