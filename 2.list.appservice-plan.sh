echo "RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}"
echo "PLAN_NAME=${PLAN_NAME}"

az appservice plan show \
    --name "${PLAN_NAME}" \
    --resource-group "${RESOURCE_GROUP_NAME}" \
    --output none