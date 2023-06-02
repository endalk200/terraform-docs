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
  "tenancy_ocid": "$tenancy_ocid",
  "user_ocid": "$user_ocid",
  "fingerprint": "$fingerprint",
  "private_key_path": "$private_key_path",
  "region": "$region",
}
EOF