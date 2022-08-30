variable "app_id" {
  description = "Azure k8s Service Cluster service principal"
}

variable "password" {
  description = "Azure k8s Service Cluster password"
}

variable "region" {
  description = "Region"  
}

variable "rg_name" {
  description = "Resource group name"
}

variable "cluster_name" {
  description = "Aks cluster name"
}

variable "vm_size" {
  description = "vm size"
}