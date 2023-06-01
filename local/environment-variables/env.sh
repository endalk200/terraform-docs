#!/bin/sh

# Load environment variables from .env file
set -o allexport
source .env
set +o allexport

# Change the contents of this output to get the environment variables
# of interest. The output must be valid JSON, with strings for both
# keys and values.
cat <<EOF
{
  "foo": "$foo",
  "another_env_var": "$another_env_var"
}
EOF