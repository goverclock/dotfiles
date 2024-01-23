PROMPT='%F{green}[%n@%m:%1~]%F{reset}%# '

# alias
alias vim="nvim"
# alias ls="ls -a --color"
alias codee="code .; exit"

# proxy
export http_proxy=http://127.0.0.1:7890
export https_proxy=$http_proxy

# dotfiles
alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# force zsh in emacs mode, see https://unix.stackexchange.com/questions/197839/why-does-exporting-vim-as-editor-in-zsh-disable-keyboard-shortcuts
set -o emacs

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	export PATH=$PATH:/sbin:/usr/sbin
	export PATH=$PATH:~/.local/bin
	. "$HOME/.cargo/env"
	# manually installed golang
	export PATH=$PATH:/usr/local/go/bin
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

# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=14"

# GO
export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin
export GOPROXY=https://goproxy.cn

# handy scripts
export PATH=$PATH:$HOME/pyscripts

