output "resource_group_id" {
  value = azurerm_resource_group.sbdrgdev.id
}

output "virtual_network_subnet" {
  value = azurerm_virtual_network.sdbvnetdev.subnet
}