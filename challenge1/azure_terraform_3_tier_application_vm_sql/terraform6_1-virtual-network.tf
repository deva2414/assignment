# create virtual network
resource "azurerm_virtual_network" "vnet" {
  name = "${local.resource_name_prefix}-${var.vnet_name}"
  address_space = var.vnet_address_space
  location = azurerm_resource_group.book.location
  resource_group_name = azurerm_resource_group.book.name
  tags = local.common_tags
}