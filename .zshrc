eval "$(starship init zsh)"
source /usr/share/nvm/init-nvm.sh
eval "$(rbenv init - zsh)"

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

alias jj="nvim"
alias ll="NVIM_APPNAME=lazyvim nvim"
alias nn="NVIM_APPNAME=neo nvim"
alias la="ls -la"
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias gg="lazygit"
alias ff="yazi"
alias nv="cd ~/.config/nvim && nvim"
alias cc="cd ~/.config && nvim"
alias hp="cd ~/.config/hypr && nvim"
alias om="cd ~/.config/omarchy && nvim"
alias c="code ."
alias zz="zed ."
alias j="z"
alias ww="webstorm ."
alias mk="mkdir"
alias bd="bun dev"
alias x="clear"
alias xx="exit"
alias ..="cd .."
# alias bi="(brew formulae; brew casks) | sort -u | fzf | xargs brew install"
# alias br="(brew list --formulae; brew list --casks) | sort -u | fzf | xargs brew uninstall"
# alias bu="brew upgrade"
alias res="cd ~/dev/restaurants/template && nvim"
alias ta="tmux a"
alias tn="tmux new -s"
alias tls="tmux list-sessions"
alias tk="tmux kill-session -t"
alias sd="sudo shutdown -h now"
alias record="wf-recorder -f ~/Videos/recording-$(date +%Y-%m-%d-%H%M%S).mkv"

alias so="source ~/.zshrc"
alias ls="eza --icons=always -l --colour=always"

eval "$(zoxide init zsh)"
alias cd="z"

# Dotfiles management alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Function to add, commit with custom message, and push dotfiles
dots() {
  dotfiles add .
  echo "Enter commit message: "
  read -r commit_message
  dotfiles commit -m "$commit_message"
  dotfiles push -u origin main
}

# bun completions
[ -s "/home/fo/.bun/_bun" ] && source "/home/fo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
