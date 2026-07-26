echo "RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}"
echo "PLAN_NAME=${PLAN_NAME}"

az appservice plan create \
    --name "${PLAN_NAME}" \
    --resource-group "${RESOURCE_GROUP_NAME}" \
    --tags "owner_email=${OWNER_EMAIL}" "owner_platform=${OWNER_PLATFORM}" "date_delete_after=${DATE_DELETE_AFTER}" "date_deletion=${DATE_DELETE_AFTER}" \
    --sku B1 \
    --is-linux \
    --output none