module "aks" {
  source    = "../modules/aks"
  
  rg_name   = var.rg_name
  region = var.region
  cluster_name = var.cluster_name
  vm_size = var.vm_size
  app_id = var.app_id
  password = var.password

}