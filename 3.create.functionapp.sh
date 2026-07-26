echo "RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}"
echo "FUNCTION_APP_NAME=${FUNCTION_APP_NAME}"
echo "LOCATION=${LOCATION}"
echo "STORAGE_ACCOUNT=${STORAGE_ACCOUNT}"
echo "OWNER_EMAIL=${OWNER_EMAIL}"
echo "OWNER_PLATFORM=${OWNER_PLATFORM}"
echo "DATE_DELETE_AFTER=${DATE_DELETE_AFTER}"

az functionapp create \
    --name "${FUNCTION_APP_NAME}" \
    --resource-group "${RESOURCE_GROUP_NAME}" \
    --plan "${PLAN_NAME}" \
    --runtime "java" \
    --runtime-version "25.0" \
    --functions-version "4" \
    --storage-account "${STORAGE_ACCOUNT}" \
    --disable-app-insights \
    --tags "owner_email=${OWNER_EMAIL}" "owner_platform=${OWNER_PLATFORM}" "date_delete_after=${DATE_DELETE_AFTER}" \
    --output none