# ls aliases
alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# Alias `hub` as `git`
# For more infor, chech here https://github.com/github/hub/#aliasing
eval "$(hub alias -s)"

# Enable The Fuck tool and alias it to `fix`
# For more info, check https://github.com/nvbn/thefuck
eval $(thefuck --alias fix)


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
