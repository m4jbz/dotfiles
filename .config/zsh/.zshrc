autoload -Uz compinit
compinit

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
export EDITOR=vim
export VISUAL=vim

# alias zshconfig="mate ~/.zshrc"
alias catn="bat"
alias lf="lfrun /home/zero/"
alias gmail="mailsync marcoa.11.jb@gmail.com && neomutt"
alias p="sudo pacman"
alias ls="lsd"
alias ll="lsd -alh"
alias mpv43="mpv --video-aspect-override=4:3"
alias intellij="flatpak run com.jetbrains.IntelliJ-IDEA-Community"

# Plugins
source /usr/share/zsh/plugins/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
	exec startx &>/dev/null
fi

source /usr/share/zsh/plugins/gitstatus/gitstatus.prompt.zsh
