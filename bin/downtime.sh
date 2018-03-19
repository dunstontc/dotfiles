# Courtesy of Gregory Pakosz
# https://github.com/gpakosz/.tmux

_uptime() {
  case $(uname -s) in
    *Darwin*)
      boot=$(sysctl -q -n kern.boottime | awk -F'[ ,:]+' '{ print $4 }')
      now=$(date +%s)
      ;;
    *Linux*|*CYGWIN*|*MSYS*|*MINGW*)
      boot=0
      now=$(cut -d' ' -f1 < /proc/uptime)
      ;;
    *OpenBSD*)
      boot=$(sysctl -n kern.boottime)
      now=$(date +%s)
      ;;
  esac

  lifetime=$((now - boot))
  # echo -n "$lifetime"
  d=$((lifetime / 86400))
  h=$(((lifetime / 3600) % 24))
  m=$(((lifetime / 60) % 60))
  # s=$(((lifetime) % 60))
  # printf "↑ ${d}d ${h}h ${m}m ${s}s"
  if [[ $d -gt 0 ]]; then
    printf "↑ ${d}d ${h}h ${m}m"
  else
    printf "↑ ${h}h ${m}m"
  fi
}

  # shellcheck disable=SC1004
  # awk -v boot="$boot" -v now="$now" '
  #   BEGIN {
  #     uptime = now - boot
  #     d = int(uptime / 86400)
  #     h = int(uptime / 3600) % 24
  #     m = int(uptime / 60) % 60
  #     s = int(uptime) % 60
  #
  #     system("tmux  set -g @uptime_d " d + 0 " \\; " \
  #                  "set -g @uptime_h " h + 0 " \\; " \
  #                  "set -g @uptime_m " m + 0 " \\; " \
  #                  "set -g @uptime_s " s + 0)
  #   }'
# }

_uptime
