terraform {
  backend "azurerm" {
    resource_group_name  = "githubpoc"
    storage_account_name = "githubpoc"
    container_name       = "statetf"
    key                  = "terraform.tfstate"
    tenant_id            = "4884a63b-a3ca-48b0-a43a-bc817d8a2660"
    subscription_id      = "13e3a757-2746-4a8a-8f2f-e6f3919648e7"
    }
}
