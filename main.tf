resource "azurerm_resource_group" "prod-devopst-rg" {
  name     = "proddevopstrg"
  location = "West US 2"
}

# resource "azurerm_storage_account" "prod-devopst-sa" {
#   name                     = "proddevopstsa"
#   resource_group_name      = azurerm_resource_group.prod-devopst-rg.name
#   location                 = azurerm_resource_group.prod-devopst-rg.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"

# }

# resource "azurerm_storage_container" "prod-devopst-sa-cont" {
#   name                  = "proddevopstsacont"
#   storage_account_name  = azurerm_storage_account.prod-devopst-sa.name
#   container_access_type = "private"
# }

# resource "azurerm_service_plan" "prod-devopst-servp" {
#   name                = "proddevopstservp"
#   resource_group_name = azurerm_resource_group.prod-devopst-rg.name
#   location            = azurerm_resource_group.prod-devopst-rg.location

#   os_type             = "Linux"
#   sku_name            = "B1"

#   worker_count        = 2
# }

# resource "azurerm_linux_web_app" "prod-devopst-appserv" {
#   name                = "proddevopstappserv"
#   resource_group_name = azurerm_resource_group.prod-devopst-rg.name
#   location            = azurerm_resource_group.prod-devopst-rg.location
#   service_plan_id     = azurerm_service_plan.prod-devopst-servp.id

#   site_config {
#     application_stack {
#       docker_image_name = "ryandf1998/base-image:latest"
#       docker_registry_url = "https://index.docker.io"
#       docker_registry_username = "ryandf1198"
#       docker_registry_password = "$(DEV_DEVOPS_TEST_INFRA_PASS)"
#     }
#   }
# }