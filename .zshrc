### Profile the shell by enabling the below and then calling:
### env ZSH_PROF= zsh -ic zprof
###
### Measure timing: 
### /usr/bin/time zsh -i -c exit
### for i in $(seq 1 10); do /usr/bin/time $SHELL -i -c exit; done
### zmodload zsh/zprof
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/.jenv/bin:/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
DEFAULT_USER="$USER"
export TERM="xterm-256color"

ZSH_THEME="powerlevel10k/powerlevel10k"

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# Funky stuff: hellokitty, small
fortune | cowsay -f small | lolcat

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"
HISTCONTROL=ignoredups
HISTIGNORE="pwd:ls:ls -ltr:date"

# Lazy load zsh-nvm
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

plugins=(evalcache zsh-nvm osx git npm zsh-autosuggestions zsh-completions zsh-syntax-highlighting sublime)

source $ZSH/oh-my-zsh.sh

#_evalcache rbenv init -
#_evalcache direnv hook zsh
_evalcache jenv init -

### Aliases
alias library="chflags nohidden ~/Library"
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
alias zup='~/.zsh/update.sh'
alias dsstore_rm="find . -name ".DS_Store" -depth -exec rm {} \;"
alias tailf="find . -type f \( -name \"*.log\" \) -exec tail -f \"$file\" {} +"

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Turn off homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

### Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
### Fix slowness of pastes

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Fuzzy Find Everything - CTRL+R
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Forgit
[ -f ~/.oh-my-zsh/custom/plugins/forgit/forgit.plugin.zsh ] && source ~/.oh-my-zsh/custom/plugins/forgit/forgit.plugin.zsh
