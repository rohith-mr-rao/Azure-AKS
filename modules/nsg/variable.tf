variable "bastion_count_value" {
    type = number
}
variable "resource_group_name" {
  type        = string
  description = "This variable defines the Resource Group"
}
variable "security_rules" {
  description = "NSG Security rules"
  type        = list(map(string))
}
variable "nsg_name" {
  type        = string
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
variable "network_interface_id" {
    type = list(string)
}
variable "location" {
  type        = list(string)
  description = "Azure Region where all these resources will be provisioned"
}