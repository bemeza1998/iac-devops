variable "resource_group" {
  description = "(Required) Resource group to create"
  type        = string
  nullable = false
}

variable "prefix" {
  description = "(Optional) Prefix to add to the resource group you want to create"
  type        = string
}

variable "tags" {
  description = "(Required) Tags for the deployment"
  type        = map(string)
}