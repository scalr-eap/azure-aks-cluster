version = "v1"

variable "region" {
  policy = "cloud.locations"
  conditions = {
  cloud = "azure"
  }
}

variable "node_size" {
  policy = "cloud.instance.types"
  conditions = {
  cloud = "azure"
  cloud.location = var.region
  }
}

variable "client_id" {
  global_variable = "client_id"
}

variable "client_secret" {
  global_variable = "client_secret"
}
