provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "aks_group" {
  name     = var.resource_group
  location = var.region
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = var.cluster_name
  location            = var.region
  resource_group_name = azurerm_resource_group.aks_group.name
  dns_prefix          = var.cluster_dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.node_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Dev"
  }
}
