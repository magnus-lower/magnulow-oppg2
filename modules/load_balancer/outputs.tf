output "public_ip_id" {
  description = "ID of the public IP associated with the load balancer"
  value = azurerm_public_ip.public_ip.id
}

output "load_balancer_id" {
  description = "ID of the Azure load balancer"
  value = azurerm_lb.load_balancer.id
}

output "lb_public_ip" {
    description = "Public IP address of the load balancer"
    value = azurerm_public_ip.public_ip.ip_address
}