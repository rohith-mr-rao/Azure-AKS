output "vpc_subnet" {
  value = azurerm_subnet.snet_cluster.*.id
}
output "bastion_subnet_id" {
  value = azurerm_subnet.snet_bastion_vm.id
}
output "bastionservice_subnet_id" {
  value = azurerm_subnet.snet_azure_bastion_service.id
}
/*output "fwsubnet_id" {
  value = azurerm_subnet.fwsubnet.*.id
}*/