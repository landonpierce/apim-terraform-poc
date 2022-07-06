terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  # Optionally specify a subscription ID here. Terraform will automatically use AZ CLI authentication and will use the default subscription ID set there if none is set.
  # subscription_id = ""
}
