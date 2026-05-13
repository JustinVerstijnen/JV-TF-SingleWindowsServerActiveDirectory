# Change this file parameters to your own parameters

# 1. Subscription, Location and Project name
subscription_id = "00000000-0000-0000-0000-000000000000"
project = "testdc" # Keep this short: 2 to at max 9 characters to avoid VM name and resource name mismatch.
location = "westeurope"

# 2. Networking
vnet_address_space       = ["10.69.0.0/16"]
subnet_address_prefixes  = ["10.69.0.0/24"]
vnet_dns_servers         = ["10.69.0.4", "168.63.129.16"]
internal_ip              = "10.69.0.4"
rdp_source_address_prefixes = ["12.34.56.78/32, 78.56.34.12/32"]

# 3. Active Directory and Identity
ad_forest_name      = "internal.justinverstijnen.nl"
domain_netbios_name = "JV-INT"
admin_username     = "justin-admin"
admin_password     = "ChangeM3-This-Password-Now!"
safe_mode_password = "ChangeM3-This-DSRM-Password-Now!"

# 4. Virtual Machine settings
vm_size         = "Standard_E4as_v7"
os_disk_type    = "StandardSSD_LRS"
image_publisher = "MicrosoftWindowsServer"
image_offer     = "WindowsServer"
image_sku       = "2025-datacenter-g2"
image_version   = "latest"
time_zone = "W. Europe Standard Time"
culture   = "nl-NL"
geoid     = "176"

# 5. Post-Deployment script
bootstrap_script_url       = "https://raw.githubusercontent.com/JustinVerstijnen/JV-TF-SingleWindowsServerActiveDirectory/refs/heads/main/scripts/bootstrap-dc.ps1"
bootstrap_script_file_name = "bootstrap-dc.ps1"
bootstrap_script_version = "1"

# 6. Added tags to resource

tags = {
  owner       = "Justin Verstijnen"
  environment = "lab"
  deployedBy  = "terraform"
  documentation = "https://github.com/JustinVerstijnen/JV-TF-SingleWindowsServerActiveDirectory"
}