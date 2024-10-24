resource "random_string" "random_string" {
  length  = 6
  special = false 
  upper = false
}

resource "azurerm_service_plan" "app_service_plan" {
  name                = "${var.service_plan_name}-${random_string.random_string.result}"
  resource_group_name = var.rg_name
  location            = var.location
  os_type             = "Linux"
  sku_name = var.sku_name
}

resource "azurerm_linux_web_app" "app_service" {
  name                = "${var.app_service_name}-${random_string.random_string.result}"
  resource_group_name = var.rg_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.app_service_plan.id

  site_config {
    always_on = true
    app_command_line = ""
  }

  app_settings = var.app_settings
}