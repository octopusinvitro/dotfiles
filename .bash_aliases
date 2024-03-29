# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto --group-directories-first -v'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Restore permissions
alias resetpermissions="chmod -R a=r,a+X,u+w ."

# tree
alias tree='tree -aC --dirsfirst -I "node_modules|.git"'

# bundle
alias be="bundle exec"
alias rspec="clear && be rspec --color"
alias beproud="clear && be rake TESTOPTS='--pride'"
alias beclean="clear && be rake clean default"
alias bert="be ruby -I'lib:test'"

# In /etc/environment, add this: export DATOS="PATH_HERE"
alias datos="   cd "$DATOS
alias dropbox=" cd "$DATOS"/Dropbox/"
alias dotfiles="cd "$DATOS"/Dropbox/dotfiles"
alias repos="   cd "$DATOS"/repos/"
alias megasync="cd "$DATOS"/megasync"

# git
alias setuser="git config user.name 'octopusinvitro' && git config user.email 'octopusinvitro@users.noreply.github.com'"
alias g='git log --graph --full-history --all --color --pretty=tformat:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s%x20%x1b[33m(%an)%x1b[0m"'
gl() {
  git log --pretty=oneline --since=$1.day
}
delete() {
  git push origin :$1
  git branch -D $1
}

# python
alias pipenv="python -m pipenv"
alias activate="source venv/bin/activate"

# IntelliJ
alias idea="intellij-idea-community"

aatom() {
  atom $1 --in-process-gpu
}
