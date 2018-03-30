#!/bin/bash
# Courtesy of Gregory Pakosz
# https://github.com/gpakosz/.tmux

_uptime() {
  case $(uname -s) in
    *Darwin*)
      boot=$(sysctl -q -n kern.boottime | awk -F'[ ,:]+' '{ print $4 }')
      now=$(date +%s)
      lifetime=$((now-boot))
      ;;
    *Linux*|*CYGWIN*|*MSYS*|*MINGW*)
      lifetime=$(cut -d' ' -f1 < /proc/uptime)
      ;;
    *OpenBSD*)
      boot=$(sysctl -n kern.boottime)
      now=$(date +%s)
      lifetime=$((now-boot))
      ;;
  esac

  d=$(echo "$lifetime" | awk '{print int($1 / 86400)}')
  h=$(echo "$lifetime" | awk '{print int(($1 / 3600) % 24)}')
  m=$(echo "$lifetime" | awk '{print int(($1 / 60) % 60)}')
  # printf "↑ ${d}d ${h}h ${m}m ${s}s"
  if [[ $d -gt 0 ]]; then
    printf "↑ ${d}d ${h}h %02dm" $m
  else
    printf "↑ %01dh %02dm" $h $m
  fi
}
_uptime

