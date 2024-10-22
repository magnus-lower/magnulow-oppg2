variable "server_name" {
    description = "The name of the SQL server"
    type        = string
}

variable "admin_username" {
    description = "The administrator username of the SQL server"
    type        = string
}

variable "admin_password" {
    description = "The administrator password of the SQL server"
    type        = string
    sensitive = true
}

variable "rg_name" {
    description = "The name of the resource group"
    type        = string
}

variable "location" {
    description = "The location/region of the resource group"
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

variable "sku_name" {
    description = "The SKU name of the SQL database"
    type        = string
}

variable "enclave_type" {
    description = "The enclave type of the SQL database"
    type        = string
}

variable "tags" {
    description = "A map of tags to assign to the resource"
    type        = map(string)
}