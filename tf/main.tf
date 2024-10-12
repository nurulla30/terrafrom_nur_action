provider "azurerm" {
  features {}
}

module "public_ip" {
  source              = "../../module/public_ip"
  resource_group_name = var.resource_group_name
  location            = var.location
  public_ip_names     = var.public_ip_names
  tags                = var.tags
}

output "public_ips" {
  description = "List of public IP addresses"
  value       = module.public_ip.azurerm_public_ip.public_ip[*].ip_address
}

