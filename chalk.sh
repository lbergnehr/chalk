#!/bin/bash

set -e

REPLY=""
word=""
IFS=''
while [[ "$REPLY" != $'\x0a' && "$REPLY" != $'\x20' ]]; do
  read -r -d'' -s -n1
  letter=$REPLY

  say $letter
  word="$word$letter"
done

if [ -n $word ]; then
  say $word
fi
