PROMPT='%F{green}[%n@%m:%1~]%F{reset}%# '

# alias
alias vim="nvim"
# alias ls="ls -a --color"
alias codee="code .; exit"

# dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

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

	# zsh-autosuggestions
	source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=6"

	# postgresql
	export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/15/bin

	# xv6
	PATH=$PATH:/usr/local/opt/riscv-gnu-toolchain/bin
else
	echo ".zshrc: unknown os"
fi

# GO
export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin
export GOPROXY=https://goproxy.cn

# handy scripts
export PATH=$PATH:$HOME/pyscripts

