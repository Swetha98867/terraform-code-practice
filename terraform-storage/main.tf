resource azurerm_resource_group "rg"{
 name="rg2"
 location="westus"
}

resource azurerm_storage_account "storage" {
 resource_group_name=azurerm_resource_group.rg.name
 location= azurerm_resource_group.rg.location
 name=var.storage_account_name
 account_replication_type="LRS"
 account_tier="Standard"
}

resource azurerm_storage_container "storage_container" {
  storage_account_id=azurerm_storage_account.storage.id
  name=var.container_name
  container_access_type="private"
}
