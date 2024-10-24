resource "random_string" "random_string" {
  length  = 6
  special = false 
  upper = false
}

resource "azurerm_mssql_server" "mssql_server" {
  name                         = "${var.server_name}-${random_string.random_string.result}"
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "sqladmin"
  administrator_login_password = "Password123!"

  tags = var.tags
}

resource "azurerm_mssql_database" "mssql_database" {
  name         = "${var.db_name}-${random_string.random_string.result}"
  server_id    = azurerm_mssql_server.mssql_server.id
  collation    = var.collation
  license_type = var.license_type
  max_size_gb  = var.max_size_gb
  sku_name     = var.sku_name
  enclave_type = var.enclave_type

  tags = var.tags

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}