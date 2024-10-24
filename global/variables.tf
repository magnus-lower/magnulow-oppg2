variable "rg_name" {
  description = "The name of the resource group"
  type = string
}

variable "location" {
  description = "The location for the resources"
  type = string
}

variable "sa_name" {
    description = "The name of the storage account"
    type = string
}

variable "sc_name" {
    description = "The name of the storage container"
    type = string
}