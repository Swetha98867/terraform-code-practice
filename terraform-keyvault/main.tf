data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg4" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_key_vault" "keyvault1" {
  name                = var.key_vault_name
  location            = azurerm_resource_group.rg4.location
  resource_group_name = azurerm_resource_group.rg4.name

  tenant_id = data.azurerm_client_config.current.tenant_id

  sku_name                  = "standard"
  enable_rbac_authorization = true

  soft_delete_retention_days = 7
  purge_protection_enabled   = false
}
