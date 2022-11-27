# azure linux virtual machine
resource "azurerm_linux_virtual_machine" "app_linuxvm" {
  depends_on = [azurerm_mysql_database.webappdb, azurerm_mysql_virtual_network_rule.mysql_virtual_network_rule] 
  name = "${local.resource_name_prefix}-app-linuxvm"
  resource_group_name = azurerm_resource_group.book.name
  location = azurerm_resource_group.book.location
  size = "Standard_DS1_v2"
  admin_username = "azureuser"
  network_interface_ids = [ azurerm_network_interface.app_linuxvm_nic.id ]
  admin_ssh_key {
    username = "azureuser"
    public_key = file("./terraform-azure.pub")
  }
  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "RedHat"
    offer = "RHEL"
    sku = "83-gen2"
    version = "latest"
  }
  custom_data = filebase64("${path.module}/scripts/app-script.sh")
}