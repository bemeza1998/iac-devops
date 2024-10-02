terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  # backend "azurerm" {
  #     resource_group_name  = "${var.env_code}${var.project}rg"
  #     storage_account_name = "${var.env_code}${var.project}sa"
  #     container_name       = "${var.env_code}${var.project}sacont"
  #     key                  = "${var.env_code}-${var.project}-terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
}