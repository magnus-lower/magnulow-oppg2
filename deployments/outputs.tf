output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "vnet_id" {
  description = "ID of the virtual network"
  value       = module.networking.vnet_id
}

output "subnet_id" {
  description = "ID of the subnet"
  value       = module.networking.subnet_id
}

output "app_service_url" {
  description = "URL of the app service"
  value       = module.app_service.default_hostname
}

output "sql_connection_string" {
  description = "Connection string for the SQL database"
  value       = module.database.sql_connection_string
}

output "load_balancer_ip" {
  description = "IP address of the load balancer"
  value       = module.load_balancer.lb_public_ip
}