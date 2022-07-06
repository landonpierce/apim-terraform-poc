### Resource Group ###

resource "azurerm_resource_group" "apim_rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}


### API Management ###

module "api_management" {
  source              = "./modules/api_management"
  resource_group      = azurerm_resource_group.apim_rg
  api_management_name = var.api_management_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
}


### API Management API ###

resource "azurerm_api_management_api" "API" {
  name                = var.api_name
  resource_group_name = azurerm_resource_group.apim_rg.name
  api_management_name = var.api_management_name
  revision            = "1"
}
