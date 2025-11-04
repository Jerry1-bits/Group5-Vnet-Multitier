#!/bin/bash
# ===========================================================
# Script: vnet_create.sh
# Purpose: Create VNet and Subnets for Web, App, and DB tiers
# Author: Group 5
# ===========================================================

echo "Starting VNet creation process..."

# Variables
RESOURCE_GROUP="Group5-RG"
LOCATION="eastus"
VNET_NAME="Group5-VNet"
SUBNET_WEB="Web-Subnet"
SUBNET_APP="App-Subnet"
SUBNET_DB="DB-Subnet"

# Create Resource Group
echo "Creating Resource Group: $RESOURCE_GROUP"
az group create --name $RESOURCE_GROUP --location $LOCATION

# Create VNet
echo "Creating VNet: $VNET_NAME"
az network vnet create \
  --name $VNET_NAME \
  --resource-group $RESOURCE_GROUP \
  --address-prefix 10.0.0.0/16

# Create Subnets
echo "Creating Subnets..."
az network vnet subnet create --resource-group $RESOURCE_GROUP --vnet-name $VNET_NAME --name $SUBNET_WEB --address-prefixes 10.0.1.0/24
az network vnet subnet create --resource-group $RESOURCE_GROUP --vnet-name $VNET_NAME --name $SUBNET_APP --address-prefixes 10.0.2.0/24
az network vnet subnet create --resource-group $RESOURCE_GROUP --vnet-name $VNET_NAME --name $SUBNET_DB --address-prefixes 10.0.3.0/24

echo "✅ VNet and Subnets created successfully."
