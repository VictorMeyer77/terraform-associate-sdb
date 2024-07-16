terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"

}

provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {

}

locals {
  rg_name     = "${var.environment}${var.project}rg"
  rg_location = var.resource_group_location
}

resource "azurerm_resource_group" "this" {
  name     = local.rg_name
  location = var.resource_group_location
  tags     = var.tags
}
