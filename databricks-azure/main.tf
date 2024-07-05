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

# access the configuration of the AzureRM provider
# https://developer.hashicorp.com/terraform/language/data-sources
data "azurerm_client_config" "current" {

}

# create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "${var.project}${var.environment}rg"
  location = var.resource_group_location
  tags     = var.tags
}

# create a virtual network within the resource group
#resource "azurerm_virtual_network" "vnet" {
#  name                = "sdbvnetdev"
#  resource_group_name = azurerm_resource_group.rg.name
#  location            = azurerm_resource_group.rg.location
#  address_space       = ["10.0.0.0/16"]
#
#  tags = {
#    environment = "dev"
#  }
#}
#
## public subnet
#resource "azurerm_subnet" "public_subnet" {
#  name                 = "sdbpsnetdev"
#  resource_group_name  = azurerm_resource_group.rg.name
#  virtual_network_name = azurerm_virtual_network.vnet.name
#  address_prefixes     = [var.public_subnet_address_prefix]
#
#  tags = {
#    environment = "dev"
#  }
#}
#
## private subnet
#resource "azurerm_subnet" "private_subnet" {
#  name                 = var.private_subnet_name
#  resource_group_name  = azurerm_resource_group.rg.name
#  virtual_network_name = azurerm_virtual_network.vnet.name
#  address_prefixes     = [var.private_subnet_address_prefix]
#
#  tags = {
#    environment = "dev"
#  }
#}
