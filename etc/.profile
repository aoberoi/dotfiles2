# Load environment variables and startup programs that are not specific to bash.

if [ -d /usr/local/bin ] ; then
  # This test is only available in bash, ksh, zsh, etc.
  # see: http://mywiki.wooledge.org/BashGuide/Practices#Bash_Tests
  if [[ ":$PATH:" != *":/usr/local/bin:"* ]] ; then
    PATH="/usr/local/bin:$PATH"
  fi
fi

if [ -d /usr/local/sbin ] ; then
  # This test is only available in bash, ksh, zsh, etc.
  # see: http://mywiki.wooledge.org/BashGuide/Practices#Bash_Tests
  if [[ ":$PATH:" != *":/usr/local/sbin:"* ]] ; then
    PATH="/usr/local/sbin:$PATH"
  fi
fi
