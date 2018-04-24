alias ll='ls -lFG'

# rise the number of possibly open file descriptors
ulimit -n 4096

# do not put anything starting with a space into thistory
export HISTCONTROL=ignorespace

# ~/bin/... links to ~/bin/$TILDEARCH/...
export TILDEARCH=osx

# root of the git install
export GIT_ROOT=/usr

# add git path
export PATH=$GIT_ROOT/bin:$PATH
# set /usr/local/bin (machine custom executables)
# and ~/bin (user custom executables) PATH
export PATH=/usr/local/bin:$PATH:$HOME/bin
# add python (e.g. pip --user)
export PATH=$PATH:$HOME/Library/Python/2.7/bin
# add php5
export PATH=/usr/local/php5/bin:$PATH
# add mysql
export PATH=/usr/local/mysql/bin:$PATH
# prepend perl v5.10 path
#export PATH=/usr/local/ActivePerl-5.10/bin:$PATH
# add mongodb
export PATH="/usr/local/opt/mongodb@3.2/bin:$PATH"

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export M2_HOME=$HOME/Applications/apache-maven-3.3.9
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

export SELENIUM_HOSTNAME=`hostname`

# phantomjs wrapper env
# export PHANTOMJS_BIN=~/bin/phantomjs

# default nodejs modules path (configured in ~/.npmrc)
export PATH=$HOME/.node_modules/bin:$PATH

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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
