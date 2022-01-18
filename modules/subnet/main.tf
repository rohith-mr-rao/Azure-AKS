resource "azurerm_subnet" "snet_cluster" { //for cluster
  count                   = var.count_value
  name                    = "${format("%s-dca",element(var.subnet_name,count.index))}"
  resource_group_name     = var.resource_group_name
  virtual_network_name    = element(var.virtual_network_cluster_name,count.index)
  address_prefixes        = [element(var.cluster_subnet,count.index)]
  enforce_private_link_endpoint_network_policies = true
}
resource "azurerm_subnet" "snet_bastion_vm" { //bastion vm network nic
  #count                 = var.bastion_count_value
  name                  = format("${var.bastion_subnet_name}-dca")
  resource_group_name   = var.resource_group_name
  virtual_network_name  = var.virtual_network_bastion_name
  address_prefixes      = var.bastion_subnet
}
resource "azurerm_subnet" "snet_azure_bastion_service" { 
  #count                 =var.bastion_count_value
  name                  = format("${var.bastionservice_subnet_name}")
  resource_group_name   = var.resource_group_name
  virtual_network_name  = var.virtual_network_bastion_name
  address_prefixes      = var.bastionservice_subnet
}
