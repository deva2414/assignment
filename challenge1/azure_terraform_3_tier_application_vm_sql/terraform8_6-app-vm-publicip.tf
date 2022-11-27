# create public ip address
resource "azurerm_public_ip" "app_linuxvm_publicip" {
  name = "${local.resource_name_prefix}-app-linuxvm-publicip"
  resource_group_name = azurerm_resource_group.book.name
  location = azurerm_resource_group.book.location
  allocation_method = "Static"
  sku = "Standard"
  domain_name_label = "app2-vm-${random_string.myrandom.id}"
}