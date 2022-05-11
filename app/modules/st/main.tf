module "caf_naming_bcp_st" {
  source  = "aztfmod/caf-naming/azurerm"
  version = "0.1.6"
  name = var.rg_name
  type = "st"
  convention = "cafclassic"
  postfix = var.env
}

resource "azurerm_storage_account" "bcp_st" {
  name                     = module.caf_naming_bcp_st.st
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = var.env
  }
}