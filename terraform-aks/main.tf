resource "azurerm_resource_group" "rg" {
  name     = "rg-5"
  location = "westus"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "azureaks-test"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "azureaks-test"

  default_node_pool {
    name       = "system"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }
}
