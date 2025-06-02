terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.71, < 5.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5.0, < 4.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate-gademo-rg"
    storage_account_name = "tfstategademo"
    container_name       = "tfstate"
    key                  = "tfdemo.ga.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "13e3a757-2746-4a8a-8f2f-e6f3919648e7"
}

resource "azurerm_resource_group" "example" {
  location = "West Europe"
  name     = "testmedirg"
}

