echo "RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}"
echo "LOCATION=${LOCATION}"
echo "STORAGE_ACCOUNT=${STORAGE_ACCOUNT}"

az storage account create \
    --name "${STORAGE_ACCOUNT}" \
    --resource-group "${RESOURCE_GROUP_NAME}" \
    --location "${LOCATION}" \
    --tags "owner_email=${OWNER_EMAIL}" "owner_platform=${OWNER_PLATFORM}" "date_delete_after=${DATE_DELETE_AFTER}" "date_deletion=${DATE_DELETE_AFTER}" \
    --sku Standard_LRS \
    --output none