# Emacs readline-like keys
bindkey -e

# HISTORY
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=10000              #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

fpath=(~/.zsh/completion $fpath)

source ~/.bash_profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Ruby rbenv
# eval "$(rbenv init - zsh)"
# export PATH=$HOME/.local/share/gem/ruby/3.2.0/bin:$PATH

use_conda=false
if [ "$use_conda" = true ]; then
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/Users/standa/Dev/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/Users/standa/Dev/miniforge3/etc/profile.d/conda.sh" ]; then
            . "/Users/standa/Dev/miniforge3/etc/profile.d/conda.sh"
        else
            export PATH="/Users/standa/Dev/miniforge3/bin:$PATH"
        fi
    fi
    unset __conda_setup
# <<< conda initialize <<<
fi



# Added by GDK bootstrap
# source /Users/standa.opichal/.asdf/asdf.sh
