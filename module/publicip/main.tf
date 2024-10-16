


resource "azurerm_public_ip" "public_ip" {
  count               = length(var.public_ip_name)
  name                = var.public_ip_name[count.index]
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Dynamic"
}
