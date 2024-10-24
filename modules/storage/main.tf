resource "random_string" "random_string" {
  length  = 6
  special = false 
  upper = false
}

resource "azurerm_storage_account" "sa" {
  name                     = "${var.sa_name}-${random_string.random_string.result}"
  resource_group_name      = var.rg_name
  location                 = var.location
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  is_hns_enabled           = true
}

resource "azurerm_storage_container" "sc" {
  name                 = var.sc_name
  storage_account_name = azurerm_storage_account.sa.name
}