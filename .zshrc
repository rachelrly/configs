# from zsh homebrew setup  
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi

# personal aliases
# stash and previous branch
alias gitaway="git stash && git checkout -" 

# previous branch and unstash
alias gitback="git checkout - && git stash pop"
alias herokupush="git push && git push heroku main"