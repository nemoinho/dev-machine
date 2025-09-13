#!/usr/bin/env bash

set -e

git status --short | grep -E '^D|^R' | sed 's/...//;s/ -> .*//' | while read f
do
  test -L "$HOME/$f" && rm "$HOME/$f"
done
