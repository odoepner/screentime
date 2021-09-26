#!/bin/bash

usage() {
  echo "Usage: $(basename $0) user number-of-logins"
}
test $# -ne 2 && usage && exit 2

u="$1"
n="$2"

d="/var/local/screentime/$u"

if [ "$n" -eq "$n" ]; then
  # n is a number and we can go ahead
  rm -rf $d
  mkdir -p $d/$n
  cd $d
  chown -R www-data .
  echo "ls $(pwd) : $(ls)"
fi
