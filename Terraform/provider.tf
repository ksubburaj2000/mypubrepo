# Define Terraform provider
terraform {
  required_version = ">= 1.3"
  backend "azurerm" {
    resource_group_name  = "ams-vdi-tfstate-config-rg"
    storage_account_name = "amsvdipocstoreacc"
    container_name       = "vdipocstore"
    key                  = "test1.actions.tfstate"
  }
  required_providers {
    azurerm = {
      version = "~>3.2"
      source  = "hashicorp/azurerm"
    }
  }
}
# Configure the Azure provider
provider "azurerm" { 
  features {}  
}
