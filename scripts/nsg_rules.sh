#!/bin/bash
# ===========================================================
# Script: nsg_rules.sh
# Purpose: Configure Network Security Groups and Access Rules
# Author: Group 5
# ===========================================================

RESOURCE_GROUP="Group5-RG"

echo "Creating Network Security Groups..."

# Create NSGs
az network nsg create --resource-group $RESOURCE_GROUP --name Web-NSG
az network nsg create --resource-group $RESOURCE_GROUP --name App-NSG
az network nsg create --resource-group $RESOURCE_GROUP --name DB-NSG

# Add inbound rules
echo "Adding inbound security rules..."
az network nsg rule create --resource-group $RESOURCE_GROUP --nsg-name Web-NSG --name AllowHTTP --protocol Tcp --direction Inbound --priority 100 --source-address-prefixes '*' --source-port-ranges '*' --destination-port-ranges 80 --access Allow
az network nsg rule create --resource-group $RESOURCE_GROUP --nsg-name App-NSG --name AllowWebTraffic --protocol Tcp --direction Inbound --priority 100 --source-address-prefixes 10.0.1.0/24 --destination-port-ranges 8080 --access Allow
az network nsg rule create --resource-group $RESOURCE_GROUP --nsg-name DB-NSG --name AllowAppTraffic --protocol Tcp --direction Inbound --priority 100 --source-address-prefixes 10.0.2.0/24 --destination-port-ranges 1433 --access Allow

echo "✅ NSG rules configured successfully."
