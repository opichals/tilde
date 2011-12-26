alias ll='ls -lFG'

# do not put anything starting with a space into thistory
export HISTCONTROL=ignorespace

# ~/bin/... links to ~/bin/$TILDEARCH/...
export TILDEARCH=osx

# root of the git install
export GIT_ROOT=/usr/local/git

# set /usr/local/bin (machine custom executables)
# and ~/bin (user custom executables) PATH
export PATH=/usr/local/bin:$PATH:$HOME/bin
# add php5
export PATH=/usr/local/php5/bin:$PATH
# add mysql
export PATH=/usr/local/mysql/bin:$PATH
# add git path
export PATH=$PATH:$GIT_ROOT/bin
# prepend perl v5.10 path
#export PATH=/usr/local/ActivePerl-5.10/bin:$PATH

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
