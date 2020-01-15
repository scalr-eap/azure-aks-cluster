version = "v1"

variable "region" {
  policy = "cloud.locations"
  conditions = {
  cloud = "azure"
  }
}

variable "resource_group" {
  policy = "azure.resource_groups"
  conditions = {
  cloud = "azure"
  }
}

variable "node_size" {
  policy = "cloud.instance.types"
  conditions = {
  cloud = "azure"
  }
}
