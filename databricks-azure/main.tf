# configure terraform itself
# https://learning-ocean.com/tutorials/terraform/terraform-configuration/
terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"

}

# configure provider. When "alias" missing, default provider
# https://developer.hashicorp.com/terraform/language/providers/configuration
provider "azurerm" {
  features {}
}

# create a resource group
resource "azurerm_resource_group" "sbdrgdev" {
  name     = "sbdrgdev"
  location = "France Central"
}

# create a virtual network within the resource group
resource "azurerm_virtual_network" "sdbvnetdev" {
  name                = "sdbvnetdev"
  resource_group_name = azurerm_resource_group.sbdrgdev.name
  location            = azurerm_resource_group.sbdrgdev.location
  address_space       = ["10.0.0.0/16"]
}