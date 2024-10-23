# Variables for resource group, location, and tags
variable "rg_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location/region of the resource group"
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
}

# Variables for the app service module
variable "service_plan_name" {
  description = "The name of the Azure service plan"
  type        = string
}

variable "app_service_name" {
  description = "The name of the Azure app service"
  type        = string
}

variable "sku_name" {
  description = "The SKU name of the app service plan"
  type        = string
}

variable "linux_fx_version" {
  description = "The Linux function runtime version"
  type        = string
}

variable "app_settings" {
  description = "App settings for the app service"
  type        = map(string)
}

# Variables for the database module
variable "server_name" {
  description = "The name of the SQL server"
  type        = string
}

variable "db_name" {
  description = "The name of the SQL database"
  type        = string
}

variable "collation" {
  description = "The collation of the SQL database"
  type        = string
}

variable "license_type" {
  description = "The license type of the SQL database"
  type        = string
}

variable "max_size_gb" {
  description = "The maximum size of the SQL database in gigabytes"
  type        = number
}

variable "enclave_type" {
  description = "The enclave type of the SQL database"
  type        = string
}

# Variables for the load balancer module
variable "public_ip_name" {
  description = "The name of the public IP for the load balancer"
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

# Variables for the networking module
variable "nsg_name" {
  description = "The name of the network security group"
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space of the virtual network"
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "The address prefixes of the subnet"
  type        = list(string)
}

# Variables for the storage module
variable "sa_name" {
  description = "The name of the storage account"
  type        = string
}

variable "sc_name" {
  description = "The name of the storage container"
  type        = string
}