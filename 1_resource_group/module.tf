resource "azurerm_resource_group" "rg" {

  name     = "${var.prefix}-${var.rg.name}"
  location = var.rg.location
  tags     = var.tags

}