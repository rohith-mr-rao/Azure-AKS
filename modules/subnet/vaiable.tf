variable "subnet_name" {
    type = list(string)
}
variable "bastion_count_value" {
    type = number
}
variable "cluster_subnet" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
}
variable "count_value" {
    type = number
}
variable "resource_group_name" {
  type        = string
  description = "This variable defines the Resource Group"
}
variable "virtual_network_cluster_name" {
    type = list(string)
}
variable "bastion_subnet" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
}
variable "bastion_subnet_name" {
   type = string
}
variable "virtual_network_bastion_name" {
    type = string
}
variable "bastionservice_subnet" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
}
variable "bastionservice_subnet_name" {
    type = string
}
/*variable "fw_subnet" {
    type = list(string) 
}
variable "firewall_subnet" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
}
variable "location" {
  type        = list(string)
  description = "Azure Region where all these resources will be provisioned"
}
/*variable "address_space" {
  type = list(string)
}
variable "private_dns_name" {
    type = string
}*/
/*variable "prentdns_name" {
    type = list(string)
}
variable "clusvpc" {
  type = list(string)
}*/
/*variable "vnet_dns_name" {
    type = string
}
variable "bastion2_dns_name" {
    type = string
}
variable "vnet2_dns_name" {
    type = string
}*/