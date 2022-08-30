provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name     = var.rg_name
  location = var.region

  tags = {
    environment = "Test-aks"
  }
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = var.cluster_name
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = "${var.cluster_name}-k8s"

  default_node_pool {
    name            = "default"
    node_count      = 1
    vm_size         = var.vm_size
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.app_id
    client_secret = var.password
  }

  role_based_access_control {
    enabled = true
  }

  tags = {
    environment = "Test-aks"
  }
}
