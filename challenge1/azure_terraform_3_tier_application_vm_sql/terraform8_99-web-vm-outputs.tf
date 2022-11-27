## Public IP Address
output "app_linuxvm_public_ip" {
  description = "app Linux VM Public Address"
  value = azurerm_public_ip.app_linuxvm_publicip.ip_address
}

# Network Interface Outputs
## Network Interface ID
output "app_linuxvm_network_interface_id" {
  description = "app Linux VM Network Interface ID"
  value = azurerm_network_interface.app_linuxvm_nic.id
}
## Network Interface Private IP Addresses
output "app_linuxvm_network_interface_private_ip_addresses" {
  description = "app Linux VM Private IP Addresses"
  value = [azurerm_network_interface.app_linuxvm_nic.private_ip_addresses]
}

# Linux VM Outputs

## Virtual Machine Public IP
output "app_linuxvm_public_ip_address" {
  description = "app Linux Virtual Machine Public IP"
  value = azurerm_linux_virtual_machine.app_linuxvm.public_ip_address
}


## Virtual Machine Private IP
output "app_linuxvm_private_ip_address" {
  description = "app Linux Virtual Machine Private IP"
  value = azurerm_linux_virtual_machine.app_linuxvm.private_ip_address
}
## Virtual Machine 128-bit ID
output "app_linuxvm_virtual_machine_id_128bit" {
  description = "app Linux Virtual Machine ID - 128-bit identifier"
  value = azurerm_linux_virtual_machine.app_linuxvm.virtual_machine_id
}
## Virtual Machine ID
output "app_linuxvm_virtual_machine_id" {
  description = "app Linux Virtual Machine ID "
  value = azurerm_linux_virtual_machine.app_linuxvm.id
}

