echo "RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}"
echo "STORAGE_ACCOUNT=${STORAGE_ACCOUNT}"

az storage account delete \
    --name "${STORAGE_ACCOUNT}" \
    --resource-group "${RESOURCE_GROUP_NAME}" \
    --yes \
    --output none
