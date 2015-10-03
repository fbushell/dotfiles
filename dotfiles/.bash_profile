### Dot base .bash_profile

# Loading texting
dot="Loading dot:"

# PS1 Prompt with git autocomplete and git state
source $HOME/dot/git_bash

# Homebrew path
export PATH=/usr/local/bin:$PATH

# rbenv
if [ -f $HOME/dot/rbenv ]; then
   source $HOME/dot/rbenv
   cirrodot="$cirrodot rbenv"
fi

# Postgres
if [ -f $HOME/dot/postgres ]; then
   source $HOME/dot/postgres
   cirrodot="$cirrodot postgres"
fi

# AWS
# See sample .awsconfig.txt
if [ -f $HOME/.awsconfig.txt ]; then
   export AWS_CONFIG_FILE=$HOME/.awsconfig.txt
   cirrodot="$cirrodot AWS"
fi

# GRUNT
if [ -f $HOME/dot/grunt ]; then
   source $HOME/dot/grunt
   cirrodot="$cirrodot grunt"
fi

# ALIASES
if [ -f $HOME/dot/aliases ]; then
   source $HOME/dot/aliases
   cirrodot="$cirrodot aliases"
fi

# print cirrdot loading text
echo $cirrodot
