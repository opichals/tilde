alias ll='ls -lFG'

# rise the number of possibly open file descriptors
ulimit -n 4096

# do not put anything starting with a space into thistory
export HISTCONTROL=ignorespace

# ~/bin/... links to ~/bin/$TILDEARCH/...
export TILDEARCH=osx

# root of the git install
export GIT_ROOT=/usr/local/git

# add git path
export PATH=$GIT_ROOT/bin:$PATH
# set /usr/local/bin (machine custom executables)
# and ~/bin (user custom executables) PATH
export PATH=/usr/local/bin:$PATH:$HOME/bin
# add php5
export PATH=/usr/local/php5/bin:$PATH
# add mysql
export PATH=/usr/local/mysql/bin:$PATH
# prepend perl v5.10 path
#export PATH=/usr/local/ActivePerl-5.10/bin:$PATH

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home
export M2_HOME=$HOME/Applications/apache-maven-3.2.5
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

# phantomjs wrapper env
# export PHANTOMJS_BIN=~/bin/phantomjs

# default nodejs modules path (configured in ~/.npmrc)
export NODE_PATH=$HOME/.node_modules/lib/node_modules
export PATH=$PATH:$HOME/.node_modules/bin

# my favourite editor
export EDITOR=vi

# grep options
export GREP_OPTIONS="--color --exclude=\*.svn\*"

# include all the profile shell scripts
for f in ~/etc/profile.d/*.sh; do
    source $f
done

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
