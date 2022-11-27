# output values
output "mysql_server_fqdn" {
    description = "mysql server fqdn"
    value = azurerm_mysql_server.mysql_server.fqdn
}