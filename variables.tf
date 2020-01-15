variable "region" {
  description = "The Azure region of the cluster"
}

variable "cluster_name" {
  description = "The name of the AKS cluster"
}

variable "resource_group" {
  description = "The name of the existing resource group"
}

variable "cluster_dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
}

variable "node_pool_name" {
  description = "The node pool name"
}

variable "node_count" {
  description = "The number of nodes"
}

variable "node_size" {
  description = "The instance size of the nodes"
}

variable "scalr_azurerm_client_id" {
  description = "The client id to be used for the cluster creation"
}

variable "scalr_azurerm_client_secret" {
  description = "The client secret to be used for the cluster creation"
}
