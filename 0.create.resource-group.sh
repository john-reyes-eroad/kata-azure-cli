#!/usr/bin/env bash
set -euo pipefail

required_vars=(RESOURCE_GROUP_NAME LOCATION OWNER_EMAIL OWNER_PLATFORM DATE_DELETE_AFTER)
for var in "${required_vars[@]}"; do
  if [[ -z "${!var:-}" ]]; then
    echo "Missing required environment variable: ${var}" >&2
    exit 1
  fi
done

echo "RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}"
echo "LOCATION=${LOCATION}"
echo "OWNER_EMAIL=${OWNER_EMAIL}"
echo "OWNER_PLATFORM=${OWNER_PLATFORM}"
echo "DATE_DELETE_AFTER=${DATE_DELETE_AFTER}"

az group create \
  --name "${RESOURCE_GROUP_NAME}" \
  --location "${LOCATION}" \
  --tags "owner_email=${OWNER_EMAIL}" "owner_platform=${OWNER_PLATFORM}" "date_delete_after=${DATE_DELETE_AFTER}"

