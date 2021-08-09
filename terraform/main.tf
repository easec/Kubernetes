terraform {
  backend "azurerm" {
    storage_account_name     = "<YourAzureStorageAccountName>"
    container_name           = "tfstate"
    key                      = "codelab.microsoft.tfstate"
    access_key               = "<YourStorageAccountAccessKey>"
  }
}
