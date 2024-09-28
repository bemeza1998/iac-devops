output "resource_group" {
  description = "Returns the resource_group object created"
  depends_on  = azurerm_resource_group.rg

  value       = azurerm_resource_group.rg
}

output "resource_group_id" {
  description = "Returns the resource_group id"
  depends_on = azurerm_resource_group.rg

  value = azurerm_resource_group.rg.id
}

output "resource_group_name" {
  description = "Returns the resource_group name"
  depends_on  = azurerm_resource_group.rg

  value = azurerm_resource_group.rg.name
}