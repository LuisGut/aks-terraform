module "aks" {
  source    = "../modules/aks"
  rg_name   = ""
  region = ""
  cluster_name = ""
  vm_size = ""
  app_id = ""
  password = ""
}