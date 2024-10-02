terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
      resource_group_name  = "$(ENV)$(NAME)rg"
      storage_account_name = "$(ENV)$(NAME)sa"
      container_name       = "$(ENV)$(NAME)sacont"
      key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}