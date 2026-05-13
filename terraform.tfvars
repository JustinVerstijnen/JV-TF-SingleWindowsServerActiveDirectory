# Change this file parameters to your own parameters

# 1. Subscription, Location and Project name
subscription_id    = "fd09e454-a13e-4e8c-a00e-a54b1385e2bd"
project            = "testdc" # Keep this short: 2 to at max 9 characters to avoid VM name and resource name mismatch.
location           = "westeurope"

# 2. Networking
vnet_address_space              = ["10.69.0.0/16"]
subnet_address_prefixes         = ["10.69.0.0/24"]
vnet_dns_servers                = ["10.69.0.4", "168.63.129.16"]
internal_ip                     = "10.69.0.4"
rdp_source_address_prefixes     = ["12.34.56.78/32", "78.56.34.12/32"] # Change these mock-up IP addresses to your own trusted IP addresses

# 3. Active Directory and Identity
ad_forest_name          = "internal.justinverstijnen.nl" # The Active Directory forest to create on the Virtual Machine
domain_netbios_name     = "JV-INT" # The Active Directory NETBIOS name to create on the Virtual Machine
admin_username          = "justin-admin" # The local administrator to create on the Virtual Machine
admin_password          = "Y0uR-pA$$w0rD!" # The local administrator password to create on the Virtual Machine
safe_mode_password      = "Y0uR-dSrM-pA$$w0rD!" # The DSRM password to create on the Virtual Machine

# 4. Virtual Machine settings
vm_size         = "Standard_E4as_v7"
os_disk_type    = "StandardSSD_LRS"
image_publisher = "MicrosoftWindowsServer"
image_offer     = "WindowsServer"
image_sku       = "2025-datacenter-g2"
image_version   = "latest"
time_zone       = "W. Europe Standard Time"
culture         = "nl-NL"
geoid           = "176"

# 5. Post-Deployment script
bootstrap_script_url            = "https://raw.githubusercontent.com/JustinVerstijnen/JV-TF-SingleWindowsServerActiveDirectory/refs/heads/main/scripts/bootstrap-dc.ps1"
bootstrap_script_file_name      = "bootstrap-dc.ps1"
bootstrap_script_version        = "1"

# 6. Added tags to resource

tags = {
  owner             = "Justin Verstijnen"
  environment       = "lab"
  deployedBy        = "terraform"
  documentation     = "https://github.com/JustinVerstijnen/JV-TF-SingleWindowsServerActiveDirectory"
}