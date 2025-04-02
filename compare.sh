#!/bin/sh

C1="commit-1"
C2="commit-2"

trap "rm -f $C1 $C2" EXIT

git rev-parse "$1" > $C1
git rev-parse "$2" > $C2

comm $C1 $C2

exit 0
