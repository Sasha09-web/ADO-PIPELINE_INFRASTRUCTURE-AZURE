

resource "azurerm_resource_group" "rgpipeline3" {
  name     = "pipeline_rg3"
  location = "West Europe"
}


resource "azurerm_storage_account" "stgpipeline3" {
    depends_on = [ azurerm_resource_group.rgpipeline3 ]
  name                     = "pipelinestg3"
  resource_group_name      = "pipeline_rg3"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
