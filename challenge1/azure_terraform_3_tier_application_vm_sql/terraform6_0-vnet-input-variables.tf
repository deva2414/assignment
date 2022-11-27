# virtual network
variable "vnet_name" {
    description = "virtual network name"
    type = string
    default = "vnet-default"
}

# virtual network address space
variable "vnet_address_space" {
    description = "virtual network address space"
    type = list(string)
    default = [ "10.0.0.0/16" ]
}

# web subnet name 
variable "web_subnet_name" {
    description = "virtual network web subnet name"
    type = string
    default = "websubnet"  
}

# web subnet address space
variable "web_subnet_address" {
    description = "virtual network web subnet address"
    type = list(string)
    default = [ "10.0.1.0/24" ]
}

# app subnet name 
variable "app_subnet_name" {
    description = "virtual network app subnet name"
    type = string
    default = "appsubnet"  
}

# app subnet address space
variable "app_subnet_address" {
    description = "virtual network app subnet address"
    type = list(string)
    default = [ "10.0.11.0/24" ]
}

# database subnet name 
variable "db_subnet_name" {
    description = "virtual network database subnet name"
    type = string
    default = "dbsubnet"  
}

# database subnet address space
variable "db_subnet_address" {
    description = "virtual network database subnet address"
    type = list(string)
    default = [ "10.0.21.0/24" ]
}