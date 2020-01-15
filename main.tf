provider "azurerm" {
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = var.cluster_name
  location            = var.region
  resource_group_name = var.resource_group
  dns_prefix          = var.cluster_dns_prefix

  default_node_pool {
    name       = var.node_pool_name
    node_count = var.node_count
    vm_size    = var.node_size
  }

  service_principal {
    client_id     = var.scalr_azurerm_client_id
    client_secret = var.scalr_azurerm_client_secret
  }

  tags = {
    Environment = "Dev"
  }
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.example.kube_config.0.client_certificate
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw
}
