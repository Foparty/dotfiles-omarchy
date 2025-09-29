eval "$(starship init zsh)"
source /usr/share/nvm/init-nvm.sh

# fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting (must be last)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias jj="nvim"
alias ll="NVIM_APPNAME=lazyvim nvim"
alias nn="NVIM_APPNAME=neo nvim"
alias la="ls -la"
alias gg="lazygit"
alias ff="yazi"
alias nv="cd ~/.config/nvim && nvim"
alias cc="cd ~/.config && nvim"
alias c="code ."
alias zz="zed ."
alias j="z"
alias ww="webstorm ."
alias mk="mkdir"
alias bd="bun dev"
alias x="clear"
alias xx="exit"
alias ..="cd .."
alias bi="(brew formulae; brew casks) | sort -u | fzf | xargs brew install"
alias br="(brew list --formulae; brew list --casks) | sort -u | fzf | xargs brew uninstall"
alias bu="brew upgrade"
alias res="cd ~/dev/restaurants/template && nvim"
alias ta="tmux a"
alias tn="tmux new -s"
alias tls="tmux list-sessions"
alias tk="tmux kill-session -t"

alias so="source ~/.zshrc"
alias ls="eza --icons=always -l --colour=always"

eval "$(zoxide init zsh)"
alias cd="z"
