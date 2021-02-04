resource "azurerm_storage_account" "sa" {
	name	 		 = var.name
	resource_group_name	 = var.rgname
	location		 = var.saloc
	account_tier		 = "Standard"
	account_replication_type = "LRS"
}
