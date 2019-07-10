stringContains() { [ -z "${2##*$1*}" ] && [ -z "$1" -o -n "$2" ]; }

if stringContains 'Darwin' "$(uname -a)";    then OS_NAME="darwin";  fi
if stringContains 'Debian' "$(uname -a)";    then OS_NAME="debian";  fi
if stringContains 'Ubuntu' "$(uname -a)";    then OS_NAME="ubuntu";  fi
if stringContains 'el6' "$(uname -a)";       then OS_NAME="redhat";  fi
if stringContains 'el7' "$(uname -a)";       then OS_NAME="redhat";  fi
if stringContains 'fc26' "$(uname -a)";      then OS_NAME="fedora";  fi
if stringContains 'fc27' "$(uname -a)";      then OS_NAME="fedora";  fi
if stringContains 'MANJARO' "$(uname -a)";   then OS_NAME="manjaro"; fi
if stringContains 'aufs' "$(uname -a)";      then OS_NAME="arch";    fi
if stringContains 'android' "$(uname -a)";   then OS_NAME="android"; fi
if stringContains 'Microsoft' "$(uname -a)"; then OS_NAME="wsl";     fi

#         
case $OS_NAME in
  "darwin")
    export OS_NAME="macos"
    export OS_ICON=""
    export OS_PKG="brew"
    ;;
  "ubuntu")
    export OS_NAME="ubuntu"
    export OS_ICON=""
    export OS_PKG="apt"
    ;;
  "debian")
    export OS_NAME="debian"
    export OS_ICON=""
    export OS_PKG="apt"
    ;;
  "redhat")
    export OS_NAME="redhad"
    export OS_ICON=""
    export OS_PKG="yum"
    ;;
  "centos")
    export OS_NAME="centos"
    export OS_ICON=""
    export OS_PKG="yum"
    ;;
  "fedora")
    export OS_NAME="fedora"
    export OS_ICON=""
    export OS_PKG="dnf"
    ;;
  "manjaro")
    export OS_NAME="manjaro"
    export OS_ICON=""
    export OS_PKG="pacman"
    ;;
  "arch")
    export OS_NAME="arch"
    export OS_ICON=""
    export OS_PKG="pacman"
    ;;
  "suse")
    export OS_NAME="suse"
    export OS_ICON=""
    export OS_PKG="dnf"
    ;;
  "coreos")
    export OS_NAME="coreos"
    export OS_ICON=""
    export OS_PKG="dnf"
    ;;
  "alpine")
    export OS_NAME="alpine"
    export OS_ICON=""
    export OS_PKG="apk"
    ;;
  "android")
    export OS_NAME="android"
    export OS_ICON=""
    export OS_PKG=""
    ;;
  "wsl")
    export OS_NAME="windows"
    export OS_ICON=""
    export OS_PKG=""
    ;;
  *)
    echo "Unknown OS..."
    export OS_NAME="??"
    export OS_ICON="??"
    export OS_PKG=""
    ;;
esac

unset stringContains
