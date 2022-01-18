variable "location" {
  type        = list(string)
  description = "Azure Region where all these resources will be provisioned"
}
variable "resource_group_name" {
  type        = string
  description = "This variable defines the Resource Group"
}
variable "fw_name" {
  description = "Firewal name"
  type        = string
}
variable "fw_pub_ip" {
  description = "Firewal name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = list(string)
}
variable "fw_pub_allocation_method" {
  description = "pubic ip allocation method"
  type        = string
}
variable "fw_pub_sku" {
  description = "pubic ip sku"
  type        = string
}
variable "destination_addresses" {
  description = "destination addresses"
  type        = list(string)
}
variable "fw_ip_config_name"{
  description = "firewall ip config name"
  type        = string
}
variable "network_rule_name"{
  description = "firewall ip config name"
  type        = string
}
variable "count_value" {
    type = number
}
variable "priority_value" {
type = number
}
variable "action_type"{
  description = "action type for firewall"
  type        = string
}
variable "rule_description"{
  description = "firewall rule description"
  type        = string
}
variable "rule_name"{
  description = "firewall rule name"
  type        = string
}
variable "firewall_rule_source_addresses" {
  description = "firewall rule source addresses"
  type        = list(string)
}
variable "firewall_rule_destination_ports" {
  description = "firewall rule destination addresses"
  type        = list(string)
}
variable "firewall_protocols_type" {
  description = "firewall protocols"
  type        = list(string)
}
variable "env_name" {
  type = string
}
variable "Asset_id" {
  type = string
}
variable "privacy_level" {
  type = string
}
variable "dept_name" {
  type = string
}
variable "tags" {
  type        = map(string)
  default     = {}
}