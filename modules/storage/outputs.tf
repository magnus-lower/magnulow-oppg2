output "primary_access_key" {
  description = "The primary access key for the storage account"
  value = azurerm_storage_account.sa.primary_access_key
}

output "storage_account_connection_string" {
  description = "The primary connection string for the storage account"
  value = azurerm_storage_account.sa.primary_connection_string
}