# from zsh homebrew setup  
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi

# prompt
PROMPT='%F{cyan}%n%F{foreground}@%F{blue}%T%F{foreground} in %F{cyan}/%1~%f '
# displays git branch on right
# from https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git


# personal aliases
# stash and previous branch
alias gitaway="git stash && git checkout -" 
# previous branch and unstash
alias gitback="git checkout - && git stash pop"
alias herokupush="git push && git push heroku main"