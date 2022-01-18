resource "azurerm_network_security_group" "azure_nsg" {
  count                       = var.bastion_count_value
  name                        = format("${var.nsg_name}%02d-dca", count.index + 1)
  location                    = element(var.location,count.index)
  resource_group_name         = var.resource_group_name
  tags = merge({ "env"=var.env_name,"Name" = format("%s-dca", format("${var.nsg_name}%02d", count.index + 1)),"Asset"=var.Asset_id,"privacy-level"=var.privacy_level,"dept"=var.dept_name}, var.tags, )

dynamic "security_rule" {
    for_each = var.security_rules
      content{
        name                       = security_rule.value.name
        priority                   = security_rule.value.priority
        direction                  = security_rule.value.direction
        access                     = security_rule.value.access
        protocol                   = security_rule.value.protocol
        source_port_range          = security_rule.value.source_port_range
        destination_port_range     = security_rule.value.destination_port_range
        source_address_prefix      = security_rule.value.source_address_prefix
        destination_address_prefix = security_rule.value.destination_address_prefix
      }
  }
}
resource "azurerm_network_interface_security_group_association" "nsgassoc" {
  count                           = var.bastion_count_value
  network_interface_id            =  element(var.network_interface_id,count.index) 
  network_security_group_id       = azurerm_network_security_group.azure_nsg[count.index].id
}