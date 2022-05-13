
module "bcp_rg" {
  source = "../../modules/rg"
  rg_name = var.bcp_rg
  location = var.location
}

module "bcp_st" {
  source = "../../modules/st"
  st_name = var.bcp_st
  rg_name = module.bcp_rg.name
  location = var.location
}

module "bcp_rg2" {
  source = "../../modules/rg"
  rg_name = var.bcp_rg2
  location = var.location
}

module "bcp_la" {
  source = "../../modules/law"
  la_name = var.bcp_la
  rg_name = module.bcp_rg2.name
  location = var.location
}
