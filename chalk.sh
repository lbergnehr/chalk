#!/bin/bash

set -e

while [ 1 ]; do
  REPLY=""
  WORD=""
  IFS=''
  while [[ "$REPLY" != $'\x0a' && "$REPLY" != $'\x20' ]]; do
    read -r -d'' -s -n1
    letter=$REPLY

    say $letter &
    WORD="$WORD$letter"
  done

  if [ -n $WORD ]; then
    say $WORD
  fi
done
