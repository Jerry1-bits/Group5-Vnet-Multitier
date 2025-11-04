# 🚀 Group 5 — Azure Multi-Tier Architecture Deployment (Simulated)

### 🎯 Objective
To design and simulate the deployment of a **Virtual Network (VNet)-based multi-tier architecture** on Microsoft Azure using CLI scripting, enforcing network isolation and access control.

---

### 🧩 Architecture Overview

This project represents a **three-tier architecture**:
- **Web Subnet** – hosts front-end servers (public access)
- **App Subnet** – internal business logic (private)
- **DB Subnet** – database layer (isolated and secured)

Each subnet is protected with its own **Network Security Group (NSG)**.

The architecture enforces:
- Restricted access from the internet to only the Web tier
- Layered communication between tiers (Web → App → DB)
- No direct internet access to App or DB tiers

📘 **Architecture Diagram**
![Azure Architecture](./architecture/azure_architecture.png)

---

### 🧠 Deployment Workflow

| Step | Script | Description |
|------|---------|-------------|
| 1 | `vnet_create.sh` | Creates the VNet and subnets |
| 2 | `nsg_rules.sh` | Creates and attaches NSGs to subnets |
| 3 | `vm_setup.sh` | Simulates VM deployment per tier |
| 4 | `validate_cli.sh` | Validates CLI syntax and structure |

---

### ⚙️ Prerequisites

1. Install **Azure CLI** → https://learn.microsoft.com/cli/azure/install-azure-cli  
2. Install **Git**  
3. Clone this repository:

```bash
git clone https://github.com/<your-username>/Group5-VNet-Architecture.git
cd Group5-VNet-Architecture/scripts

