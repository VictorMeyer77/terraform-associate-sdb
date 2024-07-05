variable "environment" {
  type        = string
  description = "(Required) Environment name"
}

variable "project" {
  type        = string
  description = "(Required) Name of your project"
}

variable "resource_group_location" {
  type        = string
  description = "(Required) Location for the resources"
}

variable "tags" {
  type        = map(string)
  description = "(Required) Map of tags to attach to resources."
  default     = {}
}

#variable "public_subnet_name" {
#  default = "sdbsnetdev01"
#}
#
#variable "public_subnet_address_prefix" {
#  default = "10.0.1.0/24"
#}
#
#variable "private_subnet_name" {
#  default = "sdbsnetdev02"
#}
#
#variable "private_subnet_address_prefix" {
#  default = "10.0.2.0/24"
#}