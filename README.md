# Azure AKS cluster

Creates and AKS cluster in a new RG in the given region.

User can choose:

1. Name of the cluster
1. Name of the RG for the cluster
1. Number of nodes.
1. Size of the nodes.

Template can be run as follows:

* Locally
* Scalr IaCP as the remote backend
* Scalr iaCP Template Registry Offering

## Using Locally

1. Pull the repo
1. Set variable values in `terraform.tvars.(json)`
1. Set your Azure credentials by creating environment variables
   1. ARM_CLIENT_ID
   1. ARM_CLIENT_SECRET
   1. ARM_ENVIRONMENT
   1. ARM_SUBSCRIPTION_ID
   1. ARM_TENANT_ID
1. Run `terraform init;terraform apply` and watch the magic happen.

## Using with Scalr IaCP as Remote Backend

1. Pull the repo
1. Add a terraform {} block in main.tf to configure the remote backend workspace
1. Create an TF API token in Scalr Next-Gen and add it to ~/.terraformrc.
1. Run `terraform init`
1. In Scalr workspace add Terraform variables and values as follows (note that terraform.tfvars(.json) in the template is not used with a remote backend).
   1. region
   1. cluster_name
   1. cluster_dns_prefix
   1. node_count
   1. node_size
   1. resource_group
1. Run `terraform init;terraform apply` and watch the magic happen.

## Using with Scalr IaCP Template Registry Offering.

In general follow the example here https://iacp.docs.scalr.com/en/latest/guides/new_service_catalog.html

1. Create Policies (scalr-module.hcl shows the policy bindings that are required)
   1. cloud.locations - Policy to limit the cloud locations (note this can be all locations but the policy must exist)
   1. cloud.instance_types - Restrict the instance types that are allowed. Minimum 4GB of ram.
1. Create the Template Registry offering pointing to your copy repo
1. Request the offering. It can take 10-15 minutes to deploy the cluster.
