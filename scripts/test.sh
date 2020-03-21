#!/bin/bash

# Strict error handling.
set -eu
set -o pipefail

cd vendor/matthieujabbour/php-dev-kit && phpunit-watcher watch
