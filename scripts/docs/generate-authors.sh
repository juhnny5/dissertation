#!/usr/bin/env bash

# Enable debug mode
set -eu -o pipefail

{
cat <<-'EOF'
# This file lists all individuals having contributed content to the repository.
# For how it is generated, see `scripts/docs/generate-authors.sh`.
EOF
echo ""
git log --format='%aN <%aE>' | LC_ALL=C.UTF-8 sort -uf
} > AUTHORS

