#!/bin/bash

read -p 'This will overwrite all of your system settings.
Are you sure you want to proceed? [y/n] ' -n 1 -r

echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
    filename="$HOME/.dotfiles/init/symlinks.txt"

    while read line; do
      from=$(echo $line | awk '{print $1}')
      to=$(echo $line | awk '{print $2}')

      if [ ! -z "${from##*#*}" ] ; then
        from=$(eval echo $from)
        to=$(eval echo $to)

        destination=${to%/*}

        mkdir -p $destination;
        ln -sfv $from $to;
      fi

    done < $filename
fi

