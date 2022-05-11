module "caf_naming_bcp_rgTest" {
  source  = "aztfmod/caf-naming/azurerm"
  version = "0.1.6"
  name = var.rg_name
  type = "rg"
  convention = "cafclassic"
  postfix = var.env
}

resource "azurerm_resource_group" "bcp_rgTest" {
  name     = module.caf_naming_bcp_rgTest.rg
  location = var.location
}

