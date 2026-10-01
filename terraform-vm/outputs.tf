output "vm_name" {
  value = azurerm_linux_virtual_machine.vm.name
}

output "private_ip" {
  value = azurerm_network_interface.nic1.private_ip_address
}

output "resource_group_name" {
  value = azurerm_resource_group.rg1.name
}
output "public_ip" {
  value = azurerm_public_ip.pip.ip_address
}
