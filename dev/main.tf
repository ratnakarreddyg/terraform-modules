module "rgmodule" {
	source		= "../modules/rg"
	rgname		= "rg-TFResourceGroup2021"
	location	= "east us"
	
}
/*
module "vnetmodule" {
	source		= "../modules/vnet"
	vnetname	= "TFVnet2021"
        rgname		= module.rgmodule.rgname
	vnetloc		= "east us"
}
*/
module "samodule" {
	source		= "../modules/sa"
	name		= "tfstorageacc2021"			# only consist of lowercase letters and numbers
	rgname		= module.rgmodule.rgname
	saloc		= "east us"	
	contname	= "tfstoragecontainer2021"
}

