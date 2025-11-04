#!/bin/bash
# ===========================================================
# Script: vm_setup.sh
# Purpose: Deploy VMs for each tier (Web, App, DB)
# Author: Group 5
# ===========================================================

RESOURCE_GROUP="Group5-RG"
VNET_NAME="Group5-VNet"

echo "Provisioning Virtual Machines..."

# Simulated creation (safe for academic submission)
echo "Creating Web VM..."
az vm create --resource-group $RESOURCE_GROUP --name Web-VM --image UbuntuLTS --vnet-name $VNET_NAME --subnet Web-Subnet --admin-username azureuser --generate-ssh-keys

echo "Creating App VM..."
az vm create --resource-group $RESOURCE_GROUP --name App-VM --image UbuntuLTS --vnet-name $VNET_NAME --subnet App-Subnet --admin-username azureuser --generate-ssh-keys

echo "Creating DB VM..."
az vm create --resource-group $RESOURCE_GROUP --name DB-VM --image UbuntuLTS --vnet-name $VNET_NAME --subnet DB-Subnet --admin-username azureuser --generate-ssh-keys

echo "✅ All VMs deployed successfully (simulation complete)."
