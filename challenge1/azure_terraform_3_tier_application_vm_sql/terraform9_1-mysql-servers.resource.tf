# azure mysql server
resource "azurerm_mysql_server" "mysql_server" {
  name = "${local.resource_name_prefix}-${var.mysql_db_name}"
  location = azurerm_resource_group.book.location
  resource_group_name = azurerm_resource_group.book.name

  administrator_login = var.mysql_db_username
  administrator_login_password = var.mysql_db_password

  sku_name = "GP_Gen5_2"
  storage_mb = 5120
  version = "8.0"

  auto_grow_enabled = true
  backup_retention_days = 7
  geo_redundant_backup_enabled = false
  infrastructure_encryption_enabled = false
  public_network_access_enabled = true
  ssl_enforcement_enabled = false
  ssl_minimal_tls_version_enforced = "TLSEnforcementDisabled"
}

# azure mysql database / schema
resource "azurerm_mysql_database" "webappdb" {
  name = var.mysql_db_schema
  resource_group_name = azurerm_resource_group.book.name
  server_name = azurerm_mysql_server.mysql_server.name
  charset = "utf8"
  collation = "utf8_unicode_ci"
}

# azure mysql virtual network rule
resource "azurerm_mysql_virtual_network_rule" "mysql_virtual_network_rule" {
  name = "mysql-vnet-rule"
  resource_group_name = azurerm_resource_group.book.name
  server_name = azurerm_mysql_server.mysql_server.name
  subnet_id = azurerm_subnet.appsubnet.id
  
}