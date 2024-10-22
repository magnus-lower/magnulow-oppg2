output "sql_server_id" {
  description = "ID of the SQL server"
  value = azurerm_mssql_server.mssql_server.id
}

output "sql_server_fqdn" {
  description = "Fully qualified domain name of the SQL server"
  value = azurerm_mssql_server.mssql_server.fully_qualified_domain_name
}

output "sql_database_id" {
  description = "ID of the SQL database"
  value = azurerm_mssql_database.mssql_database.id
}

output "sql_database_name" {
  description = "Name of the SQL database"
  value = azurerm_mssql_database.mssql_database.name
}

output "sql_connection_string" {
    description = "Connection string for the SQL database"
    value = azurerm_mssql_server.mssql_server.fully_qualified_domain_name
}