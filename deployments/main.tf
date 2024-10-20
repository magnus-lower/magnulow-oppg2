terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.6.0"
    }
  }
  
  backend "azurerm" {
    resource_group_name  = "rg-backend-tfstate"
    storage_account_name = "sabetfs59c04d076a"
    container_name       = "tfstate"
    key                  = "magnulow_oppg2.terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "4832bdd9-c568-497f-af42-3c45d1e16ef6"
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

module "networking" {
  source = "../modules/networking"
}

module "app_service" {
  source = "../modules/app_service"
}

module "database" {
  source = "../modules/database"
}

module "storage" {
  source = "../modules/storage"
}

module "load_balancer" {
  source = "../modules/load_balancer"
}