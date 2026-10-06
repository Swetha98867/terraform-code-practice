terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tf-state"
    storage_account_name = "swethatfstate2026"
    container_name       = "tfstate"
    key                  = "terraform-vm.tfstate"
  }
}
