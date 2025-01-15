provider "azurerm" {
  features {}
  use_oidc = true
}

terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>4.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "thuan-tfstate-rg"
    storage_account_name = "thuantfstate1945"
    container_name = "terraform-backend"
    key = "test-env.tfstate"
    use_oidc = true
  }
}
