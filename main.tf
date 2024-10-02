resource "azurerm_resource_group" "rg" {
  name     = "${var.env_code}${var.project}rg"
  location = "West US 2"
}

resource "azurerm_storage_account" "sa" {
  name                     = "${var.env_code}${var.project}sa"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

resource "azurerm_storage_container" "sa-cont" {
  name                  = "${var.env_code}${var.project}sacont"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

resource "azurerm_service_plan" "servp" {
  name                = "${var.env_code}${var.project}servp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  os_type             = "Linux"
  sku_name            = "B1"

  worker_count        = 2
}

resource "azurerm_linux_web_app" "appserv" {
  name                = "${var.env_code}${var.project}appserv"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  service_plan_id     = azurerm_service_plan.servp.id

  site_config {
    # application_stack {
    #   docker_image_name        = "$(DEVOPS_TEST_INFRA_USER)/base-image:latest"
    #   docker_registry_url      = "https://index.docker.io"
    #   docker_registry_username = "$(DEVOPS_TEST_INFRA_USER)"
    #   docker_registry_password = "$(DEVOPS_TEST_INFRA_PASS)"
    # }
  }
}