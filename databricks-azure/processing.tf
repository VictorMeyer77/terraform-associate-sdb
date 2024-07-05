resource "azurerm_databricks_workspace" "databricks" {
  name                = "sdbdtbkdev"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "standard"
  tags                = var.tags
}

resource "azurerm_data_factory" "data_factory" {
  name                = "sdbadfdev"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  tags                = var.tags
}