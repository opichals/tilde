# catalina zsh vs bash
export BASH_SILENCE_DEPRECATION_WARNING=1

alias ll='ls -lFG'

# rise the number of possibly open file descriptors
ulimit -n 4096

if [ "$(ps -h -o comm= -p $$)" != "zsh" ]; then
  # keep bash long history
  export HISTFILESIZE=10000
  export HISTFILE=$HOME/.bash_history_long
  # do not put anything starting with a space into thistory & avoid duplicates
  export HISTCONTROL=ignorespace:ignoredups:erasedups

  # When the shell exits, append to the history file instead of overwriting it
  shopt -s histappend
fi

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# ~/bin/... links to ~/bin/$TILDEARCH/...
export TILDEARCH=osx

# and ~/bin (user custom executables) PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
# set /usr/local/sbin (machine custom executables)
export PATH=/usr/local/sbin:$PATH
# add python (e.g. pip --user)
export PATH=$PATH:$HOME/Library/Python/3.7/bin
# add php5
export PATH=/usr/local/php5/bin:$PATH
# add mysql
export PATH=/usr/local/mysql/bin:$PATH
# ruby gems
if which ruby >/dev/null && which gem >/dev/null; then
    export PATH="$PATH:$(ruby -r rubygems -e 'puts Gem.dir')/bin"
fi
# prepend perl v5.10 path
#export PATH=/usr/local/ActivePerl-5.10/bin:$PATH
# add mongodb
export PATH="/usr/local/opt/mongodb@3.2/bin:$PATH"

# brew maven
# export JAVA_HOME="/usr/local/opt/openjdk"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"
# export CPPFLAGS="-I$JAVA_HOME/include"

# Java
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
#export ANDROID_HOME=$HOME/Library/Android/sdk
#export M2_HOME=$HOME/Applications/apache-maven-3.3.9
#export M2=$M2_HOME/bin
#export PATH=$M2:$PATH

export SELENIUM_HOSTNAME=`hostname`

# phantomjs wrapper env
# export PHANTOMJS_BIN=~/bin/phantomjs

# default nodejs modules path (configured in ~/.npmrc)
export PATH=$HOME/.node_modules/bin:$PATH

export KIAB_HOME="$HOME/bin/kiab-cli"
export PATH="$KIAB_HOME/bin:$PATH"

# my favourite editor
export EDITOR=vi
export BROWSERS=Chrome

# grep options
alias grep="grep --color --exclude=\*.svn\*"

# include all the profile shell scripts
for f in ~/etc/profile.d/*.sh; do
    source $f
done

# use the ~/etc/profile.d configured values
export http_proxy=$HTTP_PROXY
export https_proxy=$HTTPS_PROXY
export ftp_proxy=$HTTP_PROXY
export rsync_proxy=$HTTP_PROXY
#export no_proxy="localhost,127.0.0.0/8,172.16.0.0/12,192.168.0.0./16"

source ~/.nvm/nvm.sh

complete -C /usr/local/bin/terraform terraform

[[ -e "/usr/local/Cellar/oci-cli/2.11.1/libexec/lib/python3.7/site-packages/oci_cli/bin/oci_autocomplete.sh" ]] && source "/usr/local/Cellar/oci-cli/2.11.1/libexec/lib/python3.7/site-packages/oci_cli/bin/oci_autocomplete.sh"
