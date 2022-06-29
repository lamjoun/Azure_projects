#!/bin/bash
# commande ==> >>> sh delete_resources.sh

myResourceGroup="resourcegroupwe2"
resources="$(az resource list --resource-group $myResourceGroup | grep id | awk -F \" '{print $4}')"

for id in $resources; do
    az resource delete --resource-group $myResourceGroup --ids "$id" --verbose
done
