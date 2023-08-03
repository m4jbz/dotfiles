# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M%{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# Home & End
bindkey  "^[[H"		beginning-of-line
bindkey  "^[[4~"	end-of-line
bindkey  "^[[P"		delete-char
bindkey "^[[1;5C"   forward-word
bindkey "^[[1;5D"   backward-word
bindkey "^[[M"		kill-word

export SUDO_EDITOR=/usr/bin/nvim

# alias zshconfig="mate ~/.zshrc"
alias catn="bat"
alias gmail="mailsync marcoa.11.jb@gmail.com && neomutt"
alias p="sudo pacman"
alias ls="lsd"
alias ll="lsd -alh"
alias pdf="cd ~/Documents/LaTeX && nvim +NERDTree"

source /usr/share/zsh/plugins/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
	exec startx &>/dev/null
fi
