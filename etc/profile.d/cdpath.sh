# Bash snippet to open new shells in most recently visited dir.
# Useful if you want to open a new terminal tab at the present
# tab's location.
#
# Put this in your .bashrc or whatever.
 
pathed_cd () {
  if [ "$1" == "" ]; then
    cd
  else
    cd "$1"
  fi
  pwd > ~/.cdpath
}
alias cd="pathed_cd"
  
if [ -f ~/.cdpath ]; then
    cd "$(cat ~/.cdpath)"
fi
