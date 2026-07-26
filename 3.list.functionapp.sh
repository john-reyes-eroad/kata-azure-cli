echo "RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}"
echo "FUNCTION_APP_NAME=${FUNCTION_APP_NAME}"

az functionapp show \
    --name "${FUNCTION_APP_NAME}" \
    --resource-group "${RESOURCE_GROUP_NAME}" \
    --output json