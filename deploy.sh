#!/bin/bash

set -o nounset
set -o errexit
set -o pipefail

for d in $(find . -maxdepth 1 -mindepth 1 -type d -not -name ".git" -not -name "resources" -exec basename {} \;)
do
    stow "$d"
done
