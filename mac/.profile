### Terminal ###

# Remove any login messages (e.g. last login)
clear && printf '\e[3J'

# Prompt format, color, and git functionality
export PS1="\@ \e[1;33m\W\e[0;36m\$(parse_git_branch)\e[0m $ "

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Git completion
source /usr/local/git/contrib/completion/git-completion.bash

# Set vim to clear terminal on exit
TERM=xterm; export TERM

# Add syntax highlighting to cat output
alias cat='pygmentize -g'

### Java ###

# Set JAVA_HOME env var
JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME;

### Tomcat ###

CATALINA_HOME=/usr/local/opt/tomcat/libexec
export CATALINA_HOME;

tomcat() {
  if curl -sSf http://localhost:8080 &> /dev/null ; then
    /usr/local/opt/tomcat/bin/catalina stop > /dev/null
    echo "Stopped tomcat"
  else
    /usr/local/opt/tomcat/bin/catalina start > /dev/null
    echo "Started tomcat"
  fi
}

### API Keys ###

# Dark Sky Weather API
DARK_SKY_API_KEY='KEY'
export DARK_SKY_API_KEY;
