# input variables
# Db name
variable "mysql_db_name" {
    description = "azure mysql db name"
    type = string
}

# db username
variable "mysql_db_username" {
  description = "azure mysql database administrator username"
  type = string
}

# db password - enable sensitive flag
variable "mysql_db_password" {
    description = "azure mysql database administrator password"
    type = string
    sensitive = true
}

# db schema name
variable "mysql_db_schema" {
    description = "azure mysql database schema name"
    type = string
}