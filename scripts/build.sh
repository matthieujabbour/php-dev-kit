#!/bin/bash

# Strict error handling.
set -eu
set -o pipefail

# Removing any previous build...
rm -rf dist

# Copying all files in `src` but tests and mocks, as well as composer files...
rsync -avP --prune-empty-dirs \
  --include="*/" --include="/composer.*" --include="/LICENSE" --include="/README.md" --exclude="**__tests__**" --exclude="**__mocks__**" \
  --include="/src/*" --include="/src/**/*" --exclude="*" . dist

# Generating a ZIP archive from the build...
package_name=$(cat composer.json | grep "name" | head -n 1 | awk '{print $2}' | sed 's/[",]//g' | sed 's/\//-/g')
package_version=$(cat composer.json | grep "version" | head -n 1 | awk '{print $2}' | sed 's/[",]//g' | sed 's/\//-/g')
zip -r "$package_name-$package_version.zip" dist
chmod 777 "$package_name-$package_version.zip"
rm -rf dist
