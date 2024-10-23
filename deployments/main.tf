terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
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

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
  tags     = var.tags
}

module "app_service" {
  source            = "../modules/app_service"
  app_service_name  = var.app_service_name
  location          = var.location
  rg_name           = var.rg_name
  service_plan_name = var.service_plan_name
  sku_name          = var.sku_name
  linux_fx_version  = var.linux_fx_version
  app_settings      = var.app_settings
}

module "database" {
  source         = "../modules/database"
  server_name    = var.server_name
  db_name        = var.db_name
  collation      = var.collation
  license_type   = var.license_type
  max_size_gb    = var.max_size_gb
  enclave_type   = var.enclave_type
  sku_name       = var.sku_name
  location       = var.location
  rg_name        = var.rg_name
  tags           = var.tags
}

module "load_balancer" {
  source            = "../modules/load_balancer"
  lb_name           = var.lb_name
  location          = var.location
  rg_name           = var.rg_name
  fic_name          = var.fic_name
  public_ip_name    = var.public_ip_name
  allocation_method = var.allocation_method
  tags              = var.tags
}

module "networking" {
  source                  = "../modules/networking"
  nsg_name                = var.nsg_name
  vnet_name               = var.vnet_name
  location                = var.location
  subnet_name             = var.subnet_name
  vnet_address_space      = var.vnet_address_space
  rg_name                 = var.rg_name
  subnet_address_prefixes = var.subnet_address_prefixes
}

module "storage" {
  source   = "../modules/storage"
  rg_name  = var.rg_name
  location = var.location
  sa_name  = var.sa_name
  sc_name  = var.sc_name
}