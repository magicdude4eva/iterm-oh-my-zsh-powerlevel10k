# Improved Terminal Experience with Oh My Zsh, iTerm2, PowerLevel10K
[paypal]: https://paypal.me/GerdNaschenweng
![paypal](https://img.shields.io/badge/PayPal--ffffff.svg?style=social&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8%2F9hAAAABHNCSVQICAgIfAhkiAAAAZZJREFUOI3Fkb1PFFEUxX%2F3zcAMswFCw0KQr1BZSKUQYijMFibGkhj9D4zYYAuU0NtZSIiNzRZGamqD%2BhdoJR%2FGhBCTHZ11Pt%2B1GIiEnY0hFNzkFu%2FmnHPPPQ%2Buu%2BTiYGjy0ZPa5N1t0SI5m6mITeP4%2B%2FGP%2Fbccvto8j3cuCsQTSy%2FCzLkdxqkXpoUXJoUXJrkfFTLMwHiDYLrFz897Z3jT6ckdBwsiYDMo0tNOIGuBqS%2Beh7sdAkU2g%2BkBFGkd%2FrtSgD8Z%2BrBxj68MAGG1A9efRhVsXrKMU7Y4cNyGOwtDU28OtrqdUMetldvzFKxCYSHJ4NsJ%2BnRJGexHba7VJ%2FTff4BaQFBjVcbqIEZ1bESYn4PRUcHx2N952awUkOHZedUcWm14%2FtjqjREHawUEsgx6Ajg5%2Bsi7jWqBwA%2BmIrXlo9YHUVTmEP%2F6hOO1Ofiyy3pjo%2BsvBDX%2FZpSakhz4BqvQDvdYvrXQEXZViI5rPpBEOwR2l16vtN7bd9SN3L1WXj%2BjGSnN38rq%2B7VL8xXQOdDF%2F0KvXn8BlbuY%2FvUAHysAAAAASUVORK5CYII%3D)

___
:beer: **Please support me**: Although all my software is free, it is always appreciated if you can support my efforts on Github with a [contribution via Paypal][paypal] - this allows me to write cool projects like this in my personal time and hopefully help you or your business. 
___

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
* Download the [fonts](https://github.com/magicdude4eva/dotfiles/tree/main/Fonts) and install in iTerm.
* Download the iTerm theme [iTerm-material-bright.itermcolors](https://github.com/magicdude4eva/dotfiles/blob/main/iTerm-material-bright.itermcolors) and select it in iTerm

## Installing Oh My Zsh
Install it by opening iTerm and write the command:
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install Oh My Zsh plugins
[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) is a great plugin that will suggest auto completions based on what you type.
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

zsh-completion aims at gathering/developing new completion scripts that are not available in Zsh yet
```
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
```

[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-completions) provides syntax highlighting for the shell zsh. It enables highlighting of commands whilst they are typed at a zsh prompt into an interactive terminal. This helps in reviewing commands before running them, particularly in catching syntax errors.
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Next, edit your ~/.zshrc file to activate it. Add the plugins to the list of plugins:
```
plugins=(evalcache zsh-nvm osx git npm zsh-autosuggestions zsh-completions zsh-syntax-highlighting sublime)
```
### Install PowerLevel10K
[Powerlevel10k](https://github.com/romkatv/powerlevel10k) is a theme for Zsh. It emphasizes speed, flexibility and out-of-the-box experience.
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
[fzf](https://github.com/junegunn/fzf) is a general-purpose command-line fuzzy finder. It's an interactive Unix filter for command-line that can be used with any list; files, command history, processes, hostnames, bookmarks, git commits, etc. Activate it with CTRL+R:
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

### Forgit
[forgit](https://github.com/wfxr/forgit) is an utility tool for using git interactively. This tool is designed to help you use git more efficiently. It's lightweight and easy to use.
![forgit](https://user-images.githubusercontent.com/1632781/103530439-ba6a1d00-4e87-11eb-97e3-a37d6bd29344.gif)

Install via Cloning into plugins:
```
git clone https://github.com/wfxr/forgit ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/forgit
```

Source via .zshrc:
```
[ -f ~/.oh-my-zsh/custom/plugins/forgit/forgit.plugin.zsh ] && source ~/.oh-my-zsh/custom/plugins/forgit/forgit.plugin.zsh
```

### Delta - better git diffs
[git-delta](https://github.com/dandavison/delta) aims to make this both efficient and enjoyable: it allows you to make extensive changes to the layout and styling of diffs, as well as allowing you to stay arbitrarily close to the default git/diff output.

![delta](https://user-images.githubusercontent.com/1632781/103666183-946e7680-4f74-11eb-9021-a397e0c2d80d.gif)

Install via brew:
```
brew install git-delta
```

Adjust your git global via `git config --global -e`:
```
...
[core]
    pager = delta

[interactive]
    diffFilter = delta --color-only	
[delta]
    features = side-by-side line-numbers decorations
    syntax-theme = Monokai Extended	
    line-numbers = true
    plus-color = "#012800"
    minus-color = "#340001"
    side-by-side = false
    whitespace-error-style = 22 reverse
[delta "decorations"]
    commit-decoration-style = bold yellow box ul
    file-style = bold yellow ul
    file-decoration-style = none
...
```

## Donations are always welcome
:beer: **Please support me**: If the above helped you in any way, then [follow me on Twitter](https://twitter.com/gerdnaschenweng) or send me some coins: 
```
(BTC)    36nBgsAhBBzkTvJMut851XVj47bUrdsmQx
(ETH)    0xE572b3B1187a3Ab77D72f7d6AeCd18DF26306cfC
(BAT)    0x48c65D6f768D92d4a23E4e9d25329E7De67c14d9
(LTC)    M8TNsiQWe591HTkDtLubZeftbejfPMcoUy
(Ripple) rw2ciyaNshpHe7bCHo4bRWq6pqqynnWKQg (Tag: 2478959347)
(XLM)    GDQP2KPQGKIHYJGXNUIYOMHARUARCA7DJT5FO2FFOOKY3B2WSQHG4W37 (Memo ID: 909493707)
```

Sign up to [Cointracking](https://cointracking.info?ref=M263159) which uses APIs to connect to all exchanges and helps you with tax. Use [Binance Exchange](https://www.binance.com/?ref=13896895) to trade #altcoins. Join [TradingView](http://tradingview.go2cloud.org/aff_c?offer_id=2&aff_id=7432) to get trend-reports. Sign up with [Coinbase](https://www.coinbase.com/join/nasche_x) and **instantly get $10 in BTC**.

If you have no crypto, follow me at least on [Twitter](https://twitter.com/gerdnaschenweng) or send me old-school [PayPal](https://paypal.me/GerdNaschenweng).
