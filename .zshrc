PROMPT='%F{green}[%n@%m:%1~]%F{reset}%# '
EDITOR=nvim
LANGUAGE="en_US.UTF-8"

# 

# alias
alias vim="nvim"
alias ls="ls -F --color"
alias codee="code .; exit"
alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# proxy
export http_proxy=http://127.0.0.1:7890
export https_proxy=$http_proxy

# vim mode for zsh
set -o vi
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	export PATH=$PATH:/sbin:/usr/sbin
	export PATH=$PATH:~/.local/bin
	. "$HOME/.cargo/env"
elif [[ "$OSTYPE" == "darwin"* ]]; then
	#alias new="open -a iTerm ."
	alias opene="open .; exit"

	# postgresql
	export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/15/bin

	# xv6
	export PATH=$PATH:/opt/homebrew/Cellar/riscv64-elf-gdb/
else
	echo ".zshrc: unknown os"
fi

# antigen begin
# see https://github.com/zsh-users/antigen and https://www.zhihu.com/question/21418449/answer/300879747
# Antigen: https://github.com/zsh-users/antigen
ANTIGEN="$HOME/.local/bin/antigen.zsh"
# Install antigen.zsh if not exist
if [ ! -f "$ANTIGEN" ]; then
	echo "Installing antigen ..."
	[ ! -d "$HOME/.local" ] && mkdir -p "$HOME/.local" 2> /dev/null
	[ ! -d "$HOME/.local/bin" ] && mkdir -p "$HOME/.local/bin" 2> /dev/null
	# [ ! -f "$HOME/.z" ] && touch "$HOME/.z"
	URL="http://git.io/antigen"
	TMPFILE="/tmp/antigen.zsh"
	if [ -x "$(which curl)" ]; then
		curl -L "$URL" -o "$TMPFILE"
	elif [ -x "$(which wget)" ]; then
		wget "$URL" -O "$TMPFILE"
	else
		echo "ERROR: please install curl or wget before installation !!"
		exit
	fi
	if [ ! $? -eq 0 ]; then
		echo ""
		echo "ERROR: downloading antigen.zsh ($URL) failed !!"
		exit
	fi;
	echo "move $TMPFILE to $ANTIGEN"
	mv "$TMPFILE" "$ANTIGEN"
fi

source "$ANTIGEN"
antigen bundle zsh-users/zsh-syntax-highlighting
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=14"
antigen bundle zsh-users/zsh-autosuggestions
antigen apply
# antigen done

# GO
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOPROXY=https://goproxy.cn

# handy scripts
export PATH=$PATH:$HOME/pyscripts

