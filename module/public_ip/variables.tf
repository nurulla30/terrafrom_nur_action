variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location where the public IPs will be created"
  type        = string
  default     = "East US"
}

variable "public_ip_names" {
  description = "List of public IP names to create"
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}
