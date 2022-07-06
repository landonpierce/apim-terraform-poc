locals {
    xml_content = file(var.xml_content_file_path)
}

resource "azurerm_api_management_api_operation_policy" "api_operation_policy" {
  api_name            = var.api_name
  api_management_name = var.api_management_name
  resource_group_name = var.resource_group_name
  operation_id        = var.operation_id

  xml_content = <<XML
${local.xml_content}
XML

}