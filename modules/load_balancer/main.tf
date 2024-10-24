resource "random_string" "random_string" {
  length  = 6
  special = false 
  upper = false
}

resource "azurerm_public_ip" "public_ip" {
  name                = "${var.public_ip_name}-${random_string.random_string.result}"
  location            = var.location
  resource_group_name = var.rg_name
  allocation_method   = var.allocation_method

  tags = var.tags
}

resource "azurerm_lb" "load_balancer" {
  name                = "${var.lb_name}-${random_string.random_string.result}"
  location            = var.location
  resource_group_name = var.rg_name

  frontend_ip_configuration {
    name                 = var.fic_name
    public_ip_address_id = azurerm_public_ip.public_ip.id
  }

  tags = var.tags
}