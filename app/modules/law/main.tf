module "caf_naming_bcp_la" {
  source  = "aztfmod/caf-naming/azurerm"
  version = "0.1.6"
  name = var.la_name
  type = "la"
  convention = "cafclassic"
  postfix = var.env
}

resource "azurerm_log_analytics_workspace" "bcp_la" {
  name                = var.la_name
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = "PerGB2018"
  retention_in_days   = 30

   tags = {
    environment = var.env
  }
}