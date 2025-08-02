resource "azurerm_resource_group" "dholu" {
  name     = "dholu-rg"
  location = "Central India"
}

resource "azurerm_storage_account" "stg1234" {
    depends_on = [ azurerm_resource_group.dholu ]
  name                     = "dholustg"
  resource_group_name      = "dholu-rg"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
