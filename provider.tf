terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }

  required_version = ">= 1.5.0"
}

terraform {
  backend "azurerm" {
    resource_group_name = "tfstate-rg"
    storage_account_name = "ckstatestorage"
    container_name = "tfstate"
    key = "azure-infra-demo.tfstate"
    
  }
}

provider "azurerm" {
  features {}
   # Authentication via az login

}
