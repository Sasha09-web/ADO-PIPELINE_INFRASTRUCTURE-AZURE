terraform {
      backend "azurerm" {
    resource_group_name  = "pipeline_rg2"
    storage_account_name = "pipelinestg2"
    container_name       = "pipeline-container"
    key                  = "pipeline.terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.46.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "6133ca66-22c4-41ad-b3b8-7c0fcc68650b"
}