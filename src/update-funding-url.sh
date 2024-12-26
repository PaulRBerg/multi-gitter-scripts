#!/usr/bin/env bash

# Pre-requisites:
# - multi-gitter (https://github.com/lindell/multi-gitter/)
# - sd (https://github.com/chmln/sd)

# Strict mode: https://gist.github.com/vncsna/64825d5609c146e80de8b1fd623011ca
set -euo pipefail

# Check if SEARCH_PATTERN and REPLACEMENT are set
if [ -z "${SEARCH_PATTERN:-}" ]; then
  echo "Error: SEARCH_PATTERN is not set."
  exit 1
fi

if [ -z "${REPLACEMENT:-}" ]; then
  echo "Error: REPLACEMENT is not set."
  exit 1
fi

# Declare arguments
search_pattern="custom: \"$SEARCH_PATTERN\""
replacement="custom: \"$REPLACEMENT\""

# Path to the funding file
funding_file=".github/FUNDING.yml"

# Command for replacing text
sd "$search_pattern" "$replacement" "$funding_file"

# Print out success message
echo "Custom funding URL updated in $funding_file"