output "storage_account_connection_string" {
  description = "Connection string for the storage account"
  value = azurerm_storage_account.tfstate.primary_connection_string
  sensitive = true
}

output "storage_account_id" {
  description = "ID of the storage account"
  value = azurerm_storage_account.tfstate.id
}