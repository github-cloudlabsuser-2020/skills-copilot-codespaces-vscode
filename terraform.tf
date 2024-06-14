provider "azurerm" {
  features {}
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "location" {
  description = "The location/region in which to create the resources"
  type        = string
  default     = "West Europe"
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"

  enable_https_traffic_only = true
}