#!/bin/bash

PACKAGE_NAME="paperutil"
VERSION="1.0.0"
DISTRIBUTION="stable"

{
  echo "$PACKAGE_NAME ($VERSION) $DISTRIBUTION; urgency=medium"
  echo
  git log --pretty=format:"  * %s (by %an <%ae>)"
  echo
  echo " -- $(git config user.name) <$(git config user.email)>  $(date -R)"
} > debian/changelog

echo "Changelog written to debian/changelog"
