#!/usr/bin/env bash
set -euo pipefail

if [[ -z "${RESOURCE_GROUP_NAME:-}" ]]; then
  echo "Missing required environment variable: RESOURCE_GROUP_NAME" >&2
  exit 1
fi

echo "RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}"

az group delete --name "${RESOURCE_GROUP_NAME}" --yes --no-wait
