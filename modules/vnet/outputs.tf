output "vnetname" {
    value = azurerm_virtual_network.vnet.name
}

output "subnetname" {
    value = azurerm_subnet.vmss-subnet.name
}
