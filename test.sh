#!/bin/bash
# commande ==> >>> sh test.sh

echo "==========================="
echo "Subscription list"
echo "==========================="
echo ""
#--- az account list
echo ""
echo ""
echo "======================================"
echo "Resource Group"
echo "======================================"
echo ""

echo "=======> Resource list ..."
az resource list

echo "=======> Resource Group list ..."
az group list


echo "=======> Resource Group create resourcegroupwe2 ..."
az group create -l westeurope -n resourcegroupwe2

#echo "=======> Resource Group Delete ..."
#az group delete -n resourcegroupwe2  --yes

echo ""
echo "=======> Resource Group list ..."
az group list

#resources="$(az resource list --resource-group "myResourceGroup" | grep id | awk -F \" '{print $4}')"

#for id in $resources; do
#    az resource delete --resource-group "myResourceGroup" --ids "$id" --verbose
#done

echo #=================== End for Resource Group ==============

echo "======================================"
echo "Storage Account"
echo "======================================"
#
echo "=======> Storage Account create storageaccountrl2 ..."
az storage account create -n storageaccountrl2 -g resourcegroupwe2 -l westeurope --sku Standard_LRS

# delete storageaccountrl2
#az storage account delete -n storageaccountrl2 -g resourcegroupwe1  --yes

echo #=================== End for Storage Account ==============


# delete keyvault1
#az keyvault delete --name keyvault1 --resource-group resourcegroupwe1

echo "======================================"
echo "Resource list"
echo "======================================"
echo "=======> Resource list ..."
az resource list
# ggg
