provider "azurerm" {
  features {}
}

# Backend configuration for Azure Storage
terraform {
  backend "azurerm" {
    resource_group_name   = var.resource_group_name
    storage_account_name  = var.storage_account_name
    container_name        = var.container_name    # Using container_name variable
    key                   = var.state_file_name
    subscription_id       = var.subscription_id
    tenant_id             = var.tenant_id
  }
}

module "public_ip" {
  source = "/../module/publicip"

  public_ip_name         = var.public_ip_name
  location               = var.location
  resource_group_name    = var.resource_group_name
}
