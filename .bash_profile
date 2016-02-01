# make sure that `.bashrc` is sourced whether it's a login shell or not
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Shell colors
if [ -f ~/hopscotch.sh ]; then
  . hopscotch.sh
fi
alias ls="ls -G"

# RSpec colors
alias rspec="rspec --color"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Git autocomplete
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi
eval "$(rbenv init -)"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
