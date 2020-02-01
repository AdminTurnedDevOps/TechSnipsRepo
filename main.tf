provider "azurerm" {
  version         = "1.38.0"
  subscription_id = var.sub
  client_id       = "d8a7ba9c-0e66-4be6-8e15-16f495e61a85"
  client_secret   = "${var.client_secret}"
  tenant_id       = "fbbd9689-2869-42b8-92fb-db1c89b662ff"
}

resource "azurerm_resource_group" "DevRG" {
  name     = "TechSnipsRG"
  location = "eastus"

  tags = {
    environment = "Dev"
  }
}
