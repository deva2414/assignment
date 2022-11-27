business_division   = "ops"
environment  =   "dev"
resource_group_name = "book"
resource_group_location = "eastus"

vnet_name = "vnet"
vnet_address_space = ["10.1.0.0/16"]
 
web_subnet_name = "websubnet"
web_subnet_address = ["10.1.1.0/24"]

app_subnet_name = "appsubnet"
app_subnet_address = ["10.1.11.0/24"]

db_subnet_name = "dbsubnet"
db_subnet_address = ["10.1.21.0/24"]