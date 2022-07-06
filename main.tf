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


### Orders API Management API ###
# Create an example API named "Orders"
resource "azurerm_api_management_api" "orders_api" {
  name                = "Orders"
  resource_group_name = azurerm_resource_group.apim_rg.name
  api_management_name = var.api_management_name
  revision            = "1"
}

### API Management API Operations ###
# Add operations to the orders api with the path "/orders"

module "orders_api_management_operations"  {
  source = "./modules/api_management_api_operations"
  api_name = azurerm_api_management_api.orders_api.name
  api_management_name = var.api_management_name
  resource_group_name = azurerm_resource_group.apim_rg.name
  resource_path = "/orders"
}

### API Management API Operation Policy ###
# Add a policy to the GET operation of the orders api

module "orders_api_management_operation_policy" {
  source = "./modules/api_management_api_operation_policy"
  api_name = azurerm_api_management_api.orders_api.name
  api_management_name = var.api_management_name
  resource_group_name = azurerm_resource_group.apim_rg.name
  operation_id = module.orders_api_management_operations.operation_id_get
  xml_content_file_path = "./api_policies/get_policy.xml"
}