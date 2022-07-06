# Creates a standard set of REST operations on an API

resource "azurerm_api_management_api_operation" "create" {
  operation_id        = "Create"
  api_name            = var.api_name
  api_management_name = var.api_management_name
  resource_group_name = var.resource_group_name
  display_name        = "POST Resource"
  method              = "POST"
  url_template        = "${var.resource_path}"
}

resource "azurerm_api_management_api_operation" "get" {
  operation_id        = "Get"
  api_name            = var.api_name
  api_management_name = var.api_management_name
  resource_group_name = var.resource_group_name
  display_name        = "GET Resource"
  method              = "GET"
  url_template        = "${var.resource_path}"
}

resource "azurerm_api_management_api_operation" "update" {
  operation_id        = "Update"
  api_name            = var.api_name
  api_management_name = var.api_management_name
  resource_group_name = var.resource_group_name
  display_name        = "PUT Resource"
  method              = "PUT"
  url_template        = "${var.resource_path}"
}

resource "azurerm_api_management_api_operation" "delete" {
  operation_id        = "Delete"
  api_name            = var.api_name
  api_management_name = var.api_management_name
  resource_group_name = var.resource_group_name
  display_name        = "DELETE Resource"
  method              = "DELETE"
  url_template        = "${var.resource_path}"
}

