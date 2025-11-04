------------------------------------------------------------

Group 5 - Azure Virtual Network Multi-Tier Deployment

Prepared by:       Jeremiah Oyewo 
Course:            AWS Cloud Computing Cohort 3
Institution:       TechCrush  
Date:              November 2025
------------------------------------------------------------

##  Objective
Deploy a secure **multi-tier cloud architecture** using Azure CLI and enforce **network access control**.

##  Architecture
**Layers:**
- **Web Tier** (Public-facing)
- **App Tier** (Internal)
- **Database Tier** (Private)

### Azure Resources
- Virtual Network (VNet)
- 3 Subnets (Web, App, DB)
- 3 Network Security Groups (NSGs)
- 3 Virtual Machines

##  Deployment Steps
1. Run `validate_cli.sh` to confirm Azure CLI setup.
2. Run `vnet_create.sh` to create your VNet and Subnets.
3. Run `nsg_rules.sh` to configure NSG rules.
4. Run `vm_setup.sh` to deploy the three-tier VMs.

## Notes
- Modify variables (like region or names) if needed.
- Test connections between VMs to confirm NSG restrictions.

## Architecture Screen capture
*Access screenshot of the vnet architecture*

##  License
Licensed under the MIT License.


1. Install **Azure CLI** → https://learn.microsoft.com/cli/azure/install-azure-cli  
2. Install **Git**  
3. Clone this repository:

```bash
git clone https://github.com/<your-username>/Group5-VNet-Architecture.git
cd Group5-VNet-Architecture/scripts

