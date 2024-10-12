resource_group_name  = "dev-rg"
storage_account_name = "devtfstate25185"
container_name       = "public_ip"   # This is the module name (use the module name for other modules)
state_file_name      = "dev.tfstate"
subscription_id      = "2e04ae6a-7840-41a9-bde6-af1708c594f4"
tenant_id            = "7dbac269-8cfd-4cdd-80cc-4af98c00bfc0"

public_ip_names = [
  "dev-ip-01-nur-prod"
]

tags = {
  environment = "prod"
}
