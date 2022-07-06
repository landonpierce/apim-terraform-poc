output "operation_id_create" {
    value = "${azurerm_api_management_api_operation.create.operation_id}"
}

output "operation_id_get" {
    value = "${azurerm_api_management_api_operation.get.operation_id}"
}

output "operation_id_update" {
    value = "${azurerm_api_management_api_operation.update.operation_id}"
}

output "operation_id_delete" {
    value = "${azurerm_api_management_api_operation.delete.operation_id}"
}

