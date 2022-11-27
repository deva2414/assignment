# Business Division
variable "business_division" {
    description = "Buisness division for this infrastructure"
    type = string
    default = "nest"
}

# Envrionment variable
variable "environment" {
    description = "Environment varible used as a prefix"
    default = "dev"
}

# Azure Resource Group Name
variable "resource_group_name" {
    description = "Resource group name"
    default = "rg-default"
}

# Azure Resource Group Location
variable "resource_group_location" {
    description = "Region in which Azure Resources are created"
    default = "eastus"
}