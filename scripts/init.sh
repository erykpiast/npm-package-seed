#!/bin/bash

PACKAGE_NAME="$0"

FILES=`find . ! -wholename '*/node_modules/*' ! -wholename '*/.git/*' ! -wholename '*/dist/*' ! -name 'init.sh' -type f  | xargs readlink -e`

echo "$FILES"

# sed -i -e "s/npm-package-seed/$PACKAGE_NAME/g" "$FILES"