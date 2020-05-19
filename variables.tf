variable "region" {
  description = "The Azure region of the cluster"
}

variable "cluster_name" {
  description = "The name of the AKS cluster"
}

variable "resource_group" {
  description = "The name of a resource group to be created"
}

variable "cluster_dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
}

variable "node_count" {
  description = "The number of nodes"
}

variable "node_size" {
  description = "The instance size of the nodes"
}
