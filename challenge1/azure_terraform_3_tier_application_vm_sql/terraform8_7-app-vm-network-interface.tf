# create network interface
resource "azurerm_network_interface" "app_linuxvm_nic" {
  name = "${local.resource_name_prefix}-app-linuxvm-nic"
  location = azurerm_resource_group.book.location
  resource_group_name = azurerm_resource_group.book.name

  ip_configuration {
    name = "app-linuxvm-ip-1"
    subnet_id = azurerm_subnet.appsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.app_linuxvm_publicip.id
  }
  
}