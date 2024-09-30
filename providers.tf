terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
      resource_group_name  = "proddevopstrg"
      storage_account_name = "proddevopstsa"
      container_name       = "proddevopstsacont"
      key                  = "prod-devopst-terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}