#!/bin/bash 

cp openscad-cli /usr/local/bin/openscad-cli

if [ -e /usr/local/bin/osc ]
then
  echo "There's already something called osc in /usr/local/bin"
  echo "If you know it's an earlier version of openscad-cli, you can choose to overwrite it."
  echo "If you aren't sure and you don't want to overwrite it, it's fine. You will just need to use openscad-cli instead of osc."
  printf "Overwrite /usr/local/bin/osc? [y/N]  "
  read -n 1 choice
  echo
  if [ "$choice" != y -a "$choice" != Y ]
  then
    exit 0
  fi
fi

ln -sf /usr/local/bin/openscad-cli /usr/local/bin/osc

