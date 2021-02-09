#module "rgmodule" {
#    source = "../rg"
#}

resource "azurerm_virtual_network" "vnet" {
    name                 = var.vnetname
    location             = var.vnetloc
    resource_group_name  = var.rgname
    address_space        = [ "10.0.0.0/16" ]
}

resource "azurerm_subnet" "vmss-subnet" {
    name		 = var.subnetname
    resource_group_name  = var.rgname
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes	 = ["10.0.2.0/24"]
}
