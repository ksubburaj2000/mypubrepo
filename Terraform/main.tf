

resource "azurerm_resource_group" "target-resource-group" {
  name     = "rg-test001"
  location = "westeurope"

  lifecycle {
    ignore_changes = [tags]
  }
}
