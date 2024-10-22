output "app_service_plan_id" {
  description = "ID of the app service plan"
  value       = azurerm_service_plan.app_service_plan.id
}

output "app_service_id" {
  description = "ID of the app service"
  value       = azurerm_linux_web_app.app_service.id
}

output "default_hostname" {
    description = "Default hostname of the app service"
    value       = azurerm_linux_web_app.app_service.default_hostname 
}