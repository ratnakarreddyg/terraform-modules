resource "azurerm_storage_account" "sa" {
	name	 		 = var.name
	resource_group_name	 = var.rgname
	location		 = var.saloc
	account_tier		 = "Standard"
	account_replication_type = "LRS"
}

resource "azurerm_storage_container" "sacontainer" {
	depends_on		 = [azurerm_storage_account.sa]
	name			 = var.contname
	storage_account_name 	 = azurerm_storage_account.sa.name
	container_access_type	 = "private"
}
