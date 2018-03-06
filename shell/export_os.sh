stringContains() { [ -z "${2##*$1*}" ] && [ -z "$1" -o -n "$2" ]; }

if stringContains 'Darwin' "$(uname -a)";  then export OS_NAME="darwin";  fi
if stringContains 'Debian' "$(uname -a)";  then export OS_NAME="debian";  fi
if stringContains 'Ubuntu' "$(uname -a)";  then export OS_NAME="ubuntu";  fi
if stringContains 'MANJARO' "$(uname -a)"; then export OS_NAME="manjaro"; fi
if stringContains 'aufs' "$(uname -a)";    then export OS_NAME="arch";    fi
if stringContains 'el7' "$(uname -a)";     then export OS_NAME="rhel/centos";  fi

unset stringContains
