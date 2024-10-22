resource "azurerm_service_plan" "app_service_plan" {
  name                = var.service_plan_name
  resource_group_name = var.rg_name
  location            = var.location
  os_type             = "Linux"

  sku_name = var.sku_name
}

resource "azurerm_linux_web_app" "app_service" {
  name                = var.app_service_name
  resource_group_name = var.rg_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.app_service_plan.id

  site_config {
    linux_fx_version = var.linux_fx_version
  }

  app_settings = var.app_settings
}