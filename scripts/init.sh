#!/bin/bash

PACKAGE_NAME="$1"
USER_NAME=${2:-erykpiast}

echo "Initializing package $PACKAGE_NAME for user $USER_NAME..."

rm -rf '.git'

FILES=`find . ! -wholename '*/node_modules/*' ! -wholename '*/.git/*' ! -wholename '*/dist/*' ! -name 'init.sh' -type f  | xargs readlink -e`

for F in $FILES
do
  echo "Processing file $F..."
	sed -i "s/npm-package-seed/$PACKAGE_NAME/g" "$F"
	sed -i "s/erykpiast/$USEqqR_NAME/g" "$F"
done

echo "Package $PACKAGE_NAME initialized!"