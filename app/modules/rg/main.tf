module "caf_naming_bcp_rg" {
  source  = "aztfmod/caf-naming/azurerm"
  version = "0.1.6"
  name = var.rg_name
  type = "rg"
  convention = "cafclassic"
  postfix = var.env
}

resource "azurerm_resource_group" "bcp_rg" {
  name     = module.caf_naming_bcp_rg.rg
  location = var.location
}

