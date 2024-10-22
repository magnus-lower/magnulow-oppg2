variable "public_ip_name" {
  description = "The name of the public IP for the load balancer"
  type        = string
}

variable "location" {
  description = "The location/region of the resource group"
  type        = string
}

variable "rg_name" {
  description = "The name of the resource group where the load balancer will be deployed"
  type        = string
}

variable "allocation_method" {
  description = "The allocation method of the public IP"
  type        = string
}

variable "lb_name" {
  description = "The name of the Azure load balancer"
  type        = string
}

variable "fic_name" {
  description = "The name of the frontend IP configuration"
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
}