# virtual network outputs
## virtual network name -
output "virtual_network_name" {
  description = "virtual network name"
  value = azurerm_virtual_network.vnet.name
}

## virtual network id 
output "virutal_network_id" {
  description = "virtual network id"
  value = azurerm_virtual_network.vnet.id
}

## Subnet Name 
output "web_subnet_name" {
  description = "WebTier Subnet Name"
  value = azurerm_subnet.websubnet.name
}

## Subnet ID 
output "web_subnet_id" {
  description = "WebTier Subnet ID"
  value = azurerm_subnet.websubnet.id
}

# Network Security Outputs
## Web Subnet NSG Name 
output "web_subnet_nsg_name" {
  description = "WebTier Subnet NSG Name"
  value = azurerm_network_security_group.web_subnet_nsg.name
}

## Web Subnet NSG ID 
output "web_subnet_nsg_id" {
  description = "WebTier Subnet NSG ID"
  value = azurerm_network_security_group.web_subnet_nsg.id
}
