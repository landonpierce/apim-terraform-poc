resource "random_string" "suffix" {
  length  = 4
  special = false
  upper   = false
}

locals {
    api_management_name = "${var.api_management_name}${random_string.suffix.result}"
    sku = "${var.sku_name}_${var.sku_capacity}"
}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management
resource "azurerm_api_management"  "apim" {
  name                = local.api_management_name
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = local.sku

}
