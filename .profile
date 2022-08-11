# Init jenv && setup Java home
#if which jenv > /dev/null; then eval "$(jenv init -)";export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"; fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"