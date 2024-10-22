provider "azurerm" {
  subscription_id = "4832bdd9-c568-497f-af42-3c45d1e16ef6"
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

resource "azurerm_resource_group" "global" {
  name = "rg-global-resources"
  location = "westeurope"
}

resource "azurerm_storage_account" "tfstate" {
  name = "OperaTerrasa564"
  resource_group_name = azurerm_resource_group.global.name
  location = azurerm_resource_group.global.location
  account_tier = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "global"
    managed_by = "Terraform"
  }
}

resource "azurerm_storage_container" "tfstate_container" {
  name = "tfstate-files"
  storage_account_name = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}

output "storage_account_connection_string" {
  description = "Connection string for the storage account"
  value = azurerm_storage_account.tfstate.primary_connection_string
  sensitive = true
}

output "storage_account_id" {
  description = "ID of the storage account"
  value = azurerm_storage_account.tfstate.id
}