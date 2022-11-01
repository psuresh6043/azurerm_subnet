output "id" { #The subnet ID.
  value = azurerm_subnet.subnet.id
}
output "name" { #The name of the subnet.
  value = azurerm_subnet.subnet.name
}
output "resource_group_name" { #The name of the resource group in which the subnet is created in.
  value = azurerm_subnet.subnet.resource_group_name
}
output "virtual_network_name" { #The name of the virtual network in which the subnet is created in
  value = azurerm_subnet.subnet.virtual_network_name
}
output "address_prefixes" { #The address prefixes for the subnet
  value = azurerm_subnet.subnet.address_prefixes
} 
