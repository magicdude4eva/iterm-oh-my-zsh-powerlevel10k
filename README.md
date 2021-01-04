# dotfiles - my setup

Using [powerlevel10k](https://github.com/romkatv/powerlevel10k) on  [iTerm2](https://iterm2.com/) with [OhMyZsh](https://github.com/ohmyzsh/ohmyzsh) with plugins:

![magicdude4eva-dotfiles](https://user-images.githubusercontent.com/1632781/103486451-4f283880-4dfe-11eb-811b-7d42a679fc7c.gif)

# How to install
See my dotfiles as a reference.

## Installing Homebrew
The most popular package manager for macOS is called Homebrew, or brew for short. We will use it to install the rest.

First we need to install CLI tools for Xcode. Open a terminal and run this command:
```
xcode-select —-install
```

To install brew you simply open a terminal and paste this command:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

## Installing iTerm2

You can download the app manually from the iTerm2 website or you can save yourself some trouble by using cask which helps you install apps from the command line. Open your terminal and write the following commands:
```
brew install cask
brew cask install iterm2
```

### Customising iTerm
* Download the fonts and install in iTerm.
* Download the iTerm theme `iTerm-material-bright.itermcolors` and select it in iTerm

## Installing Oh My Zsh
Install it by opening iTerm and write the command:
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install Oh My Zsh plugins
zsh-autosuggestions is a great plugin that will suggest auto completions based on what you type.
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

zsh-completion aims at gathering/developing new completion scripts that are not available in Zsh yet
```
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
```

zsh-syntax-highlighting provides syntax highlighting for the shell zsh. It enables highlighting of commands whilst they are typed at a zsh prompt into an interactive terminal. This helps in reviewing commands before running them, particularly in catching syntax errors.
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Next, edit your ~/.zshrc file to activate it. Add the plugins to the list of plugins:
```
plugins=(evalcache zsh-nvm osx git npm zsh-autosuggestions zsh-completions zsh-syntax-highlighting sublime)
```
### Install PowerLevel10K
Powerlevel10k is a theme for Zsh. It emphasizes speed, flexibility and out-of-the-box experience.
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Next, edit your ~/.zshrc file to activate it. Adjust the THEME-setting:
```
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Open a new terminal tab and if the powerlevel10k setup does not start, run it manually:
```
p10k configure
```

### Fuzzy find everything
fzf is a general-purpose command-line fuzzy finder. It's an interactive Unix filter for command-line that can be used with any list; files, command history, processes, hostnames, bookmarks, git commits, etc. Activate it with CTRL+R:
![fzf](https://user-images.githubusercontent.com/1632781/103527566-da4b1200-4e82-11eb-8845-d370c2a86f33.gif)

```
brew install fzf
```

Install the keybindings and completion
```
/usr/local/opt/fzf/install
```

Update your .zshrc:
```
 [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
```
