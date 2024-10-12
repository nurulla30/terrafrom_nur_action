variable "resource_group_name" {
  description = "The name of the resource group."
}

variable "storage_account_name" {
  description = "The name of the storage account."
}

variable "container_name" {
  description = "The name of the storage container (module name)."
  default     = "public_ip"  # Defaulting to 'public_ip' for this module
}

variable "state_file_name" {
  description = "The name of the state file."
}

variable "subscription_id" {
  description = "Azure subscription ID."
}

variable "tenant_id" {
  description = "Azure tenant ID."
}

variable "public_ip_name" {
  description = "The name of the public IP."
}

variable "location" {
  description = "The location for the resources."
  default     = "East US"
}
