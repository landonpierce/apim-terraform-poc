variable "resource_group" {
    type = object({
        name = string
        location = string
    })
}

variable "api_management_name" {
    description = "The name of the API Management service. Will be appended with a random suffix."
    type = string
}

variable "publisher_name" {
    type = string
}

variable "publisher_email" {
    type = string
}

variable "sku_name" {
    type = string
    default = "Developer"
}

variable "sku_capacity" {
    type = number
    default = 1
}