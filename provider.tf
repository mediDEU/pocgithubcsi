terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {}
subscription_id= "13e3a757-2746-4a8a-8f2f-e6f3919648e7"
}
