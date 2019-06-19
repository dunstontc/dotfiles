#!/bin/bash

filename="$HOME/.dotfiles/init/symlinks.txt"

while read line; do
  from=$(echo $line | awk '{print $1}')
  to=$(echo $line | awk '{print $2}')

  if [ ! -z "${from##*#*}" ] ; then
    from=$(eval echo $from)
    to=$(eval echo $to)

    echo "$from --> $to"
  fi

done < $filename
