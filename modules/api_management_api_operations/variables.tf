variable "resource_group_name" {
    type = string
}

variable "api_management_name" {
    description = "The name of the API Management service to create the api under."
    type = string
}


variable "api_name" {
    description = "The name of the API to create."
    type = string
}

variable "resource_path" {
    description = "The path of the API Resource. Ex: /orders, /customers/orders, /products, etc."
    type = string
}