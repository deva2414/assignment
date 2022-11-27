# 1. create network security group (nsg)
resource "azurerm_network_security_group" "app_vmnic_nsg" {
  name = "${azurerm_network_interface.app_linuxvm_nic.name}-nsg"
  location = azurerm_resource_group.book.location
  resource_group_name = azurerm_resource_group.book.name
}

# 2. associate nsg and linux vm nic
resource "azurerm_network_interface_security_group_association" "app_vmnic_nsg_associate" {
  depends_on = [ azurerm_network_security_rule.app_vmnic_nsg_rule_inbound ]
  network_interface_id = azurerm_network_interface.app_linuxvm_nic.id
  network_security_group_id = azurerm_network_security_group.app_vmnic_nsg.id
}

# 3. create nsg rules
## local block for security rules
locals {
  app_vmnic_inbound_ports_map = {
    "100" : "80",
    "110" : "443",
    "120" : "22",
    "130" : "8080"
  }
}

resource "azurerm_network_security_rule" "app_vmnic_nsg_rule_inbound" {
    for_each = local.app_vmnic_inbound_ports_map
    name                       = "Rule-Port-${each.value}"
    priority                   = each.key
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = each.value
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    resource_group_name        = azurerm_resource_group.book.name
    network_security_group_name = azurerm_network_security_group.app_vmnic_nsg.name
}