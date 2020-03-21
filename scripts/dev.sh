#!/bin/bash

# Strict error handling.
set -eu
set -o pipefail

# Killing previously started heroku apache server to prevent conflicts...
# Putting the "v" between brackets prevents grep process to be retrieved as well in the list.
# Putting a `|| true` after `grep` command prevents it to exit with status 1 in case of no match.
pids=$(ps -ef | grep "[v]endor/bin/heroku-php-apache2" || true)
if [ ! -z "$pids" ]; then
  real_pids=$(echo "$pids" | awk '{print $2}')
  kill $real_pids
fi

cd .. && heroku local
