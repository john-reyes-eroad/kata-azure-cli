echo "RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}"
echo "FUNCTION_APP_NAME=${FUNCTION_APP_NAME}"

az webapp config appsettings set \
    --name "${FUNCTION_APP_NAME}" \
    --resource-group "${RESOURCE_GROUP_NAME}" \
    --settings \
        BE_NAME_TL="John Reyes" \
        BE_NAME_GRAD1="Josh Nguyen" \
        BE_NAME_GRAD2="Josh Padua" \
        BE_NAME_GRAD3="Shihoo Park" \
    --output none