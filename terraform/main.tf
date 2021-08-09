terraform {
  backend "azurerm" {
    storage_account_name     = "your_storage_account_name"
    container_name           = "tfstate"
    key                      = "terraform.tfstate"
    access_key               = "<your_storage_account_access_key>"
  }
}
