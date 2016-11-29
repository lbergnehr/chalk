#!/bin/bash

set -e

while [ 1 ]; do
  REPLY=""
  WORD=""
  IFS=""
  while [[ "$REPLY" != $'\x0a' && "$REPLY" != $'\x20' ]]; do
    read -r -d'' -s -n1
    LETTER=$REPLY

    say $LETTER &
    WORD="$WORD$LETTER"
  done

  if [ -n $WORD ]; then
    say $WORD &
  fi
done
