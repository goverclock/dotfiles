PROMPT='%F{green}[MBP:%1~]%F{reset}%# '
# path only prompt
# PROMPT='%F{green}[%1~]%F{reset}%# '

# alias
alias new="open -a iTerm ."
alias vim="nvim"
# alias ls="ls -a --color"
alias codee="code .; exit"

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=6"

# GO
export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin
export GOPROXY=https://goproxy.cn

# postgresql
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/15/bin

# dotfiles
alias dotfiles=/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME
