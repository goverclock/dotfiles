# How to use

```
alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare git@github.com:goverclock/dotfiles.git $HOME/.dotfiles
dotf config --local status.showUntrackedFiles no
dotf checkout   # may need to rm some existing dotfiles first

# now delete this README.md if you like
```
