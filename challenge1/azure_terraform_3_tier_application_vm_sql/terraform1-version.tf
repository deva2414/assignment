# Terraform Block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Provider block
provider "azurerm" {
    features {      
    }
}