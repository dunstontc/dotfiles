#!/bin/bash

filename="$HOME/.dotfiles/init/symlinks.txt"

while read line; do
  from=$(echo $line | awk '{print $1}')
  to=$(echo $line | awk '{print $2}')

  if [ ! -z "${from##*#*}" ] ; then
    from=$(eval echo $from)
    to=$(eval echo $to)

    destination=${to%/*}

    # echo "$from --> $to"
    mkdir -p $destination
    ln -sfv $to $from
  fi

done < $filename
