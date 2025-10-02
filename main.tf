

resource "azurerm_resource_group" "rgpipeline2" {
  name     = "pipeline_rg2"
  location = "West Europe"
}


resource "azurerm_storage_account" "stgpipeline2" {
    depends_on = [ azurerm_resource_group.rgpipeline2 ]
  name                     = "pipelinestg2"
  resource_group_name      = "pipeline_rg2"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
