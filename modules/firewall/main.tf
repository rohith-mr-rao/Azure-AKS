resource "azurerm_public_ip" "fw_pub_ip" {
  count                   = var.count_value
  name                    = format("${var.fw_pub_ip}-%02d-dca", count.index + 1)
  location                = element(var.location,count.index)
  resource_group_name     = var.resource_group_name
  allocation_method       = var.fw_pub_allocation_method
  sku                     = var.fw_pub_sku
}
resource "azurerm_firewall" "fw" {
  count                   = var.count_value
  name                    = format("${var.fw_name}-%02d-dca", count.index + 1)
  location                = element(var.location,count.index)
  resource_group_name     = var.resource_group_name

  ip_configuration {
    name                  = format("${var.fw_ip_config_name}-%02d-dca", count.index + 1)
    subnet_id             = element(var.subnet_id,count.index)
    public_ip_address_id  = azurerm_public_ip.fw_pub_ip[count.index].id
  }
  tags = merge({ "env"=var.env_name,"Name" = format("%s-dca", format("${var.fw_name}%02d", count.index + 1)),"Asset"=var.Asset_id,"privacy-level"=var.privacy_level,"dept"=var.dept_name}, var.tags, )
}
resource "azurerm_firewall_network_rule_collection" "network_rule" {
  count                   =  var.count_value
  name                    = format("${var.network_rule_name}-%02d-dca", count.index + 1)
  azure_firewall_name     = azurerm_firewall.fw[count.index].name
  resource_group_name     = var.resource_group_name
  priority                = var.priority_value
  action                  = var.action_type

  rule {
    description           = var.rule_description
    name                  = var.rule_name
    source_addresses      = var.firewall_rule_source_addresses
    destination_ports     = var.firewall_rule_destination_ports
    destination_addresses = var.destination_addresses
    protocols             = var.firewall_protocols_type
  }
  
}
  