# Group 5 - VNet Multi-Tier Architecture (Summary)

**Objective:**  
To simulate the deployment of a secure, three-tier cloud architecture on Microsoft Azure using Azure CLI scripts and GitHub version control.

**Layers:**
- Web Subnet (Public)
- App Subnet (Private)
- Database Subnet (Restricted)

**Access Control:**  
Network Security Groups (NSGs) are applied to enforce security between tiers.

**Files in Repository:**
- `vnet_create.sh` → Creates VNet & Subnets  
- `nsg_rules.sh` → Defines NSG access control  
- `vm_setup.sh` → Simulates VM creation  
- `validate_cli.sh` → Validates CLI syntax  
- `architecture_diagram.png` → Network layout (from Figma)

**Result:**  
A clean, modular, and simulation-ready setup demonstrating a multi-tier architecture concept.
