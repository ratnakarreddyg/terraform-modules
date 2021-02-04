#module "rgmodule" {
#    source = "../rg"
#}

resource "azurerm_virtual_network" "vnet" {
    name                = var.vnetname
    location            = var.vnetloc
    resource_group_name = var.rgname
    address_space       = [ "10.0.0.0/16" ]
}
