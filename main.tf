resource "azurerm_subnet" "subnet" {

  name                                          = var.name                                          #(Required) The name of the subnet. Changing this forces a new resource to be created.
  resource_group_name                           = var.resource_group_name                           #(Required) The name of the resource group in which to create the subnet. Changing this forces a new resource to be created.
  virtual_network_name                          = var.virtual_network_name                          #(Required) The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created.
  address_prefixes                              = var.address_prefixes                              #(Required) The address prefixes to use for the subnet.
  private_endpoint_network_policies_enabled     = var.private_endpoint_network_policies_enabled     #(Optional) Enable or Disable network policies for the private endpoint on the subnet. Setting this to true will Enable the policy and setting this to false will Disable the policy. Defaults to true.
  private_link_service_network_policies_enabled = var.private_link_service_network_policies_enabled #(Optional) Enable or Disable network policies for the private link service on the subnet. Setting this to true will Enable the policy and setting this to false will Disable the policy. Defaults to true.
  service_endpoints                             = var.service_endpoints                             #(Optional) The list of Service endpoints to associate with the subnet. Possible values include: Microsoft.AzureActiveDirectory, Microsoft.AzureCosmosDB, Microsoft.ContainerRegistry, Microsoft.EventHub, Microsoft.KeyVault, Microsoft.ServiceBus, Microsoft.Sql, Microsoft.Storage and Microsoft.Web.
  service_endpoint_policy_ids                   = var.service_endpoint_policy_ids                   #(Optional) The list of IDs of Service Endpoint Policies to associate with the subnet.

  dynamic "delegation" { #(Optional) One or more delegation blocks as defined below.
    # for_each = var.delegation != null ? [var.delegation] : []
    for_each = var.delegation == null ? {} : var.delegation

    content {
      name = delegation.value.name

      service_delegation {
        name    = delegation.value.service_delegation.name
        actions = delegation.value.service_delegation.actions

      }
    }
  }
}
