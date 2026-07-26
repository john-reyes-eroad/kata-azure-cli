
echo "RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}"
echo "FUNCTION_APP_NAME=${FUNCTION_APP_NAME}"

az webapp deployment source config-zip \
    --resource-group "${RESOURCE_GROUP_NAME}" \
    --name "${FUNCTION_APP_NAME}" \
    --src "target/kata-azure-1.0.0.zip" \
    --output none