variable "service_plan_name" {
  description = "The name of the Azure service plan"
  type        = string
}

variable "app_service_name" {
  description = "The name of the Azure app service"
  type        = string
}

variable "rg_name" {
  description = "The name of the resource group where the app service will be deployed"
  type        = string
}

variable "location" {
  description = "The Azure region where the app service will be deployed"
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