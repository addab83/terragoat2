/*provider "azurerm" {
  subscription_id = var.subscription_id
  version = ">= 2.0.0"
  features {}
}

data "azurerm_client_config" "current" {}

terraform {
  required_version = ">=0.12.0"
  backend "azurerm" {
  }
}
*/

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}

data "azurerm_client_config" "current" {}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}


